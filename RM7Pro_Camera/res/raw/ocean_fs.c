#extension GL_OES_EGL_image_external : require
precision mediump float;
varying vec2 vTextureCoord;
uniform samplerExternalOES sTexture;

mat3 matrix;

void main()
{
    vec4 color = texture2D(sTexture, vTextureCoord);
    vec3 new_color = color.rgb;
    if(new_color.r < 2.0/3.0) new_color.r  = 0.0;
    else new_color.r  = new_color.r  - (1.0-new_color.r )*2.0 ;

    if(new_color.g < 1.0/3.0) new_color.g  = 0.0;
    else new_color.g  = 1.5*new_color.g - 0.5 ;

    new_color.b  = new_color.b ;

     gl_FragColor = vec4(new_color.rgb, color.a);
 }
