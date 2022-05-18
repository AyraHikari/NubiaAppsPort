.class public Lcom/bluestareffects/app/weather/weatherImpls/TestWeather;
.super Ljava/lang/Object;
.source "TestWeather.java"

# interfaces
.implements Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$onEmitListner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bluestareffects/app/weather/weatherImpls/TestWeather$TestWeatherPropertyParticle;
    }
.end annotation


# instance fields
.field private lastTime:J

.field private final mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

.field private mRandom:Ljava/util/Random;

.field private final mRootModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

.field private final mShader:Lcom/bluestareffects/sdk/materials/shader/BaseShader;

.field private final mSystem:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;

.field private mTimeInited:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bluestareffects/sdk/core/EffectsInstance;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instance"    # Lcom/bluestareffects/sdk/core/EffectsInstance;

    .prologue
    const/4 v4, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestWeather;->mTimeInited:Z

    .line 89
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestWeather;->lastTime:J

    .line 102
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestWeather;->mRandom:Ljava/util/Random;

    .line 60
    iput-object p2, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestWeather;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    .line 62
    iget-object v1, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestWeather;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    const-class v2, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;

    invoke-virtual {v1, v2}, Lcom/bluestareffects/sdk/core/EffectsInstance;->getShader(Ljava/lang/Class;)Lcom/bluestareffects/sdk/core/IShader$User;

    move-result-object v1

    check-cast v1, Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    iput-object v1, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestWeather;->mShader:Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    .line 64
    new-instance v1, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;

    invoke-direct {v1}, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;-><init>()V

    iput-object v1, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestWeather;->mSystem:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;

    .line 65
    iget-object v1, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestWeather;->mSystem:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;

    invoke-virtual {v1, p0}, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->addOnEmitListner(Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$onEmitListner;)V

    .line 66
    iget-object v1, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestWeather;->mSystem:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;

    sget-object v2, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;->EveryFrame:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;

    invoke-virtual {v1, v2}, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->setEmitMode(Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;)V

    .line 70
    new-instance v1, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    invoke-direct {v1}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;-><init>()V

    iput-object v1, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestWeather;->mRootModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    .line 71
    iget-object v1, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestWeather;->mRootModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->setAlpha(F)V

    .line 73
    invoke-static {}, Lcom/bluestareffects/sdk/util/BSMatrix;->create()Lcom/bluestareffects/sdk/util/BSMatrix;

    move-result-object v0

    .line 75
    .local v0, "matrix":Lcom/bluestareffects/sdk/util/BSMatrix;
    const/high16 v1, 0x41700000    # 15.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v4, v4, v2}, Lcom/bluestareffects/sdk/util/BSMatrix;->rotate(FFFF)V

    .line 77
    iget-object v1, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestWeather;->mRootModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    invoke-virtual {v1, v0}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->setMatrix(Lcom/bluestareffects/sdk/util/BSMatrix;)V

    .line 78
    iget-object v1, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestWeather;->mRootModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->shareMatrixInChild(Z)V

    .line 82
    iget-object v1, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestWeather;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    sget v2, Lcom/bluestareffects/R$mipmap;->ic_launcher:I

    invoke-virtual {v1, v2}, Lcom/bluestareffects/sdk/core/EffectsInstance;->getTexture(I)Lcom/bluestareffects/sdk/core/Texture;

    .line 84
    iget-object v1, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestWeather;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    iget-object v2, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestWeather;->mRootModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    invoke-virtual {v1, v2}, Lcom/bluestareffects/sdk/core/EffectsInstance;->setRootModule(Lcom/bluestareffects/sdk/core/IModule;)V

    .line 85
    iget-object v1, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestWeather;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    invoke-virtual {v1}, Lcom/bluestareffects/sdk/core/EffectsInstance;->invalidate()V

    .line 86
    return-void
.end method


