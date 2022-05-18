.class public Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule;
.super Ljava/lang/Object;
.source "TestBatchModule.java"

# interfaces
.implements Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$onEmitListner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule$TestWeatherParticle;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$onEmitListner",
        "<",
        "Lcom/bluestareffects/sdk/materials/algorithm/Batch2DParticle;",
        ">;"
    }
.end annotation


# instance fields
.field private lastTime:J

.field private final mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

.field private mRandom:Ljava/util/Random;

.field private final mShader:Lcom/bluestareffects/sdk/materials/shader/BaseShader;

.field private final mSubRoot:Lcom/bluestareffects/sdk/materials/module/Batch2DModule;

.field private final mSystem:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem",
            "<",
            "Lcom/bluestareffects/sdk/materials/algorithm/Batch2DParticle;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeInited:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instance"    # Lcom/bluestareffects/sdk/core/EffectsInstance;

    .prologue
    const/4 v6, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule;->mTimeInited:Z

    .line 88
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule;->lastTime:J

    .line 101
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    iput-object v3, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule;->mRandom:Ljava/util/Random;

    .line 51
    iput-object p2, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    .line 53
    iget-object v3, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    const-class v4, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;

    invoke-virtual {v3, v4}, Lcom/bluestareffects/sdk/core/EffectsInstance;->getShader(Ljava/lang/Class;)Lcom/bluestareffects/sdk/core/IShader$User;

    move-result-object v3

    check-cast v3, Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    iput-object v3, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule;->mShader:Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    .line 55
    new-instance v3, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;

    invoke-direct {v3}, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;-><init>()V

    iput-object v3, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule;->mSystem:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;

    .line 56
    iget-object v3, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule;->mSystem:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;

    invoke-virtual {v3, p0}, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->addOnEmitListner(Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$onEmitListner;)V

    .line 57
    iget-object v3, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule;->mSystem:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;

    sget-object v4, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;->EveryFrame:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;

    invoke-virtual {v3, v4}, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->setEmitMode(Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;)V

    .line 58
    iget-object v3, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule;->mSystem:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->setEmitTimes(I)V

    .line 59
    iget-object v3, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule;->mSystem:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;

    const/high16 v4, 0x43480000    # 200.0f

    invoke-virtual {v3, v4}, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->setEmitInterval(F)V

    .line 61
    new-instance v2, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    invoke-direct {v2}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;-><init>()V

    .line 64
    .local v2, "rootModule":Lcom/bluestareffects/sdk/materials/module/ModuleGroup;
    new-instance v1, Lcom/bluestareffects/sdk/materials/module/Module;

    iget-object v3, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule;->mShader:Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    invoke-direct {v1, v3}, Lcom/bluestareffects/sdk/materials/module/Module;-><init>(Lcom/bluestareffects/sdk/materials/shader/BaseShader;)V

    .line 65
    .local v1, "module":Lcom/bluestareffects/sdk/materials/module/Module;
    iget-object v3, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    sget v4, Lcom/bluestareffects/R$mipmap;->ic_launcher:I

    invoke-virtual {v3, v4}, Lcom/bluestareffects/sdk/core/EffectsInstance;->getTexture(I)Lcom/bluestareffects/sdk/core/Texture;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bluestareffects/sdk/materials/module/Module;->setTexture(Lcom/bluestareffects/sdk/core/Texture;)V

    .line 66
    invoke-virtual {v1, v6, v6, v6}, Lcom/bluestareffects/sdk/materials/module/Module;->setPosition(FFF)V

    .line 67
    const/high16 v3, 0x44870000    # 1080.0f

    const/high16 v4, 0x44f00000    # 1920.0f

    invoke-virtual {v1, v3, v4}, Lcom/bluestareffects/sdk/materials/module/Module;->setSize(FF)V

    .line 68
    invoke-static {}, Lcom/bluestareffects/sdk/util/BSMatrix;->create()Lcom/bluestareffects/sdk/util/BSMatrix;

    move-result-object v0

    .line 71
    .local v0, "matrix":Lcom/bluestareffects/sdk/util/BSMatrix;
    invoke-virtual {v1, v0}, Lcom/bluestareffects/sdk/materials/module/Module;->setMatrix(Lcom/bluestareffects/sdk/util/BSMatrix;)V

    .line 72
    invoke-virtual {v2, v1}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->addSubModule(Lcom/bluestareffects/sdk/core/IModule;)V

    .line 74
    new-instance v3, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;

    iget-object v4, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    invoke-direct {v3, v4}, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;)V

    iput-object v3, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule;->mSubRoot:Lcom/bluestareffects/sdk/materials/module/Batch2DModule;

    .line 75
    iget-object v3, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule;->mSubRoot:Lcom/bluestareffects/sdk/materials/module/Batch2DModule;

    iget-object v4, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule;->mSystem:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;

    invoke-virtual {v4}, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->getParticlesAlive()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->setParticles(Ljava/util/ArrayList;)V

    .line 76
    iget-object v3, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule;->mSubRoot:Lcom/bluestareffects/sdk/materials/module/Batch2DModule;

    iget-object v4, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    sget v5, Lcom/bluestareffects/R$mipmap;->ic_launcher:I

    invoke-virtual {v4, v5}, Lcom/bluestareffects/sdk/core/EffectsInstance;->getTexture(I)Lcom/bluestareffects/sdk/core/Texture;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->setTexture(Lcom/bluestareffects/sdk/core/Texture;)V

    .line 77
    iget-object v3, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule;->mSubRoot:Lcom/bluestareffects/sdk/materials/module/Batch2DModule;

    invoke-virtual {v2, v3}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->addSubModule(Lcom/bluestareffects/sdk/core/IModule;)V

    .line 83
    iget-object v3, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    invoke-virtual {v3, v2}, Lcom/bluestareffects/sdk/core/EffectsInstance;->setRootModule(Lcom/bluestareffects/sdk/core/IModule;)V

    .line 84
    iget-object v3, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    invoke-virtual {v3}, Lcom/bluestareffects/sdk/core/EffectsInstance;->invalidate()V

    .line 85
    return-void
