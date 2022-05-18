#extension GL_OES_EGL_image_external : require
precision mediump float;
varying vec2 vTextureCoord;
uniform samplerExternalOES sTexture;
uniform sampler2D uEffectAreaTexture;
uniform sampler2D uFrontTexture;
varying vec2 vAreaEffectTextureCoord;

void main()
{
	vec4 preview = texture2D(sTexture, vTextureCoord);
	vec4 area = texture2D(uEffectAreaTexture, vAreaEffectTextureCoord);
	vec4 front = texture2D(uFrontTexture, vAreaEffectTextureCoord);
	vec4 temp;
	if(area.a > 0.001) {
		temp = vec4(1.0-preview.r, 1.0-preview.g, 1.0-preview.b, preview.a);
	}
	else {
		temp = preview;
	}
	if(front.a > 0.001) {
		float r = front.a*front.r+(1.0-front.a)*temp.r;
		float g = front.a*front.g+(1.0-front.a)*temp.g;
		float b = front.a*front.b+(1.0-front.a)*temp.b;
		gl_FragColor = vec4(r, g, b, 1.0);
	}
	else {
		gl_FragColor = temp;
	}
/*	
	if(front.a > 0.001) {
		gl_FragColor = front;
	}
	else if(area.a > 0.001) {
		gl_FragColor = vec4(1.0-preview.r, 1.0-preview.g, 1.0-preview.b, preview.a);
	}
	else {
		gl_FragColor = preview;
	}
*/	
}