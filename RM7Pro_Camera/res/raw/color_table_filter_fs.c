#version 310 es
#extension GL_OES_EGL_image_external_essl3 : require
precision mediump float;
precision mediump sampler2D;
precision mediump sampler3D;

in vec2 vTextureCoord;
out vec4 uFragColor;

uniform samplerExternalOES sTexture;
uniform sampler3D texColorFilter;

void main()
{
    vec4 srcColor = texture(sTexture, vTextureCoord);
    vec4 dstcolor = texture(texColorFilter, srcColor.rgb);
    uFragColor = vec4(dstcolor.bgr, 1.0f);
}
