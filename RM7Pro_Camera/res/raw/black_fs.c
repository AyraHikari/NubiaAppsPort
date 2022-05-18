#extension GL_OES_EGL_image_external : require
precision highp float;
uniform sampler2D sTexture;
varying vec2 vTextureCoord;

void main()
{
	gl_FragColor = vec4(0.0, 0.0, 0.0, 1.0);
}
