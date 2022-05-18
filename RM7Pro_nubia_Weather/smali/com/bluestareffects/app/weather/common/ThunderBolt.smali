.class public Lcom/bluestareffects/app/weather/common/ThunderBolt;
.super Ljava/lang/Object;
.source "ThunderBolt.java"

# interfaces
.implements Lcom/bluestareffects/app/weather/common/Component;


# static fields
.field private static final DISAPPEAR_TIME:F = 400.0f

.field private static final EXIST_TIME:F = 350.0f

.field private static final SHOW_TIME:F = 150.0f


# instance fields
.field private mAnimationTime:J

.field private mCanDraw:Z

.field private mFlashOFWhiteModule:Lcom/bluestareffects/sdk/materials/module/Module;

.field private mFrame:J

.field private mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

.field private mInterpolator:Landroid/view/animation/PathInterpolator;

.field private mIntervalFrame:I

.field private mModuleArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bluestareffects/sdk/materials/module/Module;",
            ">;"
        }
    .end annotation
.end field

.field private mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

.field private mRandom:Ljava/util/Random;

.field private mResourceManager:Lcom/bluestareffects/app/weather/api/ResourceManager;

.field private mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

.field private mShader:Lcom/bluestareffects/sdk/materials/shader/BaseShader;

.field private mShowModuleSizeX:F

.field private mShowModuleSizeY:F

.field private mShowThunderModule:Lcom/bluestareffects/sdk/materials/module/Module;

.field private mSizeArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mTextureResourceId:[I

.field private mThunderModule1:Lcom/bluestareffects/sdk/materials/module/Module;

.field private mThunderModule2:Lcom/bluestareffects/sdk/materials/module/Module;

.field private mThunderModule3:Lcom/bluestareffects/sdk/materials/module/Module;

.field private mTimeInitialize:Z


# direct methods
.method public constructor <init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;[I)V
    .locals 5
    .param p1, "instance"    # Lcom/bluestareffects/sdk/core/EffectsInstance;
    .param p2, "parentModule"    # Lcom/bluestareffects/sdk/materials/module/ModuleGroup;
    .param p3, "resourceManager"    # Lcom/bluestareffects/app/weather/api/ResourceManager;
    .param p4, "textureResourceId"    # [I

    .prologue
    const-wide/16 v2, 0x0

    const/high16 v4, 0x3e800000    # 0.25f

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-wide v2, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mFrame:J

    .line 22
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mCanDraw:Z

    .line 23
    iput-wide v2, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mAnimationTime:J

    .line 45
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p4

    if-ge v0, v1, :cond_0

    .line 46
    aget v1, p4, v0

    invoke-virtual {p3, v1}, Lcom/bluestareffects/app/weather/api/ResourceManager;->addResource(I)V

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_0
    iput-object p3, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mResourceManager:Lcom/bluestareffects/app/weather/api/ResourceManager;

    .line 49
    iput-object p2, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    .line 50
    iput-object p1, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    .line 51
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    iput-object v1, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mRandom:Ljava/util/Random;

    .line 52
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v1, v4, v2, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mInterpolator:Landroid/view/animation/PathInterpolator;

    .line 53
    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mRandom:Ljava/util/Random;

    const/16 v2, 0x1388

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit16 v1, v1, 0x1388

    div-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mIntervalFrame:I

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mSizeArrayList:Ljava/util/ArrayList;

    .line 55
    iput-object p4, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mTextureResourceId:[I

    .line 56
    const-class v1, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;

    invoke-virtual {p1, v1}, Lcom/bluestareffects/sdk/core/EffectsInstance;->getShader(Ljava/lang/Class;)Lcom/bluestareffects/sdk/core/IShader$User;

    move-result-object v1

    check-cast v1, Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    iput-object v1, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mShader:Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    .line 57
    invoke-direct {p0}, Lcom/bluestareffects/app/weather/common/ThunderBolt;->initModule()V

    .line 58
    return-void
.end method

.method private drawDisappearThunder(F)V
    .locals 4
    .param p1, "time"    # F

    .prologue
    const/high16 v2, 0x43c80000    # 400.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 153
    cmpl-float v1, p1, v2

    if-lez v1, :cond_0

    .line 154
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mCanDraw:Z

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mInterpolator:Landroid/view/animation/PathInterpolator;

    div-float v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v1

    sub-float v0, v3, v1

    .line 158
    .local v0, "value":F
    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mShowThunderModule:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v1, v0}, Lcom/bluestareffects/sdk/materials/module/Module;->setAlpha(F)V

    .line 159
    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mFlashOFWhiteModule:Lcom/bluestareffects/sdk/materials/module/Module;

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/bluestareffects/sdk/materials/module/Module;->setAlpha(F)V

    .line 160
    return-void
.end method

.method private drawThunder(F)V
    .locals 6
    .param p1, "time"    # F

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 144
    iget-object v2, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mInterpolator:Landroid/view/animation/PathInterpolator;

    const/high16 v3, 0x43160000    # 150.0f

    div-float v3, p1, v3

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v1

    .line 145
    .local v1, "value":F
    iget v2, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mShowModuleSizeY:F

    mul-float v0, v2, v1

    .line 146
    .local v0, "sizeY":F
    iget-object v2, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mShowThunderModule:Lcom/bluestareffects/sdk/materials/module/Module;

    iget v3, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mShowModuleSizeX:F

    invoke-virtual {v2, v3, v0}, Lcom/bluestareffects/sdk/materials/module/Module;->setSize(FF)V

    .line 147
    iget-object v2, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mShowThunderModule:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v2, v4, v4, v5, v1}, Lcom/bluestareffects/sdk/materials/module/Module;->setTextureCoors(FFFF)V

    .line 148
    iget-object v2, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mShowThunderModule:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v2, v1}, Lcom/bluestareffects/sdk/materials/module/Module;->setAlpha(F)V

    .line 149
    iget-object v2, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mFlashOFWhiteModule:Lcom/bluestareffects/sdk/materials/module/Module;

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/bluestareffects/sdk/materials/module/Module;->setAlpha(F)V

    .line 150
    return-void
