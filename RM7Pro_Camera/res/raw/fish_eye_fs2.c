#version 310 es
#extension GL_OES_EGL_image_external_essl3 : require
precision highp float;

in vec2 vTextureCoord;
out vec4 uFragColor;

uniform float uWidth;
uniform float uHeight;
uniform samplerExternalOES sTexture;

void main()
{
    const float angleMax = 90.0f / 57.3f;
    float x = vTextureCoord.x - 0.5f;
    float y = vTextureCoord.y - 0.5f;
    float xEx = x * uWidth;
    float yEx = y * uHeight;
    float lenMax = sqrt(uWidth * uWidth / 4.0f + uHeight * uHeight / 4.0f);
    float R = lenMax / sin(angleMax);
    float len = sqrt(xEx * xEx + yEx * yEx);

    if (len > 0.001f)
    {
        float angle = asin(len / R);
        float ratio = angle / angleMax;
        float scale = ratio / (len / lenMax);
        x *= scale;
        y *= scale;
    }

    vec2 texCoor = vec2(x + 0.5f, y + 0.5f);
    uFragColor = texture(sTexture, texCoor);
}
