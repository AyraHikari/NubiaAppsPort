.class public Lcom/bluestareffects/app/weather/common/Meteor;
.super Ljava/lang/Object;
.source "Meteor.java"

# interfaces
.implements Lcom/bluestareffects/app/weather/common/Component;


# static fields
.field private static final DISAPPEAR_TIME:F = 600.0f

.field private static final HEIGHT:F = 3.0f

.field private static final SHOW_TIME:F = 300.0f

.field private static final WIDTH:F = 142.0f


# instance fields
.field private mAngle:F

.field private mAnimationTime:J

.field private mCanDraw:Z

.field private mEndX:F

.field private mFrame:J

.field private mHeadModule:Lcom/bluestareffects/sdk/materials/module/Module;

.field private mHeadWidth:F

.field private mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

.field private mIntervalFrame:I

.field private mMaxAlpha:F

.field private mMaxTailWidth:F

.field private mMinTailWidth:F

.field private mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

.field private mRandom:Ljava/util/Random;

.field private mResourceManager:Lcom/bluestareffects/app/weather/api/ResourceManager;

.field private mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

.field private mShader:Lcom/bluestareffects/sdk/materials/shader/BaseShader;

.field mStartX:F

.field mStartY:F

.field private mTailModule:Lcom/bluestareffects/sdk/materials/module/Module;

.field private mTextureResourceId:I

.field private mTimeInitialize:Z

.field private mV:F

.field mX:F


# direct methods
.method public constructor <init>(Lcom/bluestareffects/sdk/core/EffectsInstance;Lcom/bluestareffects/sdk/materials/module/ModuleGroup;Lcom/bluestareffects/app/weather/api/ResourceManager;I)V
    .locals 4
    .param p1, "instance"    # Lcom/bluestareffects/sdk/core/EffectsInstance;
    .param p2, "parentModule"    # Lcom/bluestareffects/sdk/materials/module/ModuleGroup;
    .param p3, "resourceManager"    # Lcom/bluestareffects/app/weather/api/ResourceManager;
    .param p4, "textureResourceId"    # I

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const v0, -0x40e66666    # -0.6f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mV:F

    .line 32
    const/high16 v0, -0x3e900000    # -15.0f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mAngle:F

    .line 33
    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mHeadWidth:F

    .line 34
    iput v1, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mMinTailWidth:F

    .line 35
    const/high16 v0, 0x435c0000    # 220.0f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mMaxTailWidth:F

    .line 36
    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mMaxAlpha:F

    .line 129
    iput v1, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mStartY:F

    .line 130
    iput v1, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mStartX:F

    .line 151
    iput v1, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mX:F

    .line 43
    invoke-virtual {p3, p4}, Lcom/bluestareffects/app/weather/api/ResourceManager;->addResource(I)V

    .line 44
    iput-object p3, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mResourceManager:Lcom/bluestareffects/app/weather/api/ResourceManager;

    .line 45
    iput-object p2, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    .line 46
    iput-object p1, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    .line 47
    iput p4, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mTextureResourceId:I

    .line 48
    const-class v0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;

    invoke-virtual {p1, v0}, Lcom/bluestareffects/sdk/core/EffectsInstance;->getShader(Ljava/lang/Class;)Lcom/bluestareffects/sdk/core/IShader$User;

    move-result-object v0

    check-cast v0, Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    iput-object v0, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mShader:Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    .line 49
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mRandom:Ljava/util/Random;

    .line 50
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mRandom:Ljava/util/Random;

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x1388

    div-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mIntervalFrame:I

    .line 51
    new-instance v0, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    invoke-direct {v0}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;-><init>()V

    iput-object v0, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    .line 52
    invoke-direct {p0}, Lcom/bluestareffects/app/weather/common/Meteor;->initModule()V

    .line 53
    return-void
.end method

