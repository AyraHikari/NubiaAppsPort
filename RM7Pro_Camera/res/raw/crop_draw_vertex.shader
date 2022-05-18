uniform mat4 uMVPMatrix;
uniform mat4 uSTMatrix;

attribute vec4 aPosition;
attribute vec4 aTextureCoord;

varying mat4 vSTMatrix;
varying vec4 vPos;

void main()
{
 	gl_Position = uMVPMatrix * aPosition;
 	vPos = aTextureCoord;
    vSTMatrix = uSTMatrix;
}