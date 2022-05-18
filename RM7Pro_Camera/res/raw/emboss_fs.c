#extension GL_OES_EGL_image_external : require
precision mediump float;
varying vec2 vTextureCoord;
uniform samplerExternalOES sTexture;
uniform float width;
uniform float height;



float luminance(in vec3 color ) {
    return 0.299 * color.r + 0.587 * color.g + 0.114 * color.b;
}

vec4 pass2(vec2 vTextureCoord, float xDistance, float yDistance)
{   vec2 pos = vTextureCoord.st;
    //float s00 = luminance(texture2D( sTexture, pos + vec2(-xDistance,yDistance) ).rgb);
	//float s10 = luminance(texture2D( sTexture, pos + vec2(-xDistance,0.0) ).rgb);
	//float s20 = luminance(texture2D( sTexture, pos + vec2(-xDistance,-yDistance) ).rgb);
	//float s01 = luminance(texture2D( sTexture, pos + vec2(0.0,yDistance) ).rgb);
	//float s21 = luminance(texture2D( sTexture, pos + vec2(0.0,-yDistance) ).rgb);
	//float s02 = luminance(texture2D( sTexture, pos + vec2(xDistance, yDistance) ).rgb);
	//float s12 = luminance(texture2D( sTexture, pos + vec2(xDistance, 0.0) ).rgb);
	//float s22 = luminance(texture2D( sTexture, pos + vec2(xDistance, -yDistance) ).rgb);

    float s1 = luminance(texture2D( sTexture, pos + vec2(0.0, 0.0) ).rgb);
	float s2 = luminance(texture2D( sTexture, pos + vec2(-xDistance, yDistance) ).rgb);

   // float sx = s00 + 2.0 * s10 + s20 - (s02 + 2.0 * s12 + s22);
   // float sy = s00 + 2.0 * s01 + s02 - (s20 + 2.0 * s21 + s22);

    float dist = s1 -s2 ;

    float r = 0.0,g = 0.0 ,b = 0.0;


    r = dist*4.0+0.5>0.0?dist*4.0+0.5:0.0 ;
    r = r >1.0?1.0:r;
    //g = 1.0-dist + g >1.0?1.0:1.0-dist + g ;
    //b = 1.0-dist + b >1.0?1.0:1.0-dist + b ;



    return vec4(r, r, r, 1.0);


}

void main() {
	float xDistance = 1.0 / height;
	float yDistance = 1.0 / width;



	vec4 color = pass2(vTextureCoord, xDistance, yDistance);

	gl_FragColor = vec4(color.r, color.g, color.b, color.a);
	//gl_FragColor =
}
