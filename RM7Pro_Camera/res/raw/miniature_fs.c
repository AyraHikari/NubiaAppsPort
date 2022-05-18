#extension GL_OES_EGL_image_external : require
precision mediump float;
varying vec2 vTextureCoord;
uniform samplerExternalOES sTexture;
uniform float width;
uniform float height;

vec3 pass0( vec2 pos, float xDistance, float yDistance)
{
	 float temp_i,temp_j ;
	 float num0 = 0.0 ;
	 vec3 resultval0 = vec3(0.0,0.0,0.0) ;

	 float offset0[13];
	 offset0[0] = 0.0 ;
	 for(int s =1;s<13;s++)
		 offset0[s] = offset0[s-1] + 1.0 ;


	 int lut = 0,lut1 = 0,lut2 = 0,lut3 = 0;
     float lut_f = 0.0 ;
	    if(pos.t <0.5)  lut_f = 6.0*((0.5 - pos.t)/0.5);
		else            lut_f = 6.0*((pos.t - 0.5)/0.5);
	   lut = int(lut_f);


	 for(int i = 0;i<lut;i++)
	       {
	    	   temp_i = xDistance*offset0[i];
	    	   vec3  temp0 =  texture2D( sTexture, pos + vec2(temp_i,0.0) ).rgb;
	    	       resultval0 += temp0;
	    	       temp0 =  texture2D( sTexture, pos - vec2(temp_i,0.0) ).rgb;
	    	       resultval0 += temp0;
	    	   num0 = num0 + 2.0 ;


	    	   temp_j = yDistance*offset0[i];
	    	      temp0 =  texture2D( sTexture, pos + vec2(0.0,temp_j) ).rgb;
	    	      resultval0 += temp0;
	    	   	  temp0 =  texture2D( sTexture, pos - vec2(0.0,temp_j) ).rgb;
	    	   	  resultval0 += temp0;
	    	   	num0 = num0 + 2.0;

	    	      temp0 = texture2D( sTexture, pos + vec2(temp_i,temp_j) ).rgb;
	    	      resultval0 += temp0;
	    	   	  temp0 = texture2D( sTexture, pos - vec2(temp_i,temp_j) ).rgb;
	    	   	  resultval0 += temp0;
	    	   	num0 = num0 + 2.0 ;

	    	   	temp0 =  texture2D( sTexture, pos + vec2(-temp_i,temp_j) ).rgb;
	    	      resultval0 += temp0;
	    	   	  temp0 =  texture2D( sTexture, pos - vec2(-temp_i,temp_j) ).rgb;
	    	   	  resultval0 += temp0;
	    	   	num0 = num0 + 2.0 ;

	       }

	 return  (resultval0/num0);
}



vec3 pass1( vec2 pos, float Distance)
{
	 float temp_j ;
	 float num1 = 0.0 ;
	 vec3 resultval1 = vec3(0.0,0.0,0.0) ;

	 float offset1[13];
	 offset1[0] = 0.0 ;
	 for(int s =1;s<13;s++)
		 offset1[s] = offset1[s-1] + 1.0 ;


	 int lut = 0,lut1 = 0,lut2 = 0,lut3 = 0;
     float lut_f = 0.0 ;
	    if(pos.t <0.5)  lut_f =  6.0*((0.5 - pos.t)/0.5);
		else            lut_f =  6.0*((pos.t - 0.5)/0.5);
	   lut = int(lut_f);

	 for(int i = 0;i<lut;i++)
	       {
	    	   temp_j = Distance*offset1[i];
	    	   vec3  temp0 =  texture2D( sTexture, pos + vec2(0.0,temp_j) ).rgb;
	    	   	     resultval1 += temp0;
	    	   	     temp0 =  texture2D( sTexture, pos - vec2(0.0,temp_j) ).rgb;
	    	   	     resultval1 += temp0;
	    	    num1 = num1 + 2.0 ;




	       }

	 return  (resultval1/num1);
}





void main() {
		float xDistance = 1.0 / height;
		float yDistance = 1.0 / width;
		vec4 color = texture2D(sTexture, vTextureCoord);
		vec2 pos = vTextureCoord.st;
		float offset[13];
		offset[0] = 0.0 ;
		for(int s =1;s<13;s++)
			offset[s] = offset[s-1] + 1.0 ;

		 int lut = 0,lut1 = 0,lut2 = 0,lut3 = 0;
	     float lut_f = 0.0 ;
	     if(pos.t <0.5)  lut_f = 6.0*((0.5 - pos.t)/0.5);
		 else            lut_f =  6.0*((pos.t - 0.5)/0.5);
		 lut = int(lut_f);
		 lut1 = int(lut_f);
		 lut2 = int(lut_f);
		 lut3 = int(lut_f);


		float num = 0.0 ;
		vec3 outval = texture2D( sTexture, pos + vec2(0.0,0.0) ).rgb;
		vec3 outval_0 = texture2D( sTexture, pos + vec2(0.0,0.0) ).rgb;
		vec3 outval_45 =  texture2D( sTexture, pos + vec2(0.0,0.0) ).rgb; ;
		num = num + 1.0 ;

        outval =    pass0(  pos,  xDistance,yDistance);

        if(lut<1) outval = texture2D( sTexture, pos + vec2(0.0,0.0) ).rgb;

		gl_FragColor = vec4(outval.r,outval.g,outval.b, color.a);

	}