.method private doFrame()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x1e

    const/4 v9, 0x0

    const/high16 v8, 0x43960000    # 300.0f

    .line 97
    iget-wide v4, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mFrame:J

    iget v3, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mIntervalFrame:I

    int-to-long v6, v3

    rem-long/2addr v4, v6

    cmp-long v3, v4, v10

    if-nez v3, :cond_0

    .line 98
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mCanDraw:Z

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mAnimationTime:J

    .line 100
    iput-wide v10, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mFrame:J

    .line 101
    invoke-direct {p0}, Lcom/bluestareffects/app/weather/common/Meteor;->initPosition()V

    .line 104
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mAnimationTime:J

    sub-long/2addr v4, v6

    long-to-float v2, v4

    .line 106
    .local v2, "time":F
    iget-boolean v3, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mCanDraw:Z

    if-eqz v3, :cond_1

    cmpg-float v3, v2, v8

    if-gtz v3, :cond_1

    .line 107
    invoke-direct {p0, v2}, Lcom/bluestareffects/app/weather/common/Meteor;->drawMeteor(F)V

    .line 109
    :cond_1
    iget-boolean v3, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mCanDraw:Z

    if-eqz v3, :cond_2

    cmpl-float v3, v2, v8

    if-lez v3, :cond_2

    .line 110
    sub-float v3, v2, v8

    invoke-direct {p0, v3}, Lcom/bluestareffects/app/weather/common/Meteor;->drawDisappearMeteor(F)V

    .line 113
    :cond_2
    const/high16 v1, 0x43e10000    # 450.0f

    .line 114
    .local v1, "alphaTime":F
    iget-boolean v3, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mCanDraw:Z

    if-eqz v3, :cond_3

    cmpg-float v3, v2, v1

    if-gtz v3, :cond_3

    .line 115
    iget v3, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mMaxAlpha:F

    div-float v4, v2, v1

    mul-float v0, v3, v4

    .line 116
    .local v0, "alpha":F
    iget-object v3, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mTailModule:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v3, v0}, Lcom/bluestareffects/sdk/materials/module/Module;->setAlpha(F)V

    .line 117
    iget-object v3, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mHeadModule:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v3, v0}, Lcom/bluestareffects/sdk/materials/module/Module;->setAlpha(F)V

    .line 126
    .end local v0    # "alpha":F
    :goto_0
    iget-wide v4, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mFrame:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mFrame:J

    .line 127
    return-void

    .line 118
    :cond_3
    iget-boolean v3, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mCanDraw:Z

    if-eqz v3, :cond_4

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v1

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_4

    .line 119
    iget v3, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mMaxAlpha:F

    iget v4, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mMaxAlpha:F

    sub-float v5, v2, v1

    mul-float/2addr v4, v5

    div-float/2addr v4, v1

    sub-float v0, v3, v4

    .line 120
    .restart local v0    # "alpha":F
    iget-object v3, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mTailModule:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v3, v0}, Lcom/bluestareffects/sdk/materials/module/Module;->setAlpha(F)V

    .line 121
    iget-object v3, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mHeadModule:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v3, v0}, Lcom/bluestareffects/sdk/materials/module/Module;->setAlpha(F)V

    goto :goto_0

    .line 123
    .end local v0    # "alpha":F
    :cond_4
    iget-object v3, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mTailModule:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v3, v9}, Lcom/bluestareffects/sdk/materials/module/Module;->setAlpha(F)V

    .line 124
    iget-object v3, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mHeadModule:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v3, v9}, Lcom/bluestareffects/sdk/materials/module/Module;->setAlpha(F)V

    goto :goto_0
.end method

