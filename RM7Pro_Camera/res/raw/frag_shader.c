#extension GL_OES_EGL_image_external : require
precision mediump float;
varying vec2 vTextureCoord;
uniform samplerExternalOES sTexture;
vec4 color;

void main() {
	float xDistance = 1.0 / 1920.0;
	float yDistance = 1.0 / 1080.0;
	vec2 pos = vTextureCoord.st;
//	if(pos.x > 0.8 && pos.y >0.5){
//		return;
//	}
//	if(pos.x < 0.0 || pos.y < 0.0){
//			return;
//	}



	color = texture2D(sTexture, pos);
//	color.r *= pos.y;

	gl_FragColor =color;

}
