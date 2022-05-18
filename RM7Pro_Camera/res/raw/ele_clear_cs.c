#version 320 es
#extension GL_OES_EGL_image_external_essl3 : require

precision highp int;
precision highp uint;
precision mediump image2D;
precision mediump imageBuffer;
precision highp float;

layout(local_size_x = 4, local_size_y = 4, local_size_z = 1) in;
layout(binding = 0, r32f) uniform  image2D desImagR;
layout(binding = 1, r32f) uniform  image2D desImagG;
layout(binding = 2, r32f) uniform  image2D desImagB;

void main()
{
   ivec2 location = ivec2(gl_GlobalInvocationID.xy);

   imageStore(desImagR, location, vec4(0,0,0,0));

   imageStore(desImagG, location, vec4(0,0,0,0));

   imageStore(desImagB, location, vec4(0,0,0,0));
}