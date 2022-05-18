.class public Lcn/nubia/gallery3d/common/OverScroller;
.super Ljava/lang/Object;
.source "OverScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;
    }
.end annotation


# static fields
.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final FLING_MODE:I = 0x1

.field private static final MAX_LIMIT_SPEED:I = 0xbb80

.field private static final SCROLL_MODE:I


# instance fields
.field private final mFlywheel:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMode:I

.field private final mScrollerX:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

.field private final mScrollerY:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0}, Lcn/nubia/gallery3d/common/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1

    const/4 v0, 0x1

    .line 61
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/gallery3d/common/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FF)V
    .locals 0

    const/4 p3, 0x1

    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/gallery3d/common/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FFZ)V
    .locals 0

    .line 115
    invoke-direct {p0, p1, p2, p5}, Lcn/nubia/gallery3d/common/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    .line 74
    new-instance p2, Lcn/nubia/gallery3d/common/Scroller$ViscousFluidInterpolator;

    invoke-direct {p2}, Lcn/nubia/gallery3d/common/Scroller$ViscousFluidInterpolator;-><init>()V

    iput-object p2, p0, Lcn/nubia/gallery3d/common/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 76
    :cond_0
    iput-object p2, p0, Lcn/nubia/gallery3d/common/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 78
    :goto_0
    iput-boolean p3, p0, Lcn/nubia/gallery3d/common/OverScroller;->mFlywheel:Z

    .line 79
    new-instance p2, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-direct {p2, p1}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerX:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    .line 80
    new-instance p2, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-direct {p2, p1}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerY:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    return-void
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .line 518
    iget-object v0, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerX:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->finish()V

    .line 519
    iget-object v0, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerY:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->finish()V

    return-void
.end method

.method public computeScrollOffset()Z
    .locals 6

    .line 300
    invoke-virtual {p0}, Lcn/nubia/gallery3d/common/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 304
    :cond_0
    iget v0, p0, Lcn/nubia/gallery3d/common/OverScroller;->mMode:I

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 322
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerX:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->access$000(Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 323
    iget-object v0, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerX:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->update()Z

    move-result v0

    if-nez v0, :cond_2

    .line 324
    iget-object v0, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerX:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->continueWhenFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 325
    iget-object v0, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerX:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->finish()V

    .line 330
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerY:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->access$000(Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 331
    iget-object v0, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerY:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->update()Z

    move-result v0

    if-nez v0, :cond_5

    .line 332
    iget-object v0, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerY:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->continueWhenFinished()Z

    move-result v0

    if-nez v0, :cond_5

    .line 333
    iget-object v0, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerY:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->finish()V

    goto :goto_0

    .line 306
    :cond_3
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 309
    iget-object v0, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerX:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->access$600(Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 311
    iget-object v0, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerX:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->access$500(Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;)I

    move-result v0

    int-to-long v4, v0

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 313
    iget-object v4, p0, Lcn/nubia/gallery3d/common/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    long-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    invoke-interface {v4, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 314
    iget-object v2, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerX:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v2, v0}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->updateScroll(F)V

    .line 315
    iget-object v2, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerY:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v2, v0}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->updateScroll(F)V

    goto :goto_0

    .line 317
    :cond_4
    invoke-virtual {p0}, Lcn/nubia/gallery3d/common/OverScroller;->abortAnimation()V

    :cond_5
    :goto_0
    return v1
.end method

.method public extendDuration(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 255
    iget-object v0, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerX:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->extendDuration(I)V

    .line 256
    iget-object v0, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerY:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->extendDuration(I)V

    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 11

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 404
    invoke-virtual/range {v0 .. v10}, Lcn/nubia/gallery3d/common/OverScroller;->fling(IIIIIIIIII)V

    return-void
.end method

.method public fling(IIIIIIIIII)V
    .locals 11

    move-object v0, p0

    .line 437
    iget-boolean v1, v0, Lcn/nubia/gallery3d/common/OverScroller;->mFlywheel:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcn/nubia/gallery3d/common/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 438
    iget-object v1, v0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerX:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v1}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->access$200(Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;)F

    move-result v1

    .line 439
    iget-object v2, v0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerY:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v2}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->access$200(Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;)F

    move-result v2

    move v3, p3

    int-to-float v4, v3

    .line 440
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v5

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1

    move v5, p4

    int-to-float v6, v5

    .line 441
    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v7

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-nez v7, :cond_2

    add-float/2addr v4, v1

    float-to-int v1, v4

    add-float/2addr v6, v2

    float-to-int v2, v6

    move v4, v2

    goto :goto_0

    :cond_0
    move v3, p3

    :cond_1
    move v5, p4

    :cond_2
    move v1, v3

    move v4, v5

    :goto_0
    const v2, -0xbb80

    const v3, 0xbb80

    if-le v1, v3, :cond_3

    move v7, v3

    goto :goto_1

    :cond_3
    if-ge v1, v2, :cond_4

    move v7, v2

    goto :goto_1

    :cond_4
    move v7, v1

    :goto_1
    const/4 v1, 0x1

    .line 451
    iput v1, v0, Lcn/nubia/gallery3d/common/OverScroller;->mMode:I

    .line 452
    iget-object v5, v0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerX:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    move v6, p1

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p9

    invoke-virtual/range {v5 .. v10}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->fling(IIIII)V

    .line 453
    iget-object v2, v0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerY:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    move v3, p2

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p10

    invoke-virtual/range {v2 .. v7}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->fling(IIIII)V

    return-void
.end method

.method public final forceFinished(Z)V
    .locals 2

    .line 157
    iget-object v0, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerX:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    iget-object v1, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerY:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v1, p1}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->access$002(Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;Z)Z

    move-result p1

    invoke-static {v0, p1}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->access$002(Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;Z)Z

    return-void