.method private drawDisappearMeteor(F)V
    .locals 6
    .param p1, "time"    # F

    .prologue
    const/high16 v5, 0x44160000    # 600.0f

    const/4 v4, 0x0

    .line 163
    cmpl-float v1, p1, v5

    if-lez v1, :cond_0

    .line 164
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mCanDraw:Z

    .line 166
    :cond_0
    iget v1, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mEndX:F

    iget v2, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mV:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mX:F

    .line 167
    iget v1, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mMaxTailWidth:F

    iget v2, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mMaxTailWidth:F

    iget v3, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mMinTailWidth:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 168
    .local v0, "tailWidth":F
    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mTailModule:Lcom/bluestareffects/sdk/materials/module/Module;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v1, v0, v2}, Lcom/bluestareffects/sdk/materials/module/Module;->setSize(FF)V

    .line 169
    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mHeadModule:Lcom/bluestareffects/sdk/materials/module/Module;

    iget v2, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mX:F

    iget v3, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mStartY:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/bluestareffects/sdk/materials/module/Module;->setPosition(FFF)V

    .line 170
    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mTailModule:Lcom/bluestareffects/sdk/materials/module/Module;

    iget v2, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mX:F

    iget v3, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mHeadWidth:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mStartY:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/bluestareffects/sdk/materials/module/Module;->setPosition(FFF)V

    .line 171
    return-void
.end method

.method private drawMeteor(F)V
    .locals 5
    .param p1, "time"    # F

    .prologue
    const/4 v4, 0x0

    .line 154
    iget v1, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mStartX:F

    iget v2, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mV:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mX:F

    .line 155
    iget v1, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mX:F

    iput v1, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mEndX:F

    .line 156
    iget v1, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mMaxTailWidth:F

    iget v2, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mMinTailWidth:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x43960000    # 300.0f

    div-float/2addr v1, v2

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mMaxTailWidth:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 157
    .local v0, "tailWidth":F
    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mTailModule:Lcom/bluestareffects/sdk/materials/module/Module;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v1, v0, v2}, Lcom/bluestareffects/sdk/materials/module/Module;->setSize(FF)V

    .line 158
    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mHeadModule:Lcom/bluestareffects/sdk/materials/module/Module;

    iget v2, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mX:F

    iget v3, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mStartY:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/bluestareffects/sdk/materials/module/Module;->setPosition(FFF)V

    .line 159
    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mTailModule:Lcom/bluestareffects/sdk/materials/module/Module;

    iget v2, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mX:F

    iget v3, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mHeadWidth:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mStartY:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/bluestareffects/sdk/materials/module/Module;->setPosition(FFF)V

    .line 160
    return-void
.end method

