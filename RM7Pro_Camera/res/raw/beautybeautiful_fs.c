#extension GL_OES_EGL_image_external : require
precision mediump float;
varying vec2 vTextureCoord;
uniform sampler2D sTexture;
uniform float width;
uniform float height;

uniform sampler2D uFrontTexture;




vec4 test6(vec2 vTextureCoord, float xDistance, float yDistance)
{

///* 唯美
	vec4 color = texture2D(sTexture, vTextureCoord);

			 vec3 new_color = color.rgb;
			 vec3 out_color = color.rgb;

			 if( color.r < 1.0/3.0)
			 {
				 color.r = (((1.0/3.0) - 30.0/255.0)/(1.0/3.0))*color.r +30.0/255.0 ;
			 }
			 else if(color.r > 2.0/3.0 )
				 color.r= (((1.0/3.0) - 30.0/255.0)/(1.0/3.0))*(color.r-2.0/3.0) +2.0/3.0 ;

			 if( color.g < 1.0/3.0)
			 {
				 color.g = (((1.0/3.0) - 30.0/255.0)/(1.0/3.0))*color.g +30.0/255.0 ;
			 }
			 else if(color.g > 2.0/3.0 )
				 color.g= (((1.0/3.0) - 30.0/255.0)/(1.0/3.0))*(color.g-2.0/3.0) +2.0/3.0 ;


			 if( color.b < 1.0/3.0)
			 {
				 color.b = (((1.0/3.0) - 30.0/255.0)/(1.0/3.0))*color.b +30.0/255.0 ;
			 }
			 else if(color.b > 2.0/3.0 )
				 color.b= (((1.0/3.0) - 30.0/255.0)/(1.0/3.0))*(color.b-2.0/3.0) +2.0/3.0 ;




			 new_color.r =  color.r  ;
			 new_color.g =  color.g  ;
			 new_color.b = (225.0 - 20.0)/255.0 *  color.b + 20.0/255.0  ;


			 new_color.r=1.0 - exp(-3.5*pow(new_color.r,2.00));
			 new_color.g=1.0 - exp(-3.5*pow(new_color.g,2.00));
			 new_color.b=1.0 - exp(-3.5*pow(new_color.b,2.00));


		 color.rgb = min(new_color.rgb, 1.0);
		 color.rgb = max(new_color.rgb, 0.0);

	 return color;
}



void main() {
	float xDistance = 1.0 / height;
	float yDistance = 1.0 / width;


	vec4 color = test6(vTextureCoord, xDistance, yDistance);

	gl_FragColor = vec4(color.r, color.g, color.b, color.a);

}
