.class public Lcom/bluestareffects/app/weather/common/CloudLayer;
.super Ljava/lang/Object;
.source "CloudLayer.java"

# interfaces
.implements Lcom/bluestareffects/app/weather/common/Component;


# instance fields
.field private mLastChangeTime:J

.field private mOuterProperty:Lcom/bluestareffects/sdk/materials/algorithm/Property;

.field private mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

.field private mResourceManager:Lcom/bluestareffects/app/weather/api/ResourceManager;

.field private mRootProperty:Lcom/bluestareffects/sdk/materials/algorithm/Property;

.field private mSelfModule:Lcom/bluestareffects/sdk/materials/module/Module;

.field private mTextureId:I

.field private mTimeInitialize:Z


# direct methods
.method public constructor <init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;III)V
    .locals 4
    .param p1, "instance"    # Lcom/bluestareffects/sdk/core/EffectsInstance;
    .param p2, "parentModule"    # Lcom/bluestareffects/sdk/materials/module/ModuleGroup;
    .param p3, "resourceManager"    # Lcom/bluestareffects/app/weather/api/ResourceManager;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "textureResourceId"    # I

    .prologue
    const/4 v3, 0x4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p3, p6}, Lcom/bluestareffects/app/weather/api/ResourceManager;->addResource(I)V

    .line 31
    iput p6, p0, Lcom/bluestareffects/app/weather/common/CloudLayer;->mTextureId:I

    .line 32
    iput-object p3, p0, Lcom/bluestareffects/app/weather/common/CloudLayer;->mResourceManager:Lcom/bluestareffects/app/weather/api/ResourceManager;

    .line 33
    iput-object p2, p0, Lcom/bluestareffects/app/weather/common/CloudLayer;->mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    .line 34
    new-instance v1, Lcom/bluestareffects/sdk/materials/module/Module;

    const-class v0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;

    invoke-virtual {p1, v0}, Lcom/bluestareffects/sdk/core/EffectsInstance;->getShader(Ljava/lang/Class;)Lcom/bluestareffects/sdk/core/IShader$User;

    move-result-object v0

    check-cast v0, Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    invoke-direct {v1, v0}, Lcom/bluestareffects/sdk/materials/module/Module;-><init>(Lcom/bluestareffects/sdk/materials/shader/BaseShader;)V

    iput-object v1, p0, Lcom/bluestareffects/app/weather/common/CloudLayer;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/Module;

    .line 35
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/CloudLayer;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {p1, p6}, Lcom/bluestareffects/sdk/core/EffectsInstance;->getTexture(I)Lcom/bluestareffects/sdk/core/Texture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/module/Module;->setTexture(Lcom/bluestareffects/sdk/core/Texture;)V

    .line 36
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/CloudLayer;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/Module;

    int-to-float v1, p4

    int-to-float v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/bluestareffects/sdk/materials/module/Module;->setSize(FF)V

    .line 37
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/CloudLayer;->mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/CloudLayer;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->addSubModule(Lcom/bluestareffects/sdk/core/IModule;)V

    .line 38
    new-instance v0, Lcom/bluestareffects/sdk/materials/algorithm/Property$VelocityFromAcceleration;

    invoke-direct {v0, v3}, Lcom/bluestareffects/sdk/materials/algorithm/Property$VelocityFromAcceleration;-><init>(I)V

    iput-object v0, p0, Lcom/bluestareffects/app/weather/common/CloudLayer;->mRootProperty:Lcom/bluestareffects/sdk/materials/algorithm/Property;

    .line 39
    new-instance v0, Lcom/bluestareffects/sdk/materials/algorithm/Property$PositionFromVelocity;

    invoke-direct {v0, v3}, Lcom/bluestareffects/sdk/materials/algorithm/Property$PositionFromVelocity;-><init>(I)V

    iput-object v0, p0, Lcom/bluestareffects/app/weather/common/CloudLayer;->mOuterProperty:Lcom/bluestareffects/sdk/materials/algorithm/Property;

    .line 40
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/CloudLayer;->mRootProperty:Lcom/bluestareffects/sdk/materials/algorithm/Property;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/CloudLayer;->mOuterProperty:Lcom/bluestareffects/sdk/materials/algorithm/Property;

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/algorithm/Property;->addResultListner(Lcom/bluestareffects/sdk/materials/algorithm/ResultListener;)V

    .line 41
    return-void