.method private initModule()V
    .locals 7

    .prologue
    const/high16 v6, 0x430e0000    # 142.0f

    const/high16 v5, 0x40400000    # 3.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 56
    new-instance v0, Lcom/bluestareffects/sdk/materials/module/Module;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mShader:Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    invoke-direct {v0, v1}, Lcom/bluestareffects/sdk/materials/module/Module;-><init>(Lcom/bluestareffects/sdk/materials/shader/BaseShader;)V

    iput-object v0, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mHeadModule:Lcom/bluestareffects/sdk/materials/module/Module;

    .line 57
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mHeadModule:Lcom/bluestareffects/sdk/materials/module/Module;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    iget v2, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mTextureResourceId:I

    invoke-virtual {v1, v2}, Lcom/bluestareffects/sdk/core/EffectsInstance;->getTexture(I)Lcom/bluestareffects/sdk/core/Texture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/module/Module;->setTexture(Lcom/bluestareffects/sdk/core/Texture;)V

    .line 58
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mHeadModule:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v0, v3, v3, v3}, Lcom/bluestareffects/sdk/materials/module/Module;->setPosition(FFF)V

    .line 59
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mHeadModule:Lcom/bluestareffects/sdk/materials/module/Module;

    iget v1, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mHeadWidth:F

    div-float/2addr v1, v6

    invoke-virtual {v0, v3, v3, v1, v4}, Lcom/bluestareffects/sdk/materials/module/Module;->setTextureCoors(FFFF)V

    .line 60
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mHeadModule:Lcom/bluestareffects/sdk/materials/module/Module;

    iget v1, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mHeadWidth:F

    invoke-virtual {v0, v1, v5}, Lcom/bluestareffects/sdk/materials/module/Module;->setSize(FF)V

    .line 61
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mHeadModule:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v0, v3}, Lcom/bluestareffects/sdk/materials/module/Module;->setAlpha(F)V

    .line 63
    new-instance v0, Lcom/bluestareffects/sdk/materials/module/Module;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mShader:Lcom/bluestareffects/sdk/materials/shader/BaseShader;

    invoke-direct {v0, v1}, Lcom/bluestareffects/sdk/materials/module/Module;-><init>(Lcom/bluestareffects/sdk/materials/shader/BaseShader;)V

    iput-object v0, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mTailModule:Lcom/bluestareffects/sdk/materials/module/Module;

    .line 64
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mTailModule:Lcom/bluestareffects/sdk/materials/module/Module;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mInstance:Lcom/bluestareffects/sdk/core/EffectsInstance;

    iget v2, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mTextureResourceId:I

    invoke-virtual {v1, v2}, Lcom/bluestareffects/sdk/core/EffectsInstance;->getTexture(I)Lcom/bluestareffects/sdk/core/Texture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/module/Module;->setTexture(Lcom/bluestareffects/sdk/core/Texture;)V

    .line 65
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mTailModule:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v0, v3, v3, v3}, Lcom/bluestareffects/sdk/materials/module/Module;->setPosition(FFF)V

    .line 66
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mTailModule:Lcom/bluestareffects/sdk/materials/module/Module;

    iget v1, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mHeadWidth:F

    div-float/2addr v1, v6

    invoke-virtual {v0, v1, v3, v4, v4}, Lcom/bluestareffects/sdk/materials/module/Module;->setTextureCoors(FFFF)V

    .line 67
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mTailModule:Lcom/bluestareffects/sdk/materials/module/Module;

    iget v1, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mMinTailWidth:F

    invoke-virtual {v0, v1, v5}, Lcom/bluestareffects/sdk/materials/module/Module;->setSize(FF)V

    .line 68
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mTailModule:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v0, v3}, Lcom/bluestareffects/sdk/materials/module/Module;->setAlpha(F)V

    .line 70
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mHeadModule:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->addSubModule(Lcom/bluestareffects/sdk/core/IModule;)V

    .line 71
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mTailModule:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->addSubModule(Lcom/bluestareffects/sdk/core/IModule;)V

    .line 72
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->addSubModule(Lcom/bluestareffects/sdk/core/IModule;)V

    .line 73
    return-void
.end method

