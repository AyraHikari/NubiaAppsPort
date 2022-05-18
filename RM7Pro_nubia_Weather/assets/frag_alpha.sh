precision mediump float;
uniform sampler2D sTexture;
varying float vAlpha;
varying vec2 vTextureCoord;

void main()                         
{                 
    gl_FragColor = texture2D(sTexture, vTextureCoord);
    gl_FragColor *= vAlpha;
}              