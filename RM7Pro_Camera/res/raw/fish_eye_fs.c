#extension GL_OES_EGL_image_external : require
precision mediump float;
varying vec2 vTextureCoord;
uniform samplerExternalOES sTexture;
uniform float width;
uniform float height;
uniform float scale;


void main() {
//

	const float m_pi_2 = 1.570963;

	float alpha = scale * 2.0 + 0.75;
	float bound2 = 0.25 * (1.0 + width * width / (height * height));
	float bound = sqrt(bound2);
	float radius = 1.15 * bound;
	float radius2 = radius * radius;
	float max_radian = m_pi_2 - atan(alpha * sqrt(radius2 - bound2), bound);
	float factor = bound / max_radian;

	vec2 coord = vTextureCoord - vec2(0.5, 0.5);
	highp vec2 scaled_coord = coord * scale;
	float dist = length(scaled_coord);
	if(dist <= 0.001){
	    gl_FragColor = texture2D(sTexture, vTextureCoord);
	    return;
	}
	float radian = m_pi_2 - atan(alpha * sqrt(radius2 - dist * dist), dist);
	float scalar = radian * factor / dist;
	vec2 new_coord = coord * scalar + vec2(0.5, 0.5);
	gl_FragColor = texture2D(sTexture, new_coord);
}
