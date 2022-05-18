.class Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainy;
.super Lcom/bluestareffects/app/weather/weatherImpls/Weather;
.source "WeatherRainy.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/WeatherType;Lcom/bluestareffects/app/weather/api/ResourceManager;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instance"    # Lcom/bluestareffects/sdk/core/EffectsInstance;
    .param p3, "parentModule"    # Lcom/bluestareffects/sdk/materials/module/ModuleGroup;
    .param p4, "type"    # Lcom/bluestareffects/app/weather/api/WeatherType;
    .param p5, "resourceManager"    # Lcom/bluestareffects/app/weather/api/ResourceManager;

    .prologue
    .line 22
    const-string v6, "weather_rain_bg"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/bluestareffects/app/weather/weatherImpls/Weather;-><init>(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/WeatherType;Lcom/bluestareffects/app/weather/api/ResourceManager;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1, p2, p5}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainy;->initWeather(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/app/weather/api/ResourceManager;)V

    .line 24
    return-void
.end method

.method private initWeather(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/app/weather/api/ResourceManager;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instance"    # Lcom/bluestareffects/sdk/core/EffectsInstance;
    .param p3, "resourceManager"    # Lcom/bluestareffects/app/weather/api/ResourceManager;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 27
    const-string v0, "weather_rainy_particle"

    invoke-virtual {p0, v0}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainy;->getResourceId(Ljava/lang/String;)I

    move-result v4

    .line 28
    .local v4, "textureResourceId":I
    sget-object v0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainy$1;->$SwitchMap$com$bluestareffects$app$weather$api$WeatherType:[I

    iget-object v1, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainy;->mType:Lcom/bluestareffects/app/weather/api/WeatherType;

    invoke-virtual {v1}, Lcom/bluestareffects/app/weather/api/WeatherType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 67
    new-instance v0, Lcom/bluestareffects/app/weather/common/GroupRain;

    iget-object v2, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainy;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    move-object v1, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/bluestareffects/app/weather/common/GroupRain;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;II)V

    invoke-virtual {p0, v0}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainy;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 72
    :goto_0
    return-void

    .line 31
    :pswitch_0
    new-instance v0, Lcom/bluestareffects/app/weather/common/GroupRain;

    iget-object v2, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainy;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    move-object v1, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/bluestareffects/app/weather/common/GroupRain;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;II)V

    invoke-virtual {p0, v0}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainy;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 33
    new-instance v0, Lcom/bluestareffects/app/weather/common/SceneryWindow;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainy;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    const-string v2, "drawable"

    const-string v3, "weather_rainy_scenery"

    .line 34
    invoke-static {p1, v2, v3}, Lcom/bluestareffects/app/weather/api/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, p2, v1, p3, v2}, Lcom/bluestareffects/app/weather/common/SceneryWindow;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;I)V

    .line 33
    invoke-virtual {p0, v0}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainy;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 35
    new-instance v0, Lcom/bluestareffects/app/weather/common/GroupRain;

    iget-object v2, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainy;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    move-object v1, p2

    move-object v3, p3

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/bluestareffects/app/weather/common/GroupRain;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;II)V

    invoke-virtual {p0, v0}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainy;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    goto :goto_0

    .line 41
    :pswitch_1
    new-instance v0, Lcom/bluestareffects/app/weather/common/GroupRain;

    iget-object v2, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainy;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    move-object v1, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/bluestareffects/app/weather/common/GroupRain;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;II)V

    invoke-virtual {p0, v0}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainy;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 43
    new-instance v0, Lcom/bluestareffects/app/weather/common/SceneryWindow;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainy;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    const-string v2, "drawable"

    const-string v3, "weather_rainy_scenery"

    .line 44
    invoke-static {p1, v2, v3}, Lcom/bluestareffects/app/weather/api/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, p2, v1, p3, v2}, Lcom/bluestareffects/app/weather/common/SceneryWindow;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;I)V

    .line 43
    invoke-virtual {p0, v0}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainy;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 45
    new-instance v0, Lcom/bluestareffects/app/weather/common/GroupRain;

    iget-object v2, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainy;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    move-object v1, p2

    move-object v3, p3

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/bluestareffects/app/weather/common/GroupRain;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;II)V

    invoke-virtual {p0, v0}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainy;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    goto :goto_0

    .line 49
    :pswitch_2
    new-instance v0, Lcom/bluestareffects/app/weather/common/GroupRain;

    iget-object v2, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainy;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    move-object v1, p2

    move-object v3, p3

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/bluestareffects/app/weather/common/GroupRain;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;II)V

    invoke-virtual {p0, v0}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainy;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 51
    new-instance v0, Lcom/bluestareffects/app/weather/common/SceneryWindow;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainy;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    const-string v2, "drawable"

    const-string v3, "weather_rainy_scenery"

    .line 52
    invoke-static {p1, v2, v3}, Lcom/bluestareffects/app/weather/api/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, p2, v1, p3, v2}, Lcom/bluestareffects/app/weather/common/SceneryWindow;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;I)V

    .line 51
    invoke-virtual {p0, v0}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainy;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 53
    new-instance v0, Lcom/bluestareffects/app/weather/common/GroupRain;

    iget-object v2, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainy;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    move-object v1, p2

    move-object v3, p3

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/bluestareffects/app/weather/common/GroupRain;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;II)V

    invoke-virtual {p0, v0}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainy;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    goto/16 :goto_0

    .line 59
    :pswitch_3
    new-instance v0, Lcom/bluestareffects/app/weather/common/GroupRain;

    iget-object v2, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainy;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    move-object v1, p2

    move-object v3, p3

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/bluestareffects/app/weather/common/GroupRain;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;II)V

    invoke-virtual {p0, v0}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainy;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 61
    new-instance v0, Lcom/bluestareffects/app/weather/common/SceneryWindow;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainy;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    const-string v2, "drawable"

    const-string v3, "weather_rainy_scenery"

    .line 62
    invoke-static {p1, v2, v3}, Lcom/bluestareffects/app/weather/api/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, p2, v1, p3, v2}, Lcom/bluestareffects/app/weather/common/SceneryWindow;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;I)V

    .line 61
    invoke-virtual {p0, v0}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainy;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 63
    new-instance v0, Lcom/bluestareffects/app/weather/common/GroupRain;

    iget-object v2, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainy;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    move-object v1, p2

    move-object v3, p3

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/bluestareffects/app/weather/common/GroupRain;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;II)V

    invoke-virtual {p0, v0}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherRainy;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    goto/16 :goto_0

    .line 28
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
