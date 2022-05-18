.class public Lcn/nubia/gallery3d/ui/EdgeEffect;
.super Ljava/lang/Object;
.source "EdgeEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/ui/EdgeEffect$Drawable;
    }
.end annotation


# static fields
.field private static final EPSILON:F = 0.001f

.field private static final HELD_EDGE_ALPHA:F = 0.7f

.field private static final HELD_EDGE_SCALE_Y:F = 0.5f

.field private static final HELD_GLOW_ALPHA:F = 0.5f

.field private static final HELD_GLOW_SCALE_Y:F = 0.5f

.field private static final MAX_ALPHA:F = 0.8f

.field private static final MAX_GLOW_HEIGHT:F = 4.0f

.field private static final MIN_VELOCITY:I = 0x64

.field private static final PULL_DECAY_TIME:I = 0x3e8

.field private static final PULL_DISTANCE_ALPHA_GLOW_FACTOR:F = 1.1f

.field private static final PULL_DISTANCE_EDGE_FACTOR:I = 0x7

.field private static final PULL_DISTANCE_GLOW_FACTOR:I = 0x7

.field private static final PULL_EDGE_BEGIN:F = 0.6f

.field private static final PULL_GLOW_BEGIN:F = 1.0f

.field private static final PULL_TIME:I = 0xa7

.field private static final RECEDE_TIME:I = 0x3e8

.field private static final STATE_ABSORB:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PULL:I = 0x1

.field private static final STATE_PULL_DECAY:I = 0x4

.field private static final STATE_RECEDE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "EdgeEffect"

.field private static final VELOCITY_EDGE_FACTOR:I = 0x8

.field private static final VELOCITY_GLOW_FACTOR:I = 0x10


# instance fields
.field private final MIN_WIDTH:I

.field private mDuration:F

.field private final mEdge:Lcn/nubia/gallery3d/ui/EdgeEffect$Drawable;

.field private mEdgeAlpha:F

.field private mEdgeAlphaFinish:F

.field private mEdgeAlphaStart:F

.field private mEdgeScaleY:F

.field private mEdgeScaleYFinish:F

.field private mEdgeScaleYStart:F

.field private final mGlow:Lcn/nubia/gallery3d/ui/EdgeEffect$Drawable;

.field private mGlowAlpha:F

.field private mGlowAlphaFinish:F

.field private mGlowAlphaStart:F

.field private mGlowScaleY:F

.field private mGlowScaleYFinish:F

.field private mGlowScaleYStart:F

.field private mHeight:I

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mMinWidth:I

.field private mPullDistance:F

.field private mStartTime:J

