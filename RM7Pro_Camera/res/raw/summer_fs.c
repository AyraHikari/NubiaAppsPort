#extension GL_OES_EGL_image_external : require
precision mediump float;
varying vec2 vTextureCoord;
uniform samplerExternalOES sTexture;

mat3 matrix;

void main()
{
    vec4 color = texture2D(sTexture, vTextureCoord);
    vec3 new_color = color.rgb;

    //new_color.r = new_color.r*1.0 +0.0;
    new_color.g = new_color.g/2.0 +0.5;
    new_color.b = 0.4;

     gl_FragColor = vec4(new_color.rgb, color.a);
 }
