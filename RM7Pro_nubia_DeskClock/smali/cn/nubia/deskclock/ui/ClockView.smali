.class public abstract Lcn/nubia/deskclock/ui/ClockView;
.super Landroid/widget/RelativeLayout;
.source "ClockView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deskclock/ui/ClockView$TimeRunnable;
    }
.end annotation


# instance fields
.field private lastDialAngel:F

.field private lastHourAngle:F

.field private lastMinAngle:F

.field private mAnimatorSecHandAngle:F

.field protected mClockBackgroundImage:Lcn/nubia/deskclock/ui/ClockImage;

.field private mClockBgScaleValue:F

.field private mCloseAnimatorSet:Landroid/animation/AnimatorSet;

.field protected mDialImage:Lcn/nubia/deskclock/ui/ClockImage;

.field private mDialScaleValue:F

.field private mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field private mDstRectF:Landroid/graphics/RectF;

.field protected mEnableDraw:Z

.field private mEnterAnimatorSet:Landroid/animation/AnimatorSet;

.field public mForceStop:Z

.field protected mHandMarkImage:Lcn/nubia/deskclock/ui/ClockImage;

.field protected mHandMarkSmallImage:Lcn/nubia/deskclock/ui/ClockImage;

.field protected mHeight:F

.field protected mHeightRatio:F

.field protected mHourBasePointDistance:F

.field private mHourCurr:I

.field protected mHourHandImage:Lcn/nubia/deskclock/ui/ClockImage;

.field private mHourHandScaleValue:F

.field private final mMarginOfDial:I

.field protected mMinBasePointDistance:F

.field private mMinCurr:I

.field protected mMinHandImage:Lcn/nubia/deskclock/ui/ClockImage;

.field private mMinHandScaleValue:F

.field protected mNextAlarmPointImage:Lcn/nubia/deskclock/ui/ClockImage;

.field protected mOuterCircleImage:Lcn/nubia/deskclock/ui/ClockImage;

.field private mOuterCircleScaleValue:F

.field private mScale:F

.field private mSecAngleTemp:F

.field private mSecAngleTemp1:F

.field protected mSecBasePointDistance:F

.field private mSecCurr:I

.field protected mSecHandImage:Lcn/nubia/deskclock/ui/ClockImage;

.field private mSecHandRunningAnim:Landroid/animation/ValueAnimator;

.field private mSecHandScaleValue:F

.field protected mSecondHandleImage:Lcn/nubia/deskclock/ui/ClockImage;

.field private mSrcRect:Landroid/graphics/Rect;

.field private mTimeRunnable:Ljava/lang/Runnable;

.field protected mTimeTableImage:Lcn/nubia/deskclock/ui/ClockImage;

.field protected mWidth:F

.field protected mWidthRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    iput v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mScale:F

    .line 34
    iput v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidthRatio:F

    iput v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mHeightRatio:F

    .line 51
    iput v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mAnimatorSecHandAngle:F

    .line 52
    iput v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mDialScaleValue:F

    .line 53
    iput v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mOuterCircleScaleValue:F

    .line 54
    iput v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mClockBgScaleValue:F

    .line 55
    iput v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mMinHandScaleValue:F

    .line 56
    iput v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mHourHandScaleValue:F

    .line 57
    iput v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mSecHandScaleValue:F

    .line 58
    iput v2, p0, Lcn/nubia/deskclock/ui/ClockView;->lastHourAngle:F

    .line 59
    iput v2, p0, Lcn/nubia/deskclock/ui/ClockView;->lastMinAngle:F

    .line 60
    iput v0, p0, Lcn/nubia/deskclock/ui/ClockView;->lastDialAngel:F

    .line 69
    iput-boolean v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mEnableDraw:Z

    .line 70
    const/16 v0, 0x30

    iput v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mMarginOfDial:I

    .line 72
    iput-boolean v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mForceStop:Z

    .line 76
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/ClockView;->init()V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mScale:F

    .line 34
    iput v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidthRatio:F

    iput v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mHeightRatio:F

    .line 51
    iput v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mAnimatorSecHandAngle:F

    .line 52
    iput v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mDialScaleValue:F

    .line 53
    iput v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mOuterCircleScaleValue:F

    .line 54
    iput v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mClockBgScaleValue:F

    .line 55
    iput v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mMinHandScaleValue:F

    .line 56
    iput v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mHourHandScaleValue:F

    .line 57
    iput v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mSecHandScaleValue:F

    .line 58
    iput v2, p0, Lcn/nubia/deskclock/ui/ClockView;->lastHourAngle:F

    .line 59
    iput v2, p0, Lcn/nubia/deskclock/ui/ClockView;->lastMinAngle:F

    .line 60
    iput v0, p0, Lcn/nubia/deskclock/ui/ClockView;->lastDialAngel:F

    .line 69
    iput-boolean v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mEnableDraw:Z

    .line 70
    const/16 v0, 0x30

    iput v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mMarginOfDial:I

    .line 72
    iput-boolean v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mForceStop:Z

    .line 81
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/ClockView;->init()V

    .line 82
    return-void
.end method