.end method

.method private initModule()V
    .locals 9

    .prologue
    const v8, 0x43d48000    # 425.0f

    const v7, 0x43c28000    # 389.0f

    const/high16 v6, 0x439c0000    # 312.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 62
    new-instance v0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    invoke-direct {v0}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;-><init>()V

    iput-object v0, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    .line 63
    new-instance v0, Lcom/bluestareffects/sdk/materials/module/Module;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mShader:Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    invoke-direct {v0, v1}, Lcom/bluestareffects/sdk/materials/module/Module;-><init>(Lcom/bluestareffects/sdk/materials/shader/BaseShader;)V

    iput-object v0, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mThunderModule1:Lcom/bluestareffects/sdk/materials/module/Module;

    .line 64
    new-instance v0, Lcom/bluestareffects/sdk/materials/module/Module;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mShader:Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    invoke-direct {v0, v1}, Lcom/bluestareffects/sdk/materials/module/Module;-><init>(Lcom/bluestareffects/sdk/materials/shader/BaseShader;)V

    iput-object v0, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mThunderModule2:Lcom/bluestareffects/sdk/materials/module/Module;

    .line 65
    new-instance v0, Lcom/bluestareffects/sdk/materials/module/Module;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mShader:Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    invoke-direct {v0, v1}, Lcom/bluestareffects/sdk/materials/module/Module;-><init>(Lcom/bluestareffects/sdk/materials/shader/BaseShader;)V

    iput-object v0, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mThunderModule3:Lcom/bluestareffects/sdk/materials/module/Module;

    .line 66
    new-instance v0, Lcom/bluestareffects/sdk/materials/module/Module;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mShader:Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    invoke-direct {v0, v1}, Lcom/bluestareffects/sdk/materials/module/Module;-><init>(Lcom/bluestareffects/sdk/materials/shader/BaseShader;)V

    iput-object v0, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mFlashOFWhiteModule:Lcom/bluestareffects/sdk/materials/module/Module;

    .line 68
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mThunderModule1:Lcom/bluestareffects/sdk/materials/module/Module;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    iget-object v2, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mTextureResourceId:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/bluestareffects/sdk/core/EffectsInstance;->getTexture(I)Lcom/bluestareffects/sdk/core/Texture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/module/Module;->setTexture(Lcom/bluestareffects/sdk/core/Texture;)V

    .line 69
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mThunderModule1:Lcom/bluestareffects/sdk/materials/module/Module;

    const/high16 v1, 0x43c80000    # 400.0f

    invoke-virtual {v0, v1, v4, v4}, Lcom/bluestareffects/sdk/materials/module/Module;->setPosition(FFF)V

    .line 70
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mThunderModule1:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v0, v4, v4, v5, v5}, Lcom/bluestareffects/sdk/materials/module/Module;->setTextureCoors(FFFF)V

    .line 71
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mThunderModule1:Lcom/bluestareffects/sdk/materials/module/Module;

    const/high16 v1, 0x44110000    # 580.0f

    invoke-virtual {v0, v8, v1}, Lcom/bluestareffects/sdk/materials/module/Module;->setSize(FF)V

    .line 72
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mThunderModule1:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v0, v4}, Lcom/bluestareffects/sdk/materials/module/Module;->setAlpha(F)V

    .line 73
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mSizeArrayList:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mSizeArrayList:Ljava/util/ArrayList;

    const/high16 v1, 0x44110000    # 580.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mThunderModule2:Lcom/bluestareffects/sdk/materials/module/Module;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    iget-object v2, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mTextureResourceId:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/bluestareffects/sdk/core/EffectsInstance;->getTexture(I)Lcom/bluestareffects/sdk/core/Texture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/module/Module;->setTexture(Lcom/bluestareffects/sdk/core/Texture;)V

    .line 77
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mThunderModule2:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v0, v4, v4, v4}, Lcom/bluestareffects/sdk/materials/module/Module;->setPosition(FFF)V

    .line 78
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mThunderModule2:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v0, v4, v4, v5, v5}, Lcom/bluestareffects/sdk/materials/module/Module;->setTextureCoors(FFFF)V

    .line 79
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mThunderModule2:Lcom/bluestareffects/sdk/materials/module/Module;

    const/high16 v1, 0x43ee0000    # 476.0f

    invoke-virtual {v0, v7, v1}, Lcom/bluestareffects/sdk/materials/module/Module;->setSize(FF)V

    .line 80
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mThunderModule2:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v0, v4}, Lcom/bluestareffects/sdk/materials/module/Module;->setAlpha(F)V

    .line 81
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mSizeArrayList:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mSizeArrayList:Ljava/util/ArrayList;

    const/high16 v1, 0x43ee0000    # 476.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mThunderModule3:Lcom/bluestareffects/sdk/materials/module/Module;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    iget-object v2, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mTextureResourceId:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/bluestareffects/sdk/core/EffectsInstance;->getTexture(I)Lcom/bluestareffects/sdk/core/Texture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/module/Module;->setTexture(Lcom/bluestareffects/sdk/core/Texture;)V

    .line 85
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mThunderModule3:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v0, v4, v4, v4}, Lcom/bluestareffects/sdk/materials/module/Module;->setPosition(FFF)V

    .line 86
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mThunderModule3:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v0, v4, v4, v5, v5}, Lcom/bluestareffects/sdk/materials/module/Module;->setTextureCoors(FFFF)V

    .line 87
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mThunderModule3:Lcom/bluestareffects/sdk/materials/module/Module;

    const v1, 0x4418c000    # 611.0f

    invoke-virtual {v0, v6, v1}, Lcom/bluestareffects/sdk/materials/module/Module;->setSize(FF)V

    .line 88
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mThunderModule3:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v0, v4}, Lcom/bluestareffects/sdk/materials/module/Module;->setAlpha(F)V

    .line 89
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mSizeArrayList:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mSizeArrayList:Ljava/util/ArrayList;

    const v1, 0x4418c000    # 611.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mFlashOFWhiteModule:Lcom/bluestareffects/sdk/materials/module/Module;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    iget-object v2, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mTextureResourceId:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/bluestareffects/sdk/core/EffectsInstance;->getTexture(I)Lcom/bluestareffects/sdk/core/Texture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/module/Module;->setTexture(Lcom/bluestareffects/sdk/core/Texture;)V

    .line 93
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mFlashOFWhiteModule:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v0, v4, v4, v4}, Lcom/bluestareffects/sdk/materials/module/Module;->setPosition(FFF)V

    .line 94
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mFlashOFWhiteModule:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v0, v4, v4, v5, v5}, Lcom/bluestareffects/sdk/materials/module/Module;->setTextureCoors(FFFF)V

    .line 95
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mFlashOFWhiteModule:Lcom/bluestareffects/sdk/materials/module/Module;

    const/high16 v1, 0x44870000    # 1080.0f

    const/high16 v2, 0x44f00000    # 1920.0f

    invoke-virtual {v0, v1, v2}, Lcom/bluestareffects/sdk/materials/module/Module;->setSize(FF)V

    .line 96
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mFlashOFWhiteModule:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v0, v4}, Lcom/bluestareffects/sdk/materials/module/Module;->setAlpha(F)V

    .line 98
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mThunderModule1:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->addSubModule(Lcom/bluestareffects/sdk/core/IModule;)V

    .line 99
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mThunderModule2:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->addSubModule(Lcom/bluestareffects/sdk/core/IModule;)V

    .line 100
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mThunderModule3:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->addSubModule(Lcom/bluestareffects/sdk/core/IModule;)V

    .line 101
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->addSubModule(Lcom/bluestareffects/sdk/core/IModule;)V

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mModuleArrayList:Ljava/util/ArrayList;

    .line 104
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mModuleArrayList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mThunderModule1:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mModuleArrayList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mThunderModule2:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mModuleArrayList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mThunderModule3:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    return-void
.end method

