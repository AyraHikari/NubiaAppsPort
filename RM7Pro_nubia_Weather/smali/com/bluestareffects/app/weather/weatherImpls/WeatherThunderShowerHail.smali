.class Lcom/bluestareffects/app/weather/weatherImpls/WeatherThunderShowerHail;
.super Lcom/bluestareffects/app/weather/weatherImpls/Weather;
.source "WeatherThunderShowerHail.java"


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
    const-string v8, "weather_thundershower_bg"

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v8}, Lcom/bluestareffects/app/weather/weatherImpls/Weather;-><init>(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/WeatherType;Lcom/bluestareffects/app/weather/api/ResourceManager;Ljava/lang/String;)V

    .line 25
    const-string v2, "weather_hail_particle"

    invoke-virtual {p0, v2}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherThunderShowerHail;->getResourceId(Ljava/lang/String;)I

    move-result v11

    .line 26
    .local v11, "hailResourceId":I
    const-string v2, "weather_rainy_particle"

    invoke-virtual {p0, v2}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherThunderShowerHail;->getResourceId(Ljava/lang/String;)I

    move-result v6

    .line 28
    .local v6, "rainResourceId":I
    const/4 v2, 0x4

    new-array v14, v2, [I

    .line 29
    .local v14, "thunderResourceId":[I
    const/4 v2, 0x0

    const-string v3, "weather_thunder_white"

    invoke-virtual {p0, v3}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherThunderShowerHail;->getResourceId(Ljava/lang/String;)I

    move-result v3

    aput v3, v14, v2

    .line 30
    const/4 v2, 0x1

    const-string v3, "weather_thunder_light_1"

    invoke-virtual {p0, v3}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherThunderShowerHail;->getResourceId(Ljava/lang/String;)I

    move-result v3

    aput v3, v14, v2

    .line 31
    const/4 v2, 0x2

    const-string v3, "weather_thunder_light_2"

    invoke-virtual {p0, v3}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherThunderShowerHail;->getResourceId(Ljava/lang/String;)I

    move-result v3

    aput v3, v14, v2

    .line 32
    const/4 v2, 0x3

    const-string v3, "weather_thunder_light_3"

    invoke-virtual {p0, v3}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherThunderShowerHail;->getResourceId(Ljava/lang/String;)I

    move-result v3

    aput v3, v14, v2

    .line 34
    new-instance v2, Lcom/bluestareffects/app/weather/common/GroupRain;

    iget-object v4, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherThunderShowerHail;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    const/4 v7, 0x2

    move-object/from16 v3, p2

    move-object/from16 v5, p5

    invoke-direct/range {v2 .. v7}, Lcom/bluestareffects/app/weather/common/GroupRain;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;II)V

    invoke-virtual {p0, v2}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherThunderShowerHail;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 36
    new-instance v13, Lcom/bluestareffects/app/weather/common/ThunderBolt;

    iget-object v2, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherThunderShowerHail;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-direct {v13, v0, v2, v1, v14}, Lcom/bluestareffects/app/weather/common/ThunderBolt;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;[I)V

    .line 38
    .local v13, "thunderBolt":Lcom/bluestareffects/app/weather/common/ThunderBolt;
    invoke-virtual {p0, v13}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherThunderShowerHail;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 39
    new-instance v2, Lcom/bluestareffects/app/weather/common/SceneryWindow;

    iget-object v3, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherThunderShowerHail;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    const-string v4, "weather_thundershower_scenery"

    .line 40
    invoke-virtual {p0, v4}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherThunderShowerHail;->getResourceId(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-direct {v2, v0, v3, v1, v4}, Lcom/bluestareffects/app/weather/common/SceneryWindow;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;I)V

    .line 39
    invoke-virtual {p0, v2}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherThunderShowerHail;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 41
    iget-object v2, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherThunderShowerHail;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    invoke-virtual {v13, v2}, Lcom/bluestareffects/app/weather/common/ThunderBolt;->addFlashWhite(Lcom/bluestareffects/sdk/materials/module/ModuleGroup;)V

    .line 42
    new-instance v7, Lcom/bluestareffects/app/weather/common/GroupRain;

    iget-object v9, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherThunderShowerHail;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    const/4 v12, 0x5

    move-object/from16 v8, p2

    move-object/from16 v10, p5

    invoke-direct/range {v7 .. v12}, Lcom/bluestareffects/app/weather/common/GroupRain;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;II)V

    invoke-virtual {p0, v7}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherThunderShowerHail;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 44
    return-void
.end method
