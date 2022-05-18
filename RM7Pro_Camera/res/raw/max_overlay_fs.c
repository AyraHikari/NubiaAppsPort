#extension GL_OES_EGL_image_external : require
precision mediump float;
varying vec2 vTextureCoord;
varying vec2 vPreviewTextureCoord;
uniform sampler2D sTargetTexture;
uniform samplerExternalOES sTexture;
uniform float threshold;
uniform float ratio;

void main()
{
		vec4 preview = texture2D(sTexture, vPreviewTextureCoord);
		vec4 color = texture2D(sTargetTexture, vTextureCoord);
		float pY = 0.299*preview.r + 0.587*preview.g + 0.114*preview.b;
		if(pY > threshold/255.0) {
            gl_FragColor = max(preview*ratio, color);
		} else {
		    gl_FragColor = color;
		}
}
