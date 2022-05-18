#extension GL_OES_EGL_image_external : require
precision mediump float;
varying vec2 vTextureCoord;
uniform sampler2D sTexture;
uniform float width;
uniform float height;

uniform sampler2D uFrontTexture;
varying vec2 vAreaEffectTextureCoord;


vec4 japen(vec2 vTextureCoord,vec4 front)
{


	    vec4 color = texture2D(sTexture, vTextureCoord);

		 vec3 new_color = color.rgb;
		// color.r =  (1.0-0.20) * color.r + 0.10;
		// color.g =  (1.0-0.20) * color.g + 0.10;
		// color.b =  (1.0-0.20) * color.b + 0.10;

		 color.r =  (color.r-0.10) /(1.0-0.1) ;
		 color.b =  (color.b) *(1.0-0.1) ;
		 color.rgb = max(color.rgb, 0.0);
		 vec3 colorSau ;

		 colorSau.r = 0.4785*pow(color.r,3.0) -  1.4711*pow(color.r,2.0)
		           + 1.6358*pow(color.r,1.0) + 0.2384*pow(color.r,0.0) ;
		 colorSau.g = 0.4785*pow(color.g,3.0) -  1.4711*pow(color.g,2.0)
		           + 1.6358*pow(color.g,1.0) + 0.2384*pow(color.g,0.0) ;
		 colorSau.b = 0.4785*pow(color.b,3.0) -  1.4711*pow(color.b,2.0)
		           + 1.6358*pow(color.b,1.0) + 0.2384*pow(color.b,0.0) ;

		 color.rgb = 0.75*color.rgb +colorSau.rgb *0.25;
/*
        if(color.r<0.5 ) new_color.r = color.r *front.r*2.0;
        else new_color.r =1.0 - (1.0- color.r) *(1.0-front.r)*2.0;

        if(color.g<0.5 ) new_color.g = color.g *front.g*2.0;
        else new_color.g =1.0 - (1.0- color.g) *(1.0-front.g)*2.0;

        if(color.b<0.5 ) new_color.b = color.b *front.b*2.0;
        else new_color.b =1.0 - (1.0- color.b) *(1.0-front.b)*2.0;

        new_color.rgb = new_color.rgb*(1.0-0.70) + 0.70*color.rgb;

        new_color.rgb = new_color.rgb  +0.25* new_color.rgb  *(vec3(1.0)-new_color.rgb );
*/
		new_color.rgb = color.rgb ;
        color.rgb = min(new_color.rgb, 1.0);
		color.rgb = max(new_color.rgb, 0.0);

	 return color;
}



void main() {

	vec4 front = texture2D(uFrontTexture, vAreaEffectTextureCoord);

	vec4 color = japen(vTextureCoord,front);

	gl_FragColor = vec4(color.r, color.g, color.b, color.a);

}