.field private mState:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12c

    .line 87
    iput v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->MIN_WIDTH:I

    const/4 v0, 0x0

    .line 127
    iput v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mState:I

    .line 136
    new-instance v0, Lcn/nubia/gallery3d/ui/EdgeEffect$Drawable;

    const v1, 0x7f0801d1

    invoke-direct {v0, p1, v1}, Lcn/nubia/gallery3d/ui/EdgeEffect$Drawable;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mEdge:Lcn/nubia/gallery3d/ui/EdgeEffect$Drawable;

    .line 137
    new-instance v0, Lcn/nubia/gallery3d/ui/EdgeEffect$Drawable;

    const v1, 0x7f0801d2

    invoke-direct {v0, p1, v1}, Lcn/nubia/gallery3d/ui/EdgeEffect$Drawable;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mGlow:Lcn/nubia/gallery3d/ui/EdgeEffect$Drawable;

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x43960000    # 300.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mMinWidth:I

    .line 140
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private update()V
    .locals 11

    .line 352
    invoke-static {}, Lcn/nubia/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v0

    .line 353
    iget-wide v2, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mDuration:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 355
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 357
    iget v3, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mEdgeAlphaStart:F

    iget v4, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mEdgeAlphaFinish:F

    sub-float/2addr v4, v3

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mEdgeAlpha:F

    .line 358
    iget v3, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mEdgeScaleYStart:F

    iget v4, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mEdgeScaleYFinish:F

    sub-float v5, v4, v3

    mul-float/2addr v5, v2

    add-float/2addr v5, v3

    iput v5, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mEdgeScaleY:F

    .line 359
    iget v5, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mGlowAlphaStart:F

    iget v6, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mGlowAlphaFinish:F

    sub-float/2addr v6, v5

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    iput v5, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mGlowAlpha:F

    .line 360
    iget v5, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mGlowScaleYStart:F

    iget v6, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mGlowScaleYFinish:F

    sub-float v7, v6, v5

    mul-float/2addr v7, v2

    add-float/2addr v5, v7

    iput v5, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mGlowScaleY:F

    const v5, 0x3f7fbe77    # 0.999f

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_5

    .line 363
    iget v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mState:I

    const/4 v5, 0x1

    const/high16 v7, 0x447a0000    # 1000.0f

    const/4 v8, 0x4

    const/4 v9, 0x0

    if-eq v0, v5, :cond_4

    const/4 v5, 0x2

    const/4 v10, 0x3

    if-eq v0, v5, :cond_3

    if-eq v0, v10, :cond_2

    if-eq v0, v8, :cond_0

    goto :goto_1

    :cond_0
    cmpl-float v0, v6, v9

    if-eqz v0, :cond_1

    mul-float/2addr v6, v6

    div-float/2addr v1, v6

    goto :goto_0

    :cond_1
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    :goto_0
    sub-float/2addr v4, v3

    mul-float/2addr v4, v2

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    .line 402
    iput v3, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mEdgeScaleY:F

    .line 405
    iput v10, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mState:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 408
    iput v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mState:I

    goto :goto_1

    .line 365
    :cond_3
    iput v10, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mState:I

    .line 366
    invoke-static {}, Lcn/nubia/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mStartTime:J

    .line 367
    iput v7, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mDuration:F

    .line 369
    iget v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mEdgeAlpha:F

    iput v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mEdgeAlphaStart:F

    .line 370
    iget v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mEdgeScaleY:F

    iput v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mEdgeScaleYStart:F

    .line 371
    iget v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mGlowAlpha:F

    iput v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mGlowAlphaStart:F

    .line 372
    iget v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mGlowScaleY:F

    iput v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mGlowScaleYStart:F

    .line 375
    iput v9, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mEdgeAlphaFinish:F

    .line 376
    iput v9, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mEdgeScaleYFinish:F

    .line 377
    iput v9, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mGlowAlphaFinish:F

    .line 378
    iput v9, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mGlowScaleYFinish:F

    goto :goto_1

    .line 381
    :cond_4
    iput v8, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mState:I

    .line 382
    invoke-static {}, Lcn/nubia/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mStartTime:J

    .line 383
    iput v7, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mDuration:F

    .line 385
    iget v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mEdgeAlpha:F

    iput v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mEdgeAlphaStart:F

    .line 386
    iget v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mEdgeScaleY:F

    iput v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mEdgeScaleYStart:F

    .line 387
    iget v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mGlowAlpha:F

    iput v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mGlowAlphaStart:F

    .line 388
    iget v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mGlowScaleY:F

    iput v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mGlowScaleYStart:F

    .line 391
    iput v9, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mEdgeAlphaFinish:F

    .line 392
    iput v9, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mEdgeScaleYFinish:F

    .line 393
    iput v9, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mGlowAlphaFinish:F

    .line 394
    iput v9, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mGlowScaleYFinish:F

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)Z
    .locals 9

    .line 312
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/EdgeEffect;->update()V

    .line 314
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mEdge:Lcn/nubia/gallery3d/ui/EdgeEffect$Drawable;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/EdgeEffect$Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 315
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mEdge:Lcn/nubia/gallery3d/ui/EdgeEffect$Drawable;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/EdgeEffect$Drawable;->getIntrinsicWidth()I

    .line 316
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mGlow:Lcn/nubia/gallery3d/ui/EdgeEffect$Drawable;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/EdgeEffect$Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 317
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mGlow:Lcn/nubia/gallery3d/ui/EdgeEffect$Drawable;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/ui/EdgeEffect$Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 319
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mGlow:Lcn/nubia/gallery3d/ui/EdgeEffect$Drawable;

    iget v4, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mGlowAlpha:F

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/4 v6, 0x0

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v4, v7

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcn/nubia/gallery3d/ui/EdgeEffect$Drawable;->setAlpha(I)V

    int-to-float v1, v1

    .line 321
    iget v3, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mGlowScaleY:F

    mul-float/2addr v3, v1

    mul-float/2addr v3, v1

    int-to-float v2, v2

    div-float/2addr v3, v2

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v3, v2

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    .line 324
    iget v2, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mWidth:I

    iget v3, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mMinWidth:I

    const/4 v4, 0x0

    if-ge v2, v3, :cond_0

    sub-int v3, v2, v3

    .line 326
    div-int/lit8 v3, v3, 0x2

    .line 327
    iget-object v8, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mGlow:Lcn/nubia/gallery3d/ui/EdgeEffect$Drawable;

    sub-int/2addr v2, v3

    invoke-virtual {v8, v3, v4, v2, v1}, Lcn/nubia/gallery3d/ui/EdgeEffect$Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 330
    :cond_0
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mGlow:Lcn/nubia/gallery3d/ui/EdgeEffect$Drawable;

    invoke-virtual {v3, v4, v4, v2, v1}, Lcn/nubia/gallery3d/ui/EdgeEffect$Drawable;->setBounds(IIII)V

    .line 333
    :goto_0
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mGlow:Lcn/nubia/gallery3d/ui/EdgeEffect$Drawable;

    invoke-virtual {v1, p1}, Lcn/nubia/gallery3d/ui/EdgeEffect$Drawable;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V

    .line 335
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mEdge:Lcn/nubia/gallery3d/ui/EdgeEffect$Drawable;

    iget v2, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mEdgeAlpha:F

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float/2addr v2, v7

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/ui/EdgeEffect$Drawable;->setAlpha(I)V

    int-to-float v0, v0

    .line 337
    iget v1, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mEdgeScaleY:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 338
    iget v1, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mWidth:I

    iget v2, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mMinWidth:I

    if-ge v1, v2, :cond_1

    sub-int v2, v1, v2

    .line 340
    div-int/lit8 v2, v2, 0x2

    .line 341
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mEdge:Lcn/nubia/gallery3d/ui/EdgeEffect$Drawable;

    sub-int/2addr v1, v2

    invoke-virtual {v3, v2, v4, v1, v0}, Lcn/nubia/gallery3d/ui/EdgeEffect$Drawable;->setBounds(IIII)V

    goto :goto_1

    .line 344
    :cond_1
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mEdge:Lcn/nubia/gallery3d/ui/EdgeEffect$Drawable;

    invoke-virtual {v2, v4, v4, v1, v0}, Lcn/nubia/gallery3d/ui/EdgeEffect$Drawable;->setBounds(IIII)V

    .line 346
    :goto_1
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mEdge:Lcn/nubia/gallery3d/ui/EdgeEffect$Drawable;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/EdgeEffect$Drawable;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V

    .line 348
    iget p1, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mState:I

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    :cond_2
    return v4
