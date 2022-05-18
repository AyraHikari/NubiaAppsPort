#version 310 es

precision highp int;
precision highp uint;
precision highp image2D;
precision highp float;

in vec2 vTextureCoord;
out vec4 gl_FragColor;
layout(binding = 0, r32f) readonly uniform  image2D srcImageR;
layout(binding = 1, r32f) readonly uniform  image2D srcImageG;
layout(binding = 2, r32f) readonly uniform  image2D srcImageB;
layout(binding = 3, r32f) readonly uniform  image2D srcImageA;
uniform int width;
uniform int height;
uniform float overlayNum;
uniform int isGray;

void main() {
  ivec2 location = ivec2(vTextureCoord.s * float(width), vTextureCoord.t * float(height));
  float r = imageLoad(srcImageR, location).r;
  float g = imageLoad(srcImageG, location).r;
  float b = imageLoad(srcImageB, location).r;
  //float a = imageLoad(srcImageA, location).r;
  float y = 0.299*r + 0.587*g + 0.114*b;
  gl_FragColor = isGray == 1 ? vec4(y, y, y, 1.0) : vec4(r, g, b, 1.0);
  //gl_FragColor = vec4(y, y, y, 1.0);
}