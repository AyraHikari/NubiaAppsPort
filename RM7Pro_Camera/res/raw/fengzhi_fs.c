#extension GL_OES_EGL_image_external : require
precision mediump float;
varying vec2 vTextureCoord;
uniform samplerExternalOES sTexture;
uniform vec4 v4Color;
vec4 color;
float luminance( in vec3 color ) {
    return 0.2126 * color.r + 0.7152 * color.g + 0.0722 * color.b;
}
vec4 pass2(vec2 pos, float xDistance, float yDistance)
{
    float s00 = luminance(texture2D( sTexture, pos + vec2(-xDistance,yDistance) ).rgb);
	 float s10 = luminance(texture2D( sTexture, pos + vec2(-xDistance,0.0) ).rgb);
	 float s20 = luminance(texture2D( sTexture, pos + vec2(-xDistance,-yDistance) ).rgb);
	 float s01 = luminance(texture2D( sTexture, pos + vec2(0.0,yDistance) ).rgb);
	 float s21 = luminance(texture2D( sTexture, pos + vec2(0.0,-yDistance) ).rgb);
	 float s02 = luminance(texture2D( sTexture, pos + vec2(xDistance, yDistance) ).rgb);
	 float s12 = luminance(texture2D( sTexture, pos + vec2(xDistance, 0.0) ).rgb);
 	 float s22 = luminance(texture2D( sTexture, pos + vec2(xDistance, -yDistance) ).rgb);
    float sx = s00 + 2.0 * s10 + s20 - (s02 + 2.0 * s12 + s22);
    float sy = s00 + 2.0 * s01 + s02 - (s20 + 2.0 * s21 + s22);
    float dist = sx * sx + sy * sy;
	 if( dist > 0.7)
        return v4Color;
    else
    	 return vec4(0.0, 0.0, 0.0, 0.0);
}
void main() {
	 float xDistance = 1.0 / 1920.0;
	 float yDistance = 1.0 / 1080.0;
	 vec2 pos = vTextureCoord.st;
	 color = pass2(pos, xDistance, yDistance);
	 gl_FragColor =color;
}
