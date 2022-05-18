.class public Lcom/bluestareffects/app/weather/common/GroupSnow;
.super Ljava/lang/Object;
.source "GroupSnow.java"

# interfaces
.implements Lcom/bluestareffects/app/weather/common/Component;
.implements Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$onEmitListner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bluestareffects/app/weather/common/Component;",
        "Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$onEmitListner",
        "<",
        "Lcom/bluestareffects/sdk/materials/algorithm/Batch2DParticle;",
        ">;"
    }
.end annotation


# static fields
.field private static mBatch2DModule:Lcom/bluestareffects/sdk/materials/module/Batch2DModule;


# instance fields
.field private lastTime:J

.field private mInitParticleNumber:F

.field private mIsFront:Z

.field private mMaxAlpha:F

.field private mMaxSize:F

.field private mMaxYSpeed:F

.field private mMinAlpha:F

.field private mMinSize:F

.field private mMinYSpeed:F

.field private mNumParticleSecond:I

.field private final mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

.field private mRandom:Ljava/util/Random;

.field private mRemainNum:F

.field private mResourceManager:Lcom/bluestareffects/app/weather/api/ResourceManager;

.field private mSnowInitialize:Z

.field private final mSystem:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;

.field private mTextureResourceId:I

.field private mTimeInitialize:Z

.field private mXOffset:F

.field private mXSpeed:F

.field private mXSpeedOffset:F

.field private mYAccelerate:F


# direct methods
.method public constructor <init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;Lcom/bluestareffects/app/weather/api/WeatherType;IZ)V
    .locals 4
    .param p1, "instance"    # Lcom/bluestareffects/sdk/core/EffectsInstance;
    .param p2, "parentModuleGroup"    # Lcom/bluestareffects/sdk/materials/module/ModuleGroup;
    .param p3, "resourceManager"    # Lcom/bluestareffects/app/weather/api/ResourceManager;
    .param p4, "type"    # Lcom/bluestareffects/app/weather/api/WeatherType;
    .param p5, "textureResourceId"    # I
    .param p6, "isFront"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean v2, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mTimeInitialize:Z

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->lastTime:J

    .line 20
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mRandom:Ljava/util/Random;

    .line 30
    iput-boolean v2, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mSnowInitialize:Z

    .line 31
    iput v3, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mInitParticleNumber:F

    .line 33
    iput-boolean v2, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mIsFront:Z

    .line 163
    iput v3, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mRemainNum:F

    .line 164
    const/16 v0, 0xa

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mNumParticleSecond:I

    .line 165
    iput v3, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mXOffset:F

    .line 40
    invoke-virtual {p3, p5}, Lcom/bluestareffects/app/weather/api/ResourceManager;->addResource(I)V

    .line 41
    iput-object p3, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mResourceManager:Lcom/bluestareffects/app/weather/api/ResourceManager;

    .line 42
    iput p5, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mTextureResourceId:I

    .line 43
    new-instance v0, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;

    invoke-direct {v0}, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;-><init>()V

    iput-object v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mSystem:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;

    .line 44
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mSystem:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;

    invoke-virtual {v0, p0}, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->addOnEmitListner(Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$onEmitListner;)V

    .line 45
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mSystem:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;

    sget-object v1, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;->Interval:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->setEmitMode(Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem$EmitMode;)V

    .line 47
    iput-object p2, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    .line 48
    iput-boolean p6, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mIsFront:Z

    .line 49
    invoke-direct {p0, p4, p6}, Lcom/bluestareffects/app/weather/common/GroupSnow;->setLevel(Lcom/bluestareffects/app/weather/api/WeatherType;Z)V

    .line 50
    iput-boolean v2, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mSnowInitialize:Z

    .line 51
    invoke-virtual {p1}, Lcom/bluestareffects/sdk/core/EffectsInstance;->invalidate()V

    .line 53
    new-instance v0, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;

    invoke-direct {v0, p1}, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;-><init>(Lcom/bluestareffects/sdk/core/EffectsInstance;)V

    sput-object v0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mBatch2DModule:Lcom/bluestareffects/sdk/materials/module/Batch2DModule;

    .line 54
    sget-object v0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mBatch2DModule:Lcom/bluestareffects/sdk/materials/module/Batch2DModule;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mSystem:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;

    invoke-virtual {v1}, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->getParticlesAlive()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->setParticles(Ljava/util/ArrayList;)V

    .line 55
    sget-object v0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mBatch2DModule:Lcom/bluestareffects/sdk/materials/module/Batch2DModule;

    iget v1, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mTextureResourceId:I

    invoke-virtual {p1, v1}, Lcom/bluestareffects/sdk/core/EffectsInstance;->getTexture(I)Lcom/bluestareffects/sdk/core/Texture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/module/Batch2DModule;->setTexture(Lcom/bluestareffects/sdk/core/Texture;)V

    .line 56
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    sget-object v1, Lcom/bluestareffects/app/weather/common/GroupSnow;->mBatch2DModule:Lcom/bluestareffects/sdk/materials/module/Batch2DModule;

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->addSubModule(Lcom/bluestareffects/sdk/core/IModule;)V

    .line 57
    return-void
