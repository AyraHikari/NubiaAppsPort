.class Lcom/bluestareffects/app/weather/weatherImpls/WeatherDayCloudy;
.super Lcom/bluestareffects/app/weather/weatherImpls/Weather;
.source "WeatherDayCloudy.java"


# static fields
.field private static final TEXTURE_POSITION:F = 45.0f

.field private static final TEXTURE_POSITION_FRONT:F = 375.0f

.field private static final TEXTURE_WIDTH:F = 1289.0f


# instance fields
.field private mBackCloudResourceId:I

.field private mFrontCloudResourceId:I

.field private mMiddleCloudResourceId:I

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
    .line 29
    const-string v6, "weather_day_cloud_bg"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/bluestareffects/app/weather/weatherImpls/Weather;-><init>(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/WeatherType;Lcom/bluestareffects/app/weather/api/ResourceManager;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherDayCloudy;->initResourceId()V

    .line 31
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherDayCloudy;->mRandom:Ljava/util/Random;

    .line 32
    invoke-direct {p0, p2, p5}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherDayCloudy;->initCloudLayer(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/app/weather/api/ResourceManager;)V

    .line 33
    new-instance v0, Lcom/bluestareffects/app/weather/common/SceneryWindow;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherDayCloudy;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    const-string v2, "weather_day_cloud_scenery"

    .line 35
    invoke-virtual {p0, v2}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherDayCloudy;->getResourceId(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, p2, v1, p5, v2}, Lcom/bluestareffects/app/weather/common/SceneryWindow;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;I)V

    .line 33
    invoke-virtual {p0, v0}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherDayCloudy;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 36
    return-void
.end method

.method private initCloudLayer(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/app/weather/api/ResourceManager;)V
    .locals 11
    .param p1, "instance"    # Lcom/bluestareffects/sdk/core/EffectsInstance;
    .param p2, "resourceManager"    # Lcom/bluestareffects/app/weather/api/ResourceManager;

    .prologue
    .line 45
    new-instance v0, Lcom/bluestareffects/app/weather/common/CloudLayer;

    iget-object v2, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherDayCloudy;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    const/16 v4, 0x438

    const/16 v5, 0x3c8

    iget v6, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherDayCloudy;->mBackCloudResourceId:I

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/bluestareffects/app/weather/common/CloudLayer;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;III)V

    .line 47
    .local v0, "mBackLayer":Lcom/bluestareffects/app/weather/common/CloudLayer;
    new-instance v1, Lcom/bluestareffects/app/weather/common/CloudLayer;

    iget-object v3, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherDayCloudy;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    const/16 v5, 0x438

    const/16 v6, 0x3d6

    iget v7, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherDayCloudy;->mMiddleCloudResourceId:I

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/bluestareffects/app/weather/common/CloudLayer;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;III)V

    .line 49
    .local v1, "mMiddleLayer1":Lcom/bluestareffects/app/weather/common/CloudLayer;
    new-instance v2, Lcom/bluestareffects/app/weather/common/CloudLayer;

    iget-object v4, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherDayCloudy;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    const/16 v6, 0x438

    const/16 v7, 0x3d6

    iget v8, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherDayCloudy;->mMiddleCloudResourceId:I

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v8}, Lcom/bluestareffects/app/weather/common/CloudLayer;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;III)V

    .line 51
    .local v2, "mMiddleLayer2":Lcom/bluestareffects/app/weather/common/CloudLayer;
    new-instance v3, Lcom/bluestareffects/app/weather/common/CloudLayer;

    iget-object v5, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherDayCloudy;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    const/16 v7, 0x438

    const/16 v8, 0x49c

    iget v9, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherDayCloudy;->mFrontCloudResourceId:I

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v3 .. v9}, Lcom/bluestareffects/app/weather/common/CloudLayer;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;III)V

    .line 54
    .local v3, "mFrontLayer":Lcom/bluestareffects/app/weather/common/CloudLayer;
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v4}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setAlpha(F)V

    .line 55
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v4}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setAlpha(F)V

    .line 56
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setAlpha(F)V

    .line 57
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setAlpha(F)V

    .line 59
    const/4 v4, 0x0

    const/high16 v5, -0x3db80000    # -50.0f

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setPosition(FFF)V

    .line 60
    const/4 v4, 0x0

    const/high16 v5, -0x3d600000    # -80.0f

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setPosition(FFF)V

    .line 61
    const/4 v4, 0x0

    const/high16 v5, -0x3d600000    # -80.0f

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setPosition(FFF)V

    .line 62
    const/4 v4, 0x0

    const/high16 v5, -0x3d240000    # -110.0f

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setPosition(FFF)V

    .line 63
    iget-object v4, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherDayCloudy;->mRandom:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v10

    .line 65
    .local v10, "X":F
    const v4, 0x3d0efe9c

    add-float/2addr v4, v10

    const/4 v5, 0x0

    const v6, 0x3ee85dbe

    add-float/2addr v6, v10

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setTexturePosition(FFFF)V

    .line 70
    const v4, 0x3d0efe9c

    add-float/2addr v4, v10

    const/4 v5, 0x0

    const v6, 0x3ee85dbe

    add-float/2addr v6, v10

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setTexturePosition(FFFF)V

    .line 75
    const v4, 0x3d0efe9c

    add-float/2addr v4, v10

    const/4 v5, 0x0

    const v6, 0x3ee85dbe

    add-float/2addr v6, v10

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setTexturePosition(FFFF)V

    .line 80
    const v4, 0x3fa53cf9

    add-float/2addr v4, v10

    const/4 v5, 0x0

    const v6, 0x3fdadc73

    add-float/2addr v6, v10

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setTexturePosition(FFFF)V

    .line 86
    const v4, -0x48f9c843    # -8.0E-6f

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setVelocity(FF)V

    .line 87
    const v4, -0x48d83a54    # -1.0E-5f

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setVelocity(FF)V

    .line 88
    const v4, -0x48d83a54    # -1.0E-5f

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setVelocity(FF)V

    .line 89
    const v4, -0x4804577e    # -3.0E-5f

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setVelocity(FF)V

    .line 91
    invoke-virtual {p0, v0}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherDayCloudy;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 92
    invoke-virtual {p0, v1}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherDayCloudy;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 93
    invoke-virtual {p0, v2}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherDayCloudy;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 94
    invoke-virtual {p0, v3}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherDayCloudy;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 95
    return-void
.end method

.method private initResourceId()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "weather_cloud_cloudlayer_back"

    invoke-virtual {p0, v0}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherDayCloudy;->getResourceId(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherDayCloudy;->mBackCloudResourceId:I

    .line 40
    const-string v0, "weather_cloud_cloudlayer_middle"

    invoke-virtual {p0, v0}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherDayCloudy;->getResourceId(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherDayCloudy;->mMiddleCloudResourceId:I

    .line 41
    const-string v0, "weather_cloud_cloudlayer_front"

    invoke-virtual {p0, v0}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherDayCloudy;->getResourceId(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherDayCloudy;->mFrontCloudResourceId:I

    .line 42
    return-void
.end method
