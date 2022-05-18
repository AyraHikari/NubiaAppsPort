#extension GL_OES_EGL_image_external : require
precision mediump float;

uniform samplerExternalOES sTexture;
uniform float v_left;
uniform float v_top;
uniform float v_right;
uniform float v_bottom;
uniform float c_left;
uniform float c_top;
uniform float c_right;
uniform float c_bottom;

varying mat4 vSTMatrix;
varying vec4 vPos;

void main()
{
    if (v_left <= vPos.x && vPos.x <= v_right && v_top <= vPos.y && vPos.y <= v_bottom) {
        float x = (vPos.x - v_left) / (v_right - v_left) * (c_right - c_left) + c_left;
        float y = (vPos.y - v_top) / (v_bottom - v_top) * (c_bottom - c_top) + c_top;
        vec4 pos = vSTMatrix * vec4(x, y, 0.0, 1.0);
        gl_FragColor = texture2D(sTexture, pos.xy);
    }
    else {
        gl_FragColor = vec4(0.0, 0.0, 0.0, 0.0);
    }
}