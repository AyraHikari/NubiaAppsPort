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
	//vec4 area = texture2D(uEffectAreaTexture, vAreaEffectTextureCoord);
	vec4 front = texture2D(uFrontTexture, vAreaEffectTextureCoord);
	 vec3 ncolor = vec3(0.0, 0.0, 0.0);

		ncolor.r = front.r+preview.r;
		ncolor.g = front.g+preview.g;
	    ncolor.b = front.b+preview.b;
   vec3 new_color = min(ncolor.rgb, 1.0);
		gl_FragColor = vec4(new_color.rgb, preview.a);

}