.end method

.method public finish()V
    .locals 1

    const/4 v0, 0x0

    .line 174
    iput v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mState:I

    return-void
.end method

.method public isFinished()Z
    .locals 1

    .line 166
    iget v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAbsorb(I)V
    .locals 4

    const/4 v0, 0x2

    .line 268
    iput v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mState:I

    .line 269
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v0, 0x64

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 271
    invoke-static {}, Lcn/nubia/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mStartTime:J

    int-to-float v0, p1

    const v1, 0x3cf5c28f    # 0.03f

    mul-float/2addr v0, v1

    const v1, 0x3dcccccd    # 0.1f

    add-float/2addr v0, v1

    .line 272
    iput v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mDuration:F

    const/4 v0, 0x0

    .line 276
    iput v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mEdgeAlphaStart:F

    .line 277
    iput v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mEdgeScaleYStart:F

    iput v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mEdgeScaleY:F

    const/high16 v1, 0x3f000000    # 0.5f

    .line 280
    iput v1, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mGlowAlphaStart:F

    .line 281
    iput v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mGlowScaleYStart:F

    mul-int/lit8 v0, p1, 0x8

    const/4 v2, 0x1

    .line 285
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mEdgeAlphaFinish:F

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 288
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 287
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mEdgeScaleYFinish:F

    .line 294
    div-int/lit8 v0, p1, 0x64

    mul-int/2addr v0, p1

    int-to-float v0, v0

    const v1, 0x391d4952    # 1.5E-4f

    mul-float/2addr v0, v1

    const v1, 0x3ccccccd    # 0.025f

    add-float/2addr v0, v1

    const/high16 v1, 0x3fe00000    # 1.75f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mGlowScaleYFinish:F

    .line 296
    iget v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mGlowAlphaStart:F

    mul-int/lit8 p1, p1, 0x10

    int-to-float p1, p1

    const v1, 0x3727c5ac    # 1.0E-5f

    mul-float/2addr p1, v1

    const v1, 0x3f4ccccd    # 0.8f

    .line 297
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 296
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mGlowAlphaFinish:F

    return-void