.method static synthetic access$100(Lcn/nubia/deskclock/ui/ClockView;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/ClockView;

    .prologue
    .line 30
    iget v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mSecCurr:I

    return v0
.end method

.method static synthetic access$1002(Lcn/nubia/deskclock/ui/ClockView;F)F
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/ClockView;
    .param p1, "x1"    # F

    .prologue
    .line 30
    iput p1, p0, Lcn/nubia/deskclock/ui/ClockView;->mSecHandScaleValue:F

    return p1
.end method

.method static synthetic access$102(Lcn/nubia/deskclock/ui/ClockView;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/ClockView;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcn/nubia/deskclock/ui/ClockView;->mSecCurr:I

    return p1
.end method

.method static synthetic access$1100(Lcn/nubia/deskclock/ui/ClockView;)F
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/ClockView;

    .prologue
    .line 30
    iget v0, p0, Lcn/nubia/deskclock/ui/ClockView;->lastMinAngle:F

    return v0
.end method

.method static synthetic access$1102(Lcn/nubia/deskclock/ui/ClockView;F)F
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/ClockView;
    .param p1, "x1"    # F

    .prologue
    .line 30
    iput p1, p0, Lcn/nubia/deskclock/ui/ClockView;->lastMinAngle:F

    return p1
.end method

.method static synthetic access$1200(Lcn/nubia/deskclock/ui/ClockView;II)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/ClockView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcn/nubia/deskclock/ui/ClockView;->calculateMinHandsCurrAngle(II)V

    return-void
.end method

.method static synthetic access$1300(Lcn/nubia/deskclock/ui/ClockView;)F
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/ClockView;

    .prologue
    .line 30
    iget v0, p0, Lcn/nubia/deskclock/ui/ClockView;->lastHourAngle:F

    return v0
.end method

.method static synthetic access$1302(Lcn/nubia/deskclock/ui/ClockView;F)F
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/ClockView;
    .param p1, "x1"    # F

    .prologue
    .line 30
    iput p1, p0, Lcn/nubia/deskclock/ui/ClockView;->lastHourAngle:F

    return p1
.end method

.method static synthetic access$1400(Lcn/nubia/deskclock/ui/ClockView;III)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/ClockView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/deskclock/ui/ClockView;->calculateHourHandsCurrAngle(III)V

    return-void
.end method

.method static synthetic access$1502(Lcn/nubia/deskclock/ui/ClockView;F)F
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/ClockView;
    .param p1, "x1"    # F

    .prologue
    .line 30
    iput p1, p0, Lcn/nubia/deskclock/ui/ClockView;->mAnimatorSecHandAngle:F

    return p1
.end method

.method static synthetic access$1600(Lcn/nubia/deskclock/ui/ClockView;J)F
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/ClockView;
    .param p1, "x1"    # J

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcn/nubia/deskclock/ui/ClockView;->getSecAngle(J)F

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcn/nubia/deskclock/ui/ClockView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/ClockView;

    .prologue
    .line 30
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/ClockView;->calculateHandsCurrAngle()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/deskclock/ui/ClockView;)F
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/ClockView;

    .prologue
    .line 30
    iget v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mSecAngleTemp:F

    return v0
.end method

.method static synthetic access$302(Lcn/nubia/deskclock/ui/ClockView;F)F
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/ClockView;
    .param p1, "x1"    # F

    .prologue
    .line 30
    iput p1, p0, Lcn/nubia/deskclock/ui/ClockView;->mSecAngleTemp:F

    return p1
.end method

.method static synthetic access$402(Lcn/nubia/deskclock/ui/ClockView;F)F
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/ClockView;
    .param p1, "x1"    # F

    .prologue
    .line 30
    iput p1, p0, Lcn/nubia/deskclock/ui/ClockView;->mOuterCircleScaleValue:F

    return p1
.end method

.method static synthetic access$500(Lcn/nubia/deskclock/ui/ClockView;)F
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/ClockView;

    .prologue
    .line 30
    iget v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mDialScaleValue:F

    return v0
.end method

.method static synthetic access$502(Lcn/nubia/deskclock/ui/ClockView;F)F
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/ClockView;
    .param p1, "x1"    # F

    .prologue
    .line 30
    iput p1, p0, Lcn/nubia/deskclock/ui/ClockView;->mDialScaleValue:F

    return p1
.end method

.method static synthetic access$600(Lcn/nubia/deskclock/ui/ClockView;)F
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/ClockView;

    .prologue
    .line 30
    iget v0, p0, Lcn/nubia/deskclock/ui/ClockView;->lastDialAngel:F

    return v0
.end method

.method static synthetic access$602(Lcn/nubia/deskclock/ui/ClockView;F)F
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/ClockView;
    .param p1, "x1"    # F

    .prologue
    .line 30
    iput p1, p0, Lcn/nubia/deskclock/ui/ClockView;->lastDialAngel:F

    return p1
.end method

.method static synthetic access$702(Lcn/nubia/deskclock/ui/ClockView;F)F
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/ClockView;
    .param p1, "x1"    # F

    .prologue
    .line 30
    iput p1, p0, Lcn/nubia/deskclock/ui/ClockView;->mClockBgScaleValue:F

    return p1
.end method

.method static synthetic access$802(Lcn/nubia/deskclock/ui/ClockView;F)F
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/ClockView;
    .param p1, "x1"    # F

    .prologue
    .line 30
    iput p1, p0, Lcn/nubia/deskclock/ui/ClockView;->mMinHandScaleValue:F

    return p1
.end method

.method static synthetic access$902(Lcn/nubia/deskclock/ui/ClockView;F)F
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/ClockView;
    .param p1, "x1"    # F

    .prologue
    .line 30
    iput p1, p0, Lcn/nubia/deskclock/ui/ClockView;->mHourHandScaleValue:F

    return p1
.end method

.method private buildHandsAndDialCloseAnimatorSet()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x64

    const/16 v9, 0x64

    const/4 v8, 0x4

    const/4 v10, 0x2

    .line 623
    iget-object v7, p0, Lcn/nubia/deskclock/ui/ClockView;->mHandMarkImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v7, v7, Lcn/nubia/deskclock/ui/ClockImage;->mImageView:Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    .line 624
    iget-object v7, p0, Lcn/nubia/deskclock/ui/ClockView;->mHandMarkImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v7, v7, Lcn/nubia/deskclock/ui/ClockImage;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 626
    :cond_0
    new-array v0, v10, [F

    fill-array-data v0, :array_0

    .line 629
    .local v0, "alphaValues":[F
    iget-object v7, p0, Lcn/nubia/deskclock/ui/ClockView;->mMinHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    invoke-direct {p0, v0, v7, v9}, Lcn/nubia/deskclock/ui/ClockView;->createAlphaAnimator([FLcn/nubia/deskclock/ui/ClockImage;I)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 630
    .local v5, "minCloseAlphaAnim":Landroid/animation/ValueAnimator;
    iget-object v7, p0, Lcn/nubia/deskclock/ui/ClockView;->mHourHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    invoke-direct {p0, v0, v7, v9}, Lcn/nubia/deskclock/ui/ClockView;->createAlphaAnimator([FLcn/nubia/deskclock/ui/ClockImage;I)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 632
    .local v3, "hourCloseAlphaAnim":Landroid/animation/ValueAnimator;
    new-array v2, v10, [F

    fill-array-data v2, :array_1

    .line 635
    .local v2, "angleValues":[F
    new-array v1, v8, [F

    fill-array-data v1, :array_2

    .line 639
    .local v1, "anglePathValues":[F
    iget-object v7, p0, Lcn/nubia/deskclock/ui/ClockView;->mMinHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    invoke-direct {p0, v2, v1, v7}, Lcn/nubia/deskclock/ui/ClockView;->createRotateAnimator([F[FLcn/nubia/deskclock/ui/ClockImage;)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 641
    .local v6, "minCloseRotateAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v6, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 643
    iget-object v7, p0, Lcn/nubia/deskclock/ui/ClockView;->mHourHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    invoke-direct {p0, v2, v1, v7}, Lcn/nubia/deskclock/ui/ClockView;->createRotateAnimator([F[FLcn/nubia/deskclock/ui/ClockImage;)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 645
    .local v4, "hourCloseRotateAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v4, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 647
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lcn/nubia/deskclock/ui/ClockView;->mCloseAnimatorSet:Landroid/animation/AnimatorSet;

    .line 648
    iget-object v7, p0, Lcn/nubia/deskclock/ui/ClockView;->mCloseAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v8, v8, [Landroid/animation/Animator;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v9, 0x1

    aput-object v3, v8, v9

    aput-object v6, v8, v10

    const/4 v9, 0x3

    aput-object v4, v8, v9

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 651
    return-void

    .line 626
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 632
    :array_1
    .array-data 4
        0x0
        0x42700000    # 60.0f
    .end array-data

    .line 635
    :array_2
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private buildHandsAndDialEnterAnimatorSet(Z)V
    .locals 39
    .param p1, "isDelay"    # Z

    .prologue
    .line 321
    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v4, v0, [F

    fill-array-data v4, :array_0

    .line 324
    .local v4, "alphaValues":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockView;->mTimeTableImage:Lcn/nubia/deskclock/ui/ClockImage;

    move-object/from16 v34, v0

    const/16 v35, 0xfa

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-direct {v0, v4, v1, v2}, Lcn/nubia/deskclock/ui/ClockView;->createAlphaAnimator([FLcn/nubia/deskclock/ui/ClockImage;I)Landroid/animation/ValueAnimator;

    move-result-object v33

    .line 325
    .local v33, "timeTableEnterAlphaAnim":Landroid/animation/ValueAnimator;
    invoke-virtual/range {v33 .. v33}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 326
    new-instance v34, Lcn/nubia/deskclock/ui/ClockView$2;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcn/nubia/deskclock/ui/ClockView$2;-><init>(Lcn/nubia/deskclock/ui/ClockView;)V

    invoke-virtual/range {v33 .. v34}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 334
    const-wide/16 v34, 0x15e

    invoke-virtual/range {v33 .. v35}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockView;->mOuterCircleImage:Lcn/nubia/deskclock/ui/ClockImage;

    move-object/from16 v34, v0

    const/16 v35, 0x258

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-direct {v0, v4, v1, v2}, Lcn/nubia/deskclock/ui/ClockView;->createAlphaAnimator([FLcn/nubia/deskclock/ui/ClockImage;I)Landroid/animation/ValueAnimator;

    move-result-object v24

    .line 337
    .local v24, "outerCircleEnterAlphaAnim":Landroid/animation/ValueAnimator;
    invoke-virtual/range {v24 .. v24}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 338
    new-instance v34, Lcn/nubia/deskclock/ui/ClockView$3;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcn/nubia/deskclock/ui/ClockView$3;-><init>(Lcn/nubia/deskclock/ui/ClockView;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 347
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v14

    .line 348
    .local v14, "handMarkEnterAlphaAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v34, 0x12c

    move-wide/from16 v0, v34

    invoke-virtual {v14, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 349
    new-instance v34, Lcn/nubia/deskclock/ui/ClockView$4;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcn/nubia/deskclock/ui/ClockView$4;-><init>(Lcn/nubia/deskclock/ui/ClockView;)V

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 357
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v15

    .line 358
    .local v15, "handMarkSmallEnterAlphaAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v34, 0x12c

    move-wide/from16 v0, v34

    invoke-virtual {v15, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 359
    new-instance v34, Lcn/nubia/deskclock/ui/ClockView$5;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcn/nubia/deskclock/ui/ClockView$5;-><init>(Lcn/nubia/deskclock/ui/ClockView;)V

    move-object/from16 v0, v34

    invoke-virtual {v15, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockView;->mClockBackgroundImage:Lcn/nubia/deskclock/ui/ClockImage;

    move-object/from16 v34, v0

    const/16 v35, 0x1f4

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-direct {v0, v4, v1, v2}, Lcn/nubia/deskclock/ui/ClockView;->createAlphaAnimator([FLcn/nubia/deskclock/ui/ClockImage;I)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 369
    .local v6, "clockBackgroundEnterAlphaAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v34, 0x64

    move-wide/from16 v0, v34

    invoke-virtual {v6, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 370
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 371
    new-instance v34, Lcn/nubia/deskclock/ui/ClockView$6;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcn/nubia/deskclock/ui/ClockView$6;-><init>(Lcn/nubia/deskclock/ui/ClockView;)V

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockView;->mMinHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    move-object/from16 v34, v0

    const/16 v35, 0x258

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-direct {v0, v4, v1, v2}, Lcn/nubia/deskclock/ui/ClockView;->createAlphaAnimator([FLcn/nubia/deskclock/ui/ClockImage;I)Landroid/animation/ValueAnimator;

    move-result-object v21

    .line 381
    .local v21, "minEnterAlphaAnim":Landroid/animation/ValueAnimator;
    invoke-virtual/range {v21 .. v21}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 382
    new-instance v34, Lcn/nubia/deskclock/ui/ClockView$7;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcn/nubia/deskclock/ui/ClockView$7;-><init>(Lcn/nubia/deskclock/ui/ClockView;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockView;->mHourHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    move-object/from16 v34, v0

    const/16 v35, 0x258

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-direct {v0, v4, v1, v2}, Lcn/nubia/deskclock/ui/ClockView;->createAlphaAnimator([FLcn/nubia/deskclock/ui/ClockImage;I)Landroid/animation/ValueAnimator;

    move-result-object v17

    .line 393
    .local v17, "hourEnterAlphaAnim":Landroid/animation/ValueAnimator;
    invoke-virtual/range {v17 .. v17}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 394
    new-instance v34, Lcn/nubia/deskclock/ui/ClockView$8;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcn/nubia/deskclock/ui/ClockView$8;-><init>(Lcn/nubia/deskclock/ui/ClockView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockView;->mSecondHandleImage:Lcn/nubia/deskclock/ui/ClockImage;

    move-object/from16 v34, v0

    const/16 v35, 0x258

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-direct {v0, v4, v1, v2}, Lcn/nubia/deskclock/ui/ClockView;->createAlphaAnimator([FLcn/nubia/deskclock/ui/ClockImage;I)Landroid/animation/ValueAnimator;

    move-result-object v32

    .line 405
    .local v32, "secHandleAlphaAnim":Landroid/animation/ValueAnimator;
    invoke-virtual/range {v32 .. v32}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 406
    new-instance v34, Lcn/nubia/deskclock/ui/ClockView$9;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcn/nubia/deskclock/ui/ClockView$9;-><init>(Lcn/nubia/deskclock/ui/ClockView;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockView;->mDialImage:Lcn/nubia/deskclock/ui/ClockImage;

    move-object/from16 v34, v0

    const/16 v35, 0x1f4

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-direct {v0, v4, v1, v2}, Lcn/nubia/deskclock/ui/ClockView;->createAlphaAnimator([FLcn/nubia/deskclock/ui/ClockImage;I)Landroid/animation/ValueAnimator;

    move-result-object v8

    .line 417
    .local v8, "dialEnterAlphaAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 418
    const-wide/16 v34, 0x64

    move-wide/from16 v0, v34

    invoke-virtual {v8, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 419
    new-instance v34, Lcn/nubia/deskclock/ui/ClockView$10;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcn/nubia/deskclock/ui/ClockView$10;-><init>(Lcn/nubia/deskclock/ui/ClockView;)V

    move-object/from16 v0, v34

    invoke-virtual {v8, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 430
    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [F

    move-object/from16 v28, v0

    fill-array-data v28, :array_1

    .line 431
    .local v28, "scaleValues":[F
    const/16 v34, 0x4

    move/from16 v0, v34

    new-array v0, v0, [F

    move-object/from16 v27, v0

    fill-array-data v27, :array_2

    .line 432
    .local v27, "scalePathValues":[F
    const/16 v34, 0x4

    move/from16 v0, v34

    new-array v0, v0, [F

    move-object/from16 v26, v0

    fill-array-data v26, :array_3

    .line 433
    .local v26, "scaleColorCirlePathValues":[F
    const/16 v34, 0x4

    move/from16 v0, v34

    new-array v9, v0, [F

    fill-array-data v9, :array_4

    .line 434
    .local v9, "dialEnterPathValues":[F
    invoke-static/range {v28 .. v28}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v25

    .line 435
    .local v25, "outerCircleEnterScaleAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v34, 0x1f4

    move-object/from16 v0, v25

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 436
    new-instance v34, Landroid/view/animation/PathInterpolator;

    const/16 v35, 0x0

    aget v35, v27, v35

    const/16 v36, 0x1

    aget v36, v27, v36

    const/16 v37, 0x2

    aget v37, v27, v37

    const/16 v38, 0x3

    aget v38, v27, v38

    invoke-direct/range {v34 .. v38}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 438
    new-instance v34, Lcn/nubia/deskclock/ui/ClockView$11;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcn/nubia/deskclock/ui/ClockView$11;-><init>(Lcn/nubia/deskclock/ui/ClockView;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 446
    invoke-static/range {v28 .. v28}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v11

    .line 447
    .local v11, "dialEnterScaleAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v34, 0x1f4

    move-wide/from16 v0, v34

    invoke-virtual {v11, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 448
    const-wide/16 v34, 0x64

    move-wide/from16 v0, v34

    invoke-virtual {v11, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 449
    new-instance v34, Landroid/view/animation/PathInterpolator;

    const/16 v35, 0x0

    aget v35, v9, v35

    const/16 v36, 0x1

    aget v36, v9, v36

    const/16 v37, 0x2

    aget v37, v9, v37

    const/16 v38, 0x3

    aget v38, v9, v38

    invoke-direct/range {v34 .. v38}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 451
    new-instance v34, Lcn/nubia/deskclock/ui/ClockView$12;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcn/nubia/deskclock/ui/ClockView$12;-><init>(Lcn/nubia/deskclock/ui/ClockView;)V

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 463
    invoke-static/range {v28 .. v28}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 464
    .local v7, "clockBgEnterScaleAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v34, 0x1f4

    move-wide/from16 v0, v34

    invoke-virtual {v7, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 465
    const-wide/16 v34, 0x64

    move-wide/from16 v0, v34

    invoke-virtual {v7, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 466
    new-instance v34, Landroid/view/animation/PathInterpolator;

    const/16 v35, 0x0

    aget v35, v26, v35

    const/16 v36, 0x1

    aget v36, v26, v36

    const/16 v37, 0x2

    aget v37, v26, v37

    const/16 v38, 0x3

    aget v38, v26, v38

    invoke-direct/range {v34 .. v38}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object/from16 v0, v34

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 468
    new-instance v34, Lcn/nubia/deskclock/ui/ClockView$13;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcn/nubia/deskclock/ui/ClockView$13;-><init>(Lcn/nubia/deskclock/ui/ClockView;)V

    move-object/from16 v0, v34

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 476
    invoke-static/range {v28 .. v28}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v23

    .line 477
    .local v23, "minHandEnterScaleAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v34, 0x258

    move-object/from16 v0, v23

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 478
    new-instance v34, Landroid/view/animation/PathInterpolator;

    const/16 v35, 0x0

    aget v35, v26, v35

    const/16 v36, 0x1

    aget v36, v26, v36

    const/16 v37, 0x2

    aget v37, v26, v37

    const/16 v38, 0x3

    aget v38, v26, v38

    invoke-direct/range {v34 .. v38}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 480
    new-instance v34, Lcn/nubia/deskclock/ui/ClockView$14;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcn/nubia/deskclock/ui/ClockView$14;-><init>(Lcn/nubia/deskclock/ui/ClockView;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 487
    invoke-static/range {v28 .. v28}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v19

    .line 488
    .local v19, "hourHandEnterScaleAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v34, 0x258

    move-object/from16 v0, v19

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 489
    new-instance v34, Landroid/view/animation/PathInterpolator;

    const/16 v35, 0x0

    aget v35, v26, v35

    const/16 v36, 0x1

    aget v36, v26, v36

    const/16 v37, 0x2

    aget v37, v26, v37

    const/16 v38, 0x3

    aget v38, v26, v38

    invoke-direct/range {v34 .. v38}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 491
    new-instance v34, Lcn/nubia/deskclock/ui/ClockView$15;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcn/nubia/deskclock/ui/ClockView$15;-><init>(Lcn/nubia/deskclock/ui/ClockView;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 499
    invoke-static/range {v28 .. v28}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v31

    .line 500
    .local v31, "secHandEnterScaleAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v34, 0x258

    move-object/from16 v0, v31

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 501
    new-instance v34, Landroid/view/animation/PathInterpolator;

    const/16 v35, 0x0

    aget v35, v26, v35

    const/16 v36, 0x1

    aget v36, v26, v36

    const/16 v37, 0x2

    aget v37, v26, v37

    const/16 v38, 0x3

    aget v38, v26, v38

    invoke-direct/range {v34 .. v38}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 503
    new-instance v34, Lcn/nubia/deskclock/ui/ClockView$16;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcn/nubia/deskclock/ui/ClockView$16;-><init>(Lcn/nubia/deskclock/ui/ClockView;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 512
    const/16 v34, 0x4

    move/from16 v0, v34

    new-array v5, v0, [F

    fill-array-data v5, :array_5

    .line 515
    .local v5, "anglePathValues":[F
    const/16 v34, 0x4

    move/from16 v0, v34

    new-array v12, v0, [F

    fill-array-data v12, :array_6

    .line 521
    .local v12, "dialPathValues":[F
    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v13, v0, [F

    fill-array-data v13, :array_7

    .line 525
    .local v13, "dialValues":[F
    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [F

    move-object/from16 v20, v0

    fill-array-data v20, :array_8

    .line 528
    .local v20, "minAngleValues":[F
    invoke-static {v13}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v10

    .line 529
    .local v10, "dialEnterRotateAnim":Landroid/animation/ValueAnimator;
    new-instance v34, Landroid/view/animation/PathInterpolator;

    const/16 v35, 0x0

    aget v35, v12, v35

    const/16 v36, 0x1

    aget v36, v12, v36

    const/16 v37, 0x2

    aget v37, v12, v37

    const/16 v38, 0x3

    aget v38, v12, v38

    invoke-direct/range {v34 .. v38}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object/from16 v0, v34

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 530
    const-wide/16 v34, 0x1f4

    move-wide/from16 v0, v34

    invoke-virtual {v10, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 531
    const-wide/16 v34, 0x64

    move-wide/from16 v0, v34

    invoke-virtual {v10, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 532
    new-instance v34, Lcn/nubia/deskclock/ui/ClockView$17;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcn/nubia/deskclock/ui/ClockView$17;-><init>(Lcn/nubia/deskclock/ui/ClockView;)V

    move-object/from16 v0, v34

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 540
    new-instance v34, Lcn/nubia/deskclock/ui/ClockView$18;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcn/nubia/deskclock/ui/ClockView$18;-><init>(Lcn/nubia/deskclock/ui/ClockView;)V

    move-object/from16 v0, v34

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 546
    invoke-static/range {v20 .. v20}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v22

    .line 547
    .local v22, "minEnterRotateAnim":Landroid/animation/ValueAnimator;
    new-instance v34, Landroid/view/animation/PathInterpolator;

    const/16 v35, 0x0

    aget v35, v5, v35

    const/16 v36, 0x1

    aget v36, v5, v36

    const/16 v37, 0x2

    aget v37, v5, v37

    const/16 v38, 0x3

    aget v38, v5, v38

    invoke-direct/range {v34 .. v38}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object/from16 v0, v22

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 549
    invoke-virtual/range {v22 .. v22}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 550
    const-wide/16 v34, 0x258

    move-object/from16 v0, v22

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 551
    new-instance v34, Lcn/nubia/deskclock/ui/ClockView$19;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcn/nubia/deskclock/ui/ClockView$19;-><init>(Lcn/nubia/deskclock/ui/ClockView;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 567
    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_9

    .line 570
    .local v16, "hourAngleValues":[F
    invoke-static/range {v16 .. v16}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v18

    .line 571
    .local v18, "hourEnterRotateAnim":Landroid/animation/ValueAnimator;
    new-instance v34, Landroid/view/animation/PathInterpolator;

    const/16 v35, 0x0

    aget v35, v5, v35

    const/16 v36, 0x1

    aget v36, v5, v36

    const/16 v37, 0x2

    aget v37, v5, v37

    const/16 v38, 0x3

    aget v38, v5, v38

    invoke-direct/range {v34 .. v38}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 573
    invoke-virtual/range {v18 .. v18}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 574
    const-wide/16 v34, 0x258

    move-object/from16 v0, v18

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 575
    new-instance v34, Lcn/nubia/deskclock/ui/ClockView$20;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcn/nubia/deskclock/ui/ClockView$20;-><init>(Lcn/nubia/deskclock/ui/ClockView;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 593
    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [F

    move-object/from16 v29, v0

    fill-array-data v29, :array_a

    .line 596
    .local v29, "secAngleValues":[F
    invoke-static/range {v29 .. v29}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v30

    .line 597
    .local v30, "secEnterRotateAnim":Landroid/animation/ValueAnimator;
    new-instance v34, Landroid/view/animation/PathInterpolator;

    const/16 v35, 0x0

    aget v35, v5, v35

    const/16 v36, 0x1

    aget v36, v5, v36

    const/16 v37, 0x2

    aget v37, v5, v37

    const/16 v38, 0x3

    aget v38, v5, v38

    invoke-direct/range {v34 .. v38}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object/from16 v0, v30

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 598
    const-wide/16 v34, 0x1f4

    move-object/from16 v0, v30

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 599
    const-wide/16 v34, 0x64

    move-object/from16 v0, v30

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 600
    new-instance v34, Lcn/nubia/deskclock/ui/ClockView$21;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcn/nubia/deskclock/ui/ClockView$21;-><init>(Lcn/nubia/deskclock/ui/ClockView;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 609
    new-instance v34, Lcn/nubia/deskclock/ui/ClockView$22;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcn/nubia/deskclock/ui/ClockView$22;-><init>(Lcn/nubia/deskclock/ui/ClockView;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 615
    new-instance v34, Landroid/animation/AnimatorSet;

    invoke-direct/range {v34 .. v34}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/deskclock/ui/ClockView;->mEnterAnimatorSet:Landroid/animation/AnimatorSet;

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockView;->mEnterAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v34, v0

    const/16 v35, 0x13

    move/from16 v0, v35

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput-object v33, v35, v36

    const/16 v36, 0x1

    aput-object v24, v35, v36

    const/16 v36, 0x2

    aput-object v8, v35, v36

    const/16 v36, 0x3

    aput-object v14, v35, v36

    const/16 v36, 0x4

    aput-object v15, v35, v36

    const/16 v36, 0x5

    aput-object v6, v35, v36

    const/16 v36, 0x6

    aput-object v21, v35, v36

    const/16 v36, 0x7

    aput-object v17, v35, v36

    const/16 v36, 0x8

    aput-object v32, v35, v36

    const/16 v36, 0x9

    aput-object v11, v35, v36

    const/16 v36, 0xa

    aput-object v25, v35, v36

    const/16 v36, 0xb

    aput-object v23, v35, v36

    const/16 v36, 0xc

    aput-object v19, v35, v36

    const/16 v36, 0xd

    aput-object v7, v35, v36

    const/16 v36, 0xe

    aput-object v31, v35, v36

    const/16 v36, 0xf

    aput-object v10, v35, v36

    const/16 v36, 0x10

    aput-object v22, v35, v36

    const/16 v36, 0x11

    aput-object v18, v35, v36

    const/16 v36, 0x12

    aput-object v30, v35, v36

    invoke-virtual/range {v34 .. v35}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockView;->mEnterAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/animation/AnimatorSet;->start()V

    .line 620
    return-void

    .line 321
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 430
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 431
    :array_2
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f333333    # 0.7f
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data

    .line 432
    :array_3
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f333333    # 0.7f
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data

    .line 433
    :array_4
    .array-data 4
        0x3e99999a    # 0.3f
        0x3dcccccd    # 0.1f
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data

    .line 512
    :array_5
    .array-data 4
        0x3e99999a    # 0.3f
        0x3dcccccd    # 0.1f
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data

    .line 515
    :array_6
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f333333    # 0.7f
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data

    .line 521
    :array_7
    .array-data 4
        -0x3d4c0000    # -90.0f
        0x0
    .end array-data

    .line 525
    :array_8
    .array-data 4
        -0x3d4c0000    # -90.0f
        0x0
    .end array-data

    .line 567
    :array_9
    .array-data 4
        -0x3d4c0000    # -90.0f
        0x0
    .end array-data

    .line 593
    :array_a
    .array-data 4
        -0x3d4c0000    # -90.0f
        0x0
    .end array-data
.end method

.method private calculateHandsCurrAngle()V
    .locals 5

    .prologue
    .line 283
    const/4 v0, 0x0

    .line 284
    .local v0, "temp":I
    iget v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mSecCurr:I

    div-int/lit8 v0, v1, 0x3c

    .line 285
    iget v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mSecCurr:I

    rem-int/lit8 v1, v1, 0x3c

    iput v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mSecCurr:I

    .line 286
    iget v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mMinCurr:I

    add-int/2addr v1, v0

    iput v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mMinCurr:I

    .line 287
    iget v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mMinCurr:I

    div-int/lit8 v0, v1, 0x3c

    .line 288
    iget v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mMinCurr:I

    rem-int/lit8 v1, v1, 0x3c

    iput v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mMinCurr:I

    .line 289
    iget v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mHourCurr:I

    add-int/2addr v1, v0

    iput v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mHourCurr:I

    .line 290
    iget v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mHourCurr:I

    rem-int/lit8 v1, v1, 0xc

    iput v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mHourCurr:I

    .line 291
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mSecHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockView;->mSecCurr:I

    mul-int/lit8 v2, v2, 0x6

    int-to-float v2, v2

    iput v2, v1, Lcn/nubia/deskclock/ui/ClockImage;->mRotateAngle:F

    .line 292
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mMinHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockView;->mMinCurr:I

    mul-int/lit8 v2, v2, 0x6

    int-to-float v2, v2

    iget-object v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mSecHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v3, v3, Lcn/nubia/deskclock/ui/ClockImage;->mRotateAngle:F

    const/high16 v4, 0x42700000    # 60.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Lcn/nubia/deskclock/ui/ClockImage;->mRotateAngle:F

    .line 293
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mHourHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockView;->mHourCurr:I

    mul-int/lit8 v2, v2, 0x1e

    int-to-float v2, v2

    iget-object v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mMinHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v3, v3, Lcn/nubia/deskclock/ui/ClockImage;->mRotateAngle:F

    const/high16 v4, 0x41400000    # 12.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Lcn/nubia/deskclock/ui/ClockImage;->mRotateAngle:F

    .line 294
    return-void
.end method

.method private calculateHourHandsCurrAngle(III)V
    .locals 7
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I

    .prologue
    .line 297
    const/4 v2, 0x0

    .line 298
    .local v2, "temp":I
    move v1, p2

    .line 299
    .local v1, "minCurr":I
    move v0, p1

    .line 300
    .local v0, "hourCurr":I
    div-int/lit8 v2, p3, 0x3c

    .line 301
    rem-int/lit8 p3, p3, 0x3c

    .line 302
    add-int/2addr v1, v2

    .line 303
    div-int/lit8 v2, v1, 0x3c

    .line 304
    rem-int/lit8 v1, v1, 0x3c

    .line 305
    add-int/2addr v0, v2

    .line 306
    rem-int/lit8 v0, v0, 0xc

    .line 307
    iget-object v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mHourHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    mul-int/lit8 v4, v0, 0x1e

    mul-int/lit8 v5, v1, 0x6

    mul-int/lit8 v6, p3, 0x6

    div-int/lit8 v6, v6, 0x3c

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0xc

    add-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, v3, Lcn/nubia/deskclock/ui/ClockImage;->mRotateAngle:F

    .line 308
    return-void
.end method

.method private calculateMinHandsCurrAngle(II)V
    .locals 5
    .param p1, "minute"    # I
    .param p2, "second"    # I

    .prologue
    .line 311
    const/4 v1, 0x0

    .line 312
    .local v1, "temp":I
    move v0, p1

    .line 313
    .local v0, "minCurr":I
    div-int/lit8 v1, p2, 0x3c

    .line 314
    rem-int/lit8 p2, p2, 0x3c

    .line 315
    add-int/2addr v0, v1

    .line 316
    rem-int/lit8 v0, v0, 0x3c

    .line 317
    iget-object v2, p0, Lcn/nubia/deskclock/ui/ClockView;->mMinHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    mul-int/lit8 v3, v0, 0x6

    mul-int/lit8 v4, p2, 0x6

    div-int/lit8 v4, v4, 0x3c

    add-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v2, Lcn/nubia/deskclock/ui/ClockImage;->mRotateAngle:F

    .line 318
    return-void
.end method

.method private cancelAnims()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 708
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mCloseAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mCloseAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 710
    iput-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mCloseAnimatorSet:Landroid/animation/AnimatorSet;

    .line 712
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mEnterAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mEnterAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 713
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mEnterAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 714
    iput-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mEnterAnimatorSet:Landroid/animation/AnimatorSet;

    .line 716
    :cond_1
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mSecHandRunningAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 717
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mSecHandRunningAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 719
    :cond_2
    return-void
.end method

.method private createAlphaAnimator([FLcn/nubia/deskclock/ui/ClockImage;I)Landroid/animation/ValueAnimator;
    .locals 4
    .param p1, "alphaValues"    # [F
    .param p2, "image"    # Lcn/nubia/deskclock/ui/ClockImage;
    .param p3, "duration"    # I

    .prologue
    .line 655
    iget-object v1, p2, Lcn/nubia/deskclock/ui/ClockImage;->mImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 656
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 657
    .local v0, "valueAnimator":Landroid/animation/ValueAnimator;
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 658
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 659
    new-instance v1, Lcn/nubia/deskclock/ui/ClockView$23;

    invoke-direct {v1, p0, p2}, Lcn/nubia/deskclock/ui/ClockView$23;-><init>(Lcn/nubia/deskclock/ui/ClockView;Lcn/nubia/deskclock/ui/ClockImage;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 666
    return-object v0
.end method

.method private createRotateAnimator([F[FLcn/nubia/deskclock/ui/ClockImage;)Landroid/animation/ValueAnimator;
    .locals 7
    .param p1, "angleValues"    # [F
    .param p2, "pathValues"    # [F
    .param p3, "image"    # Lcn/nubia/deskclock/ui/ClockImage;

    .prologue
    .line 671
    iget v0, p3, Lcn/nubia/deskclock/ui/ClockImage;->mRotateAngle:F

    .line 672
    .local v0, "temp":F
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 673
    .local v1, "valueAnimator":Landroid/animation/ValueAnimator;
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const/4 v3, 0x0

    aget v3, p2, v3

    const/4 v4, 0x1

    aget v4, p2, v4

    const/4 v5, 0x2

    aget v5, p2, v5

    const/4 v6, 0x3

    aget v6, p2, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 675
    new-instance v2, Lcn/nubia/deskclock/ui/ClockView$24;

    invoke-direct {v2, p0, p3, v0}, Lcn/nubia/deskclock/ui/ClockView$24;-><init>(Lcn/nubia/deskclock/ui/ClockView;Lcn/nubia/deskclock/ui/ClockImage;F)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 683
    return-object v1
.end method

.method private dpToPx(I)I
    .locals 2
    .param p1, "dp"    # I

    .prologue
    .line 113
    int-to-float v0, p1

    iget v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mScale:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private drawClockBgBitmap(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    .line 857
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 858
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mSrcRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mClockBackgroundImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v1, v1, Lcn/nubia/deskclock/ui/ClockImage;->mWidth:I

    iget-object v2, p0, Lcn/nubia/deskclock/ui/ClockView;->mClockBackgroundImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v2, v2, Lcn/nubia/deskclock/ui/ClockImage;->mHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 859
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mDstRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidth:F

    div-float/2addr v1, v7

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidthRatio:F

    iget-object v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mClockBackgroundImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v3, v3, Lcn/nubia/deskclock/ui/ClockImage;->mWidth:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockView;->mHeight:F

    div-float/2addr v2, v7

    iget v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mHeightRatio:F

    iget-object v4, p0, Lcn/nubia/deskclock/ui/ClockView;->mClockBackgroundImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v4, v4, Lcn/nubia/deskclock/ui/ClockImage;->mHeight:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidth:F

    div-float/2addr v3, v7

    iget v4, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidthRatio:F

    iget-object v5, p0, Lcn/nubia/deskclock/ui/ClockView;->mClockBackgroundImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v5, v5, Lcn/nubia/deskclock/ui/ClockImage;->mWidth:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    iget v4, p0, Lcn/nubia/deskclock/ui/ClockView;->mHeight:F

    div-float/2addr v4, v7

    iget v5, p0, Lcn/nubia/deskclock/ui/ClockView;->mHeightRatio:F

    iget-object v6, p0, Lcn/nubia/deskclock/ui/ClockView;->mClockBackgroundImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v6, v6, Lcn/nubia/deskclock/ui/ClockImage;->mHeight:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 862
    iget v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mClockBgScaleValue:F

    iget v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mClockBgScaleValue:F

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidth:F

    div-float/2addr v2, v7

    iget v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mHeight:F

    div-float/2addr v3, v7

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 863
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mClockBackgroundImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/nubia/deskclock/ui/ClockView;->mDstRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mClockBackgroundImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v3, v3, Lcn/nubia/deskclock/ui/ClockImage;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 864
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 865
    return-void
.end method

.method private drawDialBitmap(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    .line 834
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 835
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mSrcRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mDialImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v1, v1, Lcn/nubia/deskclock/ui/ClockImage;->mWidth:I

    iget-object v2, p0, Lcn/nubia/deskclock/ui/ClockView;->mDialImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v2, v2, Lcn/nubia/deskclock/ui/ClockImage;->mHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 836
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mDstRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidth:F

    div-float/2addr v1, v7

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidthRatio:F

    iget-object v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mDialImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v3, v3, Lcn/nubia/deskclock/ui/ClockImage;->mWidth:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockView;->mHeight:F

    div-float/2addr v2, v7

    iget v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mHeightRatio:F

    iget-object v4, p0, Lcn/nubia/deskclock/ui/ClockView;->mDialImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v4, v4, Lcn/nubia/deskclock/ui/ClockImage;->mHeight:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidth:F

    div-float/2addr v3, v7

    iget v4, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidthRatio:F

    iget-object v5, p0, Lcn/nubia/deskclock/ui/ClockView;->mDialImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v5, v5, Lcn/nubia/deskclock/ui/ClockImage;->mWidth:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    iget v4, p0, Lcn/nubia/deskclock/ui/ClockView;->mHeight:F

    div-float/2addr v4, v7

    iget v5, p0, Lcn/nubia/deskclock/ui/ClockView;->mHeightRatio:F

    iget-object v6, p0, Lcn/nubia/deskclock/ui/ClockView;->mDialImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v6, v6, Lcn/nubia/deskclock/ui/ClockImage;->mHeight:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 839
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mDialImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mRotateAngle:F

    iget v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidth:F

    div-float/2addr v1, v7

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockView;->mHeight:F

    div-float/2addr v2, v7

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 840
    iget v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mDialScaleValue:F

    iget v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mDialScaleValue:F

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidth:F

    div-float/2addr v2, v7

    iget v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mHeight:F

    div-float/2addr v3, v7

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 841
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mDialImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/nubia/deskclock/ui/ClockView;->mDstRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mDialImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v3, v3, Lcn/nubia/deskclock/ui/ClockImage;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 842
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 843
    return-void
.end method

.method private drawHandMark(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    .line 899
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 900
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mSrcRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mHandMarkImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v1, v1, Lcn/nubia/deskclock/ui/ClockImage;->mWidth:I

    iget-object v2, p0, Lcn/nubia/deskclock/ui/ClockView;->mHandMarkImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v2, v2, Lcn/nubia/deskclock/ui/ClockImage;->mHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 901
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mDstRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidth:F

    div-float/2addr v1, v7

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidthRatio:F

    iget-object v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mHandMarkImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v3, v3, Lcn/nubia/deskclock/ui/ClockImage;->mWidth:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockView;->mHeight:F

    div-float/2addr v2, v7

    iget v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mHeightRatio:F

    iget-object v4, p0, Lcn/nubia/deskclock/ui/ClockView;->mHandMarkImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v4, v4, Lcn/nubia/deskclock/ui/ClockImage;->mHeight:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidth:F

    div-float/2addr v3, v7

    iget v4, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidthRatio:F

    iget-object v5, p0, Lcn/nubia/deskclock/ui/ClockView;->mHandMarkImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v5, v5, Lcn/nubia/deskclock/ui/ClockImage;->mWidth:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    iget v4, p0, Lcn/nubia/deskclock/ui/ClockView;->mHeight:F

    div-float/2addr v4, v7

    iget v5, p0, Lcn/nubia/deskclock/ui/ClockView;->mHeightRatio:F

    iget-object v6, p0, Lcn/nubia/deskclock/ui/ClockView;->mHandMarkImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v6, v6, Lcn/nubia/deskclock/ui/ClockImage;->mHeight:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 904
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mHandMarkImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/nubia/deskclock/ui/ClockView;->mDstRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mHandMarkImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v3, v3, Lcn/nubia/deskclock/ui/ClockImage;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 905
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 906
    return-void
.end method

.method private drawHandMarkSmall(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    .line 908
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 909
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mSrcRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mHandMarkSmallImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v1, v1, Lcn/nubia/deskclock/ui/ClockImage;->mWidth:I

    iget-object v2, p0, Lcn/nubia/deskclock/ui/ClockView;->mHandMarkSmallImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v2, v2, Lcn/nubia/deskclock/ui/ClockImage;->mHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 910
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mDstRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidth:F

    div-float/2addr v1, v7

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidthRatio:F

    iget-object v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mHandMarkSmallImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v3, v3, Lcn/nubia/deskclock/ui/ClockImage;->mWidth:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockView;->mHeight:F

    div-float/2addr v2, v7

    iget v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mHeightRatio:F

    iget-object v4, p0, Lcn/nubia/deskclock/ui/ClockView;->mHandMarkSmallImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v4, v4, Lcn/nubia/deskclock/ui/ClockImage;->mHeight:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidth:F

    div-float/2addr v3, v7

    iget v4, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidthRatio:F

    iget-object v5, p0, Lcn/nubia/deskclock/ui/ClockView;->mHandMarkSmallImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v5, v5, Lcn/nubia/deskclock/ui/ClockImage;->mWidth:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    iget v4, p0, Lcn/nubia/deskclock/ui/ClockView;->mHeight:F

    div-float/2addr v4, v7

    iget v5, p0, Lcn/nubia/deskclock/ui/ClockView;->mHeightRatio:F

    iget-object v6, p0, Lcn/nubia/deskclock/ui/ClockView;->mHandMarkSmallImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v6, v6, Lcn/nubia/deskclock/ui/ClockImage;->mHeight:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 913
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mHandMarkSmallImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/nubia/deskclock/ui/ClockView;->mDstRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mHandMarkSmallImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v3, v3, Lcn/nubia/deskclock/ui/ClockImage;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 914
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 915
    return-void
.end method

.method private drawHourHand(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    .line 889
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 890
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mSrcRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mHourHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v1, v1, Lcn/nubia/deskclock/ui/ClockImage;->mWidth:I

    iget-object v2, p0, Lcn/nubia/deskclock/ui/ClockView;->mHourHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v2, v2, Lcn/nubia/deskclock/ui/ClockImage;->mHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 891
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mDstRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidth:F

    div-float/2addr v1, v7

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidthRatio:F

    iget-object v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mHourHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v3, v3, Lcn/nubia/deskclock/ui/ClockImage;->mWidth:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockView;->mHeight:F

    div-float/2addr v2, v7

    iget v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mHeightRatio:F

    iget-object v4, p0, Lcn/nubia/deskclock/ui/ClockView;->mHourHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v4, v4, Lcn/nubia/deskclock/ui/ClockImage;->mHeight:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidth:F

    div-float/2addr v3, v7

    iget v4, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidthRatio:F

    iget-object v5, p0, Lcn/nubia/deskclock/ui/ClockView;->mHourHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v5, v5, Lcn/nubia/deskclock/ui/ClockImage;->mWidth:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    iget v4, p0, Lcn/nubia/deskclock/ui/ClockView;->mHeight:F

    div-float/2addr v4, v7

    iget v5, p0, Lcn/nubia/deskclock/ui/ClockView;->mHeightRatio:F

    iget-object v6, p0, Lcn/nubia/deskclock/ui/ClockView;->mHourHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v6, v6, Lcn/nubia/deskclock/ui/ClockImage;->mHeight:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 893
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mHourHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mRotateAngle:F

    iget v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidth:F

    div-float/2addr v1, v7

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockView;->mHeight:F

    div-float/2addr v2, v7

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 894
    iget v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mHourHandScaleValue:F

    iget v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mHourHandScaleValue:F

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidth:F

    div-float/2addr v2, v7

    iget v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mHeight:F

    div-float/2addr v3, v7

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 895
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mHourHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/nubia/deskclock/ui/ClockView;->mDstRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mHourHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v3, v3, Lcn/nubia/deskclock/ui/ClockImage;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 896
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 897
    return-void
.end method

.method private drawMinuteHand(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    .line 877
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 878
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mSrcRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mMinHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v1, v1, Lcn/nubia/deskclock/ui/ClockImage;->mWidth:I

    iget-object v2, p0, Lcn/nubia/deskclock/ui/ClockView;->mMinHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v2, v2, Lcn/nubia/deskclock/ui/ClockImage;->mHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 879
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mDstRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidth:F

    div-float/2addr v1, v7

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidthRatio:F

    iget-object v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mMinHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v3, v3, Lcn/nubia/deskclock/ui/ClockImage;->mWidth:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockView;->mHeight:F

    div-float/2addr v2, v7

    iget v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mHeightRatio:F

    iget-object v4, p0, Lcn/nubia/deskclock/ui/ClockView;->mMinHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v4, v4, Lcn/nubia/deskclock/ui/ClockImage;->mHeight:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidth:F

    div-float/2addr v3, v7

    iget v4, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidthRatio:F

    iget-object v5, p0, Lcn/nubia/deskclock/ui/ClockView;->mMinHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v5, v5, Lcn/nubia/deskclock/ui/ClockImage;->mWidth:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    iget v4, p0, Lcn/nubia/deskclock/ui/ClockView;->mHeight:F

    div-float/2addr v4, v7

    iget v5, p0, Lcn/nubia/deskclock/ui/ClockView;->mHeightRatio:F

    iget-object v6, p0, Lcn/nubia/deskclock/ui/ClockView;->mMinHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v6, v6, Lcn/nubia/deskclock/ui/ClockImage;->mHeight:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 882
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mMinHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mRotateAngle:F

    iget v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidth:F

    div-float/2addr v1, v7

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockView;->mHeight:F

    div-float/2addr v2, v7

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 883
    iget v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mMinHandScaleValue:F

    iget v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mMinHandScaleValue:F

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidth:F

    div-float/2addr v2, v7

    iget v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mHeight:F

    div-float/2addr v3, v7

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 884
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mMinHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/nubia/deskclock/ui/ClockView;->mDstRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mMinHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v3, v3, Lcn/nubia/deskclock/ui/ClockImage;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 885
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 886
    return-void
.end method

.method private drawOutCirleBitmap(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    .line 846
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 847
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mSrcRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mOuterCircleImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v1, v1, Lcn/nubia/deskclock/ui/ClockImage;->mWidth:I

    iget-object v2, p0, Lcn/nubia/deskclock/ui/ClockView;->mOuterCircleImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v2, v2, Lcn/nubia/deskclock/ui/ClockImage;->mHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 848
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mDstRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidth:F

    div-float/2addr v1, v7

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidthRatio:F

    iget-object v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mOuterCircleImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v3, v3, Lcn/nubia/deskclock/ui/ClockImage;->mWidth:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockView;->mHeight:F

    div-float/2addr v2, v7

    iget v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mHeightRatio:F

    iget-object v4, p0, Lcn/nubia/deskclock/ui/ClockView;->mOuterCircleImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v4, v4, Lcn/nubia/deskclock/ui/ClockImage;->mHeight:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidth:F

    div-float/2addr v3, v7

    iget v4, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidthRatio:F

    iget-object v5, p0, Lcn/nubia/deskclock/ui/ClockView;->mOuterCircleImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v5, v5, Lcn/nubia/deskclock/ui/ClockImage;->mWidth:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    iget v4, p0, Lcn/nubia/deskclock/ui/ClockView;->mHeight:F

    div-float/2addr v4, v7

    iget v5, p0, Lcn/nubia/deskclock/ui/ClockView;->mHeightRatio:F

    iget-object v6, p0, Lcn/nubia/deskclock/ui/ClockView;->mOuterCircleImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v6, v6, Lcn/nubia/deskclock/ui/ClockImage;->mHeight:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 851
    iget v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mOuterCircleScaleValue:F

    iget v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mOuterCircleScaleValue:F

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidth:F

    div-float/2addr v2, v7

    iget v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mHeight:F

    div-float/2addr v3, v7

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 852
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mOuterCircleImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/nubia/deskclock/ui/ClockView;->mDstRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mOuterCircleImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v3, v3, Lcn/nubia/deskclock/ui/ClockImage;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 853
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 854
    return-void
.end method

.method private drawSecondHand(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    .line 917
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 918
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mSrcRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mSecondHandleImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v1, v1, Lcn/nubia/deskclock/ui/ClockImage;->mWidth:I

    iget-object v2, p0, Lcn/nubia/deskclock/ui/ClockView;->mSecondHandleImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v2, v2, Lcn/nubia/deskclock/ui/ClockImage;->mHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 919
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mDstRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidth:F

    div-float/2addr v1, v7

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidthRatio:F

    iget-object v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mSecondHandleImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v3, v3, Lcn/nubia/deskclock/ui/ClockImage;->mWidth:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockView;->mHeight:F

    div-float/2addr v2, v7

    iget v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mHeightRatio:F

    iget-object v4, p0, Lcn/nubia/deskclock/ui/ClockView;->mSecondHandleImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v4, v4, Lcn/nubia/deskclock/ui/ClockImage;->mHeight:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidth:F

    div-float/2addr v3, v7

    iget v4, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidthRatio:F

    iget-object v5, p0, Lcn/nubia/deskclock/ui/ClockView;->mSecondHandleImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v5, v5, Lcn/nubia/deskclock/ui/ClockImage;->mWidth:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    iget v4, p0, Lcn/nubia/deskclock/ui/ClockView;->mHeight:F

    div-float/2addr v4, v7

    iget v5, p0, Lcn/nubia/deskclock/ui/ClockView;->mHeightRatio:F

    iget-object v6, p0, Lcn/nubia/deskclock/ui/ClockView;->mSecondHandleImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v6, v6, Lcn/nubia/deskclock/ui/ClockImage;->mHeight:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 922
    iget v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mSecAngleTemp1:F

    iget v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mAnimatorSecHandAngle:F

    add-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidth:F

    div-float/2addr v1, v7

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockView;->mHeight:F

    div-float/2addr v2, v7

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 923
    iget v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mSecHandScaleValue:F

    iget v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mSecHandScaleValue:F

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidth:F

    div-float/2addr v2, v7

    iget v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mHeight:F

    div-float/2addr v3, v7

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 924
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mSecondHandleImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/nubia/deskclock/ui/ClockView;->mDstRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mSecondHandleImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v3, v3, Lcn/nubia/deskclock/ui/ClockImage;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 925
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 926
    return-void
.end method

.method private drawTimeTableBitmap(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    .line 867
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 868
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mSrcRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mTimeTableImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v1, v1, Lcn/nubia/deskclock/ui/ClockImage;->mWidth:I

    iget-object v2, p0, Lcn/nubia/deskclock/ui/ClockView;->mTimeTableImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v2, v2, Lcn/nubia/deskclock/ui/ClockImage;->mHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 869
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mDstRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidth:F

    div-float/2addr v1, v7

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidthRatio:F

    iget-object v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mTimeTableImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v3, v3, Lcn/nubia/deskclock/ui/ClockImage;->mWidth:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockView;->mHeight:F

    div-float/2addr v2, v7

    iget v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mHeightRatio:F

    iget-object v4, p0, Lcn/nubia/deskclock/ui/ClockView;->mTimeTableImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v4, v4, Lcn/nubia/deskclock/ui/ClockImage;->mHeight:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidth:F

    div-float/2addr v3, v7

    iget v4, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidthRatio:F

    iget-object v5, p0, Lcn/nubia/deskclock/ui/ClockView;->mTimeTableImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v5, v5, Lcn/nubia/deskclock/ui/ClockImage;->mWidth:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    iget v4, p0, Lcn/nubia/deskclock/ui/ClockView;->mHeight:F

    div-float/2addr v4, v7

    iget v5, p0, Lcn/nubia/deskclock/ui/ClockView;->mHeightRatio:F

    iget-object v6, p0, Lcn/nubia/deskclock/ui/ClockView;->mTimeTableImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v6, v6, Lcn/nubia/deskclock/ui/ClockImage;->mHeight:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 872
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mTimeTableImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/nubia/deskclock/ui/ClockView;->mDstRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mTimeTableImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v3, v3, Lcn/nubia/deskclock/ui/ClockImage;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 873
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 874
    return-void
.end method

.method private getSecAngle(J)F
    .locals 5
    .param p1, "time"    # J

    .prologue
    .line 278
    const-wide/32 v2, 0xea60

    rem-long v2, p1, v2

    long-to-float v1, v2

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v1, v2

    const v2, 0x476a6000    # 60000.0f

    div-float v0, v1, v2

    .line 279
    .local v0, "secAngle":F
    return v0
.end method

.method private resetData()V
    .locals 3

    .prologue
    const/high16 v2, -0x3d4c0000    # -90.0f

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 189
    iput v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mSecAngleTemp1:F

    .line 190
    iput v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mDialScaleValue:F

    .line 191
    iput v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mOuterCircleScaleValue:F

    .line 192
    iput v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mClockBgScaleValue:F

    .line 193
    iput v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mMinHandScaleValue:F

    .line 194
    iput v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mHourHandScaleValue:F

    .line 195
    iput v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mSecHandScaleValue:F

    .line 196
    iput v2, p0, Lcn/nubia/deskclock/ui/ClockView;->lastHourAngle:F

    .line 197
    iput v2, p0, Lcn/nubia/deskclock/ui/ClockView;->lastMinAngle:F

    .line 198
    iput v0, p0, Lcn/nubia/deskclock/ui/ClockView;->lastDialAngel:F

    .line 199
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mTimeTableImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 200
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mOuterCircleImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 201
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mClockBackgroundImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 202
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mDialImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 203
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mHourHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 204
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mMinHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 205
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mSecondHandleImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 206
    return-void
.end method


# virtual methods
.method protected createSecHandRunningAnim([F)Landroid/animation/ValueAnimator;
    .locals 6
    .param p1, "pathValues"    # [F

    .prologue
    const/4 v4, 0x2

    .line 687
    new-array v1, v4, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 688
    .local v0, "valueAnimator":Landroid/animation/ValueAnimator;
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    aget v2, p1, v2

    const/4 v3, 0x1

    aget v3, p1, v3

    aget v4, p1, v4

    const/4 v5, 0x3

    aget v5, p1, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 690
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 691
    new-instance v1, Lcn/nubia/deskclock/ui/ClockView$25;

    invoke-direct {v1, p0}, Lcn/nubia/deskclock/ui/ClockView$25;-><init>(Lcn/nubia/deskclock/ui/ClockView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 704
    return-object v0

    .line 687
    nop

    :array_0
    .array-data 4
        -0x3f400000    # -6.0f
        0x0
    .end array-data
.end method

.method protected drawNextAlarmPoint(Landroid/graphics/Canvas;J)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "alarmTime"    # J

    .prologue
    const/4 v11, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    .line 728
    iget-boolean v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mEnableDraw:Z

    if-nez v3, :cond_0

    .line 749
    :goto_0
    return-void

    .line 731
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 732
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 733
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 734
    .local v1, "hour":I
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 735
    .local v2, "minutes":I
    iget-object v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mNextAlarmPointImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v4, p0, Lcn/nubia/deskclock/ui/ClockView;->mNextAlarmPointImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v4, v4, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, v3, Lcn/nubia/deskclock/ui/ClockImage;->mWidth:I

    .line 736
    iget-object v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mNextAlarmPointImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v4, p0, Lcn/nubia/deskclock/ui/ClockView;->mNextAlarmPointImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v4, v4, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, v3, Lcn/nubia/deskclock/ui/ClockImage;->mHeight:I

    .line 737
    iget-object v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mNextAlarmPointImage:Lcn/nubia/deskclock/ui/ClockImage;

    rem-int/lit8 v4, v1, 0xc

    mul-int/lit8 v4, v4, 0x1e

    int-to-double v4, v4

    int-to-double v6, v2

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    iput v4, v3, Lcn/nubia/deskclock/ui/ClockImage;->mRotateAngle:F

    .line 738
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 739
    iget-object v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mNextAlarmPointImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v3, v3, Lcn/nubia/deskclock/ui/ClockImage;->mRotateAngle:F

    iget v4, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidth:F

    div-float/2addr v4, v10

    iget v5, p0, Lcn/nubia/deskclock/ui/ClockView;->mHeight:F

    div-float/2addr v5, v10

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 740
    iget-object v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mSrcRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcn/nubia/deskclock/ui/ClockView;->mNextAlarmPointImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v4, v4, Lcn/nubia/deskclock/ui/ClockImage;->mWidth:I

    iget-object v5, p0, Lcn/nubia/deskclock/ui/ClockView;->mNextAlarmPointImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v5, v5, Lcn/nubia/deskclock/ui/ClockImage;->mHeight:I

    invoke-virtual {v3, v11, v11, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 741
    iget-object v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mDstRectF:Landroid/graphics/RectF;

    iget v4, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidth:F

    div-float/2addr v4, v10

    iget v5, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidthRatio:F

    iget-object v6, p0, Lcn/nubia/deskclock/ui/ClockView;->mNextAlarmPointImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v6, v6, Lcn/nubia/deskclock/ui/ClockImage;->mWidth:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    div-float/2addr v5, v10

    sub-float/2addr v4, v5

    const/high16 v5, 0x42400000    # 48.0f

    iget v6, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidth:F

    div-float/2addr v6, v10

    iget v7, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidthRatio:F

    iget-object v8, p0, Lcn/nubia/deskclock/ui/ClockView;->mNextAlarmPointImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v8, v8, Lcn/nubia/deskclock/ui/ClockImage;->mWidth:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    div-float/2addr v7, v10

    add-float/2addr v6, v7

    iget-object v7, p0, Lcn/nubia/deskclock/ui/ClockView;->mNextAlarmPointImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v7, v7, Lcn/nubia/deskclock/ui/ClockImage;->mHeight:I

    add-int/lit8 v7, v7, 0x30

    int-to-float v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 744
    iget-object v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 745
    iget-object v3, p0, Lcn/nubia/deskclock/ui/ClockView;->mNextAlarmPointImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v3, v3, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcn/nubia/deskclock/ui/ClockView;->mSrcRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcn/nubia/deskclock/ui/ClockView;->mDstRectF:Landroid/graphics/RectF;

    iget-object v6, p0, Lcn/nubia/deskclock/ui/ClockView;->mNextAlarmPointImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v6, v6, Lcn/nubia/deskclock/ui/ClockImage;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 747
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 748
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0
.end method

.method protected init()V
    .locals 4

    .prologue
    const/16 v2, 0xfa

    const/4 v3, 0x0

    .line 85
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/ClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mScale:F

    .line 86
    invoke-direct {p0, v2}, Lcn/nubia/deskclock/ui/ClockView;->dpToPx(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mWidth:F

    .line 87
    invoke-direct {p0, v2}, Lcn/nubia/deskclock/ui/ClockView;->dpToPx(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mHeight:F

    .line 88
    invoke-virtual {p0, v3}, Lcn/nubia/deskclock/ui/ClockView;->setWillNotDraw(Z)V

    .line 89
    new-instance v1, Lcn/nubia/deskclock/ui/ClockImage;

    invoke-direct {v1}, Lcn/nubia/deskclock/ui/ClockImage;-><init>()V

    iput-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mDialImage:Lcn/nubia/deskclock/ui/ClockImage;

    .line 90
    new-instance v1, Lcn/nubia/deskclock/ui/ClockImage;

    invoke-direct {v1}, Lcn/nubia/deskclock/ui/ClockImage;-><init>()V

    iput-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mHandMarkImage:Lcn/nubia/deskclock/ui/ClockImage;

    .line 91
    new-instance v1, Lcn/nubia/deskclock/ui/ClockImage;

    invoke-direct {v1}, Lcn/nubia/deskclock/ui/ClockImage;-><init>()V

    iput-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mSecHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    .line 92
    new-instance v1, Lcn/nubia/deskclock/ui/ClockImage;

    invoke-direct {v1}, Lcn/nubia/deskclock/ui/ClockImage;-><init>()V

    iput-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mMinHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    .line 93
    new-instance v1, Lcn/nubia/deskclock/ui/ClockImage;

    invoke-direct {v1}, Lcn/nubia/deskclock/ui/ClockImage;-><init>()V

    iput-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mHourHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    .line 94
    new-instance v1, Lcn/nubia/deskclock/ui/ClockImage;

    invoke-direct {v1}, Lcn/nubia/deskclock/ui/ClockImage;-><init>()V

    iput-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mNextAlarmPointImage:Lcn/nubia/deskclock/ui/ClockImage;

    .line 96
    new-instance v1, Lcn/nubia/deskclock/ui/ClockImage;

    invoke-direct {v1}, Lcn/nubia/deskclock/ui/ClockImage;-><init>()V

    iput-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mOuterCircleImage:Lcn/nubia/deskclock/ui/ClockImage;

    .line 97
    new-instance v1, Lcn/nubia/deskclock/ui/ClockImage;

    invoke-direct {v1}, Lcn/nubia/deskclock/ui/ClockImage;-><init>()V

    iput-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mHandMarkSmallImage:Lcn/nubia/deskclock/ui/ClockImage;

    .line 98
    new-instance v1, Lcn/nubia/deskclock/ui/ClockImage;

    invoke-direct {v1}, Lcn/nubia/deskclock/ui/ClockImage;-><init>()V

    iput-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mTimeTableImage:Lcn/nubia/deskclock/ui/ClockImage;

    .line 99
    new-instance v1, Lcn/nubia/deskclock/ui/ClockImage;

    invoke-direct {v1}, Lcn/nubia/deskclock/ui/ClockImage;-><init>()V

    iput-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mClockBackgroundImage:Lcn/nubia/deskclock/ui/ClockImage;

    .line 100
    new-instance v1, Lcn/nubia/deskclock/ui/ClockImage;

    invoke-direct {v1}, Lcn/nubia/deskclock/ui/ClockImage;-><init>()V

    iput-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mSecondHandleImage:Lcn/nubia/deskclock/ui/ClockImage;

    .line 103
    const/4 v1, 0x4

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 106
    .local v0, "pathValues":[F
    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/ui/ClockView;->createSecHandRunningAnim([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mSecHandRunningAnim:Landroid/animation/ValueAnimator;

    .line 107
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mSrcRect:Landroid/graphics/Rect;

    .line 108
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mDstRectF:Landroid/graphics/RectF;

    .line 109
    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x3

    invoke-direct {v1, v3, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 110
    return-void

    .line 103
    :array_0
    .array-data 4
        0x3e99999a    # 0.3f
        0x3dcccccd    # 0.1f
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected initImageResource()V
    .locals 8

    .prologue
    const v7, 0x7f02006d

    const v6, 0x7f02006c

    const v5, 0x7f02006b

    const v4, 0x7f02006a

    const v3, 0x7f020068

    .line 761
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mDialImage:Lcn/nubia/deskclock/ui/ClockImage;

    iput v3, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmapId:I

    .line 762
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mDialImage:Lcn/nubia/deskclock/ui/ClockImage;

    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/ClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 764
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mDialImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mDialImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v1, v1, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mWidth:I

    .line 765
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mDialImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mDialImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v1, v1, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mHeight:I

    .line 766
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mDialImage:Lcn/nubia/deskclock/ui/ClockImage;

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/ClockView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mImageView:Landroid/widget/ImageView;

    .line 767
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mDialImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 769
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mHandMarkImage:Lcn/nubia/deskclock/ui/ClockImage;

    iput v4, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmapId:I

    .line 770
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mHandMarkImage:Lcn/nubia/deskclock/ui/ClockImage;

    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/ClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 772
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mHandMarkImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mHandMarkImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v1, v1, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mWidth:I

    .line 773
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mHandMarkImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mHandMarkImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v1, v1, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mHeight:I

    .line 774
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mHandMarkImage:Lcn/nubia/deskclock/ui/ClockImage;

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/ClockView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mImageView:Landroid/widget/ImageView;

    .line 775
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mHandMarkImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 777
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mHandMarkSmallImage:Lcn/nubia/deskclock/ui/ClockImage;

    iput v7, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmapId:I

    .line 778
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mHandMarkSmallImage:Lcn/nubia/deskclock/ui/ClockImage;

    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/ClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 780
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mHandMarkSmallImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mHandMarkSmallImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v1, v1, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mWidth:I

    .line 781
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mHandMarkSmallImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mHandMarkSmallImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v1, v1, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mHeight:I

    .line 782
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mHandMarkSmallImage:Lcn/nubia/deskclock/ui/ClockImage;

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/ClockView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mImageView:Landroid/widget/ImageView;

    .line 783
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mHandMarkSmallImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 785
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mMinHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    const v1, 0x7f02006e

    iput v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmapId:I

    .line 786
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mMinHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/ClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02006e

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 788
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mMinHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mMinHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v1, v1, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mWidth:I

    .line 789
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mMinHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mMinHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v1, v1, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mHeight:I

    .line 790
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mMinHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/ClockView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mImageView:Landroid/widget/ImageView;

    .line 791
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mMinHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f02006e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 793
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mHourHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iput v5, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmapId:I

    .line 794
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mHourHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/ClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 796
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mHourHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mHourHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v1, v1, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mWidth:I

    .line 797
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mHourHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mHourHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v1, v1, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mHeight:I

    .line 798
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mHourHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/ClockView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mImageView:Landroid/widget/ImageView;

    .line 799
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mHourHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 801
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mOuterCircleImage:Lcn/nubia/deskclock/ui/ClockImage;

    const v1, 0x7f02006f

    iput v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmapId:I

    .line 802
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mOuterCircleImage:Lcn/nubia/deskclock/ui/ClockImage;

    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/ClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02006f

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 804
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mOuterCircleImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mOuterCircleImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v1, v1, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mWidth:I

    .line 805
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mOuterCircleImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mOuterCircleImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v1, v1, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mHeight:I

    .line 806
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mOuterCircleImage:Lcn/nubia/deskclock/ui/ClockImage;

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/ClockView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mImageView:Landroid/widget/ImageView;

    .line 807
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mOuterCircleImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f02006f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 809
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mTimeTableImage:Lcn/nubia/deskclock/ui/ClockImage;

    const v1, 0x7f020074

    iput v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmapId:I

    .line 810
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mTimeTableImage:Lcn/nubia/deskclock/ui/ClockImage;

    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/ClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020074

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 812
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mTimeTableImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mTimeTableImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v1, v1, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mWidth:I

    .line 813
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mTimeTableImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mTimeTableImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v1, v1, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mHeight:I

    .line 814
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mTimeTableImage:Lcn/nubia/deskclock/ui/ClockImage;

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/ClockView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mImageView:Landroid/widget/ImageView;

    .line 815
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mTimeTableImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f020074

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 817
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mClockBackgroundImage:Lcn/nubia/deskclock/ui/ClockImage;

    iput v6, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmapId:I

    .line 818
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mClockBackgroundImage:Lcn/nubia/deskclock/ui/ClockImage;

    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/ClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 820
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mClockBackgroundImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mClockBackgroundImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v1, v1, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mWidth:I

    .line 821
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mClockBackgroundImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mClockBackgroundImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v1, v1, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mHeight:I

    .line 822
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mClockBackgroundImage:Lcn/nubia/deskclock/ui/ClockImage;

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/ClockView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mImageView:Landroid/widget/ImageView;

    .line 823
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mClockBackgroundImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 825
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mSecondHandleImage:Lcn/nubia/deskclock/ui/ClockImage;

    const v1, 0x7f020073

    iput v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmapId:I

    .line 826
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mSecondHandleImage:Lcn/nubia/deskclock/ui/ClockImage;

    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/ClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020073

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 828
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mSecondHandleImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mSecondHandleImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v1, v1, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mWidth:I

    .line 829
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mSecondHandleImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockView;->mSecondHandleImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v1, v1, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mHeight:I

    .line 830
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mSecondHandleImage:Lcn/nubia/deskclock/ui/ClockImage;

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/ClockView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mImageView:Landroid/widget/ImageView;

    .line 831
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mSecondHandleImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f020073

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 832
    return-void
.end method

.method protected loadImageResource(Z)V
    .locals 0
    .param p1, "isWorldClock"    # Z

    .prologue
    .line 117
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/ClockView;->initImageResource()V

    .line 118
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 123
    iget-boolean v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mEnableDraw:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mDialImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/ClockView;->drawDialBitmap(Landroid/graphics/Canvas;)V

    .line 130
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/ClockView;->drawOutCirleBitmap(Landroid/graphics/Canvas;)V

    .line 132
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/ClockView;->drawClockBgBitmap(Landroid/graphics/Canvas;)V

    .line 134
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/ClockView;->drawTimeTableBitmap(Landroid/graphics/Canvas;)V

    .line 136
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/ClockView;->drawHourHand(Landroid/graphics/Canvas;)V

    .line 138
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/ClockView;->drawMinuteHand(Landroid/graphics/Canvas;)V

    .line 140
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/ClockView;->drawSecondHand(Landroid/graphics/Canvas;)V

    .line 142
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/ClockView;->drawHandMark(Landroid/graphics/Canvas;)V

    .line 144
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/ClockView;->drawHandMarkSmall(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setEnableDraw(Z)V
    .locals 0
    .param p1, "darw"    # Z

    .prologue
    .line 752
    iput-boolean p1, p0, Lcn/nubia/deskclock/ui/ClockView;->mEnableDraw:Z

    .line 753
    return-void
.end method

.method public setForceStop(Z)V
    .locals 0
    .param p1, "forceStop"    # Z

    .prologue
    .line 756
    iput-boolean p1, p0, Lcn/nubia/deskclock/ui/ClockView;->mForceStop:Z

    .line 757
    return-void
.end method

.method public setHandAngle(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 274
    invoke-direct {p0, p1, p2}, Lcn/nubia/deskclock/ui/ClockView;->getSecAngle(J)F

    move-result v0

    iput v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mSecAngleTemp1:F

    .line 275
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/ClockView;->invalidate()V

    .line 276
    return-void
.end method

.method public setTime(III)V
    .locals 0
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I

    .prologue
    .line 722
    iput p3, p0, Lcn/nubia/deskclock/ui/ClockView;->mSecCurr:I

    .line 723
    iput p2, p0, Lcn/nubia/deskclock/ui/ClockView;->mMinCurr:I

    .line 724
    iput p1, p0, Lcn/nubia/deskclock/ui/ClockView;->mHourCurr:I

    .line 725
    return-void
.end method

.method public startCloseAnimation()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mTimeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/ui/ClockView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mTimeRunnable:Ljava/lang/Runnable;

    .line 214
    :cond_0
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/ClockView;->cancelAnims()V

    .line 215
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/ClockView;->buildHandsAndDialCloseAnimatorSet()V

    .line 216
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mCloseAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 217
    return-void
.end method

.method public startEnterAnimation(IIIZ)V
    .locals 2
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I
    .param p4, "isDelay"    # Z

    .prologue
    .line 150
    iget-boolean v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mEnableDraw:Z

    if-nez v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/ClockView;->invalidate()V

    .line 154
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mTimeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/ui/ClockView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mTimeRunnable:Ljava/lang/Runnable;

    .line 158
    :cond_1
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/ClockView;->cancelAnims()V

    .line 159
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/ClockView;->resetData()V

    .line 160
    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/deskclock/ui/ClockView;->setTime(III)V

    .line 161
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/ClockView;->calculateHandsCurrAngle()V

    .line 162
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mSecHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mRotateAngle:F

    iput v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mSecAngleTemp:F

    .line 163
    invoke-direct {p0, p4}, Lcn/nubia/deskclock/ui/ClockView;->buildHandsAndDialEnterAnimatorSet(Z)V

    .line 165
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mEnterAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 166
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mEnterAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcn/nubia/deskclock/ui/ClockView$1;

    invoke-direct {v1, p0}, Lcn/nubia/deskclock/ui/ClockView$1;-><init>(Lcn/nubia/deskclock/ui/ClockView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method public startUpdateTime()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xff

    .line 220
    iget-boolean v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mEnableDraw:Z

    if-nez v0, :cond_0

    .line 236
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mTimeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/ui/ClockView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 225
    iput-object v2, p0, Lcn/nubia/deskclock/ui/ClockView;->mTimeRunnable:Ljava/lang/Runnable;

    .line 227
    :cond_1
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/ClockView;->cancelAnims()V

    .line 228
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mMinHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 229
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mHourHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 230
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/ClockView;->calculateHandsCurrAngle()V

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcn/nubia/deskclock/ui/ClockView;->setHandAngle(J)V

    .line 232
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/ClockView;->invalidate()V

    .line 233
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mAnimatorSecHandAngle:F

    .line 234
    new-instance v0, Lcn/nubia/deskclock/ui/ClockView$TimeRunnable;

    invoke-direct {v0, p0, v2}, Lcn/nubia/deskclock/ui/ClockView$TimeRunnable;-><init>(Lcn/nubia/deskclock/ui/ClockView;Lcn/nubia/deskclock/ui/ClockView$1;)V

    iput-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mTimeRunnable:Ljava/lang/Runnable;

    .line 235
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/ui/ClockView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public stopUpdateTime()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mTimeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/ui/ClockView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/ClockView;->mTimeRunnable:Ljava/lang/Runnable;

    .line 243
    :cond_0
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/ClockView;->cancelAnims()V

    .line 244
    return-void
.end method
