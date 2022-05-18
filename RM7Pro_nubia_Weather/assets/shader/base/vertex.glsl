uniform mat4 uMVPMatrix; //总变换矩阵
attribute vec3 aPosition;  //顶点位置
attribute vec2 aTexCoor;   //顶点纹理坐标
attribute float aAlpha;    //顶点alpha值
varying vec2 vTextureCoord;  //用于传递给片元着色器的纹理坐标
varying float vAlpha;        //用于传递给片元着色器的alpha
void main()     
{
    gl_Position = uMVPMatrix * vec4(aPosition,1); //根据总变换矩阵计算此次绘制此顶点位置
    vTextureCoord = aTexCoor;//将接收的纹理坐标传递给片元着色器
    vAlpha = aAlpha;
}                      