.class public Lcom/bluestareffects/app/weather/common/Twinkle;
.super Ljava/lang/Object;
.source "Twinkle.java"

# interfaces
.implements Lcom/bluestareffects/app/weather/common/Component;
.implements Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$onEmitListner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bluestareffects/app/weather/common/Twinkle$TwinkleParticle;
    }
.end annotation


# instance fields
.field private lastTime:J

.field private mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

.field private mNum_Particle_Per_Second:F

.field private mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

.field private mRemainNum:F

.field private mResourceManager:Lcom/bluestareffects/app/weather/api/ResourceManager;

.field private mShader:Lcom/bluestareffects/sdk/materials/shader/BaseShader;

.field private mSystem:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;

.field private mTextureResourceId:I

.field private mTimeInited:Z


# direct methods
.method public constructor <init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;I)V
    .locals 2
    .param p1, "instance"    # Lcom/bluestareffects/sdk/core/EffectsInstance;
    .param p2, "parentModule"    # Lcom/bluestareffects/sdk/materials/module/ModuleGroup;
    .param p3, "resourceManager"    # Lcom/bluestareffects/app/weather/api/ResourceManager;
    .param p4, "textureResourceId"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bluestareffects/app/weather/common/Twinkle;->mTimeInited:Z

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bluestareffects/app/weather/common/Twinkle;->lastTime:J

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/bluestareffects/app/weather/common/Twinkle;->mRemainNum:F

    .line 29
    invoke-virtual {p3, p4}, Lcom/bluestareffects/app/weather/api/ResourceManager;->addResource(I)V

    .line 30
    iput-object p3, p0, Lcom/bluestareffects/app/weather/common/Twinkle;->mResourceManager:Lcom/bluestareffects/app/weather/api/ResourceManager;

    .line 31
    iput-object p1, p0, Lcom/bluestareffects/app/weather/common/Twinkle;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    .line 32
    iput-object p2, p0, Lcom/bluestareffects/app/weather/common/Twinkle;->mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    .line 33
    iput p4, p0, Lcom/bluestareffects/app/weather/common/Twinkle;->mTextureResourceId:I

    .line 34
    const/high16 v0, 0x41400000    # 12.0f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/Twinkle;->mNum_Particle_Per_Second:F

    .line 36
    invoke-direct {p0}, Lcom/bluestareffects/app/weather/common/Twinkle;->init()V

    .line 37
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    .line 41
    iget-object v3, p0, Lcom/bluestareffects/app/weather/common/Twinkle;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    const-class v4, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;

    invoke-virtual {v3, v4}, Lcom/bluestareffects/sdk/core/EffectsInstance;->getShader(Ljava/lang/Class;)Lcom/bluestareffects/sdk/core/IShader$User;

    move-result-object v3

    check-cast v3, Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    iput-object v3, p0, Lcom/bluestareffects/app/weather/common/Twinkle;->mShader:Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    .line 42
    new-instance v3, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;

    invoke-direct {v3}, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;-><init>()V

    iput-object v3, p0, Lcom/bluestareffects/app/weather/common/Twinkle;->mSystem:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;

    .line 43
    iget-object v3, p0, Lcom/bluestareffects/app/weather/common/Twinkle;->mSystem:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;

    invoke-virtual {v3, p0}, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->addOnEmitListner(Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$onEmitListner;)V

    .line 44
    iget-object v3, p0, Lcom/bluestareffects/app/weather/common/Twinkle;->mSystem:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;

    sget-object v4, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;->Interval:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;

    invoke-virtual {v3, v4}, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->setEmitMode(Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;)V

    .line 47
    iget-object v3, p0, Lcom/bluestareffects/app/weather/common/Twinkle;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    invoke-virtual {v3}, Lcom/bluestareffects/sdk/core/EffectsInstance;->invalidate()V

    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, "i":I
    const/16 v2, 0xc

    .local v2, "l":I
    move v1, v0

    .line 51
    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-ge v1, v2, :cond_0

    .line 52
    iget-object v3, p0, Lcom/bluestareffects/app/weather/common/Twinkle;->mSystem:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;

    invoke-virtual {p0}, Lcom/bluestareffects/app/weather/common/Twinkle;->emitParticle()Lcom/bluestareffects/sdk/materials/algorithm/IParticle;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->addParticle(Lcom/bluestareffects/sdk/materials/algorithm/IParticle;)V

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 54
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/Twinkle;->mResourceManager:Lcom/bluestareffects/app/weather/api/ResourceManager;

    iget v1, p0, Lcom/bluestareffects/app/weather/common/Twinkle;->mTextureResourceId:I

    invoke-virtual {v0, v1}, Lcom/bluestareffects/app/weather/api/ResourceManager;->removeResource(I)V

    .line 71
    return-void
