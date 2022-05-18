#extension GL_OES_EGL_image_external : require
precision mediump float;
varying vec2 vPictureTexCoord;
varying vec2 vTextureCoord;
uniform samplerExternalOES sTexture;
uniform float width;
uniform float height;

uniform float offset;

uniform sampler2D  uVignetteTexture;
uniform sampler2D  uScratchesTexture;
uniform sampler2D  uDustTexture;
uniform sampler2D  uNoiseTexture;

uniform mat4 uR90Matrix;

void main() {

	float xDistance = 1.0 / height;
	float yDistance = 1.0 / width;

	float xoffset = (offset)/height ;
	float yoffset = (100.0-offset)/width;
    vec4 color = texture2D(sTexture, vTextureCoord);
    vec4 colorinv;
    colorinv.rgb = vec3(1.0) -color.rgb ;

    //float alut = 0.05 ;
    //colorinv.r = min(colorinv.r/(1.0-alut),1.0);
    //colorinv.b = max((colorinv.b-alut)/(1.0-alut),0.0);
    color.r = color.r *colorinv.r* 0.2 + ( 1.0 - 0.2)*color.r;
    color.g = color.g *colorinv.g * 0.3 + ( 1.0 - 0.3)*color.g;
    color.b = color.b *colorinv.b * 0.5 + ( 1.0 - 0.5)*color.b;

    //color.rgb =  vec3(1.0) -  colorinv.rgb;

    //color.r = (color.r-0.157)/(1.0-0.157);
    //color.g = color.g - 1.0*color.g *(1.15*color.g -0.5)*(1.0*color.g -1.0);
    //color.b = color.b*(1.0-0.157);
    //color.rgb = color.rgb + color.rgb * (color.rgb-vec3(0.5))*(color.rgb-vec3(0.5));
    vec4 colorChange;
   //color.rgb = color.rgb - 1.0*color.rgb *(1.15*color.rgb -0.5)*(1.0*color.rgb -1.0);
   colorChange.rgb = color.rgb;//vec3(1.0)-(vec3(1.0)-gray.rgb)*(vec3(1.0)-color.rgb);

   // 颜色变化
   //mat3 matrix = mat3(805.0f / 2048.0f, 715.0f / 2048.0f, 557.0f / 2048.0f,
   //         1575.0f / 2048.0f, 1405.0f / 2048.0f, 1097.0f / 2048.0f,
   //         387.0f / 2048.0f, 344.0f / 2048.0f, 268.0f / 2048.0f);
   //vec3 new_color = min(matrix * color.rgb, 1.0);


    /*************************/
    vec2  rnd = vec2(xoffset,0.0);
    vec2 pos = vPictureTexCoord.st;
	vec4 Vignette = texture2D(uVignetteTexture, pos);      //暗角
	vec2 scratchesPosition = (uR90Matrix*vec4(pos, 1.0, 1.0)).st+rnd;
	vec4 Scratches = texture2D(uScratchesTexture, scratchesPosition);  //刮痕


	 //噪点
	 float strengthnoise  = 0.01;
	 vec4 Noise = texture2D(uNoiseTexture, pos+rnd );
	 vec4 colornosie ;
	 	 colornosie.r =  colorChange.r + strengthnoise *(Noise.r-0.5);
	 	 colornosie.g =  colorChange.g + strengthnoise *(Noise.r-0.5);
	 	 colornosie.b =  colorChange.b + strengthnoise *(Noise.r-0.5);

	  // 叠加刮痕正片叠底
		vec4 coloradd ;
		 coloradd.r = colornosie.r * Scratches.r;
		 coloradd.g = colornosie.g * Scratches.g;
		 coloradd.b = colornosie.b * Scratches.b;

		 xoffset = (offset -50.0)/100.0;
		 yoffset = (50.0-offset )/100.0;
		 rnd = vec2(xoffset,yoffset);
		 vec2 DustPosition = (uR90Matrix*vec4(pos, 1.0, 1.0)).st+rnd;
		 vec4 Dust = texture2D(uDustTexture, DustPosition);  //刮痕
		 vec4 colorDust ;
		 colorDust.r = coloradd.r * Dust.r;
		 colorDust.g = coloradd.g * Dust.g;
		 colorDust.b = coloradd.b * Dust.b;
		// 暗角
		vec4 colorcorner ;   // for vignette.png
		if(colorDust.r<0.5) colorcorner.r = colorDust.r * Vignette.r*2.0;
		else           colorcorner.r = 1.0 - (1.0-colorDust.r) * (1.0-Vignette.r)*2.0;

		if(colorDust.g<0.5) colorcorner.g = colorDust.g * Vignette.g*2.0;
		else           colorcorner.g = 1.0 - (1.0-colorDust.g) * (1.0-Vignette.g)*2.0;

		if(colorDust.b<0.5) colorcorner.b = colorDust.b * Vignette.b*2.0;
		else           colorcorner.b = 1.0 - (1.0-colorDust.b) * (1.0-Vignette.b)*2.0;

	 // 输出
	//xianx jiandan
	//coloradd.rgb = front.rgb * new_color.rgb;
	float alph = max(0.90, abs(offset-50.0)/50.0);
	      alph = min(0.80, alph);
	vec3 out_color ;
	     out_color.rgb =alph *colorcorner.rgb + (1.0 - alph)*colorDust.rgb;
   // gamma调整
	//out_color.r =  pow(1.0*new_color.r,0.4);
	//out_color.g =  pow(1.0*new_color.g,0.4);
	//out_color.b =  pow(1.0*new_color.b,0.4);

	gl_FragColor = vec4(out_color.rgb, color.a);
	//gl_FragColor =
}
