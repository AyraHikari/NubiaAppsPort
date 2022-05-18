.class public Lcom/bluestareffects/app/weather/common/GroupStars;
.super Ljava/lang/Object;
.source "GroupStars.java"

# interfaces
.implements Lcom/bluestareffects/app/weather/common/Component;
.implements Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$onEmitListner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bluestareffects/app/weather/common/GroupStars$AlphaForTimeProperty;,
        Lcom/bluestareffects/app/weather/common/GroupStars$ValueForTimeProperty;,
        Lcom/bluestareffects/app/weather/common/GroupStars$StarPropertyParticle;
    }
.end annotation


# static fields
.field private static final ALPHA_TIME:F = 1500.0f

.field private static final PARTICLE_HEIGHT:I = 0x5

.field private static final PARTICLE_WIDTH:I = 0x5

.field private static final PERIOD:F = 6000.0f

.field private static final STOP_TIME:F = 1500.0f


# instance fields
.field private mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

.field private mLastChangeTime:J

.field private mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

.field private mParticleNum:I

.field private mRandom:Ljava/util/Random;

.field private mRandomHeight:F

.field private mResourceManager:Lcom/bluestareffects/app/weather/api/ResourceManager;

.field private mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

.field private mShader:Lcom/bluestareffects/sdk/materials/shader/BaseShader;

.field private mSystem:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;

.field private mTextureResourceId:I

.field private mTimeInitialize:Z


# direct methods
.method public constructor <init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;I)V
    .locals 4
    .param p1, "instance"    # Lcom/bluestareffects/sdk/core/EffectsInstance;
    .param p2, "parentModule"    # Lcom/bluestareffects/sdk/materials/module/ModuleGroup;
    .param p3, "resourceManager"    # Lcom/bluestareffects/app/weather/api/ResourceManager;
    .param p4, "textureResourceId"    # I

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p3, p4}, Lcom/bluestareffects/app/weather/api/ResourceManager;->addResource(I)V

    .line 47
    iput-object p3, p0, Lcom/bluestareffects/app/weather/common/GroupStars;->mResourceManager:Lcom/bluestareffects/app/weather/api/ResourceManager;

    .line 48
    iput-object p1, p0, Lcom/bluestareffects/app/weather/common/GroupStars;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    .line 49
    iput-object p2, p0, Lcom/bluestareffects/app/weather/common/GroupStars;->mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    .line 50
    iput p4, p0, Lcom/bluestareffects/app/weather/common/GroupStars;->mTextureResourceId:I

    .line 51
    new-instance v0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    invoke-direct {v0}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;-><init>()V

    iput-object v0, p0, Lcom/bluestareffects/app/weather/common/GroupStars;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    .line 52
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/GroupStars;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->setAlpha(F)V

    .line 53
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/GroupStars;->mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/GroupStars;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->addSubModule(Lcom/bluestareffects/sdk/core/IModule;)V

    .line 54
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/bluestareffects/app/weather/common/GroupStars;->mRandom:Ljava/util/Random;

    .line 55
    new-instance v0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;

    invoke-direct {v0}, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;-><init>()V

    iput-object v0, p0, Lcom/bluestareffects/app/weather/common/GroupStars;->mSystem:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;

    .line 56
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/GroupStars;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    const-class v1, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/core/EffectsInstance;->getShader(Ljava/lang/Class;)Lcom/bluestareffects/sdk/core/IShader$User;

    move-result-object v0

    check-cast v0, Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    iput-object v0, p0, Lcom/bluestareffects/app/weather/common/GroupStars;->mShader:Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    .line 57
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/GroupStars;->mSystem:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;

    invoke-virtual {v0, p0}, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->addOnEmitListner(Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$onEmitListner;)V

    .line 58
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/GroupStars;->mSystem:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;

    sget-object v1, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;->Times:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->setEmitMode(Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;)V

    .line 59
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/GroupStars;->mSystem:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->setEmitTimes(I)V

    .line 62
    return-void
.end method

