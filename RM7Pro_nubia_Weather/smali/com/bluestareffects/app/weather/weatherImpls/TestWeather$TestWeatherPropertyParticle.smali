.class public Lcom/bluestareffects/app/weather/weatherImpls/TestWeather$TestWeatherPropertyParticle;
.super Lcom/bluestareffects/sdk/materials/algorithm/PropertyParticle;
.source "TestWeather.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bluestareffects/app/weather/weatherImpls/TestWeather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TestWeatherPropertyParticle"
.end annotation


# instance fields
.field private final mParent:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

.field private final mSelf:Lcom/bluestareffects/sdk/materials/module/Module;


# direct methods
.method public constructor <init>(Lcom/bluestareffects/sdk/materials/module/Module;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;)V
    .locals 2
    .param p1, "self"    # Lcom/bluestareffects/sdk/materials/module/Module;
    .param p2, "parent"    # Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/bluestareffects/sdk/materials/algorithm/PropertyParticle;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestWeather$TestWeatherPropertyParticle;->mSelf:Lcom/bluestareffects/sdk/materials/module/Module;

    .line 34
    iput-object p2, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestWeather$TestWeatherPropertyParticle;->mParent:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    .line 35
    iget-object v0, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestWeather$TestWeatherPropertyParticle;->mParent:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestWeather$TestWeatherPropertyParticle;->mSelf:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->addSubModule(Lcom/bluestareffects/sdk/core/IModule;)V

    .line 36
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestWeather$TestWeatherPropertyParticle;->mParent:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestWeather$TestWeatherPropertyParticle;->mSelf:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->removeSubModule(Lcom/bluestareffects/sdk/core/IModule;)V

    .line 41
    return-void
.end method

.method public update(F)V
    .locals 5
    .param p1, "timePassed"    # F

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/bluestareffects/sdk/materials/algorithm/PropertyParticle;->update(F)V

    .line 46
    iget-object v1, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestWeather$TestWeatherPropertyParticle;->mOuterProperty:Lcom/bluestareffects/sdk/materials/algorithm/Property;

    invoke-virtual {v1}, Lcom/bluestareffects/sdk/materials/algorithm/Property;->getValue()[F

    move-result-object v0

    .line 47
    .local v0, "values":[F
    iget-object v1, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestWeather$TestWeatherPropertyParticle;->mSelf:Lcom/bluestareffects/sdk/materials/module/Module;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/bluestareffects/sdk/materials/module/Module;->setPosition(FFF)V

    .line 50
    return-void
.end method