.end method

.method private emitParticle()Lcom/bluestareffects/sdk/materials/algorithm/Batch2DParticle;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 114
    iget-object v1, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule;->mSystem:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;

    invoke-virtual {v1}, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->getCachedParticle()Lcom/bluestareffects/sdk/materials/algorithm/IParticle;

    move-result-object v0

    check-cast v0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule$TestWeatherParticle;

    .line 115
    .local v0, "particle":Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule$TestWeatherParticle;
    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule$TestWeatherParticle;

    .end local v0    # "particle":Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule$TestWeatherParticle;
    invoke-direct {v0}, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule$TestWeatherParticle;-><init>()V

    .line 119
    .restart local v0    # "particle":Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule$TestWeatherParticle;
    :cond_0
    iget-object v1, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule;->mRandom:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const/high16 v2, 0x44870000    # 1080.0f

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule$TestWeatherParticle;->mX:F

    .line 120
    iput v3, v0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule$TestWeatherParticle;->mY:F

    .line 121
    const/high16 v1, 0x42b40000    # 90.0f

    iput v1, v0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule$TestWeatherParticle;->mWidth:F

    .line 122
    const/high16 v1, 0x43200000    # 160.0f

    iput v1, v0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule$TestWeatherParticle;->mHeight:F

    .line 123
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule$TestWeatherParticle;->mAlpha:F

    .line 125
    iput v3, v0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule$TestWeatherParticle;->mVx:F

    .line 126
    const v1, 0x3e4ccccd    # 0.2f

    iput v1, v0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule$TestWeatherParticle;->mVy:F

    .line 128
    return-object v0
.end method


# virtual methods
.method public onEmit(F)Ljava/util/ArrayList;
    .locals 5
    .param p1, "timePassed"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bluestareffects/sdk/materials/algorithm/Batch2DParticle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    const/16 v2, 0x17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TestWeather::onEmit timePassed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bluestareffects/sdk/util/BSLog;->v(ILjava/lang/String;)I

    .line 107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bluestareffects/sdk/materials/algorithm/Batch2DParticle;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule;->emitParticle()Lcom/bluestareffects/sdk/materials/algorithm/Batch2DParticle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_0
    return-object v1
.end method

.method public update()V
    .locals 6

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule;->mTimeInited:Z

    if-nez v0, :cond_0

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule;->mTimeInited:Z

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule;->lastTime:J

    .line 99
    :goto_0
    return-void

    .line 95
    :cond_0
    const/16 v0, 0x17

    const-string v1, "TestWeather::update "

    invoke-static {v0, v1}, Lcom/bluestareffects/sdk/util/BSLog;->v(ILjava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule;->mSystem:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule;->lastTime:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->update(F)V

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestBatchModule;->lastTime:J

    goto :goto_0
.end method
