.class public Lcom/bluestareffects/app/weather/common/GroupRain;
.super Ljava/lang/Object;
.source "GroupRain.java"

# interfaces
.implements Lcom/bluestareffects/app/weather/common/Component;
.implements Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$onEmitListner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bluestareffects/app/weather/common/GroupRain$RainPropertyParticle;
    }
.end annotation


# static fields
.field public static final BACKGROUND_HEAVY_RAIN:I = 0x4

.field public static final BACKGROUND_LIGHT_HAIL:I = 0x6

.field public static final BACKGROUND_LIGHT_RAIN:I = 0x2

.field public static final FRONT_HEAVY_RAIN:I = 0x3

.field public static final FRONT_LIGHT_HAIL:I = 0x5

.field public static final FRONT_LIGHT_RAIN:I = 0x1

.field public static final MID_LIGHT_RAIN:I = 0x7


# instance fields
.field private lastTime:J

.field private mAccelerate:F

.field private mAlpha:F

.field private mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

.field private mNum_Particle_Per_Second:F

.field mOffsetL:F

.field mOffsetR:F

.field private mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

.field private mParticleRainID:I

.field private mRandom:Ljava/util/Random;

.field private mRandomAccelerate:F

.field private mRandomAlpha:F

.field private mRandomSizeScale:F

.field private mRandomVelocity:F

.field private mRemainNum:F

.field private mResourceManager:Lcom/bluestareffects/app/weather/api/ResourceManager;

.field private mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

.field private mShader:Lcom/bluestareffects/sdk/materials/shader/BaseShader;

.field private mSizeScale:F

.field private mSystem:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;

.field private mTimeInited:Z

.field private mVelocity:F


# direct methods
.method public constructor <init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;II)V
    .locals 3
    .param p1, "instance"    # Lcom/bluestareffects/sdk/core/EffectsInstance;
    .param p2, "parentModule"    # Lcom/bluestareffects/sdk/materials/module/ModuleGroup;
    .param p3, "resourceManager"    # Lcom/bluestareffects/app/weather/api/ResourceManager;
    .param p4, "textureResourceId"    # I
    .param p5, "level"    # I

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->lastTime:J

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mTimeInited:Z

    .line 43
    iput v2, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mRemainNum:F

    .line 45
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mRandom:Ljava/util/Random;

    .line 115
    iput v2, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mOffsetL:F

    .line 116
    iput v2, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mOffsetR:F

    .line 57
    invoke-virtual {p3, p4}, Lcom/bluestareffects/app/weather/api/ResourceManager;->addResource(I)V

    .line 58
    iput-object p3, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mResourceManager:Lcom/bluestareffects/app/weather/api/ResourceManager;

    .line 59
    iput-object p1, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    .line 60
    iput-object p2, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    .line 61
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    const-class v1, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/core/EffectsInstance;->getShader(Ljava/lang/Class;)Lcom/bluestareffects/sdk/core/IShader$User;

    move-result-object v0

    check-cast v0, Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    iput-object v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mShader:Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    .line 62
    iput p4, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mParticleRainID:I

    .line 64
    new-instance v0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    invoke-direct {v0}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;-><init>()V

    iput-object v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    .line 65
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->setAlpha(F)V

    .line 66
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->addSubModule(Lcom/bluestareffects/sdk/core/IModule;)V

    .line 68
    new-instance v0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;

    invoke-direct {v0}, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;-><init>()V

    iput-object v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mSystem:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;

    .line 69
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mSystem:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;

    invoke-virtual {v0, p0}, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->addOnEmitListner(Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$onEmitListner;)V

    .line 70
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mSystem:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;

    sget-object v1, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;->Interval:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->setEmitMode(Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;)V

    .line 72
    invoke-virtual {p0, p5}, Lcom/bluestareffects/app/weather/common/GroupRain;->setLevel(I)V

    .line 73
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mResourceManager:Lcom/bluestareffects/app/weather/api/ResourceManager;

    iget v1, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mParticleRainID:I

    invoke-virtual {v0, v1}, Lcom/bluestareffects/app/weather/api/ResourceManager;->removeResource(I)V

    .line 90
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->removeSubModule(Lcom/bluestareffects/sdk/core/IModule;)V

    .line 91
    return-void
