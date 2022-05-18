#extension GL_OES_EGL_image_external : require
precision mediump float;
varying vec2 vTextureCoord;
uniform samplerExternalOES sTexture;
uniform float width;
uniform float height;

uniform sampler2D uFrontTexture;
varying vec2 vAreaEffectTextureCoord;

float luminance(in vec3 color ) {
    return 0.2126 * color.r + 0.7152 * color.g + 0.0722 * color.b;
}

vec4 pass2(vec2 vTextureCoord, float xDistance, float yDistance ,vec4 front)
{   vec2 pos = vTextureCoord.st;
    float s00 = luminance(texture2D( sTexture, pos + vec2(-xDistance,yDistance) ).rgb);
	float s10 = luminance(texture2D( sTexture, pos + vec2(-xDistance,0.0) ).rgb);
	float s20 = luminance(texture2D( sTexture, pos + vec2(-xDistance,-yDistance) ).rgb);
	float s01 = luminance(texture2D( sTexture, pos + vec2(0.0,yDistance) ).rgb);
	float s21 = luminance(texture2D( sTexture, pos + vec2(0.0,-yDistance) ).rgb);
	float s02 = luminance(texture2D( sTexture, pos + vec2(xDistance, yDistance) ).rgb);
	float s12 = luminance(texture2D( sTexture, pos + vec2(xDistance, 0.0) ).rgb);
	float s22 = luminance(texture2D( sTexture, pos + vec2(xDistance, -yDistance) ).rgb);

    float sx = s00 + 1.0 * s10 + s20 - (s02 + 1.0 * s12 + s22);
    float sy = s00 + 1.0 * s01 + s02 - (s20 + 1.0 * s21 + s22);

    float dist = sx * sx + sy * sy;

    	  dist =sqrt(dist) ;

    	  dist = dist + 0.0 * dist*(dist-0.5)*(dist-1.0);

    	 // dist = (dist - 0.25 ) * 2.0 +0.25;
    	  dist = dist >1.0? 1.0:dist;
          dist = dist <0.0? 0.0:dist;
    float newWidth = pos.s;
    float newHeight= pos.t;

    float  media_r = (0.5 + 0.250);
    float  media_g = (0.5 - 0.250);


    float r = 0.0,g = 0.0 ,b = 0.0;
    if(newWidth <media_r) r = (media_r -newWidth)  *(1.0-0.0)/media_r  +0.0 ;
    else  r = 0.0 ;
    if(newWidth >media_g) g = (newWidth - media_g)  *(1.0-0.0)/(1.0 - media_g) + 0.0;
    else  g = 0.0 ;

    //r = r >1.0? 1.0:r;
   // g = g >1.0? 1.0:g;

    r = 1.0-dist + front.r >1.0?1.0:1.0-dist + front.r ;
    g = 1.0-dist + front.g >1.0?1.0:1.0-dist + front.g ;
    b = 1.0-dist + + front.b >1.0?1.0:1.0-dist +  front.b  ;



    return vec4(r, g, b, 1.0);

    //if( dist > 0.01)
     //   return vec4(1.0, 1.0, 1.0, 1.0);
    //else
     //  return vec4(0.0, 0.0, 0.0, 1.0);
}

void main() {
	float xDistance = 1.0 / height;
	float yDistance = 1.0 / width;

	vec4 front = texture2D(uFrontTexture, vAreaEffectTextureCoord);

	vec4 color = pass2(vTextureCoord, xDistance, yDistance,front);

	gl_FragColor = vec4(color.r, color.g, color.b, color.a);
	//gl_FragColor =
}
