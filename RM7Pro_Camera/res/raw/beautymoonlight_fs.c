#extension GL_OES_EGL_image_external : require
precision highp float;
uniform sampler2D sTexture;
varying vec2 vTextureCoord;

void main()
{
	 vec4 color = texture2D(sTexture, vTextureCoord);
	 vec3 new_color = color.rgb;

			 //color.r = 1.25*(color.r-0.5)+0.5 ;
			 //color.g = 1.25*(color.g-0.5)+0.5 ;
			 //color.b = 1.00*(color.b-0.5)+0.5 ;

			 color.r=1.0 - exp(-2.0*pow(color.r,2.00));
			 color.g=1.0 - exp(-2.0*pow(color.g,2.00));
			 color.b=1.0 - exp(-2.0*pow(color.b,2.00));


			 color.rgb = min(color.rgb, 1.0);
			 color.rgb  = max(color.rgb, 0.0);

			 new_color.b = 1.0-(1.0-color.b )*((1.0-color.b ));
			 new_color.g = 1.0-(1.0-color.g )*((1.0-color.g ));
			 new_color.r = 1.0-(1.0-color.r )*((1.0-color.r));

			 color.r = new_color.r*0.75+ 0.25*color.r;
			 color.g = new_color.g*0.75+ 0.25*color.g;
			 color.b = new_color.b*0.75+ 0.25*color.b;


			 color.r = 0.90*color.r + (0.10)*(1.0-color.r) ;
			 color.g = 0.90*color.g + (0.10)*(1.0-color.g) ;
			 color.b = 1.00*color.b + (0.00)*(1.0-color.b) ;

			 new_color = min(color.rgb, 1.0);
			 new_color = max(color.rgb, 0.0);

			gl_FragColor = vec4(new_color.rgb, color.a);




}