.method private setRandomProperty(Lcom/bluestareffects/sdk/materials/module/Module;Lcom/bluestareffects/app/weather/common/GroupStars$StarPropertyParticle;I)V
    .locals 11
    .param p1, "module"    # Lcom/bluestareffects/sdk/materials/module/Module;
    .param p2, "particle"    # Lcom/bluestareffects/app/weather/common/GroupStars$StarPropertyParticle;
    .param p3, "num"    # I

    .prologue
    const/high16 v10, 0x41a00000    # 20.0f

    const/high16 v9, 0x40a00000    # 5.0f

    const v8, 0x3e99999a    # 0.3f

    const v7, 0x3dcccccd    # 0.1f

    .line 197
    const/high16 v4, 0x42340000    # 45.0f

    const v5, 0x44778000    # 990.0f

    iget-object v6, p0, Lcom/bluestareffects/app/weather/common/GroupStars;->mRandom:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    mul-float/2addr v5, v6

    add-float v2, v4, v5

    .line 200
    .local v2, "positionX":F
    iget v4, p0, Lcom/bluestareffects/app/weather/common/GroupStars;->mParticleNum:I

    div-int/lit8 v4, v4, 0x2

    if-ge p3, v4, :cond_1

    .line 201
    iget v4, p0, Lcom/bluestareffects/app/weather/common/GroupStars;->mParticleNum:I

    div-int/lit8 v4, v4, 0x4

    if-ge p3, v4, :cond_0

    .line 202
    const v4, 0x3ee66666    # 0.45f

    iget-object v5, p0, Lcom/bluestareffects/app/weather/common/GroupStars;->mRandom:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v5

    mul-float/2addr v4, v5

    add-float v0, v8, v4

    .line 211
    .local v0, "alpha":F
    :goto_0
    iget v4, p0, Lcom/bluestareffects/app/weather/common/GroupStars;->mRandomHeight:F

    sub-float/2addr v4, v10

    iget-object v5, p0, Lcom/bluestareffects/app/weather/common/GroupStars;->mRandom:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v5

    mul-float/2addr v4, v5

    add-float v3, v10, v4

    .line 212
    .local v3, "positionY":F
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4}, Lcom/bluestareffects/sdk/materials/module/Module;->setPosition(FFF)V

    .line 213
    invoke-virtual {p2, v0}, Lcom/bluestareffects/app/weather/common/GroupStars$StarPropertyParticle;->setAlpha(F)V

    .line 214
    iget-object v4, p0, Lcom/bluestareffects/app/weather/common/GroupStars;->mRandom:Ljava/util/Random;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x2

    int-to-float v1, v4

    .line 215
    .local v1, "changeSize":F
    add-float v4, v9, v1

    add-float v5, v9, v1

    invoke-virtual {p1, v4, v5}, Lcom/bluestareffects/sdk/materials/module/Module;->setSize(FF)V

    .line 216
    return-void

    .line 204
    .end local v0    # "alpha":F
    .end local v1    # "changeSize":F
    .end local v3    # "positionY":F
    :cond_0
    iget-object v4, p0, Lcom/bluestareffects/app/weather/common/GroupStars;->mRandom:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    mul-float/2addr v4, v8

    add-float v0, v7, v4

    .restart local v0    # "alpha":F
    goto :goto_0

    .line 206
    .end local v0    # "alpha":F
    :cond_1
    iget v4, p0, Lcom/bluestareffects/app/weather/common/GroupStars;->mParticleNum:I

    mul-int/lit8 v4, v4, 0x5

    div-int/lit8 v4, v4, 0x6

    if-ge p3, v4, :cond_2

    .line 207
    const v4, 0x3eb33333    # 0.35f

    iget-object v5, p0, Lcom/bluestareffects/app/weather/common/GroupStars;->mRandom:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v5

    mul-float/2addr v4, v5

    add-float v0, v7, v4

    .restart local v0    # "alpha":F
    goto :goto_0

    .line 209
    .end local v0    # "alpha":F
    :cond_2
    const v4, 0x3e19999a    # 0.15f

    const v5, 0x3e4ccccd    # 0.2f

    iget-object v6, p0, Lcom/bluestareffects/app/weather/common/GroupStars;->mRandom:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    mul-float/2addr v5, v6

    add-float v0, v4, v5

    .restart local v0    # "alpha":F
    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/GroupStars;->mResourceManager:Lcom/bluestareffects/app/weather/api/ResourceManager;

    iget v1, p0, Lcom/bluestareffects/app/weather/common/GroupStars;->mTextureResourceId:I

    invoke-virtual {v0, v1}, Lcom/bluestareffects/app/weather/api/ResourceManager;->removeResource(I)V

    .line 81
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/GroupStars;->mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/GroupStars;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->removeSubModule(Lcom/bluestareffects/sdk/core/IModule;)V

    .line 82
    return-void
