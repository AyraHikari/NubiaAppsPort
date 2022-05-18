.class Lcom/bluestareffects/app/weather/weatherImpls/WeatherNightCloudy;
.super Lcom/bluestareffects/app/weather/weatherImpls/Weather;
.source "WeatherNightCloudy.java"


# static fields
.field private static final STARTS_RANDOM_HEIGHT:I = 0x96

.field private static final STARTS_RANDOM_NUM:I = 0xf

.field private static final TEXTURE_POSITION:F = 45.0f

.field private static final TEXTURE_POSITION_FRONT:F = 375.0f

.field private static final TEXTURE_WIDTH:F = 1289.0f


# instance fields
.field private mRandom:Ljava/util/Random;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/WeatherType;Lcom/bluestareffects/app/weather/api/ResourceManager;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instance"    # Lcom/bluestareffects/sdk/core/EffectsInstance;
    .param p3, "parentModule"    # Lcom/bluestareffects/sdk/materials/module/ModuleGroup;
    .param p4, "type"    # Lcom/bluestareffects/app/weather/api/WeatherType;
    .param p5, "resourceManager"    # Lcom/bluestareffects/app/weather/api/ResourceManager;

    .prologue
    .line 29
    const-string v6, "weather_night_cloud_bg"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/bluestareffects/app/weather/weatherImpls/Weather;-><init>(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/WeatherType;Lcom/bluestareffects/app/weather/api/ResourceManager;Ljava/lang/String;)V

    .line 30
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherNightCloudy;->mRandom:Ljava/util/Random;

    .line 31
    new-instance v7, Lcom/bluestareffects/app/weather/common/GroupStars;

    iget-object v0, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherNightCloudy;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    const-string v1, "weather_star_particle"

    .line 32
    invoke-virtual {p0, v1}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherNightCloudy;->getResourceId(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v7, p2, v0, p5, v1}, Lcom/bluestareffects/app/weather/common/GroupStars;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;I)V

    .line 33
    .local v7, "groupStars":Lcom/bluestareffects/app/weather/common/GroupStars;
    const/high16 v0, 0x43160000    # 150.0f

    invoke-virtual {v7, v0}, Lcom/bluestareffects/app/weather/common/GroupStars;->setRandomHeight(F)V

    .line 34
    const/16 v0, 0xf

    invoke-virtual {v7, v0}, Lcom/bluestareffects/app/weather/common/GroupStars;->setParticleNum(I)V

    .line 35
    invoke-virtual {p0, v7}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherNightCloudy;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 36
    invoke-direct {p0, p2, p5}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherNightCloudy;->initCloudLayer(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/app/weather/api/ResourceManager;)V

    .line 37
    new-instance v0, Lcom/bluestareffects/app/weather/common/SceneryWindow;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherNightCloudy;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    const-string v2, "weather_night_cloud_scenery"

    .line 38
    invoke-virtual {p0, v2}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherNightCloudy;->getResourceId(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, p2, v1, p5, v2}, Lcom/bluestareffects/app/weather/common/SceneryWindow;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;I)V

    .line 37
    invoke-virtual {p0, v0}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherNightCloudy;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 39
    return-void
.end method

.method private initCloudLayer(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/app/weather/api/ResourceManager;)V
    .locals 10
    .param p1, "instance"    # Lcom/bluestareffects/sdk/core/EffectsInstance;
    .param p2, "resourceManager"    # Lcom/bluestareffects/app/weather/api/ResourceManager;

    .prologue
    .line 42
    new-instance v0, Lcom/bluestareffects/app/weather/common/CloudLayer;

    iget-object v2, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherNightCloudy;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    const/16 v4, 0x438

    const/16 v5, 0x3c8

    const-string v3, "weather_cloud_cloudlayer_back"

    .line 43
    invoke-virtual {p0, v3}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherNightCloudy;->getResourceId(Ljava/lang/String;)I

    move-result v6

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/bluestareffects/app/weather/common/CloudLayer;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;III)V

    .line 44
    .local v0, "mBackLayer":Lcom/bluestareffects/app/weather/common/CloudLayer;
    new-instance v1, Lcom/bluestareffects/app/weather/common/CloudLayer;

    iget-object v3, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherNightCloudy;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    const/16 v5, 0x438

    const/16 v6, 0x3d6

    const-string v4, "weather_cloud_cloudlayer_middle"

    .line 45
    invoke-virtual {p0, v4}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherNightCloudy;->getResourceId(Ljava/lang/String;)I

    move-result v7

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/bluestareffects/app/weather/common/CloudLayer;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;III)V

    .line 46
    .local v1, "mMiddleLayer":Lcom/bluestareffects/app/weather/common/CloudLayer;
    new-instance v2, Lcom/bluestareffects/app/weather/common/CloudLayer;

    iget-object v4, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherNightCloudy;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    const/16 v6, 0x438

    const/16 v7, 0x49c

    const-string v3, "weather_cloud_cloudlayer_front"

    .line 47
    invoke-virtual {p0, v3}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherNightCloudy;->getResourceId(Ljava/lang/String;)I

    move-result v8

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v8}, Lcom/bluestareffects/app/weather/common/CloudLayer;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;III)V

    .line 49
    .local v2, "mFrontLayer":Lcom/bluestareffects/app/weather/common/CloudLayer;
    const v3, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v3}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setAlpha(F)V

    .line 50
    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v1, v3}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setAlpha(F)V

    .line 51
    const v3, 0x3eb33333    # 0.35f

    invoke-virtual {v2, v3}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setAlpha(F)V

    .line 53
    const/4 v3, 0x0

    const/high16 v4, -0x3db80000    # -50.0f

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setPosition(FFF)V

    .line 54
    const/4 v3, 0x0

    const/high16 v4, -0x3d600000    # -80.0f

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setPosition(FFF)V

    .line 55
    const/4 v3, 0x0

    const/high16 v4, -0x3d240000    # -110.0f

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setPosition(FFF)V

    .line 56
    iget-object v3, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherNightCloudy;->mRandom:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v9

    .line 58
    .local v9, "X":F
    const v3, 0x3d0efe9c

    add-float/2addr v3, v9

    const/4 v4, 0x0

    const v5, 0x3ee85dbe

    add-float/2addr v5, v9

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setTexturePosition(FFFF)V

    .line 63
    const v3, 0x3d0efe9c

    add-float/2addr v3, v9

    const/4 v4, 0x0

    const v5, 0x3ee85dbe

    add-float/2addr v5, v9

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setTexturePosition(FFFF)V

    .line 68
    const v3, 0x3fa53cf9

    add-float/2addr v3, v9

    const/4 v4, 0x0

    const v5, 0x3fdadc73

    add-float/2addr v5, v9

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setTexturePosition(FFFF)V

    .line 74
    const v3, -0x48f9c843    # -8.0E-6f

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setVelocity(FF)V

    .line 75
    const v3, -0x48d83a54    # -1.0E-5f

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setVelocity(FF)V

    .line 76
    const v3, -0x4804577e    # -3.0E-5f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/bluestareffects/app/weather/common/CloudLayer;->setVelocity(FF)V

    .line 78
    invoke-virtual {p0, v0}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherNightCloudy;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 79
    invoke-virtual {p0, v1}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherNightCloudy;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 80
    invoke-virtual {p0, v2}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherNightCloudy;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 81
    return-void
.end method
