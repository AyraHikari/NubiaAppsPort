.class Lcom/bluestareffects/app/weather/weatherImpls/WeatherSnow;
.super Lcom/bluestareffects/app/weather/weatherImpls/Weather;
.source "WeatherSnow.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/WeatherType;Lcom/bluestareffects/app/weather/api/ResourceManager;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instance"    # Lcom/bluestareffects/sdk/core/EffectsInstance;
    .param p3, "parentModule"    # Lcom/bluestareffects/sdk/materials/module/ModuleGroup;
    .param p4, "type"    # Lcom/bluestareffects/app/weather/api/WeatherType;
    .param p5, "resourceManager"    # Lcom/bluestareffects/app/weather/api/ResourceManager;

    .prologue
    .line 21
    const-string v10, "weather_snow_bg"

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v4 .. v10}, Lcom/bluestareffects/app/weather/weatherImpls/Weather;-><init>(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/WeatherType;Lcom/bluestareffects/app/weather/api/ResourceManager;Ljava/lang/String;)V

    .line 22
    const-string v5, "weather_snow_particle"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherSnow;->getResourceId(Ljava/lang/String;)I

    move-result v9

    .line 23
    .local v9, "textureResourceId":I
    new-instance v4, Lcom/bluestareffects/app/weather/common/GroupSnow;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherSnow;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    const/4 v10, 0x0

    move-object/from16 v5, p2

    move-object/from16 v7, p5

    move-object/from16 v8, p4

    invoke-direct/range {v4 .. v10}, Lcom/bluestareffects/app/weather/common/GroupSnow;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;Lcom/bluestareffects/app/weather/api/WeatherType;IZ)V

    .line 25
    .local v4, "backSnow":Lcom/bluestareffects/app/weather/common/GroupSnow;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherSnow;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 26
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherSnow;->initSceneryWindow(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/app/weather/api/ResourceManager;Landroid/content/Context;)V

    .line 27
    new-instance v10, Lcom/bluestareffects/app/weather/common/GroupSnow;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherSnow;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    const/16 v16, 0x1

    move-object/from16 v11, p2

    move-object/from16 v13, p5

    move-object/from16 v14, p4

    move v15, v9

    invoke-direct/range {v10 .. v16}, Lcom/bluestareffects/app/weather/common/GroupSnow;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;Lcom/bluestareffects/app/weather/api/WeatherType;IZ)V

    .line 29
    .local v10, "frontSnow":Lcom/bluestareffects/app/weather/common/GroupSnow;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherSnow;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 30
    return-void
.end method

.method private initSceneryWindow(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/app/weather/api/ResourceManager;Landroid/content/Context;)V
    .locals 3
    .param p1, "instance"    # Lcom/bluestareffects/sdk/core/EffectsInstance;
    .param p2, "resourceManager"    # Lcom/bluestareffects/app/weather/api/ResourceManager;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    sget-object v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherSnow$1;->$SwitchMap$com$bluestareffects$app$weather$api$WeatherType:[I

    iget-object v1, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherSnow;->mType:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v1}, Lcom/bluestareffects/app/weather/api/WeatherType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 50
    new-instance v0, Lcom/bluestareffects/app/weather/common/SceneryWindow;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherSnow;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    const-string v2, "weather_small_snow_scenery"

    .line 51
    invoke-virtual {p0, v2}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherSnow;->getResourceId(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/bluestareffects/app/weather/common/SceneryWindow;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;I)V

    .line 50
    invoke-virtual {p0, v0}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherSnow;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 53
    :goto_0
    return-void

    .line 39
    :pswitch_0
    new-instance v0, Lcom/bluestareffects/app/weather/common/SceneryWindow;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherSnow;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    const-string v2, "weather_small_snow_scenery"

    .line 40
    invoke-virtual {p0, v2}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherSnow;->getResourceId(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/bluestareffects/app/weather/common/SceneryWindow;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;I)V

    .line 39
    invoke-virtual {p0, v0}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherSnow;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    goto :goto_0

    .line 46
    :pswitch_1
    new-instance v0, Lcom/bluestareffects/app/weather/common/SceneryWindow;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherSnow;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    const-string v2, "weather_big_snow_scenery"

    .line 47
    invoke-virtual {p0, v2}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherSnow;->getResourceId(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/bluestareffects/app/weather/common/SceneryWindow;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;I)V

    .line 46
    invoke-virtual {p0, v0}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherSnow;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    goto :goto_0

    .line 34
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
