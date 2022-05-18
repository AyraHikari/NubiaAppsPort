.class public Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;
.super Lcom/bluestareffects/sdk/materials/algorithm/Batch2DParticle;
.source "GroupSnow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bluestareffects/app/weather/common/GroupSnow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupSnowPropertyParticle"
.end annotation


# static fields
.field private static mParticleRandom:Ljava/util/Random;


# instance fields
.field private mParticleAlpha:F

.field private mStartAngle:F

.field private mTimedPassed:F

.field public mVx:F

.field public mVy:F

.field private mXSpeed:F

.field private mXSpeedOffset:F

.field private mYAccelerate:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 231
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;->mParticleRandom:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 241
    invoke-direct {p0}, Lcom/bluestareffects/sdk/materials/algorithm/Batch2DParticle;-><init>()V

    .line 238
    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;->mVx:F

    .line 239
    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;->mVy:F

    .line 242
    return-void
.end method


# virtual methods
.method public AlphaFromPosition(FF)F
    .locals 9
    .param p1, "xPosition"    # F
    .param p2, "yPosition"    # F

    .prologue
    const/4 v6, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 273
    const/4 v0, 0x0

    .line 274
    .local v0, "alpha1":F
    const/4 v1, 0x0

    .line 276
    .local v1, "alpha2":F
    new-instance v2, Landroid/graphics/Rect;

    const/16 v4, 0x438

    const/16 v5, 0x4bc

    invoke-direct {v2, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 277
    .local v2, "rect1":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0xc8

    const/16 v5, 0x258

    const/16 v6, 0x370

    const/16 v7, 0x384

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 279
    .local v3, "rect2":Landroid/graphics/Rect;
    iget v4, v2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    cmpg-float v4, p2, v4

    if-ltz v4, :cond_0

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    cmpl-float v4, p2, v4

    if-lez v4, :cond_2

    .line 280
    :cond_0
    const/4 v0, 0x0

    .line 289
    :goto_0
    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    cmpg-float v4, p1, v4

    if-ltz v4, :cond_1

    iget v4, v2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpl-float v4, p1, v4

    if-lez v4, :cond_5

    .line 290
    :cond_1
    const/4 v1, 0x0

    .line 298
    :goto_1
    mul-float v4, v0, v1

    return v4

    .line 281
    :cond_2
    iget v4, v2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    cmpl-float v4, p2, v4

    if-lez v4, :cond_3

    iget v4, v3, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    cmpg-float v4, p2, v4

    if-gez v4, :cond_3

    .line 282
    iget v4, v3, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float/2addr v4, p2

    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-float v0, v8, v4

    goto :goto_0

    .line 283
    :cond_3
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    cmpl-float v4, p2, v4

    if-lez v4, :cond_4

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    cmpg-float v4, p2, v4

    if-gez v4, :cond_4

    .line 284
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sub-float/2addr v4, p2

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float v0, v4, v5

    goto :goto_0

    .line 286
    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 291
    :cond_5
    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    cmpl-float v4, p1, v4

    if-lez v4, :cond_6

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    cmpg-float v4, p1, v4

    if-gez v4, :cond_6

    .line 292
    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v4, p1

    iget v5, v3, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-float v1, v8, v4

    goto :goto_1

    .line 293
    :cond_6
    iget v4, v3, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpl-float v4, p1, v4

    if-lez v4, :cond_7

    iget v4, v2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpg-float v4, p1, v4

    if-gez v4, :cond_7

    .line 294
    iget v4, v2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v4, p1

    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float v1, v4, v5

    goto :goto_1

    .line 296
    :cond_7
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 256
    return-void
.end method

.method public setProperty(FFFF)V
    .locals 2
    .param p1, "xSpeedOffset"    # F
    .param p2, "yAccelerate"    # F
    .param p3, "xSpeed"    # F
    .param p4, "alpha"    # F

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 245
    iput p1, p0, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;->mXSpeedOffset:F

    .line 246
    iput p2, p0, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;->mYAccelerate:F

    .line 247
    iput p3, p0, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;->mXSpeed:F

    .line 248
    iput p4, p0, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;->mParticleAlpha:F

    .line 249
    sget-object v0, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;->mParticleRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float/2addr v0, v1

    add-float/2addr v0, v1

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;->mYAccelerate:F

    .line 250
    sget-object v0, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;->mParticleRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;->mStartAngle:F

    .line 251
    return-void
.end method

.method public update(F)V
    .locals 11
    .param p1, "timePassed"    # F

    .prologue
    const/high16 v10, -0x3d380000    # -100.0f

    .line 260
    iget v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;->mTimedPassed:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;->mTimedPassed:F

    .line 261
    iget v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;->mXSpeed:F

    sget-object v1, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;->mParticleRandom:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    iget v2, p0, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;->mXSpeedOffset:F

    mul-float/2addr v1, v2

    float-to-double v2, v1

    const/high16 v1, 0x40000000    # 2.0f

    iget v4, p0, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;->mTimedPassed:F

    mul-float/2addr v1, v4

    float-to-double v4, v1

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    div-double/2addr v4, v6

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    iget v1, p0, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;->mStartAngle:F

    float-to-double v8, v1

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;->mVx:F

    .line 262
    iget v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;->mVy:F

    iget v1, p0, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;->mYAccelerate:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;->mVy:F

    .line 263
    iget v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;->mX:F

    iget v1, p0, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;->mVx:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;->mX:F

    .line 264
    iget v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;->mY:F

    iget v1, p0, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;->mVy:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;->mY:F

    .line 265
    iget v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;->mParticleAlpha:F

    iget v1, p0, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;->mX:F

    iget v2, p0, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;->mY:F

    invoke-virtual {p0, v1, v2}, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;->AlphaFromPosition(FF)F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;->mAlpha:F

    .line 266
    iget v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;->mX:F

    cmpl-float v0, v0, v10

    if-lez v0, :cond_0

    iget v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;->mX:F

    const v1, 0x44938000    # 1180.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;->mY:F

    cmpl-float v0, v0, v10

    if-lez v0, :cond_0

    iget v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;->mY:F

    const v1, 0x44fc8000    # 2020.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/bluestareffects/app/weather/common/GroupSnow$GroupSnowPropertyParticle;->mAlive:Z

    .line 270
    return-void

    .line 266
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
