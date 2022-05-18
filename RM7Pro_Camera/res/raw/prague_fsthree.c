#extension GL_OES_EGL_image_external : require
precision mediump float;
varying vec2 vTextureCoord;
uniform samplerExternalOES sTexture;
uniform float width;
uniform float height;
uniform float L;
uniform float A;
uniform float B;
uniform int index;



vec4 pass2(vec2 vTextureCoord, float xDistance, float yDistance)
{

	float beta = L+0.5;
	float beta_a = A;
	float beta_b = B;
	vec2 pos = vTextureCoord.st;

	vec3 s00 = texture2D( sTexture, pos + vec2(-xDistance,yDistance) ).rgb;
	vec3 s10 = texture2D( sTexture, pos + vec2(-xDistance,0.0) ).rgb;
	vec3 s20 = texture2D( sTexture, pos + vec2(-xDistance,-yDistance) ).rgb;
	vec3 s01 = texture2D( sTexture, pos + vec2(0.0,yDistance) ).rgb;
	vec3 s21 = texture2D( sTexture, pos + vec2(0.0,-yDistance) ).rgb;
	vec3 s02 = texture2D( sTexture, pos + vec2(xDistance, yDistance) ).rgb;
	vec3 s12 = texture2D( sTexture, pos + vec2(xDistance, 0.0) ).rgb;
	vec3 s22 = texture2D( sTexture, pos + vec2(xDistance, -yDistance) ).rgb;



	float sx_r = s00.r + 1.0 * s10.r + s20.r - (s02.r + 1.0 * s12.r + s22.r);
	float sx_g = s00.g + 1.0 * s10.g + s20.g - (s02.g + 1.0 * s12.g + s22.g);
	float sx_b = s00.b + 1.0 * s10.b + s20.b - (s02.b + 1.0 * s12.b + s22.b);

	float sy_r = s00.r + 1.0 * s01.r + s02.r - (s20.r + 1.0 * s21.r + s22.r);
	float sy_g = s00.g + 1.0 * s01.g + s02.g - (s20.g + 1.0 * s21.g + s22.g);
	float sy_b = s00.b + 1.0 * s01.b + s02.b - (s20.b + 1.0 * s21.b + s22.b);

	 vec3 color ;
	 color.r = sqrt(sx_r * sx_r + sy_r * sy_r);
	 color.g = sqrt(sx_g * sx_g + sy_g * sy_g );
	 color.b = sqrt(sx_b * sx_b + sy_b * sy_b);
     float  max_v = 500.0/255.0 ;
     float  min_v = 0.0/255.0 ;



	 color.rgb  = min(color.rgb, max_v);
 	 color.rgb  = max(color.rgb, min_v);


     color.r = 1.0*(color.r -min_v) / (max_v - min_v) ;
     color.g = 1.0*(color.g -min_v) / (max_v - min_v) ;
     color.b = 1.0*(color.b -min_v) / (max_v - min_v) ;



     float  color_Y = 0.299*color.r  + 0.587 *color.g + 0.114*color.b ;
     color.r = exp(-5.0*pow(color.r ,beta) );
     color.g = exp(-5.0*pow(color.g ,beta) );
     color.b = exp(-5.0*pow(color.b ,beta) );


     vec3 srgb = texture2D( sTexture, pos).rgb;

      if( srgb.r<=0.5) color.r = color.r *srgb.r/0.5;
      else  color.r = 1.0- (1.0-color.r) *(1.0-srgb.r)/0.5;

      if( srgb.g<=0.5) color.g = color.g *srgb.g/0.5;
      else  color.g = 1.0- (1.0-color.g) *(1.0-srgb.g)/0.5;

      if( srgb.b<=0.5) color.b = color.b *srgb.b/0.5;
      else  color.b = 1.0- (1.0-color.b) *(1.0-srgb.b)/0.5;



      /*******RGB2LAB 空间 ********/
      vec3 colorLAB ;
      colorLAB.r = 0.2126007 * color.r +0.7151947 * color.g + 0.0722046 *color.b;
      colorLAB.g = 0.3258962 * color.r -0.4992596 * color.g + 0.1733409 *color.b  +0.5;
      colorLAB.b = 0.1218128 * color.r +0.3785610 * color.g - 0.5003738 *color.b  +0.5;


      colorLAB.g =(1.0 - 2.0*beta_a)*colorLAB.g + beta_a;
      colorLAB.b =(1.0 - 2.0*beta_b)*colorLAB.b + beta_b;
      /*******LAB2RGB 空间 ********/
      vec3 colorT ;
      float L1 =116.0*colorLAB.r/100.0 -16.0/255.0 ;
      float a1 =(colorLAB.g-0.5)*174.0 ;
      float b1 =(colorLAB.b-0.5)*410.0;


      colorT.r = L1 + 0.0120308 * a1 + 0.0021207* b1 ;
      colorT.g = L1 - 0.0035973 * a1 - 0.0001765* b1 ;
      colorT.b = L1 + 0.0002074 * a1 - 0.0044965* b1 ;



	 color.rgb  = min(colorT.rgb, 1.0);
 	 color.rgb  = max(colorT.rgb, 0.0);

    return vec4(color.rgb ,1.0);

}


void main() {
	float xDistance = 1.0 / height;
	float yDistance = 1.0 / width;

	vec4 color ;
	if(index <3  )
		 color =	pass2(vTextureCoord, xDistance, yDistance);

 	
	gl_FragColor = vec4(color.r, color.g, color.b, color.a);

}

