#extension GL_OES_EGL_image_external : require
precision highp float;
uniform samplerExternalOES sTexture;
uniform float mult;
uniform float igamma;
varying vec2 vTextureCoord;
uniform float width;
uniform float height;
void main()
{
	float newWidth = vTextureCoord.t * width;
	float newHeight= vTextureCoord.s * height;
	float radius = sqrt((newWidth - width / 2.0f) * (newWidth - width / 2.0f) + (newHeight - height / 2.0f) * (newHeight - height / 2.0f));
	vec4 color = texture2D(sTexture, vTextureCoord);
	vec4 yellowColor = vec4(1.0, 0.52, 0.38, 1.0);
	vec4 yellowColor2 = vec4(0.48, 0.29, 0.38, 1.0);

	if(radius < 400.0f)
		radius = 400.0f;
	radius = radius + 100.0f;
	radius = radius / 800.0f;
	float radius2=radius;
	radius2 = 1.0/3.0*(8.0*radius2 - 5.0);
	radius2 =radius2<0.0?0.0:radius2;
	vec4 addColor0 ;
	addColor0 = yellowColor * (1.0f - radius)  + (radius2) *yellowColor2 ;

	gl_FragColor = color  + addColor0 ;

}
