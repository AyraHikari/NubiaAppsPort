.class Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainySnow;
.super Lcom/bluestareffects/app/weather/weatherImpls/Weather;
.source "WeatherRainySnow.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/WeatherType;Lcom/bluestareffects/app/weather/api/ResourceManager;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instance"    # Lcom/bluestareffects/sdk/core/EffectsInstance;
    .param p3, "parentModule"    # Lcom/bluestareffects/sdk/materials/module/ModuleGroup;
    .param p4, "type"    # Lcom/bluestareffects/app/weather/api/WeatherType;
    .param p5, "resourceManager"    # Lcom/bluestareffects/app/weather/api/ResourceManager;

    .prologue
    .line 22
    const-string v8, "weather_rain_bg"

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v8}, Lcom/bluestareffects/app/weather/weatherImpls/Weather;-><init>(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/WeatherType;Lcom/bluestareffects/app/weather/api/ResourceManager;Ljava/lang/String;)V

    .line 24
    const-string v2, "weather_snow_particle"

    invoke-virtual {p0, v2}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainySnow;->getResourceId(Ljava/lang/String;)I

    move-result v12

    .line 25
    .local v12, "snowResourceId":I
    const-string v2, "weather_hail_scenery"

    invoke-virtual {p0, v2}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainySnow;->getResourceId(Ljava/lang/String;)I

    move-result v14

    .line 26
    .local v14, "sceneryResourceId":I
    const-string v2, "weather_rainy_particle"

    invoke-virtual {p0, v2}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainySnow;->getResourceId(Ljava/lang/String;)I

    move-result v6

    .line 28
    .local v6, "rainResourceId":I
    new-instance v2, Lcom/bluestareffects/app/weather/common/GroupRain;

    iget-object v4, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainySnow;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    const/4 v7, 0x2

    move-object/from16 v3, p2

    move-object/from16 v5, p5

    invoke-direct/range {v2 .. v7}, Lcom/bluestareffects/app/weather/common/GroupRain;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;II)V

    invoke-virtual {p0, v2}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainySnow;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 30
    new-instance v2, Lcom/bluestareffects/app/weather/common/SceneryWindow;

    iget-object v3, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainySnow;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-direct {v2, v0, v3, v1, v14}, Lcom/bluestareffects/app/weather/common/SceneryWindow;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;I)V

    invoke-virtual {p0, v2}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainySnow;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 32
    new-instance v2, Lcom/bluestareffects/app/weather/common/GroupRain;

    iget-object v4, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainySnow;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    const/4 v7, 0x7

    move-object/from16 v3, p2

    move-object/from16 v5, p5

    invoke-direct/range {v2 .. v7}, Lcom/bluestareffects/app/weather/common/GroupRain;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;II)V

    invoke-virtual {p0, v2}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainySnow;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 34
    new-instance v7, Lcom/bluestareffects/app/weather/common/GroupSnow;

    iget-object v9, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainySnow;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    iget-object v11, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainySnow;->mType:Lcom/bluestareffects/app/weather/api/WeatherType;

    const/4 v13, 0x1

    move-object/from16 v8, p2

    move-object/from16 v10, p5

    invoke-direct/range {v7 .. v13}, Lcom/bluestareffects/app/weather/common/GroupSnow;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;Lcom/bluestareffects/app/weather/api/WeatherType;IZ)V

    invoke-virtual {p0, v7}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainySnow;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 36
    return-void
.end method
