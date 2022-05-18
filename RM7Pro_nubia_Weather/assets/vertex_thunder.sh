uniform mat4 uMVPMatrix;
attribute vec3 aPosition;
attribute vec2 aTexCoor;
varying vec2 vTextureCoord;
uniform float uAlphaLocation[3];

varying float vAlphaLocation[3];

void main()     
{
    gl_Position = uMVPMatrix * vec4(aPosition, 1);
    vAlphaLocation[0] = uAlphaLocation[0];
    vTextureCoord = aTexCoor;
   
}
