#extension GL_OES_EGL_image_external : require
precision mediump float;
varying vec2 vTextureCoord;
uniform sampler2D sTexture;

uniform float width;
uniform float height;

uniform float offset0;
uniform float offset1;
uniform float offset2;

void main()
{
    float offset[3] ;
	offset[0] = offset0;
	offset[1] = offset1;
	offset[2] = offset2;

	float weight[3] ;
	weight[0] = 0.2270270270;
	weight[1] = 0.3162162162;
	weight[2] = 0.0702702703;

	float xDistance = 1.0 / (width);
	float yDistance = 1.0 / (height);

	vec4 color = texture2D(sTexture, vTextureCoord);


	vec2 pos = vTextureCoord.st;
	vec3 outval =  texture2D( sTexture, pos  ).rgb* weight[0];;
	for(int i =1 ;i<3 ; i++)
	{
		outval.rgb += texture2D( sTexture, pos + vec2(xDistance*offset[i],0.0) ).rgb* weight[i];
		outval.rgb += texture2D( sTexture, pos - vec2(xDistance*offset[i],0.0) ).rgb* weight[i];

	}
	gl_FragColor = vec4(outval.r,outval.g,outval.b, color.a);


}

