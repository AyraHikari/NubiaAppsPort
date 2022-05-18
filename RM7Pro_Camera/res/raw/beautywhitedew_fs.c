#extension GL_OES_EGL_image_external : require
precision highp float;
uniform sampler2D sTexture;
varying vec2 vTextureCoord;

void main()
{
	vec4 preview = texture2D(sTexture, vTextureCoord);
	vec3 color = vec3(0.0, 0.0, 0.0);
	vec3 ncolor = vec3(0.0, 0.0, 0.0);
	   if(preview.r  <0.5)
			color.r = (1.0 - 2.0*20.0/255.0)*preview.r +20.0/255.0 ;
	       else color.r = preview.r ;
	       if(preview.g  <0.5)
	       color.g = (1.0 - 2.0*0.0/255.0)*preview.g +0.0/255.0 ;
	       else color.g = preview.g ;
	       if(preview.b  <0.5)
			color.b = (1.0 - 2.0*30.0/255.0)*preview.b +30.0/255.0 ;
	       else color.b = preview.b ;


//			color.r = 1.25*(color.r-0.5)+0.5 ;
	//		color.g = 1.25*(color.g-0.5)+0.5 ;
	//		color.b = 1.25*(color.b-0.5)+0.5 ;





			color.rgb  = min(color.rgb, 1.0);
			color.rgb  = max(color.rgb, 0.0);

			ncolor.b = 1.0-(1.0-color.b )*((1.0-color.b ));
			ncolor.g = 1.0-(1.0-color.g )*((1.0-color.g ));
			ncolor.r = 1.0-(1.0-color.r )*((1.0-color.r));

			ncolor.r = 0.80*ncolor.r + (0.20)*(color.r) ;
			ncolor.g = 0.80*ncolor.g + (0.20)*(color.g) ;
			ncolor.b = 0.80*ncolor.b + (0.20)*(color.b) ;

		   vec3 new_color = min(ncolor.rgb, 1.0);
		   gl_FragColor = vec4(new_color.rgb, preview.a);

}
