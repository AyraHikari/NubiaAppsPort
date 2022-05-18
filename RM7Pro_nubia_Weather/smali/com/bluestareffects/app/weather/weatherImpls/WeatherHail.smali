.class Lcom/bluestareffects/app/weather/weatherImpls/WeatherHail;
.super Lcom/bluestareffects/app/weather/weatherImpls/Weather;
.source "WeatherHail.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/WeatherType;Lcom/bluestareffects/app/weather/api/ResourceManager;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instance"    # Lcom/bluestareffects/sdk/core/EffectsInstance;
    .param p3, "parentModule"    # Lcom/bluestareffects/sdk/materials/module/ModuleGroup;
    .param p4, "type"    # Lcom/bluestareffects/app/weather/api/WeatherType;
    .param p5, "resourceManager"    # Lcom/bluestareffects/app/weather/api/ResourceManager;

    .prologue
    .line 21
    const-string v6, "weather_rain_bg"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/bluestareffects/app/weather/weatherImpls/Weather;-><init>(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/WeatherType;Lcom/bluestareffects/app/weather/api/ResourceManager;Ljava/lang/String;)V

    .line 23
    const-string v0, "weather_hail_particle"

    invoke-virtual {p0, v0}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherHail;->getResourceId(Ljava/lang/String;)I

    move-result v4

    .line 24
    .local v4, "hailResourceId":I
    const-string v0, "weather_hail_scenery"

    invoke-virtual {p0, v0}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherHail;->getResourceId(Ljava/lang/String;)I

    move-result v7

    .line 25
    .local v7, "sceneryResourceId":I
    new-instance v0, Lcom/bluestareffects/app/weather/common/GroupRain;

    iget-object v2, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherHail;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    const/4 v5, 0x6

    move-object v1, p2

    move-object v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/bluestareffects/app/weather/common/GroupRain;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;II)V

    invoke-virtual {p0, v0}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherHail;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 27
    new-instance v0, Lcom/bluestareffects/app/weather/common/SceneryWindow;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherHail;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    invoke-direct {v0, p2, v1, p5, v7}, Lcom/bluestareffects/app/weather/common/SceneryWindow;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;I)V

    invoke-virtual {p0, v0}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherHail;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 28
    new-instance v0, Lcom/bluestareffects/app/weather/common/GroupRain;

    iget-object v2, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherHail;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    const/4 v5, 0x5

    move-object v1, p2

    move-object v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/bluestareffects/app/weather/common/GroupRain;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;II)V

    invoke-virtual {p0, v0}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherHail;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 30
    return-void
.end method