.end method

.method public onEmit(F)Ljava/util/ArrayList;
    .locals 11
    .param p1, "timePassed"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bluestareffects/sdk/materials/algorithm/IParticle;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 91
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v4, "particles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bluestareffects/sdk/materials/algorithm/IParticle;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v6, p0, Lcom/bluestareffects/app/weather/common/GroupStars;->mParticleNum:I

    if-ge v1, v6, :cond_0

    .line 93
    new-instance v2, Lcom/bluestareffects/sdk/materials/module/Module;

    iget-object v6, p0, Lcom/bluestareffects/app/weather/common/GroupStars;->mShader:Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    invoke-direct {v2, v6}, Lcom/bluestareffects/sdk/materials/module/Module;-><init>(Lcom/bluestareffects/sdk/materials/shader/BaseShader;)V

    .line 94
    .local v2, "module":Lcom/bluestareffects/sdk/materials/module/Module;
    iget-object v6, p0, Lcom/bluestareffects/app/weather/common/GroupStars;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    iget v7, p0, Lcom/bluestareffects/app/weather/common/GroupStars;->mTextureResourceId:I

    invoke-virtual {v6, v7}, Lcom/bluestareffects/sdk/core/EffectsInstance;->getTexture(I)Lcom/bluestareffects/sdk/core/Texture;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/bluestareffects/sdk/materials/module/Module;->setTexture(Lcom/bluestareffects/sdk/core/Texture;)V

    .line 95
    new-instance v3, Lcom/bluestareffects/app/weather/common/GroupStars$StarPropertyParticle;

    iget-object v6, p0, Lcom/bluestareffects/app/weather/common/GroupStars;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    invoke-direct {v3, v2, v6}, Lcom/bluestareffects/app/weather/common/GroupStars$StarPropertyParticle;-><init>(Lcom/bluestareffects/sdk/materials/module/Module;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;)V

    .line 96
    .local v3, "particle":Lcom/bluestareffects/app/weather/common/GroupStars$StarPropertyParticle;
    invoke-direct {p0, v2, v3, v1}, Lcom/bluestareffects/app/weather/common/GroupStars;->setRandomProperty(Lcom/bluestareffects/sdk/materials/module/Module;Lcom/bluestareffects/app/weather/common/GroupStars$StarPropertyParticle;I)V

    .line 97
    new-instance v5, Lcom/bluestareffects/app/weather/common/GroupStars$ValueForTimeProperty;

    invoke-direct {v5, p0, v9}, Lcom/bluestareffects/app/weather/common/GroupStars$ValueForTimeProperty;-><init>(Lcom/bluestareffects/app/weather/common/GroupStars;I)V

    .line 98
    .local v5, "property":Lcom/bluestareffects/app/weather/common/GroupStars$ValueForTimeProperty;
    new-array v6, v9, [F

    iget-object v7, p0, Lcom/bluestareffects/app/weather/common/GroupStars;->mRandom:Ljava/util/Random;

    .line 99
    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    const v8, 0x45bb8000    # 6000.0f

    mul-float/2addr v7, v8

    aput v7, v6, v10

    .line 98
    invoke-virtual {v5, v6}, Lcom/bluestareffects/app/weather/common/GroupStars$ValueForTimeProperty;->setValue([F)V

    .line 102
    new-instance v0, Lcom/bluestareffects/app/weather/common/GroupStars$AlphaForTimeProperty;

    invoke-direct {v0, p0, v9}, Lcom/bluestareffects/app/weather/common/GroupStars$AlphaForTimeProperty;-><init>(Lcom/bluestareffects/app/weather/common/GroupStars;I)V

    .line 103
    .local v0, "alphaProperty":Lcom/bluestareffects/app/weather/common/GroupStars$AlphaForTimeProperty;
    new-array v6, v9, [F

    const/4 v7, 0x0

    aput v7, v6, v10

    invoke-virtual {v0, v6}, Lcom/bluestareffects/app/weather/common/GroupStars$AlphaForTimeProperty;->setValue([F)V

    .line 106
    invoke-virtual {v5, v0}, Lcom/bluestareffects/app/weather/common/GroupStars$ValueForTimeProperty;->addResultListner(Lcom/bluestareffects/sdk/materials/algorithm/ResultListener;)V

    .line 107
    invoke-virtual {v3, v5}, Lcom/bluestareffects/app/weather/common/GroupStars$StarPropertyParticle;->setRootProperty(Lcom/bluestareffects/sdk/materials/algorithm/Property;)V

    .line 108
    invoke-virtual {v3, v0}, Lcom/bluestareffects/app/weather/common/GroupStars$StarPropertyParticle;->setOuterProperty(Lcom/bluestareffects/sdk/materials/algorithm/Property;)V

    .line 109
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    .end local v0    # "alphaProperty":Lcom/bluestareffects/app/weather/common/GroupStars$AlphaForTimeProperty;
    .end local v2    # "module":Lcom/bluestareffects/sdk/materials/module/Module;
    .end local v3    # "particle":Lcom/bluestareffects/app/weather/common/GroupStars$StarPropertyParticle;
    .end local v5    # "property":Lcom/bluestareffects/app/weather/common/GroupStars$ValueForTimeProperty;
    :cond_0
    return-object v4
.end method

.method public onSizeChanged(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 87
    return-void
.end method

.method public setParticleNum(I)V
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 223
    iput p1, p0, Lcom/bluestareffects/app/weather/common/GroupStars;->mParticleNum:I

    .line 224
    return-void
.end method

.method public setRandomHeight(F)V
    .locals 0
    .param p1, "height"    # F

    .prologue
    .line 219
    iput p1, p0, Lcom/bluestareffects/app/weather/common/GroupStars;->mRandomHeight:F

    .line 220
    return-void
.end method

.method public update()V
    .locals 6

    .prologue
    .line 66
    iget-boolean v2, p0, Lcom/bluestareffects/app/weather/common/GroupStars;->mTimeInitialize:Z

    if-nez v2, :cond_0

    .line 67
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/bluestareffects/app/weather/common/GroupStars;->mTimeInitialize:Z

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bluestareffects/app/weather/common/GroupStars;->mLastChangeTime:J

    .line 76
    :goto_0
    return-void

    .line 70
    :cond_0
    const/16 v2, 0x17

    const-string v3, "GroupStars::update"

    invoke-static {v2, v3}, Lcom/bluestareffects/sdk/util/BSLog;->v(ILjava/lang/String;)I

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 72
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/bluestareffects/app/weather/common/GroupStars;->mSystem:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;

    iget-wide v4, p0, Lcom/bluestareffects/app/weather/common/GroupStars;->mLastChangeTime:J

    sub-long v4, v0, v4

    long-to-float v3, v4

    invoke-virtual {v2, v3}, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->update(F)V

    .line 73
    iput-wide v0, p0, Lcom/bluestareffects/app/weather/common/GroupStars;->mLastChangeTime:J

    goto :goto_0
.end method
