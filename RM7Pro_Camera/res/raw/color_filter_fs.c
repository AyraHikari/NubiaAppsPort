
#extension GL_OES_EGL_image_external : require
precision mediump float;
varying vec2 vTextureCoord;
uniform samplerExternalOES sTexture;
uniform int uColorFilter;

mat3 matrix;

void main()
{
	float luminance = 65.0/255.0;


    vec4 color = texture2D(sTexture, vTextureCoord);

    float y = 0.0;
    float u = 0.0;
    float v = 0.0;

    y =  0.2568 * color.r + 0.5014 *color.g +0.0979*color.b ;
	u = -0.1482 * color.r + (-0.2910) *color.g + 0.4392*color.b ;
	v =  0.4392 * color.r + (-0.3678) *color.g +(-0.0714)*color.b ;
	if(uColorFilter == 1) {


		u = -0.0 * y + (1.0) *u + 0.0*v -7.2/255.0;
		v =  0.0 * y + (0.0) *u +(1.0)*v +35.0/255.0;
		y =  1.0 * y + (0.0) *u +0.0*v + 7.0/255.0;


		color.r =  1.164 * (y) + 0.0* u +  1.596 *v;
		color.g =  1.164 * (y) +(-0.3918) *u + (-0.8130)*v;
		color.b =  1.164 * (y) +2.0172 *u + 0.0 *v;
	}
	else if(uColorFilter == 2) {

		u = -0.0 * y + (1.0) *u + 0.0*v - 20.154/255.0;
		v =  0.0 * y + (0.0) *u +(1.0)*v + 27.6/255.0;
		y =  1.0 * y + (0.0) *u +0.0*v + 38.0/255.0;


		color.r =  1.164 * (y) + 0.0* u +  1.596 *v;
		color.g =  1.164 * (y) +(-0.3918) *u + (-0.8130)*v;
		color.b =  1.164 * (y) +2.0172 *u + 0.0 *v;
	}
	else if(uColorFilter == 3) {

		u = -0.0 * y + (1.0) *u + 0.0*v  - 43.92/255.0;
		v =  0.0 * y + (0.0) *u +(1.0)*v + 14.82/255.0;
		y =  1.0 * y + (0.0) *u +0.0*v + 59.93/255.0;



		color.r =  1.164 * (y) + 0.0* u +  1.596 *v;
		color.g =  1.164 * (y) +(-0.3918) *u + (-0.8130)*v;
		color.b =  1.164 * (y) +2.0172 *u + 0.0 *v;
	}
	else if(uColorFilter == 4) {

		u = -0.0 * y + (1.0) *u + 0.0*v - 31.263/255.0;
		v =  0.0 * y + (0.0) *u +(1.0)*v -24.635/255.0;
		y =  1.0 * y + (0.0) *u +0.0*v + 42.619/255.0;


		color.r =  1.164 * (y) + 0.0* u +  1.596 *v;
		color.g =  1.164 * (y) +(-0.3918) *u + (-0.8130)*v;
		color.b =  1.164 * (y) +2.0172 *u + 0.0 *v;
	}
	else if(uColorFilter == 5) {

		u = -0.0 * y + (1.0) *u + 0.0*v + 5.712/255.0;
		v =  0.0 * y + (0.0) *u +(1.0)*v- 35.136 /255.0;
		y =  1.0 * y + (0.0) *u +0.0*v + 60.656/255.0;



		color.r =  1.164 * (y) + 0.0* u +  1.596 *v;
		color.g =  1.164 * (y) +(-0.3918) *u + (-0.8130)*v;
		color.b =  1.164 * (y) +2.0172 *u + 0.0 *v;
	}
	else if(uColorFilter == 6) {

		u = -0.0 * y + (1.0) *u + 0.0*v + 30.544/255.0 ;
		v =  0.0 * y + (0.0) *u +1.0*v  - 11.856/255.0;
		y =  1.0 * y + (0.0) *u +0.0*v  + 35.136/255.0;



		color.r =  1.164 * (y) + 0.0* u +  1.596 *v;
		color.g =  1.164 * (y) +(-0.3918) *u + (-0.8130)*v;
		color.b =  1.164 * (y) +2.0172 *u + 0.0 *v;


	}
	else if(uColorFilter == 7) {

        float yy =  0.943 * y + (-0.0988) *v +0.0*u + 46.413/255.0;
        float vv = -0.2557 * y + (0.557) *v + 0.0*u  + 7.881/255.0;
        float uu =  0.04157 * y + (0.0721) *v +(1.0)*u + 38.175/255.0;



		color.r =  1.164 * (yy) + 0.0* uu +  1.596 *vv;
		color.g =  1.164 * (yy) +(-0.3918) *uu + (-0.8130)*vv;
		color.b =  1.164 * (yy) +2.0172 *uu + 0.0 *vv;


	}
	else if(uColorFilter == 8) {
		if(vTextureCoord.t > 0.6) {
			color.r -= luminance;
			color.g -= luminance;
			color.b -= luminance;
		}
		else {
			float l = luminance*vTextureCoord.t/0.6;
			color.r -= l;
			color.g -= l;
			color.b -= l;
		}
	}
	else if(uColorFilter == 9) {
		if(vTextureCoord.t < 0.4) {
			color.r -= luminance;
			color.g -= luminance;
			color.b -= luminance;
		}
		else {
			float l = luminance*(1.0 - vTextureCoord.t)/0.6;
			color.r -= l;
			color.g -= l;
			color.b -= l;
		}
	}
	else if(uColorFilter == 10) {
		if(vTextureCoord.s < 0.4) {
			color.r -= luminance;
			color.g -= luminance;
			color.b -= luminance;
		}
		else {
			float l = luminance*(1.0 - vTextureCoord.s)/0.6;
			color.r -= l;
			color.g -= l;
			color.b -= l;
		}
	}
	else if(uColorFilter == 11) {
		if(vTextureCoord.s > 0.6) {
			color.r -= luminance;
			color.g -= luminance;
			color.b -= luminance;
		}
		else {
			float l = luminance*vTextureCoord.s/0.6;
			color.r -= l;
			color.g -= l;
			color.b -= l;
		}
	}
    gl_FragColor = color;
 }
