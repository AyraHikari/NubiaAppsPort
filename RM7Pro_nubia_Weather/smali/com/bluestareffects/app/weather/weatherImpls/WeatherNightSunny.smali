.class Lcom/bluestareffects/app/weather/weatherImpls/WeatherNightSunny;
.super Lcom/bluestareffects/app/weather/weatherImpls/Weather;
.source "WeatherNightSunny.java"


# static fields
.field private static final STARTS_RANDOM_HEIGHT:I = 0x2bc

.field private static final STARTS_RANDOM_NUM:I = 0x23


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/WeatherType;Lcom/bluestareffects/app/weather/api/ResourceManager;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instance"    # Lcom/bluestareffects/sdk/core/EffectsInstance;
    .param p3, "parentModule"    # Lcom/bluestareffects/sdk/materials/module/ModuleGroup;
    .param p4, "type"    # Lcom/bluestareffects/app/weather/api/WeatherType;
    .param p5, "resourceManager"    # Lcom/bluestareffects/app/weather/api/ResourceManager;

    .prologue
    .line 23
    const-string v6, "weather_night_sunny_bg"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/bluestareffects/app/weather/weatherImpls/Weather;-><init>(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/WeatherType;Lcom/bluestareffects/app/weather/api/ResourceManager;Ljava/lang/String;)V

    .line 24
    new-instance v7, Lcom/bluestareffects/app/weather/common/GroupStars;

    iget-object v0, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherNightSunny;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    const-string v1, "weather_star_particle"

    .line 25
    invoke-virtual {p0, v1}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherNightSunny;->getResourceId(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v7, p2, v0, p5, v1}, Lcom/bluestareffects/app/weather/common/GroupStars;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;I)V

    .line 26
    .local v7, "groupStars":Lcom/bluestareffects/app/weather/common/GroupStars;
    const/high16 v0, 0x442f0000    # 700.0f

    invoke-virtual {v7, v0}, Lcom/bluestareffects/app/weather/common/GroupStars;->setRandomHeight(F)V

    .line 27
    const/16 v0, 0x23

    invoke-virtual {v7, v0}, Lcom/bluestareffects/app/weather/common/GroupStars;->setParticleNum(I)V

    .line 28
    invoke-virtual {p0, v7}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherNightSunny;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 29
    new-instance v0, Lcom/bluestareffects/app/weather/common/Meteor;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherNightSunny;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    const-string v2, "weather_meteor"

    .line 30
    invoke-virtual {p0, v2}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherNightSunny;->getResourceId(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, p2, v1, p5, v2}, Lcom/bluestareffects/app/weather/common/Meteor;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;I)V

    .line 29
    invoke-virtual {p0, v0}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherNightSunny;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 31
    new-instance v0, Lcom/bluestareffects/app/weather/common/SceneryWindow;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/weatherImpls/WeatherNightSunny;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    const-string v2, "weather_night_sunny_scenery"

    .line 32
    invoke-virtual {p0, v2}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherNightSunny;->getResourceId(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, p2, v1, p5, v2}, Lcom/bluestareffects/app/weather/common/SceneryWindow;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;I)V

    .line 31
    invoke-virtual {p0, v0}, Lcom/bluestareffects/app/weather/weatherImpls/WeatherNightSunny;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 33
    return-void
.end method
