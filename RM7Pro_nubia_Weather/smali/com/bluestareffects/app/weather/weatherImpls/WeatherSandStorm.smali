.class Lcom/bluestareffects/app/weather/weatherImpls/WeatherSandStorm;
.super Lcom/bluestareffects/app/weather/weatherImpls/Weather;
.source "WeatherSandStorm.java"


# instance fields
.field private mRandom:Ljava/util/Random;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/WeatherType;Lcom/bluestareffects/app/weather/api/ResourceManager;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instance"    # Lcom/bluestareffects/sdk/core/EffectsInstance;
    .param p3, "parentModule"    # Lcom/bluestareffects/sdk/materials/module/ModuleGroup;
    .param p4, "type"    # Lcom/bluestareffects/app/weather/api/WeatherType;
    .param p5, "resourceManager"    # Lcom/bluestareffects/app/weather/api/ResourceManager;

    .prologue
    .line 23
    const-string v6, "weather_sandstorm_bg"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/bluestareffects/app/weather/weatherImpls/Weather;-><init>(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/WeatherType;Lcom/bluestareffects/app/weather/api/ResourceManager;Ljava/lang/String;)V

    .line 24
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherSandStorm;->mRandom:Ljava/util/Random;

    .line 25
    invoke-direct {p0, p2, p5}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherSandStorm;->initCloudLayer(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/app/weather/api/ResourceManager;)V

    .line 26
    new-instance v0, Lcom/bluestareffects/app/weather/common/SceneryWindow;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherSandStorm;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    const-string v2, "weather_sandstorm_scenery"

    .line 27
    invoke-virtual {p0, v2}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherSandStorm;->getResourceId(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, p2, v1, p5, v2}, Lcom/bluestareffects/app/weather/common/SceneryWindow;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;I)V

    .line 26
    invoke-virtual {p0, v0}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherSandStorm;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 28
    return-void
.end method

.method private initCloudLayer(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/app/weather/api/ResourceManager;)V
    .locals 10
    .param p1, "instance"    # Lcom/bluestareffects/sdk/core/EffectsInstance;
    .param p2, "resourceManager"    # Lcom/bluestareffects/app/weather/api/ResourceManager;

    .prologue
    .line 32
    new-instance v0, Lcom/bluestareffects/app/weather/common/CloudLayer;

    iget-object v2, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherSandStorm;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    const/16 v4, 0x438

    const/16 v5, 0x6de

    const-string v3, "weather_sandstorm_cloudlayer_back"

    .line 33
    invoke-virtual {p0, v3}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherSandStorm;->getResourceId(Ljava/lang/String;)I

    move-result v6

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/bluestareffects/app/weather/common/CloudLayer;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;III)V

    .line 34
    .local v0, "mBackLayer":Lcom/bluestareffects/app/weather/common/CloudLayer;
    new-instance v1, Lcom/bluestareffects/app/weather/common/CloudLayer;

    iget-object v3, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherSandStorm;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    const/16 v5, 0x438

    const/16 v6, 0x6de

    const-string v4, "weather_sandstorm_cloudlayer_middle"

    .line 35
    invoke-virtual {p0, v4}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherSandStorm;->getResourceId(Ljava/lang/String;)I

    move-result v7

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/bluestareffects/app/weather/common/CloudLayer;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;III)V

    .line 36
    .local v1, "mMiddleLayer":Lcom/bluestareffects/app/weather/common/CloudLayer;
    new-instance v2, Lcom/bluestareffects/app/weather/common/CloudLayer;

    iget-object v4, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherSandStorm;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    const/16 v6, 0x438

    const/16 v7, 0x6de

    const-string v3, "weather_sandstorm_cloudlayer_front"

    .line 37
    invoke-virtual {p0, v3}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherSandStorm;->getResourceId(Ljava/lang/String;)I

    move-result v8

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v8}, Lcom/bluestareffects/app/weather/common/CloudLayer;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;III)V

    .line 39
    .local v2, "mFrontLayer":Lcom/bluestareffects/app/weather/common/CloudLayer;
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setAlpha(F)V

    .line 40
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setAlpha(F)V

    .line 41
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setAlpha(F)V

    .line 43
    const/4 v3, 0x0

    const/high16 v4, -0x3c580000    # -336.0f

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setPosition(FFF)V

    .line 44
    const/4 v3, 0x0

    const/high16 v4, -0x3c580000    # -336.0f

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setPosition(FFF)V

    .line 45
    const/4 v3, 0x0

    const/high16 v4, -0x3c580000    # -336.0f

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setPosition(FFF)V

    .line 46
    iget-object v3, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherSandStorm;->mRandom:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v9

    .line 48
    .local v9, "X":F
    const/4 v3, 0x0

    const v4, 0x3ec36469

    add-float/2addr v4, v9

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v0, v9, v3, v4, v5}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setTexturePosition(FFFF)V

    .line 53
    const/4 v3, 0x0

    const v4, 0x3ec36469

    add-float/2addr v4, v9

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v1, v9, v3, v4, v5}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setTexturePosition(FFFF)V

    .line 58
    const/4 v3, 0x0

    const v4, 0x3ec36469

    add-float/2addr v4, v9

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v2, v9, v3, v4, v5}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setTexturePosition(FFFF)V

    .line 64
    const v3, -0x487164c7    # -1.7E-5f

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setVelocity(FF)V

    .line 65
    const v3, -0x47c3419e    # -4.5E-5f

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setVelocity(FF)V

    .line 66
    const v3, -0x47ed3309    # -3.5E-5f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setVelocity(FF)V

    .line 68
    invoke-virtual {p0, v0}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherSandStorm;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 69
    invoke-virtual {p0, v1}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherSandStorm;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 70
    invoke-virtual {p0, v2}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherSandStorm;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 71
    return-void
.end method
