#extension GL_OES_EGL_image_external : require
precision mediump float;
varying vec2 vTextureCoord;
uniform samplerExternalOES sTexture;

mat3 matrix;

void main()
{
	mat3 matrix = mat3(805.0f / 2048.0f, 715.0f / 2048.0f, 557.0f / 2048.0f,
            1575.0f / 2048.0f, 1405.0f / 2048.0f, 1097.0f / 2048.0f,
            387.0f / 2048.0f, 344.0f / 2048.0f, 268.0f / 2048.0f);
    vec4 color = texture2D(sTexture, vTextureCoord);
    vec3 new_color = min(matrix * color.rgb, 1.0);
     gl_FragColor = vec4(new_color.rgb, color.a);
 }