.method private initPosition()V
    .locals 5

    .prologue
    .line 133
    iget-object v2, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mRandom:Ljava/util/Random;

    const/16 v3, 0x1388

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit16 v2, v2, 0x1388

    div-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mIntervalFrame:I

    .line 134
    iget-object v2, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mRandom:Ljava/util/Random;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 135
    .local v0, "index":I
    iget-object v2, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mModuleArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bluestareffects/sdk/materials/module/Module;

    iput-object v2, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mShowThunderModule:Lcom/bluestareffects/sdk/materials/module/Module;

    .line 136
    iget-object v2, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mSizeArrayList:Ljava/util/ArrayList;

    mul-int/lit8 v3, v0, 0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mShowModuleSizeX:F

    .line 137
    iget-object v2, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mSizeArrayList:Ljava/util/ArrayList;

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mShowModuleSizeY:F

    .line 138
    iget-object v2, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mRandom:Ljava/util/Random;

    const/16 v3, 0x1f4

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit16 v2, v2, 0x96

    int-to-float v1, v2

    .line 139
    .local v1, "mX":F
    iget-object v2, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mShowThunderModule:Lcom/bluestareffects/sdk/materials/module/Module;

    const/high16 v3, -0x3e380000    # -25.0f

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lcom/bluestareffects/sdk/materials/module/Module;->setPosition(FFF)V

    .line 140
    return-void
