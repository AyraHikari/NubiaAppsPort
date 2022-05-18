#version 310 es
#extension GL_OES_EGL_image_external_essl3 : require

precision highp image2D;

layout(local_size_x = 4, local_size_y = 4, local_size_z = 1) in;
//缓存上一次叠加结果的纹理
layout(binding = 0, r32f) uniform  image2D desImageR;
layout(binding = 1, r32f) uniform  image2D desImageG;
layout(binding = 2, r32f) uniform  image2D desImageB;
layout(binding = 5, r32f) uniform  image2D desImageA;
//当前叠加结果的输出纹理
layout(binding = 6, r32f) uniform  image2D desImage2R;
layout(binding = 7, r32f) uniform  image2D desImage2G;
layout(binding = 8, r32f) uniform  image2D desImage2B;
layout(binding = 9, r32f) uniform  image2D desImage2A;

//当前纹理
uniform sampler2D uTextureSampler;
//根据当前纹理的像素的坐标，计算缓存纹理对应像素的坐标
uniform mat3 H;

//配准时的实际宽高
uniform float Hheight;
uniform float Hwidth;
//纹理的实际宽高
uniform int width;
uniform int height;
//叠加多少帧。这里使用指数加权平均的方法模拟
uniform float overlayNum;
//是否进行叠加
uniform int over;

/** 使用矩阵H对坐标corrd进行变换 */
vec2 transformHaffine(mat3 H, vec2 corrd, float width, float height) {
    float x = corrd.x * width;
    float y = corrd.y * height;
    float x1 = H[0][0] * x + H[0][1] * y + H[0][2];
    float y1 = H[1][0] * x + H[1][1] * y + H[1][2];
    float z1 = H[2][0] * x + H[2][1] * y + H[2][2];
    return vec2(x1/z1/width, y1/z1/height);
}

void main()
{
    //当前纹理的颜色
    vec2 texCoord = vec2(gl_GlobalInvocationID.xy) / vec2(width, height);
    vec4 color = texture(uTextureSampler, texCoord);
    //缓存纹理的颜色
    vec2 cacheTextureCoord = transformHaffine(H, texCoord, Hwidth, Hheight);
    cacheTextureCoord = cacheTextureCoord*vec2(width, height);
    cacheTextureCoord = floor(cacheTextureCoord+0.5); //四舍五入，去掉小数部分，保留整数部分
    ivec2 location = ivec2(cacheTextureCoord);
    float r = imageLoad(desImageR, location).r;
    float g = imageLoad(desImageG, location).r;
    float b = imageLoad(desImageB, location).r;
    vec4 cacheColor = (location.x < 0 || width <= location.x || location.y < 0 || height <= location.y) ? vec4(0.0, 0.0, 0.0, 0.0) : vec4(r, g, b, 1.0);
    //指数叠加
    float scale = 1.0/overlayNum;
    scale = (cacheColor.a == 0.0 || over == 0) ? 1.0 : scale;
    cacheColor = vec4(mix(cacheColor.rgb, color.rgb, scale), 1.0);
    //保存
    imageStore(desImage2R, ivec2(gl_GlobalInvocationID.xy), vec4(cacheColor.r, 0.0, 0.0, 0.0));
    imageStore(desImage2G, ivec2(gl_GlobalInvocationID.xy), vec4(cacheColor.g, 0.0, 0.0, 0.0));
    imageStore(desImage2B, ivec2(gl_GlobalInvocationID.xy), vec4(cacheColor.b, 0.0, 0.0, 0.0));
}