# virtual methods
.method public emitParticle()Lcom/bluestareffects/sdk/materials/algorithm/PropertyParticle;
    .locals 12

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const v10, 0x3dcccccd    # 0.1f

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 115
    new-instance v1, Lcom/bluestareffects/sdk/materials/module/Module;

    iget-object v6, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestWeather;->mShader:Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    invoke-direct {v1, v6}, Lcom/bluestareffects/sdk/materials/module/Module;-><init>(Lcom/bluestareffects/sdk/materials/shader/BaseShader;)V

    .line 116
    .local v1, "module":Lcom/bluestareffects/sdk/materials/module/Module;
    iget-object v6, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestWeather;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    sget v7, Lcom/bluestareffects/R$mipmap;->ic_launcher:I

    invoke-virtual {v6, v7}, Lcom/bluestareffects/sdk/core/EffectsInstance;->getTexture(I)Lcom/bluestareffects/sdk/core/Texture;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/bluestareffects/sdk/materials/module/Module;->setTexture(Lcom/bluestareffects/sdk/core/Texture;)V

    .line 117
    invoke-virtual {v1, v9, v9, v9}, Lcom/bluestareffects/sdk/materials/module/Module;->setPosition(FFF)V

    .line 118
    invoke-virtual {v1, v10, v10}, Lcom/bluestareffects/sdk/materials/module/Module;->setSize(FF)V

    .line 119
    iget-object v6, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestWeather;->mRandom:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    invoke-virtual {v1, v6}, Lcom/bluestareffects/sdk/materials/module/Module;->setAlpha(F)V

    .line 122
    new-instance v3, Lcom/bluestareffects/app/weather/weatherImpls/TestWeather$TestWeatherPropertyParticle;

    iget-object v6, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestWeather;->mRootModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    invoke-direct {v3, v1, v6}, Lcom/bluestareffects/app/weather/weatherImpls/TestWeather$TestWeatherPropertyParticle;-><init>(Lcom/bluestareffects/sdk/materials/module/Module;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;)V

    .line 124
    .local v3, "particle":Lcom/bluestareffects/sdk/materials/algorithm/PropertyParticle;
    new-instance v5, Lcom/bluestareffects/sdk/materials/algorithm/Property$VelocityFromAcceleration;

    invoke-direct {v5, v8}, Lcom/bluestareffects/sdk/materials/algorithm/Property$VelocityFromAcceleration;-><init>(I)V

    .line 125
    .local v5, "v":Lcom/bluestareffects/sdk/materials/algorithm/Property$VelocityFromAcceleration;
    new-array v6, v8, [F

    fill-array-data v6, :array_0

    invoke-virtual {v5, v6}, Lcom/bluestareffects/sdk/materials/algorithm/Property$VelocityFromAcceleration;->setValue([F)V

    .line 126
    new-instance v2, Lcom/bluestareffects/sdk/materials/algorithm/Property$PositionFromVelocity;

    invoke-direct {v2, v8}, Lcom/bluestareffects/sdk/materials/algorithm/Property$PositionFromVelocity;-><init>(I)V

    .line 127
    .local v2, "p":Lcom/bluestareffects/sdk/materials/algorithm/Property$PositionFromVelocity;
    iget-object v6, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestWeather;->mRandom:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v4

    .line 128
    .local v4, "randomX":F
    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v6, v4

    sub-float v4, v6, v11

    .line 129
    new-array v6, v8, [F

    const/4 v7, 0x0

    aput v4, v6, v7

    const/4 v7, 0x1

    aput v11, v6, v7

    invoke-virtual {v2, v6}, Lcom/bluestareffects/sdk/materials/algorithm/Property$PositionFromVelocity;->setValue([F)V

    .line 130
    new-instance v0, Lcom/bluestareffects/sdk/materials/algorithm/Property$LifeWithPosition;

    new-array v6, v8, [F

    fill-array-data v6, :array_1

    new-array v7, v8, [F

    fill-array-data v7, :array_2

    invoke-direct {v0, v8, v6, v7}, Lcom/bluestareffects/sdk/materials/algorithm/Property$LifeWithPosition;-><init>(I[F[F)V

    .line 132
    .local v0, "l":Lcom/bluestareffects/sdk/materials/algorithm/Property$LifeWithPosition;
    invoke-virtual {v5, v2}, Lcom/bluestareffects/sdk/materials/algorithm/Property$VelocityFromAcceleration;->addResultListner(Lcom/bluestareffects/sdk/materials/algorithm/ResultListener;)V

    .line 133
    invoke-virtual {v2, v0}, Lcom/bluestareffects/sdk/materials/algorithm/Property$PositionFromVelocity;->addResultListner(Lcom/bluestareffects/sdk/materials/algorithm/ResultListener;)V

    .line 135
    invoke-virtual {v3, v5}, Lcom/bluestareffects/sdk/materials/algorithm/PropertyParticle;->setRootProperty(Lcom/bluestareffects/sdk/materials/algorithm/Property;)V

    .line 136
    invoke-virtual {v3, v2}, Lcom/bluestareffects/sdk/materials/algorithm/PropertyParticle;->setOuterProperty(Lcom/bluestareffects/sdk/materials/algorithm/Property;)V

    .line 137
    invoke-virtual {v3, v0}, Lcom/bluestareffects/sdk/materials/algorithm/PropertyParticle;->setLifeProperty(Lcom/bluestareffects/sdk/materials/algorithm/Property$LifeProperty;)V

    .line 139
    return-object v3

    .line 125
    :array_0
    .array-data 4
        0x0
        -0x46ae48e9    # -2.0E-4f
    .end array-data

    .line 130
    :array_1
    .array-data 4
        -0x40400000    # -1.5f
        -0x40400000    # -1.5f
    .end array-data

    :array_2
    .array-data 4
        0x3fc00000    # 1.5f
        0x3fc00000    # 1.5f
    .end array-data
.end method

.method public onEmit(F)Ljava/util/ArrayList;
    .locals 5
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
    .line 106
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

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bluestareffects/sdk/materials/algorithm/IParticle;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/bluestareffects/app/weather/weatherImpls/TestWeather;->emitParticle()Lcom/bluestareffects/sdk/materials/algorithm/PropertyParticle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_0
    return-object v1
.end method

.method public update()V
    .locals 6

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestWeather;->mTimeInited:Z

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestWeather;->mTimeInited:Z

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestWeather;->lastTime:J

    .line 100
    :goto_0
    return-void

    .line 96
    :cond_0
    const/16 v0, 0x17

    const-string v1, "TestWeather::update "

    invoke-static {v0, v1}, Lcom/bluestareffects/sdk/util/BSLog;->v(ILjava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestWeather;->mSystem:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestWeather;->lastTime:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->update(F)V

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bluestareffects/app/weather/weatherImpls/TestWeather;->lastTime:J

    goto :goto_0
.end method
