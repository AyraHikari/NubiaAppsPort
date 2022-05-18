.class public abstract Lcom/bluestareffects/app/weather/weatherImpls/Weather;
.super Ljava/lang/Object;
.source "Weather.java"

# interfaces
.implements Lcom/bluestareffects/app/weather/common/Component;


# instance fields
.field private mBackgroundModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

.field private mComponentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bluestareffects/app/weather/common/Component;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

.field protected mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

.field protected mType:Lcom/bluestareffects/app/weather/api/WeatherType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/WeatherType;Lcom/bluestareffects/app/weather/api/ResourceManager;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instance"    # Lcom/bluestareffects/sdk/core/EffectsInstance;
    .param p3, "parentModule"    # Lcom/bluestareffects/sdk/materials/module/ModuleGroup;
    .param p4, "type"    # Lcom/bluestareffects/app/weather/api/WeatherType;
    .param p5, "resourceManager"    # Lcom/bluestareffects/app/weather/api/ResourceManager;
    .param p6, "backgroundResIdName"    # Ljava/lang/String;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bluestareffects/app/weather/weatherImpls/Weather;->mComponentList:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    invoke-direct {v0}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;-><init>()V

    iput-object v0, p0, Lcom/bluestareffects/app/weather/weatherImpls/Weather;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    .line 24
    new-instance v0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    invoke-direct {v0}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;-><init>()V

    iput-object v0, p0, Lcom/bluestareffects/app/weather/weatherImpls/Weather;->mBackgroundModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    .line 29
    iput-object p1, p0, Lcom/bluestareffects/app/weather/weatherImpls/Weather;->mContext:Landroid/content/Context;

    .line 30
    iput-object p4, p0, Lcom/bluestareffects/app/weather/weatherImpls/Weather;->mType:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 31
    iput-object p3, p0, Lcom/bluestareffects/app/weather/weatherImpls/Weather;->mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    .line 32
    iget-object v0, p0, Lcom/bluestareffects/app/weather/weatherImpls/Weather;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->setAlpha(F)V

    .line 33
    iget-object v0, p0, Lcom/bluestareffects/app/weather/weatherImpls/Weather;->mBackgroundModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->setAlpha(F)V

    .line 34
    iget-object v0, p0, Lcom/bluestareffects/app/weather/weatherImpls/Weather;->mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/weatherImpls/Weather;->mBackgroundModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->addSubModule(Lcom/bluestareffects/sdk/core/IModule;)V

    .line 35
    iget-object v0, p0, Lcom/bluestareffects/app/weather/weatherImpls/Weather;->mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/weatherImpls/Weather;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->addSubModule(Lcom/bluestareffects/sdk/core/IModule;)V

    .line 36
    new-instance v0, Lcom/bluestareffects/app/weather/common/WeatherBackground;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/weatherImpls/Weather;->mBackgroundModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    .line 37
    invoke-virtual {p0, p6}, Lcom/bluestareffects/app/weather/weatherImpls/Weather;->getResourceId(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, p2, v1, p5, v2}, Lcom/bluestareffects/app/weather/common/WeatherBackground;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;I)V

    .line 36
    invoke-virtual {p0, v0}, Lcom/bluestareffects/app/weather/weatherImpls/Weather;->addComponent(Lcom/bluestareffects/app/weather/common/Component;)V

    .line 38
    return-void
.end method


# virtual methods
.method public addComponent(Lcom/bluestareffects/app/weather/common/Component;)V
    .locals 1
    .param p1, "component"    # Lcom/bluestareffects/app/weather/common/Component;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/bluestareffects/app/weather/weatherImpls/Weather;->mComponentList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    .line 64
    iget-object v1, p0, Lcom/bluestareffects/app/weather/weatherImpls/Weather;->mComponentList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bluestareffects/app/weather/common/Component;

    .line 65
    .local v0, "component":Lcom/bluestareffects/app/weather/common/Component;
    invoke-interface {v0}, Lcom/bluestareffects/app/weather/common/Component;->destroy()V

    goto :goto_0

    .line 67
    .end local v0    # "component":Lcom/bluestareffects/app/weather/common/Component;
    :cond_0
    iget-object v1, p0, Lcom/bluestareffects/app/weather/weatherImpls/Weather;->mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    iget-object v2, p0, Lcom/bluestareffects/app/weather/weatherImpls/Weather;->mBackgroundModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    invoke-virtual {v1, v2}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->removeSubModule(Lcom/bluestareffects/sdk/core/IModule;)V

    .line 68
    iget-object v1, p0, Lcom/bluestareffects/app/weather/weatherImpls/Weather;->mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    iget-object v2, p0, Lcom/bluestareffects/app/weather/weatherImpls/Weather;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    invoke-virtual {v1, v2}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->removeSubModule(Lcom/bluestareffects/sdk/core/IModule;)V

    .line 69
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/bluestareffects/app/weather/weatherImpls/Weather;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    invoke-virtual {v0}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->getAlpha()F

    move-result v0

    return v0
.end method

.method public getBackgroundAlpha()F
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/bluestareffects/app/weather/weatherImpls/Weather;->mBackgroundModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    invoke-virtual {v0}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->getAlpha()F

    move-result v0

    return v0
.end method

.method protected getResourceId(Ljava/lang/String;)I
    .locals 2
    .param p1, "resourceIdName"    # Ljava/lang/String;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/bluestareffects/app/weather/weatherImpls/Weather;->mContext:Landroid/content/Context;

    const-string v1, "drawable"

    invoke-static {v0, v1, p1}, Lcom/bluestareffects/app/weather/api/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onSizeChanged(II)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 42
    iget-object v1, p0, Lcom/bluestareffects/app/weather/weatherImpls/Weather;->mComponentList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bluestareffects/app/weather/common/Component;

    .line 43
    .local v0, "component":Lcom/bluestareffects/app/weather/common/Component;
    invoke-interface {v0, p1, p2}, Lcom/bluestareffects/app/weather/common/Component;->onSizeChanged(II)V

    goto :goto_0

    .line 45
    .end local v0    # "component":Lcom/bluestareffects/app/weather/common/Component;
    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 72
    iget-object v0, p0, Lcom/bluestareffects/app/weather/weatherImpls/Weather;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    invoke-virtual {v0, p1}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->setAlpha(F)V

    .line 73
    return-void
.end method

.method public setBackgroundAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 84
    iget-object v0, p0, Lcom/bluestareffects/app/weather/weatherImpls/Weather;->mBackgroundModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    invoke-virtual {v0, p1}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->setAlpha(F)V

    .line 85
    return-void
.end method

.method public update()V
    .locals 3

    .prologue
    .line 57
    iget-object v1, p0, Lcom/bluestareffects/app/weather/weatherImpls/Weather;->mComponentList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bluestareffects/app/weather/common/Component;

    .line 58
    .local v0, "component":Lcom/bluestareffects/app/weather/common/Component;
    invoke-interface {v0}, Lcom/bluestareffects/app/weather/common/Component;->update()V

    goto :goto_0

    .line 60
    .end local v0    # "component":Lcom/bluestareffects/app/weather/common/Component;
    :cond_0
    return-void
.end method
