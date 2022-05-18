#extension GL_OES_EGL_image_external : require
precision mediump float;
varying vec4 vTextureCoord;
//预览
uniform samplerExternalOES sTexture;
//预览纹理变换矩阵
uniform mat4 uSTMatrix;
//放大框显示内容的中心
uniform float uX;
uniform float uY;
//放大框的中心坐标
uniform float uXOfShow;
uniform float uYOfShow;
//预览的宽高
uniform float uWidth;
uniform float uHeight;
//放大框是圆时，代表半径，放大框是正方形时，代表边长的一半
uniform float uRadius;
//放大比
uniform float uRatio;
//放大框里是否打开景深预测
uniform int uFangZhi;
//放大框里景深预测使用的颜色
uniform vec4 v4Color;

float luminance(vec3 color) {
    return 0.2126 * color.r + 0.7152 * color.g + 0.0722 * color.b;
}
vec4 pass2(vec2 pos, float xDistance, float yDistance)
{
    float s00 = luminance(texture2D( sTexture, pos + vec2(-xDistance,yDistance) ).rgb);
    float s10 = luminance(texture2D( sTexture, pos + vec2(-xDistance,0.0) ).rgb);
    float s20 = luminance(texture2D( sTexture, pos + vec2(-xDistance,-yDistance) ).rgb);
    float s01 = luminance(texture2D( sTexture, pos + vec2(0.0,yDistance) ).rgb);
    float s21 = luminance(texture2D( sTexture, pos + vec2(0.0,-yDistance) ).rgb);
    float s02 = luminance(texture2D( sTexture, pos + vec2(xDistance, yDistance) ).rgb);
    float s12 = luminance(texture2D( sTexture, pos + vec2(xDistance, 0.0) ).rgb);
    float s22 = luminance(texture2D( sTexture, pos + vec2(xDistance, -yDistance) ).rgb);
    float sx = s00 + 2.0 * s10 + s20 - (s02 + 2.0 * s12 + s22);
    float sy = s00 + 2.0 * s01 + s02 - (s20 + 2.0 * s21 + s22);
    float dist = sx * sx + sy * sy;
    if(dist > 0.7)
        return v4Color;
    else
        return texture2D(sTexture, pos);
}

void main()
{
	vec2 coord;
	vec4 color;
	//圆形
	//貌似由于精度的问题，需要将距离缩小再比较
	float scale = uWidth;
	float dx = (vTextureCoord.x*uWidth - uXOfShow)/scale;
	float dy = (vTextureCoord.y*uHeight - uYOfShow)/scale;
	float d2 = sqrt(dx*dx+dy*dy);
	if(d2 < uRadius/scale) {
		vec2 position = vTextureCoord.xy - vec2(uXOfShow/uWidth, uYOfShow/uHeight) + vec2(uX/uWidth, uY/uHeight);
		coord = position - vec2(uX/uWidth, uY/uHeight);
		//coord = vTextureCoord.xy - vec2(uX/uWidth, uY/uHeight);
		coord = coord/uRatio;
		coord = coord + vec2(uX/uWidth, uY/uHeight);
		if(uFangZhi > 0) {
			color = pass2((uSTMatrix*vec4(coord, vTextureCoord.z, vTextureCoord.w)).st, 1.0/uWidth, 1.0/uHeight);
		} else {
			color = texture2D(sTexture, (uSTMatrix*vec4(coord, vTextureCoord.z, vTextureCoord.w)).st);
		}
	}
	/*红色框
	else if(d2 < (uRadius+1.0)/scale) {
		gl_FragColor = vec4(1.0, 0.0, 0.0, 1.0);
		return;
	}*/
	/*正方形
	float x = vTextureCoord.x*uWidth;
	float y = vTextureCoord.y*uHeight;
	if(uX-uRadius < x&&x < uX+uRadius
			&& uY-uRadius < y&&y < uY+uRadius) {
		coord = vTextureCoord.xy - vec2(uX/uWidth, uY/uHeight);
		coord = coord/uRatio;
		coord = coord + vec2(uX/uWidth, uY/uHeight);
	}*/
	else {
		color = vec4(0.0, 0.0, 0.0, 0.0);
	}

	gl_FragColor = color;
}
