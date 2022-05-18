uniform float uAlpha;
uniform float uAlphaBeginY;
uniform float uAlphaHeight;
uniform mat4 uMVPMatrix;
attribute vec3 aPosition;
attribute vec2 aTexCoor;
varying float vAlpha;
varying vec2 vTextureCoord;

void main()     
{
    gl_Position = uMVPMatrix * vec4(aPosition, 1);
    
    if ((aPosition.y > uAlphaBeginY) && (uAlphaHeight > 0.0))
    {
        vAlpha = 1.0 - (aPosition.y - uAlphaBeginY) / uAlphaHeight * 0.9;
        vAlpha *= uAlpha;
    }
    else
    {
        vAlpha = uAlpha;
    }
    
    vTextureCoord = aTexCoor;
}