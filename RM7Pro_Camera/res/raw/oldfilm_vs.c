uniform mat4 uMVPMatrix;
uniform mat4 uSTMatrix;
uniform mat4 uPictureSTMatrix;
attribute vec4 aPosition;
attribute vec4 aTextureCoord;
varying vec2 vTextureCoord;
varying vec2 vPictureTexCoord;

void main()
{
    gl_Position =  uMVPMatrix * aPosition;
    vTextureCoord = (uSTMatrix * aTextureCoord).xy;
    vPictureTexCoord = (uPictureSTMatrix * aTextureCoord).st;
 }