.end method

.method public emitParticle()Lcom/bluestareffects/sdk/materials/algorithm/IParticle;
    .locals 14

    .prologue
    .line 101
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide v10, 0x3fd6666660000000L    # 0.3499999940395355

    mul-double/2addr v8, v10

    const-wide v10, 0x3fe3333340000000L    # 0.6000000238418579

    add-double/2addr v8, v10

    double-to-float v7, v8

    .line 102
    .local v7, "sizeScale":F
    const v8, 0x3e99999a    # 0.3f

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    const-wide v12, 0x3fdcccccc0000000L    # 0.44999998807907104

    mul-double/2addr v10, v12

    double-to-float v9, v10

    sub-float v0, v8, v9

    .line 103
    .local v0, "alpha":F
    const/high16 v8, 0x42400000    # 48.0f

    mul-float v4, v8, v7

    .line 104
    .local v4, "mParticleSizeW":F
    const/high16 v8, 0x42400000    # 48.0f

    mul-float v3, v8, v7

    .line 106
    .local v3, "mParticleSizeH":F
    new-instance v5, Lcom/bluestareffects/sdk/materials/module/Module;

    iget-object v8, p0, Lcom/bluestareffects/app/weather/common/Twinkle;->mShader:Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    invoke-direct {v5, v8}, Lcom/bluestareffects/sdk/materials/module/Module;-><init>(Lcom/bluestareffects/sdk/materials/shader/BaseShader;)V

    .line 107
    .local v5, "module":Lcom/bluestareffects/sdk/materials/module/Module;
    iget-object v8, p0, Lcom/bluestareffects/app/weather/common/Twinkle;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    iget v9, p0, Lcom/bluestareffects/app/weather/common/Twinkle;->mTextureResourceId:I

    invoke-virtual {v8, v9}, Lcom/bluestareffects/sdk/core/EffectsInstance;->getTexture(I)Lcom/bluestareffects/sdk/core/Texture;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/bluestareffects/sdk/materials/module/Module;->setTexture(Lcom/bluestareffects/sdk/core/Texture;)V

    .line 108
    invoke-virtual {v5, v4, v3}, Lcom/bluestareffects/sdk/materials/module/Module;->setSize(FF)V

    .line 109
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/bluestareffects/sdk/materials/module/Module;->setAlpha(F)V

    .line 110
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    double-to-float v8, v8

    const/high16 v9, 0x440c0000    # 560.0f

    mul-float/2addr v8, v9

    const/high16 v9, 0x42c80000    # 100.0f

    add-float/2addr v8, v9

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    double-to-float v9, v10

    const v10, 0x44098000    # 550.0f

    mul-float/2addr v9, v10

    const/high16 v10, 0x435c0000    # 220.0f

    add-float/2addr v9, v10

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v9, v10}, Lcom/bluestareffects/sdk/materials/module/Module;->setPosition(FFF)V

    .line 112
    new-instance v6, Lcom/bluestareffects/app/weather/common/Twinkle$TwinkleParticle;

    iget-object v8, p0, Lcom/bluestareffects/app/weather/common/Twinkle;->mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    invoke-direct {v6, v5, v8}, Lcom/bluestareffects/app/weather/common/Twinkle$TwinkleParticle;-><init>(Lcom/bluestareffects/sdk/materials/module/Module;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;)V

    .line 113
    .local v6, "particle":Lcom/bluestareffects/app/weather/common/Twinkle$TwinkleParticle;
    invoke-virtual {v6, v0}, Lcom/bluestareffects/app/weather/common/Twinkle$TwinkleParticle;->setDestAlpha(F)V

    .line 114
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide v10, 0x3ff4cccccccccccdL    # 1.3

    mul-double/2addr v8, v10

    const-wide v10, 0x3fe6666666666666L    # 0.7

    add-double/2addr v8, v10

    double-to-float v8, v8

    const/high16 v9, 0x447a0000    # 1000.0f

    mul-float v2, v8, v9

    .line 115
    .local v2, "life":F
    new-instance v1, Lcom/bluestareffects/sdk/materials/algorithm/Property$LifeWithTime;

    const/4 v8, 0x1

    invoke-direct {v1, v8, v2}, Lcom/bluestareffects/sdk/materials/algorithm/Property$LifeWithTime;-><init>(IF)V

    .line 116
    .local v1, "l":Lcom/bluestareffects/sdk/materials/algorithm/Property$LifeWithTime;
    invoke-virtual {v6, v1}, Lcom/bluestareffects/app/weather/common/Twinkle$TwinkleParticle;->setRootProperty(Lcom/bluestareffects/sdk/materials/algorithm/Property;)V

    .line 119
    invoke-virtual {v6, v1}, Lcom/bluestareffects/app/weather/common/Twinkle$TwinkleParticle;->setLifeProperty(Lcom/bluestareffects/sdk/materials/algorithm/Property$LifeProperty;)V

    .line 120
    invoke-virtual {v6, v2}, Lcom/bluestareffects/app/weather/common/Twinkle$TwinkleParticle;->setLife(F)V

    .line 122
    return-object v6
