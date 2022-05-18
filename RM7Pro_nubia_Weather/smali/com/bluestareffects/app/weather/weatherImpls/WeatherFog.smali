.class Lcom/bluestareffects/app/weather/weatherImpls/WeatherFog;
.super Lcom/bluestareffects/app/weather/weatherImpls/Weather;
.source "WeatherFog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/WeatherType;Lcom/bluestareffects/app/weather/api/ResourceManager;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instance"    # Lcom/bluestareffects/sdk/core/EffectsInstance;
    .param p3, "parentModule"    # Lcom/bluestareffects/sdk/materials/module/ModuleGroup;
    .param p4, "type"    # Lcom/bluestareffects/app/weather/api/WeatherType;
    .param p5, "resourceManager"    # Lcom/bluestareffects/app/weather/api/ResourceManager;

    .prologue
    .line 21
    const-string v6, "weather_fog_bg"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/bluestareffects/app/weather/weatherImpls/Weather;-><init>(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/WeatherType;Lcom/bluestareffects/app/weather/api/ResourceManager;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p2, p5}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFog;->initBackgroundCloud(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/app/weather/api/ResourceManager;)V

    .line 23
    new-instance v0, Lcom/bluestareffects/app/weather/common/SceneryWindow;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFog;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    const-string v2, "weather_fog_scenery"

    .line 24
    invoke-virtual {p0, v2}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFog;->getResourceId(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, p2, v1, p5, v2}, Lcom/bluestareffects/app/weather/common/SceneryWindow;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;I)V

    .line 23
    invoke-virtual {p0, v0}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFog;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 25
    invoke-direct {p0, p2, p5}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFog;->initFrontCloud(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/app/weather/api/ResourceManager;)V

    .line 26
    return-void
.end method

.method private initBackgroundCloud(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/app/weather/api/ResourceManager;)V
    .locals 8
    .param p1, "instance"    # Lcom/bluestareffects/sdk/core/EffectsInstance;
    .param p2, "resourceManager"    # Lcom/bluestareffects/app/weather/api/ResourceManager;

    .prologue
    .line 29
    new-instance v0, Lcom/bluestareffects/app/weather/common/CloudLayer;

    iget-object v2, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFog;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    const/16 v4, 0x438

    const/16 v5, 0x602

    const-string v3, "weather_fog_cloudlayer_back"

    .line 30
    invoke-virtual {p0, v3}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFog;->getResourceId(Ljava/lang/String;)I

    move-result v6

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/bluestareffects/app/weather/common/CloudLayer;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;III)V

    .line 31
    .local v0, "cloudLayer":Lcom/bluestareffects/app/weather/common/CloudLayer;
    new-instance v1, Lcom/bluestareffects/app/weather/common/CloudLayer;

    iget-object v3, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFog;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    const/16 v5, 0x438

    const/16 v6, 0x45c

    const-string v2, "weather_fog_cloudlayer_middle"

    .line 32
    invoke-virtual {p0, v2}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFog;->getResourceId(Ljava/lang/String;)I

    move-result v7

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/bluestareffects/app/weather/common/CloudLayer;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;III)V

    .line 34
    .local v1, "middleLayer":Lcom/bluestareffects/app/weather/common/CloudLayer;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setVelocity(FF)V

    .line 35
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setPosition(FFF)V

    .line 36
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setAlpha(F)V

    .line 37
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setTexturePosition(FFFF)V

    .line 39
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setPosition(FFF)V

    .line 40
    const v2, -0x472e48e9    # -1.0E-4f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setVelocity(FF)V

    .line 41
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setAlpha(F)V

    .line 42
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const v4, 0x3fc51eb8    # 1.54f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setTexturePosition(FFFF)V

    .line 44
    invoke-virtual {p0, v0}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFog;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 45
    invoke-virtual {p0, v1}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFog;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 46
    return-void
.end method

.method private initFrontCloud(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/app/weather/api/ResourceManager;)V
    .locals 9
    .param p1, "instance"    # Lcom/bluestareffects/sdk/core/EffectsInstance;
    .param p2, "resourceManager"    # Lcom/bluestareffects/app/weather/api/ResourceManager;

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 50
    new-instance v0, Lcom/bluestareffects/app/weather/common/CloudLayer;

    iget-object v2, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFog;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    const/16 v4, 0x438

    const/16 v5, 0x26f

    const-string v1, "weather_fog_cloudlayer_front"

    .line 51
    invoke-virtual {p0, v1}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFog;->getResourceId(Ljava/lang/String;)I

    move-result v6

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/bluestareffects/app/weather/common/CloudLayer;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;III)V

    .line 53
    .local v0, "frontLayer":Lcom/bluestareffects/app/weather/common/CloudLayer;
    const/high16 v1, 0x441c0000    # 624.0f

    invoke-virtual {v0, v7, v1, v7}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setPosition(FFF)V

    .line 54
    const v1, -0x4704577e    # -1.2E-4f

    invoke-virtual {v0, v1, v7}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setVelocity(FF)V

    .line 55
    invoke-virtual {v0, v8}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setAlpha(F)V

    .line 56
    const v1, 0x3fc51eb8    # 1.54f

    invoke-virtual {v0, v8, v7, v1, v8}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setTexturePosition(FFFF)V

    .line 57
    invoke-virtual {p0, v0}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherFog;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 58
    return-void
.end method