.end method

.method public emitParticle()Lcom/bluestareffects/sdk/materials/algorithm/PropertyParticle;
    .locals 23

    .prologue
    .line 119
    const/high16 v7, 0x41200000    # 10.0f

    .line 120
    .local v7, "mAngle":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/bluestareffects/app/weather/common/GroupRain;->mSizeScale:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/bluestareffects/app/weather/common/GroupRain;->mRandomSizeScale:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bluestareffects/app/weather/common/GroupRain;->mRandom:Ljava/util/Random;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Random;->nextFloat()F

    move-result v21

    mul-float v20, v20, v21

    add-float v16, v19, v20

    .line 121
    .local v16, "sizeScale":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/bluestareffects/app/weather/common/GroupRain;->mAccelerate:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/bluestareffects/app/weather/common/GroupRain;->mRandomAccelerate:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bluestareffects/app/weather/common/GroupRain;->mRandom:Ljava/util/Random;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Random;->nextFloat()F

    move-result v21

    mul-float v20, v20, v21

    add-float v4, v19, v20

    .line 122
    .local v4, "accelerate":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/bluestareffects/app/weather/common/GroupRain;->mVelocity:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/bluestareffects/app/weather/common/GroupRain;->mRandomVelocity:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bluestareffects/app/weather/common/GroupRain;->mRandom:Ljava/util/Random;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Random;->nextFloat()F

    move-result v21

    mul-float v20, v20, v21

    add-float v18, v19, v20

    .line 123
    .local v18, "velocity":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/bluestareffects/app/weather/common/GroupRain;->mAlpha:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/bluestareffects/app/weather/common/GroupRain;->mRandomAlpha:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bluestareffects/app/weather/common/GroupRain;->mRandom:Ljava/util/Random;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Random;->nextFloat()F

    move-result v21

    mul-float v20, v20, v21

    add-float v5, v19, v20

    .line 125
    .local v5, "alpha":F
    const/high16 v19, 0x41a00000    # 20.0f

    mul-float v9, v19, v16

    .line 126
    .local v9, "mParticleSizeW":F
    const/high16 v19, 0x43ee0000    # 476.0f

    mul-float v8, v19, v16

    .line 128
    .local v8, "mParticleSizeH":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/bluestareffects/app/weather/common/GroupRain;->mOffsetL:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bluestareffects/app/weather/common/GroupRain;->mRandom:Ljava/util/Random;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/Random;->nextFloat()F

    move-result v20

    const/high16 v21, 0x44870000    # 1080.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/bluestareffects/app/weather/common/GroupRain;->mOffsetL:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/bluestareffects/app/weather/common/GroupRain;->mOffsetR:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    mul-float v20, v20, v21

    add-float v10, v19, v20

    .line 129
    .local v10, "mPositionX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bluestareffects/app/weather/common/GroupRain;->mRandom:Ljava/util/Random;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/Random;->nextFloat()F

    move-result v19

    const/16 v20, 0x0

    mul-float v11, v19, v20

    .line 131
    .local v11, "mPositionY":F
    invoke-static {}, Lcom/bluestareffects/sdk/util/BSMatrix;->create()Lcom/bluestareffects/sdk/util/BSMatrix;

    move-result-object v12

    .line 132
    .local v12, "matrix":Lcom/bluestareffects/sdk/util/BSMatrix;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v12, v10, v11, v0}, Lcom/bluestareffects/sdk/util/BSMatrix;->translate(FFF)V

    .line 133
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v12, v7, v0, v1, v2}, Lcom/bluestareffects/sdk/util/BSMatrix;->rotate(FFFF)V

    .line 134
    neg-float v0, v10

    move/from16 v19, v0

    neg-float v0, v11

    move/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v12, v0, v1, v2}, Lcom/bluestareffects/sdk/util/BSMatrix;->translate(FFF)V

    .line 136
    new-instance v13, Lcom/bluestareffects/sdk/materials/module/Module;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bluestareffects/app/weather/common/GroupRain;->mShader:Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Lcom/bluestareffects/sdk/materials/module/Module;-><init>(Lcom/bluestareffects/sdk/materials/shader/BaseShader;)V

    .line 137
    .local v13, "module":Lcom/bluestareffects/sdk/materials/module/Module;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bluestareffects/app/weather/common/GroupRain;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/bluestareffects/app/weather/common/GroupRain;->mParticleRainID:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/bluestareffects/sdk/core/EffectsInstance;->getTexture(I)Lcom/bluestareffects/sdk/core/Texture;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/bluestareffects/sdk/materials/module/Module;->setTexture(Lcom/bluestareffects/sdk/core/Texture;)V

    .line 139
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v13, v0, v1, v2}, Lcom/bluestareffects/sdk/materials/module/Module;->setPosition(FFF)V

    .line 140
    invoke-virtual {v13, v9, v8}, Lcom/bluestareffects/sdk/materials/module/Module;->setSize(FF)V

    .line 141
    invoke-virtual {v13, v5}, Lcom/bluestareffects/sdk/materials/module/Module;->setAlpha(F)V

    .line 142
    invoke-virtual {v13, v12}, Lcom/bluestareffects/sdk/materials/module/Module;->setMatrix(Lcom/bluestareffects/sdk/util/BSMatrix;)V

    .line 144
    new-instance v15, Lcom/bluestareffects/app/weather/common/GroupRain$RainPropertyParticle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bluestareffects/app/weather/common/GroupRain;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v15, v13, v0}, Lcom/bluestareffects/app/weather/common/GroupRain$RainPropertyParticle;-><init>(Lcom/bluestareffects/sdk/materials/module/Module;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;)V

    .line 145
    .local v15, "particle":Lcom/bluestareffects/app/weather/common/GroupRain$RainPropertyParticle;
    invoke-virtual {v13}, Lcom/bluestareffects/sdk/materials/module/Module;->getAlpha()F

    move-result v19

    move/from16 v0, v19

    invoke-static {v15, v0}, Lcom/bluestareffects/app/weather/common/GroupRain$RainPropertyParticle;->access$002(Lcom/bluestareffects/app/weather/common/GroupRain$RainPropertyParticle;F)F

    .line 146
    invoke-virtual {v15, v9, v8}, Lcom/bluestareffects/app/weather/common/GroupRain$RainPropertyParticle;->setSize(FF)V

    .line 148
    new-instance v3, Lcom/bluestareffects/sdk/materials/algorithm/Property$AccelerationFromForce;

    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-direct {v3, v0}, Lcom/bluestareffects/sdk/materials/algorithm/Property$AccelerationFromForce;-><init>(I)V

    .line 149
    .local v3, "a":Lcom/bluestareffects/sdk/materials/algorithm/Property$AccelerationFromForce;
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    aput v21, v19, v20

    const/16 v20, 0x1

    aput v4, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/bluestareffects/sdk/materials/algorithm/Property$AccelerationFromForce;->setValue([F)V

    .line 151
    new-instance v17, Lcom/bluestareffects/sdk/materials/algorithm/Property$VelocityFromAcceleration;

    const/16 v19, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/bluestareffects/sdk/materials/algorithm/Property$VelocityFromAcceleration;-><init>(I)V

    .line 152
    .local v17, "v":Lcom/bluestareffects/sdk/materials/algorithm/Property$VelocityFromAcceleration;
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    aput v21, v19, v20

    const/16 v20, 0x1

    aput v18, v19, v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/algorithm/Property$VelocityFromAcceleration;->setValue([F)V

    .line 154
    new-instance v14, Lcom/bluestareffects/sdk/materials/algorithm/Property$PositionFromVelocity;

    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-direct {v14, v0}, Lcom/bluestareffects/sdk/materials/algorithm/Property$PositionFromVelocity;-><init>(I)V

    .line 155
    .local v14, "p":Lcom/bluestareffects/sdk/materials/algorithm/Property$PositionFromVelocity;
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v10, v19, v20

    const/16 v20, 0x1

    aput v11, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/bluestareffects/sdk/materials/algorithm/Property$PositionFromVelocity;->setValue([F)V

    .line 157
    new-instance v6, Lcom/bluestareffects/sdk/materials/algorithm/Property$LifeWithPosition;

    const/16 v19, 0x2

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    fill-array-data v20, :array_0

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    fill-array-data v21, :array_1

    move/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v6, v0, v1, v2}, Lcom/bluestareffects/sdk/materials/algorithm/Property$LifeWithPosition;-><init>(I[F[F)V

    .line 159
    .local v6, "l":Lcom/bluestareffects/sdk/materials/algorithm/Property$LifeWithPosition;
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/bluestareffects/sdk/materials/algorithm/Property$AccelerationFromForce;->addResultListner(Lcom/bluestareffects/sdk/materials/algorithm/ResultListener;)V

    .line 160
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/bluestareffects/sdk/materials/algorithm/Property$VelocityFromAcceleration;->addResultListner(Lcom/bluestareffects/sdk/materials/algorithm/ResultListener;)V

    .line 161
    invoke-virtual {v14, v6}, Lcom/bluestareffects/sdk/materials/algorithm/Property$PositionFromVelocity;->addResultListner(Lcom/bluestareffects/sdk/materials/algorithm/ResultListener;)V

    .line 163
    invoke-virtual {v15, v3}, Lcom/bluestareffects/app/weather/common/GroupRain$RainPropertyParticle;->setRootProperty(Lcom/bluestareffects/sdk/materials/algorithm/Property;)V

    .line 164
    invoke-virtual {v15, v14}, Lcom/bluestareffects/app/weather/common/GroupRain$RainPropertyParticle;->setOuterProperty(Lcom/bluestareffects/sdk/materials/algorithm/Property;)V

    .line 165
    invoke-virtual {v15, v6}, Lcom/bluestareffects/app/weather/common/GroupRain$RainPropertyParticle;->setLifeProperty(Lcom/bluestareffects/sdk/materials/algorithm/Property$LifeProperty;)V

    .line 167
    return-object v15

    .line 157
    :array_0
    .array-data 4
        0x0
        -0x40800000    # -1.0f
    .end array-data

    :array_1
    .array-data 4
        0x44ca8000    # 1620.0f
        0x44978000    # 1212.0f
    .end array-data
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
    .line 101
    iget v4, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mRemainNum:F

    iget v5, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mNum_Particle_Per_Second:F

    mul-float/2addr v5, p1

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mRemainNum:F

    .line 102
    iget v4, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mRemainNum:F

    float-to-int v2, v4

    .line 103
    .local v2, "n":I
    iget v4, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mRemainNum:F

    int-to-float v5, v2

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mRemainNum:F

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bluestareffects/sdk/materials/algorithm/IParticle;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/bluestareffects/app/weather/common/GroupRain;->emitParticle()Lcom/bluestareffects/sdk/materials/algorithm/PropertyParticle;

    move-result-object v3

    .line 108
    .local v3, "particle":Lcom/bluestareffects/sdk/materials/algorithm/PropertyParticle;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    .end local v3    # "particle":Lcom/bluestareffects/sdk/materials/algorithm/PropertyParticle;
    :cond_0
    return-object v1
.end method

.method public onSizeChanged(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 96
    return-void
.end method

.method public setLevel(I)V
    .locals 6
    .param p1, "level"    # I

    .prologue
    const v5, 0x3f4ccccd    # 0.8f

    const v4, 0x3f19999a    # 0.6f

    const/4 v3, 0x0

    const v2, 0x3e99999a    # 0.3f

    const v1, 0x3ecccccd    # 0.4f

    .line 249
    packed-switch p1, :pswitch_data_0

    .line 348
    const/high16 v0, 0x40e00000    # 7.0f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mNum_Particle_Per_Second:F

    .line 349
    const v0, 0x3f0ccccd    # 0.55f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mSizeScale:F

    .line 350
    iput v1, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mRandomSizeScale:F

    .line 351
    const v0, 0x3951b717    # 2.0E-4f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mAccelerate:F

    .line 352
    const v0, 0x3727c5ac    # 1.0E-5f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mRandomAccelerate:F

    .line 353
    iput v5, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mVelocity:F

    .line 354
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mRandomVelocity:F

    .line 355
    iput v2, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mAlpha:F

    .line 356
    iput v2, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mRandomAlpha:F

    .line 357
    const/high16 v0, 0x43af0000    # 350.0f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mOffsetL:F

    .line 358
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mOffsetR:F

    .line 362
    :goto_0
    return-void

    .line 251
    :pswitch_0
    const/high16 v0, 0x40e00000    # 7.0f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mNum_Particle_Per_Second:F

    .line 252
    const v0, 0x3f0ccccd    # 0.55f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mSizeScale:F

    .line 253
    iput v1, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mRandomSizeScale:F

    .line 254
    const v0, 0x3951b717    # 2.0E-4f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mAccelerate:F

    .line 255
    const v0, 0x3727c5ac    # 1.0E-5f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mRandomAccelerate:F

    .line 256
    iput v5, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mVelocity:F

    .line 257
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mRandomVelocity:F

    .line 258
    iput v2, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mAlpha:F

    .line 259
    iput v2, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mRandomAlpha:F

    .line 260
    const/high16 v0, 0x43af0000    # 350.0f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mOffsetL:F

    .line 261
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mOffsetR:F

    goto :goto_0

    .line 264
    :pswitch_1
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mNum_Particle_Per_Second:F

    .line 265
    iput v1, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mSizeScale:F

    .line 266
    iput v1, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mRandomSizeScale:F

    .line 267
    const v0, 0x38d1b717    # 1.0E-4f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mAccelerate:F

    .line 268
    const v0, 0x36a7c5ac    # 5.0E-6f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mRandomAccelerate:F

    .line 269
    iput v1, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mVelocity:F

    .line 270
    iput v4, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mRandomVelocity:F

    .line 271
    iput v3, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mAlpha:F

    .line 272
    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mRandomAlpha:F

    .line 273
    const/high16 v0, 0x43480000    # 200.0f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mOffsetL:F

    .line 274
    iput v3, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mOffsetR:F

    goto :goto_0

    .line 277
    :pswitch_2
    const/high16 v0, 0x41500000    # 13.0f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mNum_Particle_Per_Second:F

    .line 278
    const v0, 0x3f0ccccd    # 0.55f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mSizeScale:F

    .line 279
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mRandomSizeScale:F

    .line 280
    const v0, 0x39d1b717    # 4.0E-4f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mAccelerate:F

    .line 281
    const v0, 0x37d1b717    # 2.5E-5f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mRandomAccelerate:F

    .line 282
    iput v5, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mVelocity:F

    .line 283
    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mRandomVelocity:F

    .line 284
    iput v1, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mAlpha:F

    .line 285
    const v0, 0x3eb33333    # 0.35f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mRandomAlpha:F

    .line 286
    const/high16 v0, 0x43af0000    # 350.0f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mOffsetL:F

    .line 287
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mOffsetR:F

    goto :goto_0

    .line 290
    :pswitch_3
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mNum_Particle_Per_Second:F

    .line 291
    iput v2, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mSizeScale:F

    .line 292
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mRandomSizeScale:F

    .line 293
    const v0, 0x38d1b717    # 1.0E-4f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mAccelerate:F

    .line 294
    const v0, 0x36a7c5ac    # 5.0E-6f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mRandomAccelerate:F

    .line 295
    iput v4, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mVelocity:F

    .line 296
    iput v5, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mRandomVelocity:F

    .line 297
    iput v3, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mAlpha:F

    .line 298
    iput v1, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mRandomAlpha:F

    .line 299
    const/high16 v0, 0x43480000    # 200.0f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mOffsetL:F

    .line 300
    const/high16 v0, -0x3cea0000    # -150.0f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mOffsetR:F

    goto/16 :goto_0

    .line 304
    :pswitch_4
    const/high16 v0, 0x40e00000    # 7.0f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mNum_Particle_Per_Second:F

    .line 305
    iput v4, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mSizeScale:F

    .line 306
    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mRandomSizeScale:F

    .line 307
    const v0, 0x3951b717    # 2.0E-4f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mAccelerate:F

    .line 308
    const v0, 0x3727c5ac    # 1.0E-5f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mRandomAccelerate:F

    .line 309
    const v0, 0x3f99999a    # 1.2f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mVelocity:F

    .line 310
    iput v4, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mRandomVelocity:F

    .line 311
    iput v2, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mAlpha:F

    .line 312
    iput v1, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mRandomAlpha:F

    .line 313
    const/high16 v0, 0x43af0000    # 350.0f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mOffsetL:F

    .line 314
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mOffsetR:F

    goto/16 :goto_0

    .line 317
    :pswitch_5
    const/high16 v0, 0x41880000    # 17.0f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mNum_Particle_Per_Second:F

    .line 318
    iput v2, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mSizeScale:F

    .line 319
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mRandomSizeScale:F

    .line 320
    const v0, 0x38d1b717    # 1.0E-4f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mAccelerate:F

    .line 321
    const v0, 0x36a7c5ac    # 5.0E-6f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mRandomAccelerate:F

    .line 322
    iput v1, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mVelocity:F

    .line 323
    iput v4, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mRandomVelocity:F

    .line 324
    iput v3, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mAlpha:F

    .line 325
    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mRandomAlpha:F

    .line 326
    const/high16 v0, 0x43480000    # 200.0f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mOffsetL:F

    .line 327
    iput v3, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mOffsetR:F

    goto/16 :goto_0

    .line 333
    :pswitch_6
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mNum_Particle_Per_Second:F

    .line 334
    iput v1, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mSizeScale:F

    .line 335
    iput v2, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mRandomSizeScale:F

    .line 336
    const v0, 0x3951b717    # 2.0E-4f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mAccelerate:F

    .line 337
    const v0, 0x3727c5ac    # 1.0E-5f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mRandomAccelerate:F

    .line 338
    iput v5, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mVelocity:F

    .line 339
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mRandomVelocity:F

    .line 340
    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mAlpha:F

    .line 341
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mRandomAlpha:F

    .line 342
    const/high16 v0, 0x43af0000    # 350.0f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mOffsetL:F

    .line 343
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mOffsetR:F

    goto/16 :goto_0

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public update()V
    .locals 6

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mTimeInited:Z

    if-nez v0, :cond_0

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mTimeInited:Z

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->lastTime:J

    .line 85
    :goto_0
    return-void

    .line 81
    :cond_0
    const/16 v0, 0x17

    const-string v1, "TestWeather::update "

    invoke-static {v0, v1}, Lcom/bluestareffects/sdk/util/BSLog;->v(ILjava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->mSystem:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->lastTime:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->update(F)V

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bluestareffects/app/weather/common/GroupRain;->lastTime:J

    goto :goto_0
.end method
