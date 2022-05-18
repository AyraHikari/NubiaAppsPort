#version 310 es
 
 in vec4 aPosition;
 in vec4 aTextureCoord;
 out vec2 vTextureCoord;
 
 uniform mat4 uSTMatrix;
 uniform mat4 uMVPMatrix;
 
 void main() {
    gl_Position = uMVPMatrix * aPosition;
    vTextureCoord = (uSTMatrix * aTextureCoord).xy;
 }

