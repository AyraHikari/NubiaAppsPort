#extension GL_OES_EGL_image_external : require
precision mediump float;
uniform samplerExternalOES sTexture;
uniform mat4 uSTMatrix;
varying vec4 vTextureCoord;

void main()
{
	vec4 coord;
	if(vTextureCoord.x > 0.5) {
		coord = vec4(1.0-vTextureCoord.x, vTextureCoord.y, 1.0, 1.0);
	}
	else {
		coord = vTextureCoord;
	}
	vec2 point = (uSTMatrix * coord).xy;
	//vec2 point = vTextureCoord.xy
	vec4 color = texture2D(sTexture, point);
	gl_FragColor = color;
}