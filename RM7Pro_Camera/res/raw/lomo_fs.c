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
	vec4 color = texture2D(sTexture, vTextureCoord);

	 vec3 new_color = color.rgb;
	 new_color.r = 1.5*(new_color.r - 0.5);
	 new_color.g = new_color.g - 0.5;
	 new_color.b = new_color.b - 0.5;

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


/*
	 float ratio = width >height? 1.0*height/width :1.0*width/height;
	 float half_x = (width/2.0);
	 float half_y = (height/2.0);

	 if(width >height) half_x =  1.0*(half_x) * ratio ;
	 else half_y = 1.0* (half_y) * ratio ;

	 float max = (1.0*(half_x) *(half_x) + 1.0*(half_y) *(half_y));
	 float size = 1.00 ;
	 float min = (max)*(1.0 -size );
	 float diff = (max -min) ;

	 float newWidth = vTextureCoord.t * width;
	 float newHeight= vTextureCoord.s * height;
	 float dx  = newWidth - width / 2.0f ;
	 float dy  = newHeight - height / 2.0f ;
	 if(width >height) dx =  1.0*(dx) * ratio ;
	 else dy = 1.0* (dy) * ratio ;
	 float dis = (dx) *(dx) + (dy) * (dy) ;

    	 float v = (1.0*(max - dis)/(0.8*diff));
    	 // v *= (v);
    	  v = 0.75*(v)+0.25*(v*v);
    	  out_color.r =  out_color.r * v  ;
    	  out_color.g =  out_color.g * v  ;
    	  out_color.b =  out_color.b * v  ;

*/
     out_color = min(out_color.rgb, 1.0);
     out_color = max(out_color.rgb, 0.0);

	 gl_FragColor = vec4(out_color.rgb, color.a);;

}
