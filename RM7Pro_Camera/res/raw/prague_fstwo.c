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


vec4 Crayon2(vec2 vTextureCoord, float xDistance, float yDistance)
{

	float beta = L;
	float beta_a = A;
	float beta_b = B;

	vec2 pos = vTextureCoord.st;

		vec3 s00 = texture2D( sTexture, pos + vec2(-xDistance,yDistance) ).rgb;
		vec3 s10 = texture2D( sTexture, pos + vec2(xDistance,yDistance) ).rgb;
		vec3 s20 = texture2D( sTexture, pos + vec2(-xDistance,-yDistance) ).rgb;
		vec3 s01 = texture2D( sTexture, pos + vec2(xDistance,-yDistance) ).rgb;

		vec3 color = texture2D( sTexture, pos  ).rgb;
		vec3 maxcolor ;
		vec3 color_T ;
		maxcolor.rgb  = max(s00.rgb, s10.rgb);
		maxcolor.rgb  = max(maxcolor.rgb, s20.rgb);
		maxcolor.rgb  = max(maxcolor.rgb, s01.rgb);

		float maxc = max(max(maxcolor.r,maxcolor.b),maxcolor.g);
        if(maxcolor.r>0.0) color_T.r = color.r/(maxcolor.r+(maxc-maxcolor.r)/4.0);
        if(maxcolor.g>0.0) color_T.g = color.g/(maxcolor.g+(maxc-maxcolor.g)/4.0);
        if(maxcolor.b>0.0) color_T.b = color.b/(maxcolor.b+(maxc-maxcolor.b)/4.0);

        float Y_c =0.299 * color_T.r + 0.587 * color_T.g + 0.114*color_T.b  ;



        float alpha = min(Y_c ,57.0/255.0)/(57.0/255.0);

        color_T.rgb = alpha*color_T.rgb + (1.0-alpha) * color.rgb ;

        float YY = 0.299 * color_T.r + 0.587 * color_T.g + 0.114*color_T.b  ;
        float II = 0.596 * color_T.r - 0.275 * color_T.g - 0.321*color_T.b  ;
        float QQ = 0.212 * color_T.r - 0.523 * color_T.g + 0.311*color_T.b  ;

        II = II * beta ;
        QQ = QQ * beta ;
        float Y = max(0.0,min(1.0,pow(1.0*YY,5.0*beta_a)));
        vec3 color_o ;
        color_o.r = Y + 0.956 *II +0.621 * QQ;
        color_o.g = Y - 0.272 *II -1.703 * QQ;
        color_o.b = Y - 1.106 *II +0.000 * QQ;


        color.r = (1.0-beta_b)*  color.r +  (beta_b) *color_o.r ;
        color.g = (1.0-beta_b)*  color.g +  (beta_b) *color_o.g ;
        color.b = (1.0-beta_b)*  color.b +  (beta_b) *color_o.b ;


   	    color.rgb  = min(color.rgb, 1.0);
        color.rgb  = max(color.rgb, 0.0);

        return vec4(color.rgb ,1.0);
}


void main() {
	float xDistance = 2.0 / height;
	float yDistance = 2.0 / width;
	vec4 color ;
	if( index == 3  || index == 4 )
 	{
 		 color = Crayon2(vTextureCoord, xDistance, yDistance);
 	 }

	gl_FragColor = vec4(color.r, color.g, color.b, color.a);

}

