#version 310 es
#extension GL_EXT_YUV_target : require
#extension GL_OES_EGL_image_external_essl3 : require

precision highp float;

in vec2 vTextureCoord;
out vec4 uFragColor;

const float OriginWidth=3264.0;
const float OriginHeight=2448.0;
const float k1=-0.8678500000000;
const float k2=0.48860000000000;
const float k3=-0.0348560000000;
const float k4=-0.8268850000000;
const float k5=0.42410000000000;
const float k6=-0.00000000000000;
const float p1=0.000417000000000;
const float p2=-0.0005642000000;
const float fx=1482.498000000000;
const float u0=1626.558000000000;
const float fy=1482.498000000000;
const float v0=1239.674000000000;

uniform float subImgInRawLeftTopX;
uniform float subImgInRawLeftTopY;
uniform float subImgInRawWidth;
uniform float subImgInRawHeight;
uniform float width;
uniform float height;

uniform samplerExternalOES sTexture;

vec2 centerCropThenScale(vec2 vTexCoor) {
    float scale = 0.99;
    vTexCoor.x = (vTexCoor.x - 0.5) * scale + 0.5;
    vTexCoor.y = (vTexCoor.y - 0.5) * scale + 0.5;
    return vTexCoor;
}

vec2 getDistortedTexCoordition(vec2 vTexCoor) {

    float scaleX = width/subImgInRawWidth;
    float scaleY = height/subImgInRawHeight;

    float u_in_raw_image = vTexCoor.x*width/scaleX + subImgInRawLeftTopX;
    float v_in_raw_image = vTexCoor.y*height/scaleY + subImgInRawLeftTopY;
    
    float x=(u_in_raw_image - u0)/fx;
    float y=(v_in_raw_image - v0)/fy;

    float r = x*x + y*y;
    float r_square = r*r;
    float r_cubic = r*r*r;
    float k_radial = (1.0f + (k3 * r_cubic + k2 * r_square + k1 * r)) /
                     (1.0f + (k6 * r_cubic + k5 * r_square + k4 * r));
    float k_detailx = 2.0*p1*x*y + p2*(r + 2.0*x*x);
    float k_detaily = 2.0*p2*x*y + p1*(r + 2.0*y*y);

    float x_distorted = (x*k_radial + k_detailx);
    float y_distorted = (y*k_radial + k_detaily);

    float u_distorted_in_raw_image = (x_distorted*fx + u0);
    float v_distorted_in_raw_image = (y_distorted*fy + v0);

    float u_distorted = (u_distorted_in_raw_image - subImgInRawLeftTopX)*scaleX/width;
    float v_distorted = (v_distorted_in_raw_image - subImgInRawLeftTopY)*scaleY/height;

    return vec2(u_distorted, v_distorted);
}

void main() {
    uFragColor = texture(sTexture, centerCropThenScale(getDistortedTexCoordition(vTextureCoord)));
}
