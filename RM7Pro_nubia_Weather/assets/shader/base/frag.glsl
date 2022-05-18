precision mediump float;
varying vec2 vTextureCoord; //接收从顶点着色器过来的参数
varying float vAlpha;
uniform sampler2D sTexture;//纹理内容数据
void main()                         
{        
	vec4 color = texture2D(sTexture, vTextureCoord);
    gl_FragColor = color;
    gl_FragColor *= vAlpha;//pre-multiplied alpha
}              