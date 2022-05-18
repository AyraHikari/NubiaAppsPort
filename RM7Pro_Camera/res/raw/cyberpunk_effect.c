#version 310 es
#extension GL_OES_EGL_image_external_essl3 : require
precision mediump float;

in vec2 vTextureCoord;
out vec4 uFragColor;
uniform sampler2D sTexture;

vec3 rgb2hsl(vec3 rgb)
{
    int maxIdx;
    float minColor, maxColor;
    float h, s, l;

    if (rgb.r > rgb.g)
    {
        if (rgb.r > rgb.b)
        {
            maxIdx = 0;
            maxColor = rgb.r;
        }
        else
        {
            maxIdx = 2;
            maxColor = rgb.b;
        }

        if (rgb.g < rgb.b)
        {
            minColor = rgb.g;
        }
        else
        {
            minColor = rgb.b;
        }
    }
    else
    {
        if (rgb.g > rgb.b)
        {
            maxIdx = 1;
            maxColor = rgb.g;
        }
        else
        {
            maxIdx = 2;
            maxColor = rgb.b;
        }

        if (rgb.r < rgb.b)
        {
            minColor = rgb.r;
        }
        else
        {
            minColor = rgb.b;
        }
    }

    l = (minColor + maxColor) / 2.0f;

    if (minColor == maxColor)
    {
        s = 0.0f;
        h = 0.0f;
        return vec3(h, s, l);
    }
    else if (l < 0.5f)
    {
        s = (maxColor - minColor) / (maxColor + minColor);
    }
    else
    {
        s = (maxColor - minColor) / (2.0f - maxColor - minColor);
    }

    switch(maxIdx)
    {
        case 0://red
            h = 6.0f + (rgb.g - rgb.b) / (maxColor - minColor);
            break;

        case 1://green
            h = 2.0f + (rgb.b - rgb.r) / (maxColor - minColor);
            break;

        case 2://blue
            h = 4.0f + (rgb.r - rgb.g) / (maxColor - minColor);
            break;
    }

    h /= 6.0f;

    if (h < 0.0f)
    {
        h += 1.0f;
    }
    else if (h > 1.0f)
    {
        h -= 1.0f;
    }

    return vec3(h, s, l);
}

float getHSLColor(float temp1, float temp2, float temp3)
{
    if (temp3 < 0.0f)
    {
        temp3 += 1.0f;
    }
    else if (temp3 > 1.0f)
    {
        temp3 -= 1.0f;
    }

    if (6.0f * temp3 < 1.0f)
    {
        return temp1 + (temp2 - temp1) * 6.0f * temp3;
    }
    else if (2.0f * temp3 < 1.0f)
    {
        return temp2;
    }
    else if (3.0f * temp3 < 2.0f)
    {
        return temp1 + (temp2 - temp1) * 6.0f * (2.0f / 3.0f - temp3);
    }
    else
    {
        return temp1;
    }
}

vec3 hsl2rgb(vec3 hsl)
{
    float temp1, temp2;
    float rtemp3, gtemp3, btemp3;
    float h = hsl[0];
    float s = hsl[1];
    float l = hsl[2];
    vec3 rgb;

    if (0.0f == s)
    {
        return vec3(l, l, l);
    }

    if (l < 0.5f)
    {
        temp2 = l * (1.0f + s);
    }
    else
    {
        temp2 = l + s - l * s;
    }

    temp1 = 2.0f * l - temp2;

    rtemp3 = h + 0.3333f;
    rgb.r = getHSLColor(temp1, temp2, rtemp3);
    gtemp3 = h;
    rgb.g = getHSLColor(temp1, temp2, gtemp3);
    btemp3 = h - 0.3333f;
    rgb.b = getHSLColor(temp1, temp2, btemp3);
    return rgb;
}

const float temperature = 20000.0f;
const float temperatureStrength = 1.0f;
// Valid from 1000 to 40000 K (and additionally 0 for pure full white)
vec3 colorTemperatureToRGB(const in float temperature){
    // Values from: http://blenderartists.org/forum/showthread.php?270332-OSL-Goodness&p=2268693&viewfull=1#post2268693
    mat3 m = (temperature <= 6500.0) ? mat3(vec3(0.0, -2902.1955373783176, -8257.7997278925690),
                                            vec3(0.0, 1669.5803561666639, 2575.2827530017594),
                                            vec3(1.0, 1.3302673723350029, 1.8993753891711275)) :
             mat3(vec3(1745.0425298314172, 1216.6168361476490, -8257.7997278925690),
                  vec3(-2666.3474220535695, -2173.1012343082230, 2575.2827530017594),
                  vec3(0.55995389139931482, 0.70381203140554553, 1.8993753891711275));
    return clamp(vec3(m[0] / (vec3(clamp(temperature, 1000.0, 40000.0)) + m[1]) + m[2]), vec3(0.0), vec3(1.0));
}

float smoothPlus(float e0, float e1, float e2, float e3, float x) {
    return (smoothstep(e0, e1, x) - smoothstep(e2, e3, x));
}


