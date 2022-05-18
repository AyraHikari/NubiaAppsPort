precision mediump float;
varying vec2 vTextureCoord;
uniform sampler2D sTexture;
varying float vAlphaLocation[3];
void main()                         
{
    vec4 color = texture2D(sTexture, vTextureCoord);
    //if(1.0 != vAlphaLocation[1])
    //{
        //if(vTextureCoord.t > 0.0 && vTextureCoord.t < vAlphaLocation[0])
        //{
            //color = color * (vAlphaLocation[0] - vTextureCoord.t) / vAlphaLocation[0];
        //}else
        //{
            //color *= 0.0;
        //}
    
    //}

    color *= vAlphaLocation[0];



    gl_FragColor = color; 

}