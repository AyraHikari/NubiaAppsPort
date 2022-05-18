#extension GL_OES_EGL_image_external : require
precision mediump float;
varying vec2 vTextureCoord;
uniform samplerExternalOES sTexture;

void main()
{
	vec4 color = texture2D(sTexture, vTextureCoord);
	float y = dot(color, vec4(0.299, 0.587, 0.114, 0));
	gl_FragColor = vec4(y, y, y, color.a);

}

