#extension GL_OES_EGL_image_external : require
precision mediump float;
varying vec2 vTextureCoord;
varying vec2 vPreviewTextureCoord;
varying vec2 vChangeTextureCoord;
uniform sampler2D sBlurTexture;
uniform sampler2D sChangeTexture;
uniform samplerExternalOES sTexture;

void main()
{
        vec4 previewColor = texture2D(sTexture, vPreviewTextureCoord);
        vec4 blurColor = texture2D(sBlurTexture, vTextureCoord);
        float alpha = texture2D(sChangeTexture, vChangeTextureCoord).r;
        gl_FragColor = (1.0f - alpha) * blurColor + alpha * previewColor;
}