.end method

.method public getCurrVelocity()F
    .locals 3

    .line 184
    iget-object v0, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerX:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->access$200(Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;)F

    move-result v0

    iget-object v1, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerX:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v1}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->access$200(Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;)F

    move-result v1

    mul-float/2addr v0, v1

    .line 185
    iget-object v1, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerY:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v1}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->access$200(Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;)F

    move-result v1

    iget-object v2, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerY:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v2}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->access$200(Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 186
    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public final getCurrX()I
    .locals 1

    .line 166
    iget-object v0, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerX:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->access$100(Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    .line 175
    iget-object v0, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerY:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->access$100(Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getDuration()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 236
    iget-object v0, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerX:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->access$500(Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;)I

    move-result v0

    iget-object v1, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerY:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v1}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->access$500(Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    .line 213
    iget-object v0, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerX:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->access$400(Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    .line 222
    iget-object v0, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerY:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->access$400(Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getStartX()I
    .locals 1

    .line 195
    iget-object v0, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerX:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->access$300(Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getStartY()I
    .locals 1

    .line 204
    iget-object v0, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerY:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->access$300(Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .line 145
    iget-object v0, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerX:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->access$000(Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerY:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->access$000(Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOverScrolled()Z
    .locals 1

    .line 504
    iget-object v0, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerX:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->access$000(Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerX:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    .line 505
    invoke-static {v0}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->access$700(Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerY:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    .line 506
    invoke-static {v0}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->access$000(Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerY:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    .line 507
    invoke-static {v0}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->access$700(Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;)I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScrollingInDirection(FF)Z
    .locals 3

    .line 539
    iget-object v0, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerX:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->access$400(Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;)I

    move-result v0

    iget-object v1, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerX:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v1}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->access$300(Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 540
    iget-object v1, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerY:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v1}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->access$400(Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;)I

    move-result v1

    iget-object v2, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerY:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v2}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->access$300(Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 541
    invoke-virtual {p0}, Lcn/nubia/gallery3d/common/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    .line 542
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p1

    int-to-float p2, v1

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public notifyHorizontalEdgeReached(III)V
    .locals 1

    .line 470
    iget-object v0, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerX:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->notifyEdgeReached(III)V

    return-void
.end method

.method public notifyVerticalEdgeReached(III)V
    .locals 1

    .line 487
    iget-object v0, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerY:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->notifyEdgeReached(III)V

    return-void
.end method

.method public setFinalX(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 274
    iget-object v0, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerX:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->setFinalPosition(I)V

    return-void
.end method

.method public setFinalY(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 292
    iget-object v0, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerY:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->setFinalPosition(I)V

    return-void
.end method

.method public final setFriction(F)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerX:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->setFriction(F)V

    .line 135
    iget-object v0, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerY:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->setFriction(F)V

    return-void
.end method

.method setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    if-nez p1, :cond_0

    .line 120
    new-instance p1, Lcn/nubia/gallery3d/common/Scroller$ViscousFluidInterpolator;

    invoke-direct {p1}, Lcn/nubia/gallery3d/common/Scroller$ViscousFluidInterpolator;-><init>()V

    iput-object p1, p0, Lcn/nubia/gallery3d/common/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 122
    :cond_0
    iput-object p1, p0, Lcn/nubia/gallery3d/common/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    :goto_0
    return-void
.end method

.method public springBack(IIIIII)Z
    .locals 2

    const/4 v0, 0x1

    .line 394
    iput v0, p0, Lcn/nubia/gallery3d/common/OverScroller;->mMode:I

    .line 397
    iget-object v1, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerX:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v1, p1, p3, p4}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->springback(III)Z

    move-result p1

    .line 398
    iget-object p3, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerY:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {p3, p2, p5, p6}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->springback(III)Z

    move-result p2

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public startScroll(IIII)V
    .locals 6

    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 359
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/gallery3d/common/OverScroller;->startScroll(IIIII)V

    return-void
.end method

.method public startScroll(IIIII)V
    .locals 1

    const/4 v0, 0x0

    .line 376
    iput v0, p0, Lcn/nubia/gallery3d/common/OverScroller;->mMode:I

    .line 377
    iget-object v0, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerX:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p3, p5}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->startScroll(III)V

    .line 378
    iget-object p1, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerY:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {p1, p2, p4, p5}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->startScroll(III)V

    return-void
.end method

.method public timePassed()I
    .locals 6

    .line 530
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 531
    iget-object v2, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerX:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v2}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->access$600(Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;)J

    move-result-wide v2

    iget-object v4, p0, Lcn/nubia/gallery3d/common/OverScroller;->mScrollerY:Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v4}, Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;->access$600(Lcn/nubia/gallery3d/common/OverScroller$SplineOverScroller;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
