#extension GL_OES_EGL_image_external : require
precision highp float;
uniform sampler2D sTexture;
varying vec2 vTextureCoord;

void main()
{
	vec4 color = texture2D(sTexture, vTextureCoord);

		 vec3 new_color = color.rgb;
		 color.b= (255.0-40.0)*color.b/255.0+40.0/255.0 ;
         color.r = 230.0/255.0*color.r;


		 color.rgb  = min(color.rgb, 1.0);
		 color.rgb  = max(color.rgb, 0.0);


			if(color.r <0.5)
				color.r = color.r + (2.0* color.r - 1.0 )*( color.r- color.r* color.r );
			else color.r = color.r + (2.0* color.r - 1.0 )*( sqrt(color.r)- color.r );

			if(color.g <0.5)
				color.g = color.g + (2.0* color.g - 1.0 )*( color.g- color.g* color.g );
			else color.g = color.g + (2.0* color.g - 1.0 )*( sqrt(color.g)- color.g );

			if(color.b <0.5)
				color.b = color.b + (2.0* color.b - 1.0 )*( color.b- color.b* color.b );
			else color.b = color.b + (2.0* color.b - 1.0 )*( sqrt(color.b)- color.b );



			color.r = 0.80*color.r + (0.00)*(1.0-color.r) ;
			color.g = 1.00*color.g + (0.00)*(1.0-color.g) ;
			//color.b = (255.0-90.0)/255.0*color.b+60.0/255.0 ;


			new_color = min(color.rgb, 1.0);
			new_color = max(color.rgb, 0.0);

			gl_FragColor = vec4(new_color.rgb, color.a);


}
