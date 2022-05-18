#extension GL_OES_EGL_image_external : require
precision mediump float;
varying vec2 vTextureCoord;
uniform samplerExternalOES sTexture;
uniform float width;
uniform float height;



/*
vec4 pass2(vec2 vTextureCoord, float xDistance, float yDistance)
{
	vec2 pos = vTextureCoord.st;
	vec4 color = texture2D(sTexture, vTextureCoord);

	 vec3 color0 = texture2D(sTexture, pos + vec2(0.0, 0.0) ).rgb;
	 vec3 color1 = texture2D(sTexture, pos + vec2(-xDistance, yDistance)).rgb;

	vec3 colorabs;
	colorabs.r = max(color0.r ,color1.r);
	colorabs.g = max(color0.g ,color1.g);
	colorabs.b = max(color0.b ,color1.b);
	float maxrgb = max(colorabs.r,max(colorabs.g,colorabs.b));

	maxrgb = maxrgb>0?maxrgb:1 ;



    vec3 colorout;
    colorout.r = color0.r * color0.r /maxrgb;
    colorout.g = color0.g * color0.g /maxrgb;
    colorout.b = color0.b * color0.b /maxrgb;

    return vec4(color0.rgb,color.a);


}
*/
void main() {
	float xDistance = 1.0 / height;
	float yDistance = 1.0 / width;

	vec4 color = texture2D(sTexture, vTextureCoord);

	vec2 pos = vTextureCoord.st;
    vec3 color0    = color.rgb;
    vec3 color_out = color.rgb;
	vec3 color1 = texture2D(sTexture, pos + vec2(-xDistance, yDistance)).rgb;

	float maxvalue_t =0.0 ;
	maxvalue_t  = color0.r >color0.g ?color0.r:color0.g ;
    maxvalue_t  = maxvalue_t >color0.b ?maxvalue_t:color0.b ;
    float maxvalue_b  = 0.0 ;
	maxvalue_b  = color1.r >color1.g ?color1.r:color1.g ;
    maxvalue_b  = maxvalue_b >color1.b ?maxvalue_b:color1.b ;
    float maxvalue = maxvalue_t>maxvalue_b?maxvalue_t:maxvalue_b;


    float minvalue_t =0.0 ;
	minvalue_t  = color0.r >color0.g ?color0.g:color0.r ;
    minvalue_t  = minvalue_t <color0.b ?minvalue_t:color0.b ;
    float minvalue_b  = 0.0 ;
	minvalue_b  = color1.r >color1.g ?color1.g:color1.r ;
    minvalue_b  = minvalue_b >color1.b ?color1.b:maxvalue_b ;
    float minvalue = minvalue_t<minvalue_b?minvalue_t:minvalue_b;



	float diff = maxvalue - minvalue ;

	if(maxvalue > 0.0) maxvalue = maxvalue ;
	else maxvalue = 1.0;

	color_out.r = (color0.r )*(color0.r)*(1.0/(maxvalue));
	color_out.g = (color0.g )*(color0.g)*(1.0/(maxvalue)) ;
	color_out.b = (color0.b )*(color0.b)*(1.0/(maxvalue)) ;

	float k =  diff*1.0/maxvalue ;

	if(k < 0.0)  k = 0.0;

	color_out.r =  (1.0-k)*color0.r +  (k*color_out.r) ;
	color_out.g =  (1.0-k)*color0.g +  (k*color_out.g) ;
	color_out.b =  (1.0-k)*color0.b +  (k*color_out.b );


	 vec3 new_color;
	 new_color.r = 1.5*(color_out.r  - 0.5);
	 new_color.g = 1.5*(color_out.g  - 0.5);
	 new_color.b = 1.5*(color_out.b  - 0.5);

	 new_color.r =  new_color.r + 0.5 ;
	 new_color.g =  new_color.g + 0.5 ;
	 new_color.b =  new_color.b + 0.5 ;

	 color_out = min(new_color.rgb, 1.0);
	 color_out = max(new_color.rgb, 0.0);



	gl_FragColor = vec4(color_out.r, color_out.g, color_out.b, color.a);


}













/*
#extension GL_OES_EGL_image_external : require
precision mediump float;
varying vec2 vTextureCoord;
uniform samplerExternalOES sTexture;


void main()
{

     vec4 color = texture2D(sTexture, vTextureCoord);

     	 vec3 new_color = color.rgb;
     	 float min_c = min(new_color.r,min(new_color.g,new_color.b));
     	 float max_c = max(new_color.r,max(new_color.g,new_color.b));


     	 new_color.r = 1.25*(new_color.r  - 0.5);
     	 new_color.g = 1.25*(new_color.g  - 0.5);
         new_color.b = 1.25*(new_color.b  - 0.5);


     	 float scale = 0.2 ;


     	 new_color.r =  new_color.r + 0.5 ;
     	 new_color.g =  new_color.g + 0.5 ;
     	 new_color.b =  new_color.b + 0.5 ;

     	 new_color = min(new_color.rgb, 1.0);
     	 new_color = max(new_color.rgb, 0.0);


     	 new_color.r =  new_color.r - 2.0*new_color.r*(new_color.r  - 0.5)*(new_color.r  - 1.0) ;
     	 new_color.g =  new_color.g - 2.0*new_color.g*(new_color.g  - 0.5)*(new_color.g  - 1.0) ;
     	 new_color.b =  new_color.b - 2.0*new_color.b*(new_color.b  - 0.5)*(new_color.b  - 1.0) ;

     	 new_color = min(new_color.rgb, 1.0);
     	 new_color = max(new_color.rgb, 0.0);



     	 gl_FragColor = vec4(new_color.rgb, color.a);

 }
*/