.end method

.method private updateTexturePosition(J)V
    .locals 7
    .param p1, "time"    # J

    .prologue
    .line 95
    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/CloudLayer;->mRootProperty:Lcom/bluestareffects/sdk/materials/algorithm/Property;

    long-to-float v2, p1

    invoke-virtual {v1, v2}, Lcom/bluestareffects/sdk/materials/algorithm/Property;->onTime(F)V

    .line 96
    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/CloudLayer;->mOuterProperty:Lcom/bluestareffects/sdk/materials/algorithm/Property;

    invoke-virtual {v1}, Lcom/bluestareffects/sdk/materials/algorithm/Property;->getValue()[F

    move-result-object v0

    .line 97
    .local v0, "values":[F
    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/CloudLayer;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/Module;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    const/4 v5, 0x3

    aget v5, v0, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/bluestareffects/sdk/materials/module/Module;->setTextureCoors(FFFF)V

    .line 98
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/CloudLayer;->mResourceManager:Lcom/bluestareffects/app/weather/api/ResourceManager;

    iget v1, p0, Lcom/bluestareffects/app/weather/common/CloudLayer;->mTextureId:I

    invoke-virtual {v0, v1}, Lcom/bluestareffects/app/weather/api/ResourceManager;->removeResource(I)V

    .line 86
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/CloudLayer;->mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/CloudLayer;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->removeSubModule(Lcom/bluestareffects/sdk/core/IModule;)V

    .line 87
    return-void
.end method

.method public onSizeChanged(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 92
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/CloudLayer;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v0, p1}, Lcom/bluestareffects/sdk/materials/module/Module;->setAlpha(F)V

    .line 45
    return-void
.end method

.method public setPosition(FFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 48
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/CloudLayer;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bluestareffects/sdk/materials/module/Module;->setPosition(FFF)V

    .line 49
    return-void
.end method

.method public setTexturePosition(FFFF)V
    .locals 3
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 52
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/CloudLayer;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bluestareffects/sdk/materials/module/Module;->setTextureCoors(FFFF)V

    .line 53
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/CloudLayer;->mOuterProperty:Lcom/bluestareffects/sdk/materials/algorithm/Property;

    const/4 v1, 0x4

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    const/4 v2, 0x2

    aput p3, v1, v2

    const/4 v2, 0x3

    aput p4, v1, v2

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/algorithm/Property;->setValue([F)V

    .line 59
    return-void
.end method

.method public setVelocity(FF)V
    .locals 3
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    .line 62
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/CloudLayer;->mRootProperty:Lcom/bluestareffects/sdk/materials/algorithm/Property;

    const/4 v1, 0x4

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    const/4 v2, 0x2

    aput p1, v1, v2

    const/4 v2, 0x3

    aput p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/algorithm/Property;->setValue([F)V

    .line 68
    return-void
.end method

.method public update()V
    .locals 4

    .prologue
    .line 72
    iget-boolean v2, p0, Lcom/bluestareffects/app/weather/common/CloudLayer;->mTimeInitialize:Z

    if-nez v2, :cond_0

    .line 73
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/bluestareffects/app/weather/common/CloudLayer;->mTimeInitialize:Z

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bluestareffects/app/weather/common/CloudLayer;->mLastChangeTime:J

    .line 81
    :goto_0
    return-void

    .line 76
    :cond_0
    const/16 v2, 0x17

    const-string v3, "CloudLayer::update"

    invoke-static {v2, v3}, Lcom/bluestareffects/sdk/util/BSLog;->v(ILjava/lang/String;)I

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 78
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/bluestareffects/app/weather/common/CloudLayer;->mLastChangeTime:J

    sub-long v2, v0, v2

    invoke-direct {p0, v2, v3}, Lcom/bluestareffects/app/weather/common/CloudLayer;->updateTexturePosition(J)V

    .line 79
    iput-wide v0, p0, Lcom/bluestareffects/app/weather/common/CloudLayer;->mLastChangeTime:J

    goto :goto_0
.end method
