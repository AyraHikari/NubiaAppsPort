#extension GL_OES_EGL_image_external : require
precision mediump float;
uniform samplerExternalOES sTexture;
uniform mat4 uSTMatrix;
varying vec4 vTextureCoord;

void main()
{
	float x = float(int(vTextureCoord.x / 0.01)) * 0.01;
	float y = float(int(vTextureCoord.y / 0.01)) * 0.01;
	vec4 coord = vec4(x, y, 1.0, 1.0);
	vec2 point = (uSTMatrix * coord).xy;
	vec4 color = texture2D(sTexture, point);
	gl_FragColor = color;
}