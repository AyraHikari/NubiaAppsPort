uniform mat4 uMVPMatrix;
uniform mat4 uSTMatrix;
uniform mat4 uPreviewSTMatrix;
uniform mat4 uChangeSTMatrix;
attribute vec4 aPosition;
attribute vec4 aTextureCoord;
varying vec2 vTextureCoord;
varying vec2 vPreviewTextureCoord;
varying vec2 vChangeTextureCoord;

void main()
{
    gl_Position = uMVPMatrix * aPosition;
    vTextureCoord = (uSTMatrix * aTextureCoord).xy;
    vPreviewTextureCoord = (uPreviewSTMatrix * aTextureCoord).xy;
    vChangeTextureCoord = (uChangeSTMatrix * aTextureCoord).xy;
}