.end method


# virtual methods
.method public addFlashWhite(Lcom/bluestareffects/sdk/materials/module/ModuleGroup;)V
    .locals 1
    .param p1, "parentModule"    # Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mFlashOFWhiteModule:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {p1, v0}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->addSubModule(Lcom/bluestareffects/sdk/core/IModule;)V

    .line 111
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    .line 174
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mTextureResourceId:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mResourceManager:Lcom/bluestareffects/app/weather/api/ResourceManager;

    iget-object v2, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mTextureResourceId:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/bluestareffects/app/weather/api/ResourceManager;->removeResource(I)V

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    iget-object v2, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    invoke-virtual {v1, v2}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->removeSubModule(Lcom/bluestareffects/sdk/core/IModule;)V

    .line 178
    return-void
.end method

.method public doFrame()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x1e

    const/high16 v6, 0x43fa0000    # 500.0f

    .line 114
    iget-wide v2, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mFrame:J

    iget v1, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mIntervalFrame:I

    int-to-long v4, v1

    rem-long/2addr v2, v4

    cmp-long v1, v2, v8

    if-nez v1, :cond_0

    .line 115
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mCanDraw:Z

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mAnimationTime:J

    .line 117
    iput-wide v8, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mFrame:J

    .line 118
    invoke-direct {p0}, Lcom/bluestareffects/app/weather/common/ThunderBolt;->initPosition()V

    .line 121
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mAnimationTime:J

    sub-long/2addr v2, v4

    long-to-float v0, v2

    .line 123
    .local v0, "time":F
    iget-boolean v1, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mCanDraw:Z

    if-eqz v1, :cond_1

    const/high16 v1, 0x43160000    # 150.0f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    .line 124
    invoke-direct {p0, v0}, Lcom/bluestareffects/app/weather/common/ThunderBolt;->drawThunder(F)V

    .line 126
    :cond_1
    iget-boolean v1, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mCanDraw:Z

    if-eqz v1, :cond_2

    cmpl-float v1, v0, v6

    if-lez v1, :cond_2

    .line 127
    sub-float v1, v0, v6

    invoke-direct {p0, v1}, Lcom/bluestareffects/app/weather/common/ThunderBolt;->drawDisappearThunder(F)V

    .line 129
    :cond_2
    iget-wide v2, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mFrame:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mFrame:J

    .line 130
    return-void
.end method

.method public onSizeChanged(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 183
    return-void
.end method

.method public update()V
    .locals 2

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mTimeInitialize:Z

    if-nez v0, :cond_0

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bluestareffects/app/weather/common/ThunderBolt;->mTimeInitialize:Z

    .line 170
    :goto_0
    return-void

    .line 167
    :cond_0
    const/16 v0, 0x17

    const-string v1, "ThunderBolt::update"

    invoke-static {v0, v1}, Lcom/bluestareffects/sdk/util/BSLog;->v(ILjava/lang/String;)I

    .line 168
    invoke-virtual {p0}, Lcom/bluestareffects/app/weather/common/ThunderBolt;->doFrame()V

    goto :goto_0
.end method
