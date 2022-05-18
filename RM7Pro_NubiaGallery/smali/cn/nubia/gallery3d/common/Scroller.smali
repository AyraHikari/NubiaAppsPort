.class public Lcn/nubia/gallery3d/common/Scroller;
.super Ljava/lang/Object;
.source "Scroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/common/Scroller$ViscousFluidInterpolator;
    }
.end annotation


# static fields
.field private static DECELERATION_RATE:F = 0.0f

.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final END_TENSION:F = 1.0f

.field private static final FLING_MODE:I = 0x1

.field private static final INFLEXION:F = 0.35f

.field private static final NB_SAMPLES:I = 0x64

.field private static final P1:F = 0.175f

.field private static final P2:F = 0.35000002f

.field private static final SCROLL_MODE:I = 0x0

.field private static final SPLINE_POSITION:[F

.field private static final SPLINE_TIME:[F

.field private static final START_TENSION:F = 0.5f


# instance fields
.field private mCurrVelocity:F

.field private mCurrX:I

.field private mCurrY:I

.field private mDeceleration:F

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDistance:I

.field private mDuration:I

.field private mDurationReciprocal:F

.field private mFinalX:I

.field private mFinalY:I

.field private mFinished:Z

.field private mFlingFriction:F

.field private mFlywheel:Z

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mMaxX:I

.field private mMaxY:I

.field private mMinX:I

.field private mMinY:I

.field private mMode:I

.field private mPhysicalCoeff:F

.field private final mPpi:F

.field private mStartTime:J

.field private mStartX:I

.field private mStartY:I

.field private mVelocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 19

    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    .line 97
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcn/nubia/gallery3d/common/Scroller;->DECELERATION_RATE:F

    const/16 v0, 0x65

    new-array v1, v0, [F

    .line 105
    sput-object v1, Lcn/nubia/gallery3d/common/Scroller;->SPLINE_POSITION:[F

    new-array v0, v0, [F

    .line 106
    sput-object v0, Lcn/nubia/gallery3d/common/Scroller;->SPLINE_TIME:[F

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    const/16 v3, 0x64

    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v2, v3, :cond_4

    int-to-float v3, v2

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v5, v3, v5

    move v3, v4

    :goto_1
    sub-float v6, v3, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v0

    const/high16 v8, 0x40400000    # 3.0f

    mul-float v9, v6, v8

    sub-float v10, v4, v6

    mul-float/2addr v9, v10

    const v11, 0x3e333333    # 0.175f

    mul-float v12, v10, v11

    const v13, 0x3eb33334    # 0.35000002f

    mul-float v14, v6, v13

    add-float/2addr v12, v14

    mul-float/2addr v12, v9

    mul-float v14, v6, v6

    mul-float/2addr v14, v6

    add-float/2addr v12, v14

    sub-float v15, v12, v5

    .line 126
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    move/from16 v16, v12

    float-to-double v11, v15

    const-wide v17, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v11, v11, v17

    if-gez v11, :cond_2

    .line 130
    sget-object v3, Lcn/nubia/gallery3d/common/Scroller;->SPLINE_POSITION:[F

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v10, v11

    add-float/2addr v10, v6

    mul-float/2addr v9, v10

    add-float/2addr v9, v14

    aput v9, v3, v2

    move v3, v4

    :goto_2
    sub-float v6, v3, v1

    div-float/2addr v6, v7

    add-float/2addr v6, v1

    mul-float v9, v6, v8

    sub-float v10, v4, v6

    mul-float/2addr v9, v10

    mul-float v12, v10, v11

    add-float/2addr v12, v6

    mul-float/2addr v12, v9

    mul-float v14, v6, v6

    mul-float/2addr v14, v6

    add-float/2addr v12, v14

    sub-float v15, v12, v5

    .line 138
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    float-to-double v7, v15

    cmpg-double v7, v7, v17

    if-gez v7, :cond_0

    .line 142
    sget-object v3, Lcn/nubia/gallery3d/common/Scroller;->SPLINE_TIME:[F

    const v7, 0x3e333333    # 0.175f

    mul-float/2addr v10, v7

    mul-float/2addr v6, v13

    add-float/2addr v10, v6

    mul-float/2addr v9, v10

    add-float/2addr v9, v14

    aput v9, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const v7, 0x3e333333    # 0.175f

    cmpl-float v8, v12, v5

    if-lez v8, :cond_1

    move v3, v6

    goto :goto_3

    :cond_1
    move v1, v6

    :goto_3
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x40400000    # 3.0f

    goto :goto_2

    :cond_2
    cmpl-float v7, v16, v5

    if-lez v7, :cond_3

    move v3, v6

    goto :goto_1

    :cond_3
    move v0, v6

    goto :goto_1

    .line 144
    :cond_4
    sget-object v0, Lcn/nubia/gallery3d/common/Scroller;->SPLINE_POSITION:[F

    sget-object v1, Lcn/nubia/gallery3d/common/Scroller;->SPLINE_TIME:[F

    aput v4, v1, v3

    aput v4, v0, v3

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 151
    invoke-direct {p0, p1, v0}, Lcn/nubia/gallery3d/common/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 2

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 160
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/gallery3d/common/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 1

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/common/Scroller;->mFlingFriction:F

    const/4 v0, 0x1

    .line 171
    iput-boolean v0, p0, Lcn/nubia/gallery3d/common/Scroller;->mFinished:Z

    if-nez p2, :cond_0

    .line 173
    new-instance p2, Lcn/nubia/gallery3d/common/Scroller$ViscousFluidInterpolator;

    invoke-direct {p2}, Lcn/nubia/gallery3d/common/Scroller$ViscousFluidInterpolator;-><init>()V

    iput-object p2, p0, Lcn/nubia/gallery3d/common/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 175
    :cond_0
    iput-object p2, p0, Lcn/nubia/gallery3d/common/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 177
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x43200000    # 160.0f

    mul-float/2addr p1, p2

    iput p1, p0, Lcn/nubia/gallery3d/common/Scroller;->mPpi:F

    .line 178
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result p1

    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/common/Scroller;->computeDeceleration(F)F

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/common/Scroller;->mDeceleration:F

    .line 179
    iput-boolean p3, p0, Lcn/nubia/gallery3d/common/Scroller;->mFlywheel:Z

    const p1, 0x3f570a3d    # 0.84f

    .line 181
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/common/Scroller;->computeDeceleration(F)F

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/common/Scroller;->mPhysicalCoeff:F

    return-void
.end method

.method private computeDeceleration(F)F
    .locals 2

    .line 197
    iget v0, p0, Lcn/nubia/gallery3d/common/Scroller;->mPpi:F

    const v1, 0x43c10b3d

    mul-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method

.method private getSplineDeceleration(F)D
    .locals 2

    .line 477
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x3eb33333    # 0.35f

    mul-float/2addr p1, v0

    iget v0, p0, Lcn/nubia/gallery3d/common/Scroller;->mFlingFriction:F

    iget v1, p0, Lcn/nubia/gallery3d/common/Scroller;->mPhysicalCoeff:F

    mul-float/2addr v0, v1

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getSplineFlingDistance(F)D
    .locals 8

    .line 487
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/common/Scroller;->getSplineDeceleration(F)D

    move-result-wide v0

    .line 488
    sget p1, Lcn/nubia/gallery3d/common/Scroller;->DECELERATION_RATE:F

    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    .line 489
    iget v4, p0, Lcn/nubia/gallery3d/common/Scroller;->mFlingFriction:F

    iget v5, p0, Lcn/nubia/gallery3d/common/Scroller;->mPhysicalCoeff:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    float-to-double v6, p1

    div-double/2addr v6, v2

    mul-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double/2addr v4, v0

    return-wide v4
.end method

.method private getSplineFlingDuration(F)I
    .locals 6

    .line 481
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/common/Scroller;->getSplineDeceleration(F)D

    move-result-wide v0

    .line 482
    sget p1, Lcn/nubia/gallery3d/common/Scroller;->DECELERATION_RATE:F

    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    div-double/2addr v0, v2

    .line 483
    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-int p1, v0

    return p1
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .line 500
    iget v0, p0, Lcn/nubia/gallery3d/common/Scroller;->mFinalX:I

    iput v0, p0, Lcn/nubia/gallery3d/common/Scroller;->mCurrX:I

    .line 501
    iget v0, p0, Lcn/nubia/gallery3d/common/Scroller;->mFinalY:I

    iput v0, p0, Lcn/nubia/gallery3d/common/Scroller;->mCurrY:I

    const/4 v0, 0x1

    .line 502
    iput-boolean v0, p0, Lcn/nubia/gallery3d/common/Scroller;->mFinished:Z

    return-void
.end method

.method public computeScrollOffset()Z
    .locals 8

    .line 301
    iget-boolean v0, p0, Lcn/nubia/gallery3d/common/Scroller;->mFinished:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 305
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/nubia/gallery3d/common/Scroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 307
    iget v1, p0, Lcn/nubia/gallery3d/common/Scroller;->mDuration:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_4

    .line 308
    iget v3, p0, Lcn/nubia/gallery3d/common/Scroller;->mMode:I

    if-eqz v3, :cond_3

    if-eq v3, v2, :cond_1

    goto/16 :goto_0

    :cond_1
    int-to-float v0, v0

    int-to-float v3, v1

    div-float/2addr v0, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v4, v0, v3

    float-to-int v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/16 v7, 0x64

    if-ge v4, v7, :cond_2

    int-to-float v5, v4

    div-float/2addr v5, v3

    add-int/lit8 v6, v4, 0x1

    int-to-float v7, v6

    div-float/2addr v7, v3

    .line 322
    sget-object v3, Lcn/nubia/gallery3d/common/Scroller;->SPLINE_POSITION:[F

    aget v4, v3, v4

    .line 323
    aget v3, v3, v6

    sub-float/2addr v3, v4

    sub-float/2addr v7, v5

    div-float v6, v3, v7

    sub-float/2addr v0, v5

    mul-float/2addr v0, v6

    add-float v5, v4, v0

    .line 328
    :cond_2
    iget v0, p0, Lcn/nubia/gallery3d/common/Scroller;->mDistance:I

    int-to-float v0, v0

    mul-float/2addr v6, v0

    int-to-float v0, v1

    div-float/2addr v6, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v6, v0

    iput v6, p0, Lcn/nubia/gallery3d/common/Scroller;->mCurrVelocity:F

    .line 330
    iget v0, p0, Lcn/nubia/gallery3d/common/Scroller;->mStartX:I

    iget v1, p0, Lcn/nubia/gallery3d/common/Scroller;->mFinalX:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/gallery3d/common/Scroller;->mCurrX:I

    .line 332
    iget v1, p0, Lcn/nubia/gallery3d/common/Scroller;->mMaxX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/common/Scroller;->mCurrX:I

    .line 333
    iget v1, p0, Lcn/nubia/gallery3d/common/Scroller;->mMinX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/common/Scroller;->mCurrX:I

    .line 335
    iget v0, p0, Lcn/nubia/gallery3d/common/Scroller;->mStartY:I

    iget v1, p0, Lcn/nubia/gallery3d/common/Scroller;->mFinalY:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/gallery3d/common/Scroller;->mCurrY:I

    .line 337
    iget v1, p0, Lcn/nubia/gallery3d/common/Scroller;->mMaxY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/common/Scroller;->mCurrY:I

    .line 338
    iget v1, p0, Lcn/nubia/gallery3d/common/Scroller;->mMinY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/common/Scroller;->mCurrY:I

    .line 340
    iget v1, p0, Lcn/nubia/gallery3d/common/Scroller;->mCurrX:I

    iget v3, p0, Lcn/nubia/gallery3d/common/Scroller;->mFinalX:I

    if-ne v1, v3, :cond_5

    iget v1, p0, Lcn/nubia/gallery3d/common/Scroller;->mFinalY:I

    if-ne v0, v1, :cond_5

    .line 341
    iput-boolean v2, p0, Lcn/nubia/gallery3d/common/Scroller;->mFinished:Z

    goto :goto_0

    .line 310
    :cond_3
    iget-object v1, p0, Lcn/nubia/gallery3d/common/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    int-to-float v0, v0

    iget v3, p0, Lcn/nubia/gallery3d/common/Scroller;->mDurationReciprocal:F

    mul-float/2addr v0, v3

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 311
    iget v1, p0, Lcn/nubia/gallery3d/common/Scroller;->mStartX:I

    iget v3, p0, Lcn/nubia/gallery3d/common/Scroller;->mDeltaX:F

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Lcn/nubia/gallery3d/common/Scroller;->mCurrX:I

    .line 312
    iget v1, p0, Lcn/nubia/gallery3d/common/Scroller;->mStartY:I

    iget v3, p0, Lcn/nubia/gallery3d/common/Scroller;->mDeltaY:F

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcn/nubia/gallery3d/common/Scroller;->mCurrY:I

    goto :goto_0

    .line 348
    :cond_4
    iget v0, p0, Lcn/nubia/gallery3d/common/Scroller;->mFinalX:I

    iput v0, p0, Lcn/nubia/gallery3d/common/Scroller;->mCurrX:I

    .line 349
    iget v0, p0, Lcn/nubia/gallery3d/common/Scroller;->mFinalY:I

    iput v0, p0, Lcn/nubia/gallery3d/common/Scroller;->mCurrY:I

    .line 350
    iput-boolean v2, p0, Lcn/nubia/gallery3d/common/Scroller;->mFinished:Z

    :cond_5
    :goto_0
    return v2
.end method

.method public extendDuration(I)V
    .locals 1

    .line 514
    invoke-virtual {p0}, Lcn/nubia/gallery3d/common/Scroller;->timePassed()I

    move-result v0

    add-int/2addr v0, p1

    .line 515
    iput v0, p0, Lcn/nubia/gallery3d/common/Scroller;->mDuration:I

    int-to-float p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    .line 516
    iput v0, p0, Lcn/nubia/gallery3d/common/Scroller;->mDurationReciprocal:F

    const/4 p1, 0x0

    .line 517
    iput-boolean p1, p0, Lcn/nubia/gallery3d/common/Scroller;->mFinished:Z

    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 6

    .line 424
    iget-boolean v0, p0, Lcn/nubia/gallery3d/common/Scroller;->mFlywheel:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/gallery3d/common/Scroller;->mFinished:Z

    if-nez v0, :cond_0

    .line 425
    invoke-virtual {p0}, Lcn/nubia/gallery3d/common/Scroller;->getCurrVelocity()F

    move-result v0

    .line 427
    iget v1, p0, Lcn/nubia/gallery3d/common/Scroller;->mFinalX:I

    iget v2, p0, Lcn/nubia/gallery3d/common/Scroller;->mStartX:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 428
    iget v2, p0, Lcn/nubia/gallery3d/common/Scroller;->mFinalY:I

    iget v3, p0, Lcn/nubia/gallery3d/common/Scroller;->mStartY:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v3, v1, v1

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    .line 429
    invoke-static {v3}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v3

    div-float/2addr v1, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v0

    mul-float/2addr v2, v0

    int-to-float v0, p3

    .line 436
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    int-to-float v3, p4

    .line 437
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v4

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    add-float/2addr v0, v1

    float-to-int p3, v0

    add-float/2addr v3, v2

    float-to-int p4, v3

    :cond_0
    const/4 v0, 0x1

    .line 443
    iput v0, p0, Lcn/nubia/gallery3d/common/Scroller;->mMode:I

    const/4 v0, 0x0

    .line 444
    iput-boolean v0, p0, Lcn/nubia/gallery3d/common/Scroller;->mFinished:Z

    mul-int v0, p3, p3

    mul-int v1, p4, p4

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 446
    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    .line 448
    iput v0, p0, Lcn/nubia/gallery3d/common/Scroller;->mVelocity:F

    .line 449
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/common/Scroller;->getSplineFlingDuration(F)I

    move-result v1

    iput v1, p0, Lcn/nubia/gallery3d/common/Scroller;->mDuration:I

    .line 450
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcn/nubia/gallery3d/common/Scroller;->mStartTime:J

    .line 451
    iput p1, p0, Lcn/nubia/gallery3d/common/Scroller;->mStartX:I

    .line 452
    iput p2, p0, Lcn/nubia/gallery3d/common/Scroller;->mStartY:I

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_1

    move p3, v2

    goto :goto_0

    :cond_1
    int-to-float p3, p3

    div-float/2addr p3, v0

    :goto_0
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    int-to-float p4, p4

    div-float v2, p4, v0

    .line 457
    :goto_1
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/common/Scroller;->getSplineFlingDistance(F)D

    move-result-wide v3

    .line 458
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result p4

    float-to-double v0, p4

    mul-double/2addr v0, v3

    double-to-int p4, v0

    iput p4, p0, Lcn/nubia/gallery3d/common/Scroller;->mDistance:I

    .line 460
    iput p5, p0, Lcn/nubia/gallery3d/common/Scroller;->mMinX:I

    .line 461
    iput p6, p0, Lcn/nubia/gallery3d/common/Scroller;->mMaxX:I

    .line 462
    iput p7, p0, Lcn/nubia/gallery3d/common/Scroller;->mMinY:I

    .line 463
    iput p8, p0, Lcn/nubia/gallery3d/common/Scroller;->mMaxY:I

    float-to-double p3, p3

    mul-double/2addr p3, v3

    .line 465
    invoke-static {p3, p4}, Ljava/lang/Math;->round(D)J

    move-result-wide p3

    long-to-int p3, p3

    add-int/2addr p1, p3

    iput p1, p0, Lcn/nubia/gallery3d/common/Scroller;->mFinalX:I

    .line 467
    iget p3, p0, Lcn/nubia/gallery3d/common/Scroller;->mMaxX:I

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/common/Scroller;->mFinalX:I

    .line 468
    iget p3, p0, Lcn/nubia/gallery3d/common/Scroller;->mMinX:I

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/common/Scroller;->mFinalX:I

    float-to-double p3, v2

    mul-double/2addr v3, p3

    .line 470
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide p3

    long-to-int p1, p3

    add-int/2addr p2, p1

    iput p2, p0, Lcn/nubia/gallery3d/common/Scroller;->mFinalY:I

    .line 472
    iget p1, p0, Lcn/nubia/gallery3d/common/Scroller;->mMaxY:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/common/Scroller;->mFinalY:I

    .line 473
    iget p2, p0, Lcn/nubia/gallery3d/common/Scroller;->mMinY:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/common/Scroller;->mFinalY:I

    return-void
.end method

.method public final forceFinished(Z)V
    .locals 0

    .line 219
    iput-boolean p1, p0, Lcn/nubia/gallery3d/common/Scroller;->mFinished:Z

    return-void
.end method

.method public getCurrVelocity()F
    .locals 3

    .line 256
    iget v0, p0, Lcn/nubia/gallery3d/common/Scroller;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcn/nubia/gallery3d/common/Scroller;->mCurrVelocity:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcn/nubia/gallery3d/common/Scroller;->mVelocity:F

    iget v1, p0, Lcn/nubia/gallery3d/common/Scroller;->mDeceleration:F

    .line 257
    invoke-virtual {p0}, Lcn/nubia/gallery3d/common/Scroller;->timePassed()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x44fa0000    # 2000.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    :goto_0
    return v0
.end method

.method public final getCurrX()I
    .locals 1

    .line 237
    iget v0, p0, Lcn/nubia/gallery3d/common/Scroller;->mCurrX:I

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    .line 246
    iget v0, p0, Lcn/nubia/gallery3d/common/Scroller;->mCurrY:I

    return v0
.end method

.method public final getDuration()I
    .locals 1

    .line 228
    iget v0, p0, Lcn/nubia/gallery3d/common/Scroller;->mDuration:I

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    .line 284
    iget v0, p0, Lcn/nubia/gallery3d/common/Scroller;->mFinalX:I

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    .line 293
    iget v0, p0, Lcn/nubia/gallery3d/common/Scroller;->mFinalY:I

    return v0
.end method

.method public final getStartX()I
    .locals 1

    .line 266
    iget v0, p0, Lcn/nubia/gallery3d/common/Scroller;->mStartX:I

    return v0
.end method

.method public final getStartY()I
    .locals 1

    .line 275
    iget v0, p0, Lcn/nubia/gallery3d/common/Scroller;->mStartY:I

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .line 210
    iget-boolean v0, p0, Lcn/nubia/gallery3d/common/Scroller;->mFinished:Z

    return v0
.end method

.method public isScrollingInDirection(FF)Z
    .locals 2

    .line 559
    iget-boolean v0, p0, Lcn/nubia/gallery3d/common/Scroller;->mFinished:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    iget v0, p0, Lcn/nubia/gallery3d/common/Scroller;->mFinalX:I

    iget v1, p0, Lcn/nubia/gallery3d/common/Scroller;->mStartX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    .line 560
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p1

    iget p2, p0, Lcn/nubia/gallery3d/common/Scroller;->mFinalY:I

    iget v0, p0, Lcn/nubia/gallery3d/common/Scroller;->mStartY:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

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

.method public setFinalX(I)V
    .locals 1

    .line 537
    iput p1, p0, Lcn/nubia/gallery3d/common/Scroller;->mFinalX:I

    .line 538
    iget v0, p0, Lcn/nubia/gallery3d/common/Scroller;->mStartX:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcn/nubia/gallery3d/common/Scroller;->mDeltaX:F

    const/4 p1, 0x0

    .line 539
    iput-boolean p1, p0, Lcn/nubia/gallery3d/common/Scroller;->mFinished:Z

    return-void
.end method

.method public setFinalY(I)V
    .locals 1

    .line 550
    iput p1, p0, Lcn/nubia/gallery3d/common/Scroller;->mFinalY:I

    .line 551
    iget v0, p0, Lcn/nubia/gallery3d/common/Scroller;->mStartY:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcn/nubia/gallery3d/common/Scroller;->mDeltaY:F

    const/4 p1, 0x0

    .line 552
    iput-boolean p1, p0, Lcn/nubia/gallery3d/common/Scroller;->mFinished:Z

    return-void
.end method

.method public final setFriction(F)V
    .locals 1

    .line 192
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/common/Scroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/common/Scroller;->mDeceleration:F

    .line 193
    iput p1, p0, Lcn/nubia/gallery3d/common/Scroller;->mFlingFriction:F

    return-void
.end method

.method public startScroll(IIII)V
    .locals 6

    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 370
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/gallery3d/common/Scroller;->startScroll(IIIII)V

    return-void
.end method

.method public startScroll(IIIII)V
    .locals 2

    const/4 v0, 0x0

    .line 388
    iput v0, p0, Lcn/nubia/gallery3d/common/Scroller;->mMode:I

    .line 389
    iput-boolean v0, p0, Lcn/nubia/gallery3d/common/Scroller;->mFinished:Z

    .line 390
    iput p5, p0, Lcn/nubia/gallery3d/common/Scroller;->mDuration:I

    .line 391
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/gallery3d/common/Scroller;->mStartTime:J

    .line 392
    iput p1, p0, Lcn/nubia/gallery3d/common/Scroller;->mStartX:I

    .line 393
    iput p2, p0, Lcn/nubia/gallery3d/common/Scroller;->mStartY:I

    add-int/2addr p1, p3

    .line 394
    iput p1, p0, Lcn/nubia/gallery3d/common/Scroller;->mFinalX:I

    add-int/2addr p2, p4

    .line 395
    iput p2, p0, Lcn/nubia/gallery3d/common/Scroller;->mFinalY:I

    int-to-float p1, p3

    .line 396
    iput p1, p0, Lcn/nubia/gallery3d/common/Scroller;->mDeltaX:F

    int-to-float p1, p4

    .line 397
    iput p1, p0, Lcn/nubia/gallery3d/common/Scroller;->mDeltaY:F

    .line 398
    iget p1, p0, Lcn/nubia/gallery3d/common/Scroller;->mDuration:I

    int-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    div-float/2addr p2, p1

    iput p2, p0, Lcn/nubia/gallery3d/common/Scroller;->mDurationReciprocal:F

    return-void
.end method

.method public timePassed()I
    .locals 4

    .line 526
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/nubia/gallery3d/common/Scroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