.method private initPosition()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 132
    iget-object v2, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mRandom:Ljava/util/Random;

    const/16 v3, 0x1388

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit16 v2, v2, 0x1388

    div-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mIntervalFrame:I

    .line 133
    iget-object v2, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mRandom:Ljava/util/Random;

    const/16 v3, 0x29e

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit16 v2, v2, 0x131

    int-to-float v2, v2

    iput v2, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mStartX:F

    .line 134
    iget-object v2, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mRandom:Ljava/util/Random;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x4b

    int-to-float v2, v2

    iput v2, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mStartY:F

    .line 135
    iget-object v2, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mHeadModule:Lcom/bluestareffects/sdk/materials/module/Module;

    iget v3, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mStartX:F

    iget v4, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mStartY:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/bluestareffects/sdk/materials/module/Module;->setPosition(FFF)V

    .line 136
    iget-object v2, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mTailModule:Lcom/bluestareffects/sdk/materials/module/Module;

    iget v3, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mStartX:F

    iget v4, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mHeadWidth:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mStartY:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/bluestareffects/sdk/materials/module/Module;->setPosition(FFF)V

    .line 137
    invoke-static {}, Lcom/bluestareffects/sdk/util/BSMatrix;->create()Lcom/bluestareffects/sdk/util/BSMatrix;

    move-result-object v1

    .line 138
    .local v1, "mSelfMatrix":Lcom/bluestareffects/sdk/util/BSMatrix;
    iget v2, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mStartX:F

    iget v3, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mStartY:F

    invoke-virtual {v1, v2, v3, v5}, Lcom/bluestareffects/sdk/util/BSMatrix;->translate(FFF)V

    .line 140
    iget v2, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mAngle:F

    iget-object v3, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mRandom:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    sub-float/2addr v3, v6

    const v4, 0x3e99999a    # 0.3f

    mul-float/2addr v3, v4

    sub-float v3, v6, v3

    mul-float v0, v2, v3

    .line 141
    .local v0, "angle":F
    invoke-virtual {v1, v0, v5, v5, v6}, Lcom/bluestareffects/sdk/util/BSMatrix;->rotate(FFFF)V

    .line 142
    iget v2, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mStartX:F

    neg-float v2, v2

    iget v3, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mStartY:F

    neg-float v3, v3

    invoke-virtual {v1, v2, v3, v5}, Lcom/bluestareffects/sdk/util/BSMatrix;->translate(FFF)V

    .line 143
    iget-object v2, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mHeadModule:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v2, v1}, Lcom/bluestareffects/sdk/materials/module/Module;->setMatrix(Lcom/bluestareffects/sdk/util/BSMatrix;)V

    .line 144
    iget-object v2, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mTailModule:Lcom/bluestareffects/sdk/materials/module/Module;

    invoke-virtual {v2, v1}, Lcom/bluestareffects/sdk/materials/module/Module;->setMatrix(Lcom/bluestareffects/sdk/util/BSMatrix;)V

    .line 146
    iget-object v2, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mTailModule:Lcom/bluestareffects/sdk/materials/module/Module;

    iget v3, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mMaxAlpha:F

    invoke-virtual {v2, v3}, Lcom/bluestareffects/sdk/materials/module/Module;->setAlpha(F)V

    .line 147
    iget-object v2, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mHeadModule:Lcom/bluestareffects/sdk/materials/module/Module;

    iget v3, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mMaxAlpha:F

    invoke-virtual {v2, v3}, Lcom/bluestareffects/sdk/materials/module/Module;->setAlpha(F)V

    .line 148
    iget-object v2, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mTailModule:Lcom/bluestareffects/sdk/materials/module/Module;

    iget v3, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mMinTailWidth:F

    const/high16 v4, 0x40400000    # 3.0f

    invoke-virtual {v2, v3, v4}, Lcom/bluestareffects/sdk/materials/module/Module;->setSize(FF)V

    .line 149
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mResourceManager:Lcom/bluestareffects/app/weather/api/ResourceManager;

    iget v1, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mTextureResourceId:I

    invoke-virtual {v0, v1}, Lcom/bluestareffects/app/weather/api/ResourceManager;->removeResource(I)V

    .line 88
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mParentModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mSelfModule:Lcom/bluestareffects/sdk/materials/module/ModuleGroup;

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/module/ModuleGroup;->removeSubModule(Lcom/bluestareffects/sdk/core/IModule;)V

    .line 89
    return-void
.end method

.method public onSizeChanged(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 94
    return-void
.end method

.method public update()V
    .locals 2

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mTimeInitialize:Z

    if-nez v0, :cond_0

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bluestareffects/app/weather/common/Meteor;->mTimeInitialize:Z

    .line 83
    :goto_0
    return-void

    .line 80
    :cond_0
    const/16 v0, 0x17

    const-string v1, "Meteor::update"

    invoke-static {v0, v1}, Lcom/bluestareffects/sdk/util/BSLog;->v(ILjava/lang/String;)I

    .line 81
    invoke-direct {p0}, Lcom/bluestareffects/app/weather/common/Meteor;->doFrame()V

    goto :goto_0
.end method
