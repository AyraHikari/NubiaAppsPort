#version 310 es
#extension GL_OES_EGL_image_external_essl3 : require

precision highp image2D;

layout(local_size_x = 4, local_size_y = 4, local_size_z = 1) in;
layout(binding = 0, r32f) uniform  image2D desImageR;
layout(binding = 1, r32f) uniform  image2D desImageG;
layout(binding = 2, r32f) uniform  image2D desImageB;
layout(binding = 3, r32f) uniform  image2D desImageA;


void main()
{
    imageStore(desImageR, ivec2(gl_GlobalInvocationID.xy), vec4(0.0, 0.0, 0.0, 0.0));
    imageStore(desImageG, ivec2(gl_GlobalInvocationID.xy), vec4(0.0, 0.0, 0.0, 0.0));
    imageStore(desImageB, ivec2(gl_GlobalInvocationID.xy), vec4(0.0, 0.0, 0.0, 0.0));
    imageStore(desImageA, ivec2(gl_GlobalInvocationID.xy), vec4(0.0, 0.0, 0.0, 0.0));
}