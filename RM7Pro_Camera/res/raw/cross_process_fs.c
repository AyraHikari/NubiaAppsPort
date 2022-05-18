#extension GL_OES_EGL_image_external : require
precision mediump float;
uniform samplerExternalOES sTexture;
varying vec2 vTextureCoord;
void main() {


/*
	    vec4 color = texture2D(sTexture, vTextureCoord);

		 vec3 new_color = color.rgb;
		 new_color.r = 1.0*(new_color.r - 0.5);
		 new_color.g = 1.0*(new_color.g - 0.5);
		 new_color.b = 1.2*(new_color.b - 0.5);

		 new_color.r =  new_color.r + 0.5 ;
		 new_color.g =  new_color.g + 0.5 ;
		 new_color.b =  new_color.b + 0.5 ;

		 new_color = min(new_color.rgb, 1.0);
		 new_color = max(new_color.rgb, 0.0);

		 new_color.r = 1.0 - (1.0-new_color.r)*(1.0-new_color.r);
		 new_color.g = 1.0 - (1.0-new_color.g)*(1.0-new_color.g);
		 new_color.b = 1.0 - (1.0-new_color.b)*(1.0-new_color.b);

		 color.r = 1.0 - new_color.r ;
		 color.g = 1.0 - new_color.g ;
		 color.b = 1.0 - new_color.b ;

		 vec3 out_color ;

		 out_color.r =  new_color.r  ;
		 out_color.g =  new_color.g  ;
		 out_color.b = color.b *0.25 +  new_color.b *0.75  ;




	     out_color = min(out_color.rgb, 1.0);
	     out_color = max(out_color.rgb, 0.0);

		 gl_FragColor = vec4(out_color.rgb, color.a);



*/




  vec4 Lcolor = texture2D(sTexture, vTextureCoord);
  vec3 ncolor = vec3(0.0, 0.0, 0.0);
  vec3 color = Lcolor.rgb;


  color.r = 1.5*(color.r - 0.5);
  color.r =  color.r + 0.5 ;
  color = min(color.rgb, 1.0);
  color = max(color.rgb, 0.0);

  float value;
  if (color.r < 0.5) {
	  value = color.r;
  	  } else {
  value = 1.0 - color.r;
  }
 float red = 4.0 * value * value * value;
   if (color.r < 0.5) {
   ncolor.r = red;
 } else {
   ncolor.r = 1.0 - red;
    }
  if (color.g < 0.5) {
    value = color.g;
  } else{
   value = 1.0 - color.g;
     }
   float green = 2.0 * value * value;
   if (color.g < 0.5)
   {
     ncolor.g = green;
  } else {
	  ncolor.g = 1.0 - green;
   }
   	   ncolor.b = color.b * 0.5 + 0.25;
   	   gl_FragColor = vec4(ncolor.rgb, Lcolor.a);


  }