.end method

.method public onPull(F)V
    .locals 5

    .line 188
    invoke-static {}, Lcn/nubia/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v0

    .line 189
    iget v2, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    iget-wide v3, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mStartTime:J

    sub-long v3, v0, v3

    long-to-float v3, v3

    iget v4, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mDuration:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    return-void

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    .line 193
    iput v3, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mGlowScaleY:F

    .line 195
    :cond_1
    iput v4, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mState:I

    .line 197
    iput-wide v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mStartTime:J

    const/high16 v0, 0x43270000    # 167.0f

    .line 198
    iput v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mDuration:F

    .line 200
    iget v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mPullDistance:F

    add-float/2addr v0, p1

    iput v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mPullDistance:F

    .line 201
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3f19999a    # 0.6f

    const v2, 0x3f4ccccd    # 0.8f

    .line 203
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mEdgeAlphaStart:F

    iput v1, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mEdgeAlpha:F

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v4, 0x40e00000    # 7.0f

    mul-float/2addr v0, v4

    .line 205
    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 204
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mEdgeScaleYStart:F

    iput v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mEdgeScaleY:F

    .line 207
    iget v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mGlowAlpha:F

    .line 209
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v3, 0x3f8ccccd    # 1.1f

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    .line 207
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mGlowAlphaStart:F

    iput v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mGlowAlpha:F

    .line 211
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_2

    .line 212
    iget p1, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mPullDistance:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_2

    neg-float v0, v0

    .line 215
    :cond_2
    iget p1, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mPullDistance:F

    cmpl-float p1, p1, v1

    if-nez p1, :cond_3

    .line 216
    iput v1, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mGlowScaleY:F

    :cond_3
    const/high16 p1, 0x40800000    # 4.0f

    .line 220
    iget v2, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mGlowScaleY:F

    mul-float/2addr v0, v4

    add-float/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mGlowScaleYStart:F

    iput p1, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mGlowScaleY:F

    .line 223
    iget v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mEdgeAlpha:F

    iput v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mEdgeAlphaFinish:F

    .line 224
    iget v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mEdgeScaleY:F

    iput v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mEdgeScaleYFinish:F

    .line 225
    iget v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mGlowAlpha:F

    iput v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mGlowAlphaFinish:F

    .line 226
    iput p1, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mGlowScaleYFinish:F

    return-void
.end method

.method public onRelease()V
    .locals 3

    const/4 v0, 0x0

    .line 236
    iput v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mPullDistance:F

    .line 238
    iget v1, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    .line 242
    iput v1, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mState:I

    .line 243
    iget v1, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mEdgeAlpha:F

    iput v1, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mEdgeAlphaStart:F

    .line 244
    iget v1, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mEdgeScaleY:F

    iput v1, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mEdgeScaleYStart:F

    .line 245
    iget v1, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mGlowAlpha:F

    iput v1, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mGlowAlphaStart:F

    .line 246
    iget v1, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mGlowScaleY:F

    iput v1, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mGlowScaleYStart:F

    .line 248
    iput v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mEdgeAlphaFinish:F

    .line 249
    iput v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mEdgeScaleYFinish:F

    .line 250
    iput v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mGlowAlphaFinish:F

    .line 251
    iput v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mGlowScaleYFinish:F

    .line 253
    invoke-static {}, Lcn/nubia/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mStartTime:J

    const/high16 v0, 0x447a0000    # 1000.0f

    .line 254
    iput v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mDuration:F

    return-void
.end method

.method public release()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mEdge:Lcn/nubia/gallery3d/ui/EdgeEffect$Drawable;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/EdgeEffect$Drawable;->recycle()V

    .line 145
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mGlow:Lcn/nubia/gallery3d/ui/EdgeEffect$Drawable;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/EdgeEffect$Drawable;->recycle()V

    return-void
.end method

.method public setSize(II)V
    .locals 0

    .line 154
    iput p1, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mWidth:I

    .line 155
    iput p2, p0, Lcn/nubia/gallery3d/ui/EdgeEffect;->mHeight:I

    return-void
.end method
