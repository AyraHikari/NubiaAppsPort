uniform mat4 uMVPMatrix;
uniform mat4 uSTMatrix;
attribute vec4 aPosition;
attribute vec4 aTextureCoord;
varying vec2 vTextureCoord;

	void main() {
 		gl_Position =  uMVPMatrix * aPosition;
 		vTextureCoord = (uSTMatrix * aTextureCoord).xy; 
 		// gl_TexCoord[0] = gl_TextureMatrix[0] * gl_MultiTexCoord0; 
 }