.end method

.method public onEmit(F)Ljava/util/ArrayList;
    .locals 7
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
    .line 84
    iget v4, p0, Lcom/bluestareffects/app/weather/common/Twinkle;->mRemainNum:F

    iget v5, p0, Lcom/bluestareffects/app/weather/common/Twinkle;->mNum_Particle_Per_Second:F

    mul-float/2addr v5, p1

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Lcom/bluestareffects/app/weather/common/Twinkle;->mRemainNum:F

    .line 85
    iget v4, p0, Lcom/bluestareffects/app/weather/common/Twinkle;->mRemainNum:F

    float-to-int v2, v4

    .line 86
    .local v2, "n":I
    iget v4, p0, Lcom/bluestareffects/app/weather/common/Twinkle;->mRemainNum:F

    int-to-float v5, v2

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/bluestareffects/app/weather/common/Twinkle;->mRemainNum:F

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bluestareffects/sdk/materials/algorithm/IParticle;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/bluestareffects/app/weather/common/Twinkle;->emitParticle()Lcom/bluestareffects/sdk/materials/algorithm/IParticle;

    move-result-object v3

    .line 93
    .local v3, "particle":Lcom/bluestareffects/sdk/materials/algorithm/IParticle;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    .end local v3    # "particle":Lcom/bluestareffects/sdk/materials/algorithm/IParticle;
    :cond_0
    return-object v1
.end method

.method public onSizeChanged(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 76
    return-void
.end method

.method public update()V
    .locals 6

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/bluestareffects/app/weather/common/Twinkle;->mTimeInited:Z

    if-nez v0, :cond_0

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bluestareffects/app/weather/common/Twinkle;->mTimeInited:Z

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bluestareffects/app/weather/common/Twinkle;->lastTime:J

    .line 66
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/Twinkle;->mSystem:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/bluestareffects/app/weather/common/Twinkle;->lastTime:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->update(F)V

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bluestareffects/app/weather/common/Twinkle;->lastTime:J

    goto :goto_0
.end method
