#extension GL_OES_EGL_image_external : require
precision mediump float;
uniform vec4 uColor;

void main()
{
	gl_FragColor = uColor;
}

