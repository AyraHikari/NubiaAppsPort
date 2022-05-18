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
	 new_color.r = 1.0*(new_color.r - 0.5);
	 new_color.g = 1.5*(new_color.g - 0.5);
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

	 out_color.r =  color.g *0.00 +  new_color.r *1.00 ;
	 out_color.g =  color.g *0.00 +  new_color.g *1.00 ;
	 out_color.b =  color.b *0.25 +  new_color.b *0.75  ;



     out_color = min(out_color.rgb, 1.0);
     out_color = max(out_color.rgb, 0.0);

	 gl_FragColor = vec4(out_color.rgb, color.a);;

}
