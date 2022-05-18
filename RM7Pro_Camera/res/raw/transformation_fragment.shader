#version 310 es
#extension GL_OES_EGL_image_external_essl3 : require

precision highp int;
precision highp float;

in vec2 vTextureCoord;

uniform mat3 H;
uniform int width;
uniform int height;
uniform samplerExternalOES sTexture;

out vec4 gl_FragColor;

/** 使用矩阵H对坐标corrd进行变换 */
vec2 transformHaffine(mat3 H, float x, float y) {
    float x1 = H[0][0] * x + H[0][1] * y + H[0][2];
    float y1 = H[1][0] * x + H[1][1] * y + H[1][2];
    float z1 = H[2][0] * x + H[2][1] * y + H[2][2];
    return vec2(x1/z1, y1/z1);
}

void main() {
    float x = vTextureCoord.x * float(width);
    float y = vTextureCoord.y * float(height);

    vec2 transformCoord = transformHaffine(H, x, y);

    transformCoord = vec2(transformCoord.x/float(width), transformCoord.y/float(height));

    vec4 color = texture(sTexture, transformCoord);
    if(color.a < 1.0) {
        color = vec4(0.0, 0.0, 0.0, 0.0);
    }
    gl_FragColor = (transformCoord.x < 0.0 || 1.0 < transformCoord.x || transformCoord.y < 0.0 || 1.0 < transformCoord.y) ? vec4(0.0, 0.0, 0.0, 0.0) : color;
}