.end method

.method private setLevel(Lcom/bluestareffects/app/weather/api/WeatherType;Z)V
    .locals 7
    .param p1, "type"    # Lcom/bluestareffects/app/weather/api/WeatherType;
    .param p2, "isFront"    # Z

    .prologue
    const v6, 0x3e99999a    # 0.3f

    const v5, 0x3da5e354    # 0.081f

    const v4, 0x3d6bedfa    # 0.0576f

    const v3, 0x36c14606    # 5.76E-6f

    const/high16 v2, 0x41900000    # 18.0f

    .line 83
    sget-object v0, Lcom/bluestareffects/app/weather/common/GroupSnow$1;->$SwitchMap$com$bluestareffects$app$weather$api$WeatherType:[I

    invoke-virtual {p1}, Lcom/bluestareffects/app/weather/api/WeatherType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 147
    const/4 v0, 0x2

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mNumParticleSecond:I

    .line 148
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mInitParticleNumber:F

    .line 149
    const/4 v0, 0x0

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mXSpeed:F

    .line 150
    const v0, 0x3e09a027    # 0.1344f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mMaxYSpeed:F

    .line 151
    iput v4, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mMinYSpeed:F

    .line 152
    iput v5, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mXSpeedOffset:F

    .line 153
    iput v3, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mYAccelerate:F

    .line 154
    const/high16 v0, 0x41d80000    # 27.0f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mMaxSize:F

    .line 155
    iput v2, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mMinSize:F

    .line 156
    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mMaxAlpha:F

    .line 157
    iput v6, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mMinAlpha:F

    .line 161
    :goto_0
    return-void

    .line 88
    :pswitch_0
    if-eqz p2, :cond_0

    .line 89
    const/4 v0, 0x2

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mNumParticleSecond:I

    .line 90
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mInitParticleNumber:F

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mXSpeed:F

    .line 92
    const v0, 0x3e09a027    # 0.1344f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mMaxYSpeed:F

    .line 93
    iput v4, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mMinYSpeed:F

    .line 94
    iput v5, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mXSpeedOffset:F

    .line 95
    iput v3, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mYAccelerate:F

    .line 96
    const/high16 v0, 0x41d80000    # 27.0f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mMaxSize:F

    .line 97
    iput v2, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mMinSize:F

    .line 98
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mMaxAlpha:F

    .line 99
    iput v6, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mMinAlpha:F

    goto :goto_0

    .line 101
    :cond_0
    const/16 v0, 0xe

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mNumParticleSecond:I

    .line 102
    const/high16 v0, 0x430c0000    # 140.0f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mInitParticleNumber:F

    .line 103
    const v0, 0x3d9374bc    # 0.072f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mMaxYSpeed:F

    .line 104
    iput v4, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mMinYSpeed:F

    .line 105
    iput v5, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mXSpeedOffset:F

    .line 106
    iput v3, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mYAccelerate:F

    .line 107
    iput v2, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mMaxSize:F

    .line 108
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mMinSize:F

    .line 109
    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mMaxAlpha:F

    .line 110
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mMinAlpha:F

    goto :goto_0

    .line 118
    :pswitch_1
    if-eqz p2, :cond_1

    .line 119
    const/16 v0, 0x10

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mNumParticleSecond:I

    .line 120
    const/high16 v0, 0x42800000    # 64.0f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mInitParticleNumber:F

    .line 121
    const v0, 0x3d5d2f1b    # 0.054f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mXSpeed:F

    .line 122
    const v0, 0x3ee21965    # 0.4416f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mMaxYSpeed:F

    .line 123
    const v0, 0x3e5844d0    # 0.2112f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mMinYSpeed:F

    .line 124
    const v0, 0x3e25e354    # 0.162f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mXSpeedOffset:F

    .line 125
    const v0, 0x38a10fb0    # 7.68E-5f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mYAccelerate:F

    .line 126
    const/high16 v0, 0x41e00000    # 28.0f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mMaxSize:F

    .line 127
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mMinSize:F

    .line 128
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mMaxAlpha:F

    .line 129
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mMinAlpha:F

    .line 130
    const/high16 v0, -0x3d240000    # -110.0f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mXOffset:F

    goto/16 :goto_0

    .line 132
    :cond_1
    const/16 v0, 0x78

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mNumParticleSecond:I

    .line 133
    const/high16 v0, 0x43c80000    # 400.0f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mInitParticleNumber:F

    .line 134
    const v0, 0x3d5d2f1b    # 0.054f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mXSpeed:F

    .line 135
    const v0, 0x3ec49ba6    # 0.384f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mMaxYSpeed:F

    .line 136
    const v0, 0x3e449ba6    # 0.192f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mMinYSpeed:F

    .line 137
    const v0, 0x3e25e354    # 0.162f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mXSpeedOffset:F

    .line 138
    const v0, 0x38719787    # 5.76E-5f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mYAccelerate:F

    .line 139
    iput v2, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mMaxSize:F

    .line 140
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mMinSize:F

    .line 141
    iput v6, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mMaxAlpha:F

    .line 142
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mMinAlpha:F

    goto/16 :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mResourceManager:Lcom/bluestareffects/app/weather/api/ResourceManager;

    iget v1, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mTextureResourceId:I

    invoke-virtual {v0, v1}, Lcom/bluestareffects/app/weather/api/ResourceManager;->removeResource(I)V

    .line 74
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    sget-object v1, Lcom/bluestareffects/app/weather/common/GroupSnow;->mBatch2DModule:Lcom/bluestareffects/sdk/materials/module/Batch2DModule;

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->removeSubModule(Lcom/bluestareffects/sdk/core/IModule;)V

    .line 75
    return-void
.end method

.method public emitParticle()Lcom/bluestareffects/sdk/materials/algorithm/Batch2DParticle;
    .locals 13

    .prologue
    const/high16 v12, 0x44a00000    # 1280.0f

    const/high16 v11, 0x44200000    # 640.0f

    const/high16 v10, 0x435c0000    # 220.0f

    const/high16 v9, 0x42c80000    # 100.0f

    .line 187
    iget-object v6, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mSystem:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;

    invoke-virtual {v6}, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->getCachedParticle()Lcom/bluestareffects/sdk/materials/algorithm/IParticle;

    move-result-object v1

    check-cast v1, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;

    .line 188
    .local v1, "particle":Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;
    if-nez v1, :cond_0

    .line 189
    new-instance v1, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;

    .end local v1    # "particle":Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;
    invoke-direct {v1}, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;-><init>()V

    .line 191
    .restart local v1    # "particle":Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;
    :cond_0
    iget v6, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mMaxAlpha:F

    iget v7, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mMinAlpha:F

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mRandom:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mMinAlpha:F

    add-float v0, v6, v7

    .line 192
    .local v0, "alpha":F
    iget v6, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mXSpeedOffset:F

    iget v7, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mYAccelerate:F

    iget v8, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mXSpeed:F

    invoke-virtual {v1, v6, v7, v8, v0}, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;->setProperty(FFFF)V

    .line 193
    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;->mAlive:Z

    .line 195
    iget v6, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mMaxSize:F

    iget v7, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mMinSize:F

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mRandom:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mMinSize:F

    add-float v2, v6, v7

    .line 196
    .local v2, "particleSize":F
    iput v2, v1, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;->mWidth:F

    .line 197
    iput v2, v1, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;->mHeight:F

    .line 200
    iget v6, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mMaxYSpeed:F

    iget v7, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mMinYSpeed:F

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mRandom:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mMinYSpeed:F

    add-float v3, v6, v7

    .line 201
    .local v3, "particleYSpeed":F
    iget v6, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mXSpeed:F

    iput v6, v1, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;->mVx:F

    .line 202
    iput v3, v1, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;->mVy:F

    .line 204
    iget-object v6, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mRandom:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v4

    .line 205
    .local v4, "randomX":F
    iget-object v6, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mRandom:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v5

    .line 206
    .local v5, "randomY":F
    iget-boolean v6, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mSnowInitialize:Z

    if-nez v6, :cond_2

    .line 207
    iget-boolean v6, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mIsFront:Z

    if-eqz v6, :cond_1

    .line 208
    mul-float v6, v4, v11

    add-float/2addr v6, v10

    iget v7, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mXOffset:F

    add-float v4, v6, v7

    .line 212
    :goto_0
    const v6, 0x44978000    # 1212.0f

    mul-float/2addr v5, v6

    .line 214
    iput v0, v1, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;->mAlpha:F

    .line 215
    iput v4, v1, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;->mX:F

    .line 216
    iput v5, v1, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;->mY:F

    .line 227
    :goto_1
    return-object v1

    .line 210
    :cond_1
    mul-float v6, v4, v12

    sub-float v4, v6, v9

    goto :goto_0

    .line 218
    :cond_2
    iget-boolean v6, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mIsFront:Z

    if-eqz v6, :cond_3

    .line 219
    mul-float v6, v4, v11

    add-float/2addr v6, v10

    iget v7, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mXOffset:F

    add-float v4, v6, v7

    .line 223
    :goto_2
    invoke-virtual {v1, v4, v5}, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;->AlphaFromPosition(FF)F

    move-result v6

    mul-float/2addr v6, v0

    iput v6, v1, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;->mAlpha:F

    .line 224
    iput v4, v1, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;->mX:F

    .line 225
    iput v5, v1, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;->mY:F

    goto :goto_1

    .line 221
    :cond_3
    mul-float v6, v4, v12

    sub-float v4, v6, v9

    goto :goto_2
.end method

.method public onEmit(F)Ljava/util/ArrayList;
    .locals 6
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
    .line 169
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bluestareffects/sdk/materials/algorithm/Batch2DParticle;>;"
    iget-boolean v3, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mSnowInitialize:Z

    if-eqz v3, :cond_0

    .line 171
    iget v3, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mRemainNum:F

    iget v4, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mNumParticleSecond:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mRemainNum:F

    .line 172
    iget v3, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mRemainNum:F

    float-to-int v2, v3

    .line 173
    .local v2, "n":I
    iget v3, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mRemainNum:F

    int-to-float v4, v2

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mRemainNum:F

    .line 174
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 175
    invoke-virtual {p0}, Lcom/bluestareffects/app/weather/common/GroupSnow;->emitParticle()Lcom/bluestareffects/sdk/materials/algorithm/Batch2DParticle;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    .end local v0    # "i":I
    .end local v2    # "n":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    int-to-float v3, v0

    iget v4, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mInitParticleNumber:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 179
    invoke-virtual {p0}, Lcom/bluestareffects/app/weather/common/GroupSnow;->emitParticle()Lcom/bluestareffects/sdk/materials/algorithm/Batch2DParticle;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 181
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mSnowInitialize:Z

    .line 183
    :cond_2
    return-object v1
.end method

.method public onSizeChanged(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 80
    return-void
.end method

.method public update()V
    .locals 6

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mTimeInitialize:Z

    if-nez v0, :cond_0

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mTimeInitialize:Z

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->lastTime:J

    .line 69
    :goto_0
    return-void

    .line 65
    :cond_0
    const/16 v0, 0x17

    const-string v1, "GroupSnow::update"

    invoke-static {v0, v1}, Lcom/bluestareffects/sdk/util/BSLog;->v(ILjava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->mSystem:Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->lastTime:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/algorithm/GeneralParticleSystem;->update(F)V

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow;->lastTime:J

    goto :goto_0
.end method
