#extension GL_OES_EGL_image_external : require
precision mediump float;
varying vec2 vTextureCoord;
uniform sampler2D sTexture;
uniform float width;
uniform float height;

uniform sampler2D uFrontTexture;
varying vec2 vAreaEffectTextureCoord;



vec4 test6(vec2 vTextureCoord, float xDistance, float yDistance ,vec4 front)
{

	vec2 pos = vTextureCoord.st;

	vec4 color  = texture2D( sTexture, pos );;

		 //B1-2*B1*(B1-0.5)*(B1-1)
	    color.b = color.b - 1.0* color.b*(color.b-0.5 )*((color.b -1.0));
		color.g = color.g - 1.0* color.g*(color.g-0.5 )*((color.g -1.0));
		color.r = color.r + 1.0* color.r*(color.r-0.5 )*((color.r -1.0));


		color.rgb = min(color.rgb, 1.0);
		color.rgb = max(color.rgb, 0.0);

		if(front.r <0.5)
			color.r = color.r + (2.0* front.r - 1.0 )*( color.r- color.r* color.r );
		else color.r = color.r + (2.0* front.r - 1.0 )*( sqrt(color.r)- color.r );

		if(front.g <0.5)
			color.g = color.g + (2.0* front.g - 1.0 )*( color.g- color.g* color.g );
		else color.g = color.g + (2.0* front.g - 1.0 )*( sqrt(color.g)- color.g );

		if(front.b <0.5)
			color.b = color.b + (2.0* front.b - 1.0 )*( color.b- color.b* color.b );
		else color.b = color.b + (2.0* front.b - 1.0 )*( sqrt(color.b)- color.b );

		 color.r=(1.0 - exp(-2.0*pow(color.r,1.75)))*0.50 + 0.50*color.r;
		 color.g=(1.0 - exp(-2.0*pow(color.g,1.75)))*0.50 + 0.50*color.g;
		 color.b=(1.0 - exp(-2.0*pow(color.b,1.75)))*0.50 + 0.50*color.b;

		vec3 new_color ;
		new_color = min(color.rgb, 1.0);
		new_color = max(color.rgb, 0.0);
		color.rgb = min(new_color.rgb, 1.0);
		color.rgb = max(new_color.rgb, 0.0);

	 return color;
}



void main() {
	float xDistance = 1.0 / height;
	float yDistance = 1.0 / width;

	vec4 front = texture2D(uFrontTexture, vAreaEffectTextureCoord);

	vec4 color = test6(vTextureCoord, xDistance, yDistance,front);

	gl_FragColor = vec4(color.r, color.g, color.b, color.a);

}








