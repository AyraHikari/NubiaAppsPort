.class Lcom/bluestareffects/app/weather/weatherImpls/WeatherHaze;
.super Lcom/bluestareffects/app/weather/weatherImpls/Weather;
.source "WeatherHaze.java"


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
    .line 24
    const-string v6, "weather_haze_bg"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/bluestareffects/app/weather/weatherImpls/Weather;-><init>(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/WeatherType;Lcom/bluestareffects/app/weather/api/ResourceManager;Ljava/lang/String;)V

    .line 25
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherHaze;->mRandom:Ljava/util/Random;

    .line 26
    invoke-direct {p0, p2, p5}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherHaze;->initCloud(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/app/weather/api/ResourceManager;)V

    .line 27
    new-instance v0, Lcom/bluestareffects/app/weather/common/SceneryWindow;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherHaze;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    const-string v2, "weather_haze_scenery"

    .line 28
    invoke-virtual {p0, v2}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherHaze;->getResourceId(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, p2, v1, p5, v2}, Lcom/bluestareffects/app/weather/common/SceneryWindow;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;I)V

    .line 27
    invoke-virtual {p0, v0}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherHaze;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 29
    return-void
.end method

.method private initCloud(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/app/weather/api/ResourceManager;)V
    .locals 10
    .param p1, "instance"    # Lcom/bluestareffects/sdk/core/EffectsInstance;
    .param p2, "resourceManager"    # Lcom/bluestareffects/app/weather/api/ResourceManager;

    .prologue
    .line 33
    new-instance v0, Lcom/bluestareffects/app/weather/common/CloudLayer;

    iget-object v2, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherHaze;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    const/16 v4, 0x438

    const/16 v5, 0x5a4

    const-string v3, "weather_haze_cloudlayer_back"

    .line 34
    invoke-virtual {p0, v3}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherHaze;->getResourceId(Ljava/lang/String;)I

    move-result v6

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/bluestareffects/app/weather/common/CloudLayer;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;III)V

    .line 35
    .local v0, "backCloud":Lcom/bluestareffects/app/weather/common/CloudLayer;
    new-instance v1, Lcom/bluestareffects/app/weather/common/CloudLayer;

    iget-object v3, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherHaze;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    const/16 v5, 0x438

    const/16 v6, 0x58e

    const-string v2, "weather_haze_cloudlayer_front"

    .line 36
    invoke-virtual {p0, v2}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherHaze;->getResourceId(Ljava/lang/String;)I

    move-result v7

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/bluestareffects/app/weather/common/CloudLayer;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;III)V

    .line 38
    .local v1, "frontCloud":Lcom/bluestareffects/app/weather/common/CloudLayer;
    const v2, 0x377ba882    # 1.5E-5f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setVelocity(FF)V

    .line 39
    const v2, -0x4884577e    # -1.5E-5f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setVelocity(FF)V

    .line 41
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setAlpha(F)V

    .line 42
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setAlpha(F)V

    .line 44
    const/4 v2, 0x0

    const/high16 v3, -0x3d4c0000    # -90.0f

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setPosition(FFF)V

    .line 45
    const/4 v2, 0x0

    const/high16 v3, -0x3d4c0000    # -90.0f

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setPosition(FFF)V

    .line 47
    iget-object v2, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherHaze;->mRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v8

    .line 48
    .local v8, "x1":F
    iget-object v2, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherHaze;->mRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v9

    .line 49
    .local v9, "x2":F
    const/4 v2, 0x0

    const v3, 0x3f1cbc15

    add-float/2addr v3, v8

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v8, v2, v3, v4}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setTexturePosition(FFFF)V

    .line 50
    const/4 v2, 0x0

    const v3, 0x3ec36469

    add-float/2addr v3, v9

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v9, v2, v3, v4}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setTexturePosition(FFFF)V

    .line 52
    invoke-virtual {p0, v0}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherHaze;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 53
    invoke-virtual {p0, v1}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherHaze;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 54
    return-void
.end method
