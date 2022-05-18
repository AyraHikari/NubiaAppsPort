uniform mat4 uMVPMatrix;
uniform mat4 uSTMatrix;
attribute vec4 aPosition;
attribute vec4 aTextureCoord;
varying vec2 vTextureCoord;

uniform mat4 uEAMatrix;
varying vec2 vAreaEffectTextureCoord;




void main()
{
 	gl_Position =  uMVPMatrix * aPosition;
 	vAreaEffectTextureCoord = (uEAMatrix * aTextureCoord).xy;
 	vTextureCoord = (uSTMatrix * aTextureCoord).xy;
 }
