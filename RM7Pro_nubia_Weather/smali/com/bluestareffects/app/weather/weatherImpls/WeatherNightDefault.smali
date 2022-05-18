.class Lcom/bluestareffects/app/weather/weatherImpls/WeatherNightDefault;
.super Lcom/bluestareffects/app/weather/weatherImpls/Weather;
.source "WeatherNightDefault.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/WeatherType;Lcom/bluestareffects/app/weather/api/ResourceManager;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instance"    # Lcom/bluestareffects/sdk/core/EffectsInstance;
    .param p3, "parentModule"    # Lcom/bluestareffects/sdk/materials/module/ModuleGroup;
    .param p4, "type"    # Lcom/bluestareffects/app/weather/api/WeatherType;
    .param p5, "resourceManager"    # Lcom/bluestareffects/app/weather/api/ResourceManager;

    .prologue
    .line 19
    const-string v6, "weather_night_sunny_bg"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/bluestareffects/app/weather/weatherImpls/Weather;-><init>(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/WeatherType;Lcom/bluestareffects/app/weather/api/ResourceManager;Ljava/lang/String;)V

    .line 20
    new-instance v0, Lcom/bluestareffects/app/weather/common/SceneryWindow;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherNightDefault;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    const-string v2, "weather_default_night_scenery"

    .line 21
    invoke-virtual {p0, v2}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherNightDefault;->getResourceId(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, p2, v1, p5, v2}, Lcom/bluestareffects/app/weather/common/SceneryWindow;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;I)V

    .line 20
    invoke-virtual {p0, v0}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherNightDefault;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 22
    return-void
.end method
