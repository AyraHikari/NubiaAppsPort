uniform float uAlpha;
uniform float uAlphaChanged[6];
uniform float uAlphaChangedLoaction[6];
uniform mat4 uMVPMatrix;
attribute vec3 aPosition;
attribute vec2 aTexCoor;
varying float vAlpha;
varying vec2 vTextureCoord;

void main()     
{
    gl_Position = uMVPMatrix * vec4(aPosition, 1);

    //if(aPosition.y <= 500.0)
    //{
        //vAlpha = 0.0;
    //}else 
    //{
        //vAlpha = 1.0;
    //}
    
    if(aPosition.y <= uAlphaChangedLoaction[3])
    {
        vAlpha = 0.0;
    }else
    {
    vAlpha = 1.0;
    }
    
    if(aPosition.y <= uAlphaChangedLoaction[0])
    {
        vAlpha = uAlphaChanged[0];
    }
    else if(aPosition.y < uAlphaChangedLoaction[1])
    {
        vAlpha = uAlphaChanged[0] + (aPosition.y - uAlphaChangedLoaction[0]) *
        (uAlphaChanged[1] - uAlphaChanged[0]) / (uAlphaChangedLoaction[1] - uAlphaChangedLoaction[0]);
    }
    else if(aPosition.y < uAlphaChangedLoaction[2])
    {
        vAlpha = uAlphaChanged[1] + (aPosition.y - uAlphaChangedLoaction[1]) *
        (uAlphaChanged[2] - uAlphaChanged[1]) / (uAlphaChangedLoaction[2] - uAlphaChangedLoaction[1]);
    }
    else if(aPosition.y < uAlphaChangedLoaction[3])
    {
        vAlpha = uAlphaChanged[2] + (aPosition.y - uAlphaChangedLoaction[2]) *
        (uAlphaChanged[3] - uAlphaChanged[2]) / (uAlphaChangedLoaction[3] - uAlphaChangedLoaction[2]);
    }
    else if(aPosition.y < uAlphaChangedLoaction[4])
    {
        vAlpha = uAlphaChanged[3] + (aPosition.y - uAlphaChangedLoaction[3]) *
        (uAlphaChanged[4] - uAlphaChanged[3]) / (uAlphaChangedLoaction[4] - uAlphaChangedLoaction[3]);
    }
    else if(aPosition.y < uAlphaChangedLoaction[5])
    {
        vAlpha = uAlphaChanged[4] + (aPosition.y - uAlphaChangedLoaction[4]) *
        (uAlphaChanged[5] - uAlphaChanged[4]) / (uAlphaChangedLoaction[5] - uAlphaChangedLoaction[4]);
    }
    vAlpha *= uAlpha;
    vTextureCoord = aTexCoor;
}