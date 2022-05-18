.class Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainyHail;
.super Lcom/bluestareffects/app/weather/weatherImpls/Weather;
.source "WeatherRainyHail.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/WeatherType;Lcom/bluestareffects/app/weather/api/ResourceManager;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instance"    # Lcom/bluestareffects/sdk/core/EffectsInstance;
    .param p3, "parentModule"    # Lcom/bluestareffects/sdk/materials/module/ModuleGroup;
    .param p4, "type"    # Lcom/bluestareffects/app/weather/api/WeatherType;
    .param p5, "resourceManager"    # Lcom/bluestareffects/app/weather/api/ResourceManager;

    .prologue
    .line 22
    const-string v7, "weather_rain_bg"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/bluestareffects/app/weather/weatherImpls/Weather;-><init>(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/WeatherType;Lcom/bluestareffects/app/weather/api/ResourceManager;Ljava/lang/String;)V

    .line 24
    const-string v1, "weather_hail_particle"

    invoke-virtual {p0, v1}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainyHail;->getResourceId(Ljava/lang/String;)I

    move-result v10

    .line 25
    .local v10, "hailResourceId":I
    const-string v1, "weather_rainy_particle"

    invoke-virtual {p0, v1}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainyHail;->getResourceId(Ljava/lang/String;)I

    move-result v5

    .line 26
    .local v5, "rainResourceId":I
    const-string v1, "drawable"

    const-string v2, "weather_hail_scenery"

    invoke-static {p1, v1, v2}, Lcom/bluestareffects/app/weather/api/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 27
    .local v12, "sceneryResourceId":I
    new-instance v1, Lcom/bluestareffects/app/weather/common/GroupRain;

    iget-object v3, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainyHail;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    const/4 v6, 0x2

    move-object v2, p2

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/bluestareffects/app/weather/common/GroupRain;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;II)V

    invoke-virtual {p0, v1}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainyHail;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 29
    new-instance v1, Lcom/bluestareffects/app/weather/common/SceneryWindow;

    iget-object v2, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainyHail;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    move-object/from16 v0, p5

    invoke-direct {v1, p2, v2, v0, v12}, Lcom/bluestareffects/app/weather/common/SceneryWindow;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;I)V

    invoke-virtual {p0, v1}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainyHail;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 31
    new-instance v6, Lcom/bluestareffects/app/weather/common/GroupRain;

    iget-object v8, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainyHail;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    const/4 v11, 0x5

    move-object v7, p2

    move-object/from16 v9, p5

    invoke-direct/range {v6 .. v11}, Lcom/bluestareffects/app/weather/common/GroupRain;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;II)V

    invoke-virtual {p0, v6}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainyHail;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 33
    return-void
.end method
