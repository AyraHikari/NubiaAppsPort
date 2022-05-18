.class Lcom/bluestareffects/app/weather/weatherImpls/WeatherThunderShower;
.super Lcom/bluestareffects/app/weather/weatherImpls/Weather;
.source "WeatherThunderShower.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/WeatherType;Lcom/bluestareffects/app/weather/api/ResourceManager;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instance"    # Lcom/bluestareffects/sdk/core/EffectsInstance;
    .param p3, "parentModule"    # Lcom/bluestareffects/sdk/materials/module/ModuleGroup;
    .param p4, "type"    # Lcom/bluestareffects/app/weather/api/WeatherType;
    .param p5, "resourceManager"    # Lcom/bluestareffects/app/weather/api/ResourceManager;

    .prologue
    .line 22
    const-string v6, "weather_thundershower_bg"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/bluestareffects/app/weather/weatherImpls/Weather;-><init>(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/WeatherType;Lcom/bluestareffects/app/weather/api/ResourceManager;Ljava/lang/String;)V

    .line 24
    const-string v0, "weather_rainy_particle"

    invoke-virtual {p0, v0}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherThunderShower;->getResourceId(Ljava/lang/String;)I

    move-result v4

    .line 26
    .local v4, "textureResourceId":I
    const/4 v0, 0x4

    new-array v8, v0, [I

    .line 27
    .local v8, "thunderResourceId":[I
    const/4 v0, 0x0

    const-string v1, "weather_thunder_white"

    invoke-virtual {p0, v1}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherThunderShower;->getResourceId(Ljava/lang/String;)I

    move-result v1

    aput v1, v8, v0

    .line 28
    const/4 v0, 0x1

    const-string v1, "weather_thunder_light_1"

    invoke-virtual {p0, v1}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherThunderShower;->getResourceId(Ljava/lang/String;)I

    move-result v1

    aput v1, v8, v0

    .line 29
    const/4 v0, 0x2

    const-string v1, "weather_thunder_light_2"

    invoke-virtual {p0, v1}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherThunderShower;->getResourceId(Ljava/lang/String;)I

    move-result v1

    aput v1, v8, v0

    .line 30
    const/4 v0, 0x3

    const-string v1, "weather_thunder_light_3"

    invoke-virtual {p0, v1}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherThunderShower;->getResourceId(Ljava/lang/String;)I

    move-result v1

    aput v1, v8, v0

    .line 32
    new-instance v0, Lcom/bluestareffects/app/weather/common/GroupRain;

    iget-object v2, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherThunderShower;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    const/4 v5, 0x2

    move-object v1, p2

    move-object v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/bluestareffects/app/weather/common/GroupRain;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;II)V

    invoke-virtual {p0, v0}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherThunderShower;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 34
    new-instance v7, Lcom/bluestareffects/app/weather/common/ThunderBolt;

    iget-object v0, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherThunderShower;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    invoke-direct {v7, p2, v0, p5, v8}, Lcom/bluestareffects/app/weather/common/ThunderBolt;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;[I)V

    .line 36
    .local v7, "thunderBolt":Lcom/bluestareffects/app/weather/common/ThunderBolt;
    invoke-virtual {p0, v7}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherThunderShower;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 37
    new-instance v0, Lcom/bluestareffects/app/weather/common/SceneryWindow;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherThunderShower;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    const-string v2, "weather_thundershower_scenery"

    .line 38
    invoke-virtual {p0, v2}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherThunderShower;->getResourceId(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, p2, v1, p5, v2}, Lcom/bluestareffects/app/weather/common/SceneryWindow;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;I)V

    .line 37
    invoke-virtual {p0, v0}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherThunderShower;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 39
    iget-object v0, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherThunderShower;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    invoke-virtual {v7, v0}, Lcom/bluestareffects/app/weather/common/ThunderBolt;->addFlashWhite(Lcom/bluestareffects/sdk/materials/module/ModuleGroup;)V

    .line 40
    new-instance v0, Lcom/bluestareffects/app/weather/common/GroupRain;

    iget-object v2, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherThunderShower;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    const/4 v5, 0x1

    move-object v1, p2

    move-object v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/bluestareffects/app/weather/common/GroupRain;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;II)V

    invoke-virtual {p0, v0}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherThunderShower;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 43
    return-void
.end method