vec4 rgbShift() {
    vec2 rs = vec2(-0.00f,0.005f);
    vec2 gs = vec2(0.00f,-0.005f);
    vec2 bs = vec2(0.00f,-0.005f);

    float r = texture(sTexture, vTextureCoord+rs).x;
    float g = texture(sTexture, vTextureCoord+gs).y;
    float b = texture(sTexture, vTextureCoord+bs).z;

    return vec4(r,g,b,1.0);
}

vec3 cyberpunkEffect(vec4 inColor) {
    vec3 color = inColor.rgb;
    //调整色温为冷色温
    vec3 color1 = mix(color, color * colorTemperatureToRGB(temperature), temperatureStrength);

    //对不同颜色进行颜色调整
    vec3 inHSL = rgb2hsl(color);
    vec3 resultHSL = rgb2hsl(color1);

    float smooth_step_gap = 10.0f;
    vec2 orange_hue_range = vec2(15.0, 45.0);//橙色
    vec2 yellow_hue_range = vec2(45.0, 75.0);//黄色
    vec2 green_hue_range = vec2(105.0, 135.0);//绿色
    vec2 shadow_green_hue_range = vec2(135.0, 160.0);//浅绿色
    vec2 blue_hue_range = vec2(225.0, 255.0);//蓝色
    vec2 hue_range;

    if (resultHSL.x > 345.0/360.0 || resultHSL.x < 15.0/360.0) //红色
    {
//        resultHSL.x -= 20.0/360.0;
//        resultHSL.x = 120.0/360.0;
    } else if (resultHSL.x > orange_hue_range.x/360.0 && resultHSL.x < orange_hue_range.y/360.0) //橙色
    {
        hue_range = orange_hue_range;
        resultHSL.x -= 30.0/360.0 * smoothPlus(hue_range.x/360.0,(hue_range.x+smooth_step_gap)/360.0,
                                               (hue_range.y-smooth_step_gap)/360.0, hue_range.y/360.0, resultHSL.x);
    } else if (resultHSL.x > yellow_hue_range.x/360.0 && resultHSL.x < yellow_hue_range.y/360.0) //黄色
    {
        //黄色
        hue_range = yellow_hue_range;
        resultHSL.x -= 30.0/360.0 * smoothPlus(hue_range.x/360.0,(hue_range.x+smooth_step_gap)/360.0,
                                               (hue_range.y-smooth_step_gap)/360.0, hue_range.y/360.0, resultHSL.x);
    } else if (resultHSL.x > green_hue_range.x/360.0 && resultHSL.x < green_hue_range.y/360.0)// 绿色
    {
        // 绿色
        hue_range = green_hue_range;
        resultHSL.x -= 20.0/360.0 * smoothPlus(hue_range.x/360.0,(hue_range.x+smooth_step_gap)/360.0,
                                               (hue_range.y-smooth_step_gap)/360.0, hue_range.y/360.0, resultHSL.x);
    } else if (resultHSL.x > shadow_green_hue_range.x/360.0 && resultHSL.x < shadow_green_hue_range.y/360.0)// 浅绿色
    {
        // 浅绿色
        hue_range = shadow_green_hue_range;
        resultHSL.x -= 20.0/360.0 * smoothPlus(hue_range.x/360.0,(hue_range.x+smooth_step_gap)/360.0,
                                               (hue_range.y-smooth_step_gap)/360.0, hue_range.y/360.0, resultHSL.x);
    } else if (resultHSL.x > blue_hue_range.x/360.0 && resultHSL.x < blue_hue_range.y/360.0)// 蓝色
    {
        // 蓝色
        hue_range = blue_hue_range;
        resultHSL.x += 20.0/360.0 * smoothPlus(hue_range.x/360.0,(hue_range.x+smooth_step_gap)/360.0,
                                               (hue_range.y-smooth_step_gap)/360.0, hue_range.y/360.0, resultHSL.x);
    }


    resultHSL.x = mod(resultHSL.x + 1.0f, 1.0f);

    //保持原图亮度并从HSL空间转换到RGB空间
    vec3 luminancePreservedRGB = hsl2rgb(vec3(resultHSL.x, resultHSL.y, inHSL.z));

    //增强图像对比度
    float contrast = 1.3f;
    luminancePreservedRGB  = (luminancePreservedRGB - vec3(0.5)) * contrast + vec3(0.5);
    return luminancePreservedRGB;
}

void main()
{
    vec4 inColor = texture(sTexture, vTextureCoord);
    vec4 inRgbShiftColor = rgbShift();

    vec3 effectColor = cyberpunkEffect(inColor);
    vec3 rgbShiftcyberEffect = cyberpunkEffect(inRgbShiftColor);

    float light = rgb2hsl(inColor.rgb).z;
    vec3 outColor = mix(effectColor, rgbShiftcyberEffect, smoothstep(0.7, 0.8,light));

    uFragColor = vec4(outColor, inColor.a);
}
