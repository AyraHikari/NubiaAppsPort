.class public Lcn/nubia/deskclock/ui/CountDownView;
.super Landroid/view/View;
.source "CountDownView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deskclock/ui/CountDownView$handleForRefresh;,
        Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;,
        Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;
    }
.end annotation


# static fields
.field private static final PADDING_DISTANCE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "CountDownView"

.field private static final delayTime:I = 0xc8

.field private static final delayTimeForLongTime:I = 0x190

.field private static final durationArcAngle:F = 3.0f

.field private static final durationTime:I = 0xa

.field private static lastArcAngle:F = 0.0f

.field private static lastTime:J = 0x0L

.field private static num:J = 0x0L

.field private static final timeDuration:I = 0xc8


# instance fields
.field private mAnimationRotateValue:F

.field private mBitmapCutPath:Landroid/graphics/Path;

.field private mBitmapCutRectF:Landroid/graphics/RectF;

.field private mCanScroll:Z

.field private mConfig:Lcn/nubia/deskclock/model/CountDownConfiguration;

.field private mContext:Landroid/content/Context;

.field private mControlHandle:Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;

.field private mCutDistance:F

.field private mDensity:F

.field private mDialDstRectF:Landroid/graphics/RectF;

.field private mDialDstRectF2:Landroid/graphics/RectF;

.field private mDialHandleBitmap:Landroid/graphics/Bitmap;

.field private mDialHandleCircleBitmap:Landroid/graphics/Bitmap;

.field private mDialHandleLineBitmap:Landroid/graphics/Bitmap;

.field private mDialPlateBitmap:Landroid/graphics/Bitmap;

.field private mDialSrcRectF:Landroid/graphics/Rect;

.field private mEnableDraw:Z

.field private mEnterAnimatorSet:Landroid/animation/AnimatorSet;

.field private mEnterOrExitAlpha:I

.field private mExitAnimatorSet:Landroid/animation/AnimatorSet;

.field private mHandleDrawPaint:Landroid/graphics/Paint;

.field private mHandlerFlag:Z

.field private mHanler:Landroid/os/Handler;

.field private mHeightRatio:F

.field private mInitX:F

.field private mInitY:F

.field private mInnerTriangeCircleView:Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;

.field private mIsNotZeroTimeFlag:Z

.field private mIsPause:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mPF:Landroid/graphics/PaintFlagsDrawFilter;

.field private mPaddingDistance:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintAlpha:I

.field private mPointerID:I

.field private mRotateAngle:F

.field private mRotateArcAngle:F

.field private mRotateCircle:Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;

.field private mRotatePaint:Landroid/graphics/Paint;

.field private mScaleFraction:F

.field private mScaleValue:F

.field private mSecondTextSize:I

.field private mStartCountDownFlag:Z

.field private mStartEnterAnimation:Z

.field private mTextAlpha:I

.field private mTextBaseLineY:F

.field private mTextMargin:F

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTimeTextScaleValues:F

.field private mTimerHelper:Lcn/nubia/deskclock/model/TimerHelper;

.field private mTimerTextView2:Landroid/widget/TextView;

.field private mTouchRegionRectF:Landroid/graphics/RectF;

.field private mViewHeight:I

.field private mViewWidth:I

.field private mWidthRatio:F

.field private mhandleForRefresh:Lcn/nubia/deskclock/ui/CountDownView$handleForRefresh;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 1089
    sput-wide v2, Lcn/nubia/deskclock/ui/CountDownView;->lastTime:J

    .line 1090
    const/4 v0, 0x0

    sput v0, Lcn/nubia/deskclock/ui/CountDownView;->lastArcAngle:F

    .line 1092
    sput-wide v2, Lcn/nubia/deskclock/ui/CountDownView;->num:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/deskclock/ui/CountDownView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 119
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iput v3, p0, Lcn/nubia/deskclock/ui/CountDownView;->mPaddingDistance:I

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mhandleForRefresh:Lcn/nubia/deskclock/ui/CountDownView$handleForRefresh;

    .line 62
    iput v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mCutDistance:F

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mPointerID:I

    .line 71
    iput v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mRotateAngle:F

    .line 72
    iput v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mRotateArcAngle:F

    .line 74
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTouchRegionRectF:Landroid/graphics/RectF;

    .line 75
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x3

    invoke-direct {v0, v3, v1}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mPF:Landroid/graphics/PaintFlagsDrawFilter;

    .line 84
    iput-boolean v3, p0, Lcn/nubia/deskclock/ui/CountDownView;->mHandlerFlag:Z

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mCanScroll:Z

    .line 86
    iput-boolean v3, p0, Lcn/nubia/deskclock/ui/CountDownView;->mEnableDraw:Z

    .line 87
    iput v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mWidthRatio:F

    .line 88
    iput v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mHeightRatio:F

    .line 89
    iput-boolean v3, p0, Lcn/nubia/deskclock/ui/CountDownView;->mIsPause:Z

    .line 97
    iput v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mAnimationRotateValue:F

    .line 120
    iput-object p1, p0, Lcn/nubia/deskclock/ui/CountDownView;->mContext:Landroid/content/Context;

    .line 121
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/CountDownView;->init(Landroid/content/Context;)V

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/deskclock/ui/CountDownView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/CountDownView;

    .prologue
    .line 43
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/nubia/deskclock/ui/CountDownView;)F
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/CountDownView;

    .prologue
    .line 43
    iget v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mCutDistance:F

    return v0
.end method

.method static synthetic access$1002(Lcn/nubia/deskclock/ui/CountDownView;F)F
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/CountDownView;
    .param p1, "x1"    # F

    .prologue
    .line 43
    iput p1, p0, Lcn/nubia/deskclock/ui/CountDownView;->mCutDistance:F

    return p1
.end method

.method static synthetic access$102(Lcn/nubia/deskclock/ui/CountDownView;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/CountDownView;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcn/nubia/deskclock/ui/CountDownView;->mPaintAlpha:I

    return p1
.end method

.method static synthetic access$1100(Lcn/nubia/deskclock/ui/CountDownView;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/CountDownView;

    .prologue
    .line 43
    iget v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mEnterOrExitAlpha:I

    return v0
.end method

.method static synthetic access$1102(Lcn/nubia/deskclock/ui/CountDownView;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/CountDownView;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcn/nubia/deskclock/ui/CountDownView;->mEnterOrExitAlpha:I

    return p1
.end method

.method static synthetic access$1200(Lcn/nubia/deskclock/ui/CountDownView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/CountDownView;

    .prologue
    .line 43
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mHandleDrawPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1300(Lcn/nubia/deskclock/ui/CountDownView;)F
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/CountDownView;

    .prologue
    .line 43
    iget v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mRotateAngle:F

    return v0
.end method

.method static synthetic access$1302(Lcn/nubia/deskclock/ui/CountDownView;F)F
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/CountDownView;
    .param p1, "x1"    # F

    .prologue
    .line 43
    iput p1, p0, Lcn/nubia/deskclock/ui/CountDownView;->mRotateAngle:F

    return p1
.end method

.method static synthetic access$1402(Lcn/nubia/deskclock/ui/CountDownView;F)F
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/CountDownView;
    .param p1, "x1"    # F

    .prologue
    .line 43
    iput p1, p0, Lcn/nubia/deskclock/ui/CountDownView;->mRotateArcAngle:F

    return p1
.end method

.method static synthetic access$1500(Lcn/nubia/deskclock/ui/CountDownView;)Lcn/nubia/deskclock/model/TimerHelper;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/CountDownView;

    .prologue
    .line 43
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTimerHelper:Lcn/nubia/deskclock/model/TimerHelper;

    return-object v0
.end method

.method static synthetic access$1600(Lcn/nubia/deskclock/ui/CountDownView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/CountDownView;

    .prologue
    .line 43
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTimerTextView2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1702(Lcn/nubia/deskclock/ui/CountDownView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/CountDownView;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcn/nubia/deskclock/ui/CountDownView;->mCanScroll:Z

    return p1
.end method

.method static synthetic access$1800(Lcn/nubia/deskclock/ui/CountDownView;)F
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/CountDownView;

    .prologue
    .line 43
    iget v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mScaleFraction:F

    return v0
.end method

.method static synthetic access$1900(Lcn/nubia/deskclock/ui/CountDownView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/CountDownView;

    .prologue
    .line 43
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/CountDownView;->refreshView()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/deskclock/ui/CountDownView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/CountDownView;

    .prologue
    .line 43
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mRotatePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$2002(Lcn/nubia/deskclock/ui/CountDownView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/CountDownView;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcn/nubia/deskclock/ui/CountDownView;->mStartCountDownFlag:Z

    return p1
.end method

.method static synthetic access$2102(Lcn/nubia/deskclock/ui/CountDownView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/CountDownView;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcn/nubia/deskclock/ui/CountDownView;->mIsNotZeroTimeFlag:Z

    return p1
.end method

.method static synthetic access$2200(Lcn/nubia/deskclock/ui/CountDownView;)Lcn/nubia/deskclock/model/CountDownConfiguration;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/CountDownView;

    .prologue
    .line 43
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mConfig:Lcn/nubia/deskclock/model/CountDownConfiguration;

    return-object v0
.end method

.method static synthetic access$2300(Lcn/nubia/deskclock/ui/CountDownView;)Landroid/graphics/Path;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/CountDownView;

    .prologue
    .line 43
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mBitmapCutPath:Landroid/graphics/Path;

    return-object v0
.end method

.method static synthetic access$2400(Lcn/nubia/deskclock/ui/CountDownView;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/CountDownView;

    .prologue
    .line 43
    iget v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mViewWidth:I

    return v0
.end method

.method static synthetic access$2500(Lcn/nubia/deskclock/ui/CountDownView;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/CountDownView;

    .prologue
    .line 43
    iget v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mViewHeight:I

    return v0
.end method

.method static synthetic access$2600(Lcn/nubia/deskclock/ui/CountDownView;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/CountDownView;

    .prologue
    .line 43
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mBitmapCutRectF:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$2700(Lcn/nubia/deskclock/ui/CountDownView;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/CountDownView;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mHandlerFlag:Z

    return v0
.end method

.method static synthetic access$2702(Lcn/nubia/deskclock/ui/CountDownView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/CountDownView;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcn/nubia/deskclock/ui/CountDownView;->mHandlerFlag:Z

    return p1
.end method

.method static synthetic access$2800(Lcn/nubia/deskclock/ui/CountDownView;)F
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/CountDownView;

    .prologue
    .line 43
    iget v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mWidthRatio:F

    return v0
.end method

.method static synthetic access$2900(Lcn/nubia/deskclock/ui/CountDownView;)F
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/CountDownView;

    .prologue
    .line 43
    iget v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mHeightRatio:F

    return v0
.end method

.method static synthetic access$3000(Lcn/nubia/deskclock/ui/CountDownView;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/CountDownView;

    .prologue
    .line 43
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$302(Lcn/nubia/deskclock/ui/CountDownView;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/CountDownView;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTextAlpha:I

    return p1
.end method

.method static synthetic access$3100(Lcn/nubia/deskclock/ui/CountDownView;)Landroid/graphics/PaintFlagsDrawFilter;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/CountDownView;

    .prologue
    .line 43
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mPF:Landroid/graphics/PaintFlagsDrawFilter;

    return-object v0
.end method

.method static synthetic access$3200(Lcn/nubia/deskclock/ui/CountDownView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/CountDownView;

    .prologue
    .line 43
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mDialHandleBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3300(Lcn/nubia/deskclock/ui/CountDownView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/CountDownView;

    .prologue
    .line 43
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mDialHandleCircleBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3400(Lcn/nubia/deskclock/ui/CountDownView;)Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/CountDownView;

    .prologue
    .line 43
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mControlHandle:Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;

    return-object v0
.end method

.method static synthetic access$402(Lcn/nubia/deskclock/ui/CountDownView;F)F
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/CountDownView;
    .param p1, "x1"    # F

    .prologue
    .line 43
    iput p1, p0, Lcn/nubia/deskclock/ui/CountDownView;->mScaleValue:F

    return p1
.end method

.method static synthetic access$500(Lcn/nubia/deskclock/ui/CountDownView;)Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/CountDownView;

    .prologue
    .line 43
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mInnerTriangeCircleView:Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;

    return-object v0
.end method

.method static synthetic access$602(Lcn/nubia/deskclock/ui/CountDownView;F)F
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/CountDownView;
    .param p1, "x1"    # F

    .prologue
    .line 43
    iput p1, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTimeTextScaleValues:F

    return p1
.end method

.method static synthetic access$702(Lcn/nubia/deskclock/ui/CountDownView;F)F
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/CountDownView;
    .param p1, "x1"    # F

    .prologue
    .line 43
    iput p1, p0, Lcn/nubia/deskclock/ui/CountDownView;->mAnimationRotateValue:F

    return p1
.end method

.method static synthetic access$802(Lcn/nubia/deskclock/ui/CountDownView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/CountDownView;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcn/nubia/deskclock/ui/CountDownView;->mStartEnterAnimation:Z

    return p1
.end method

.method static synthetic access$900(Lcn/nubia/deskclock/ui/CountDownView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/CountDownView;

    .prologue
    .line 43
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/CountDownView;->resetAnimationParams()V

    return-void
.end method

.method private checkPointInRegion(FF)Z
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 800
    const/16 v3, 0x9

    new-array v0, v3, [F

    .line 801
    .local v0, "values":[F
    iget-object v3, p0, Lcn/nubia/deskclock/ui/CountDownView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 802
    iget-object v3, p0, Lcn/nubia/deskclock/ui/CountDownView;->mMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcn/nubia/deskclock/ui/CountDownView;->mRotateAngle:F

    neg-float v4, v4

    iget v5, p0, Lcn/nubia/deskclock/ui/CountDownView;->mViewWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v7

    iget v6, p0, Lcn/nubia/deskclock/ui/CountDownView;->mViewHeight:I

    int-to-float v6, v6

    div-float/2addr v6, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 803
    iget-object v3, p0, Lcn/nubia/deskclock/ui/CountDownView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 804
    const/4 v3, 0x0

    aget v3, v0, v3

    mul-float/2addr v3, p1

    const/4 v4, 0x1

    aget v4, v0, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    const/4 v4, 0x2

    aget v4, v0, v4

    add-float v1, v3, v4

    .line 805
    .local v1, "xx":F
    const/4 v3, 0x3

    aget v3, v0, v3

    mul-float/2addr v3, p1

    const/4 v4, 0x4

    aget v4, v0, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    const/4 v4, 0x5

    aget v4, v0, v4

    add-float v2, v3, v4

    .line 806
    .local v2, "yy":F
    iget-object v3, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTouchRegionRectF:Landroid/graphics/RectF;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    return v3
.end method

.method private computerAngle(Landroid/view/MotionEvent;I)F
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "index"    # I

    .prologue
    .line 811
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    iget v7, p0, Lcn/nubia/deskclock/ui/CountDownView;->mViewWidth:I

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float v2, v6, v7

    .line 812
    .local v2, "x1":F
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    iget v7, p0, Lcn/nubia/deskclock/ui/CountDownView;->mViewHeight:I

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float v4, v6, v7

    .line 813
    .local v4, "y1":F
    iget v6, p0, Lcn/nubia/deskclock/ui/CountDownView;->mInitX:F

    iget v7, p0, Lcn/nubia/deskclock/ui/CountDownView;->mViewWidth:I

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float v3, v6, v7

    .line 814
    .local v3, "x2":F
    iget v6, p0, Lcn/nubia/deskclock/ui/CountDownView;->mInitY:F

    iget v7, p0, Lcn/nubia/deskclock/ui/CountDownView;->mViewHeight:I

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float v5, v6, v7

    .line 815
    .local v5, "y2":F
    mul-float v6, v2, v3

    mul-float v7, v4, v5

    add-float/2addr v6, v7

    float-to-double v6, v6

    mul-float v8, v2, v2

    mul-float v9, v4, v4

    add-float/2addr v8, v9

    float-to-double v8, v8

    .line 816
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    mul-float v10, v3, v3

    mul-float v11, v5, v5

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    div-double v0, v6, v8

    .line 817
    .local v0, "angle":D
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v0, v6

    if-lez v6, :cond_0

    .line 818
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 820
    :cond_0
    mul-float v6, v2, v5

    mul-float v7, v4, v3

    sub-float/2addr v6, v7

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    .line 821
    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    const-wide v8, 0x4066800000000000L    # 180.0

    mul-double/2addr v6, v8

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v6, v8

    double-to-float v6, v6

    .line 823
    :goto_0
    return v6

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    neg-double v6, v6

    const-wide v8, 0x4066800000000000L    # 180.0

    mul-double/2addr v6, v8

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v6, v8

    double-to-float v6, v6

    goto :goto_0
.end method

.method private createArcAnimator(FFLandroid/animation/TimeInterpolator;I)Landroid/animation/Animator;
    .locals 4
    .param p1, "start"    # F
    .param p2, "end"    # F
    .param p3, "tiemInterpolator"    # Landroid/animation/TimeInterpolator;
    .param p4, "duration"    # I

    .prologue
    .line 614
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 615
    .local v0, "animator":Landroid/animation/ValueAnimator;
    int-to-long v2, p4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 616
    invoke-virtual {v0, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 617
    new-instance v1, Lcn/nubia/deskclock/ui/CountDownView$14;

    invoke-direct {v1, p0}, Lcn/nubia/deskclock/ui/CountDownView$14;-><init>(Lcn/nubia/deskclock/ui/CountDownView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 626
    return-object v0
.end method

.method private createCutAnimator(FFLandroid/animation/TimeInterpolator;I)Landroid/animation/Animator;
    .locals 4
    .param p1, "start"    # F
    .param p2, "end"    # F
    .param p3, "tiemInterpolator"    # Landroid/animation/TimeInterpolator;
    .param p4, "duration"    # I

    .prologue
    .line 531
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 532
    .local v0, "animator":Landroid/animation/ValueAnimator;
    int-to-long v2, p4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 533
    invoke-virtual {v0, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 534
    new-instance v1, Lcn/nubia/deskclock/ui/CountDownView$10;

    invoke-direct {v1, p0}, Lcn/nubia/deskclock/ui/CountDownView$10;-><init>(Lcn/nubia/deskclock/ui/CountDownView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 543
    return-object v0
.end method

.method private createHandleAlphaAnimator(FFLandroid/animation/TimeInterpolator;I)Landroid/animation/Animator;
    .locals 4
    .param p1, "start"    # F
    .param p2, "end"    # F
    .param p3, "tiemInterpolator"    # Landroid/animation/TimeInterpolator;
    .param p4, "duration"    # I

    .prologue
    .line 596
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 597
    .local v0, "animator":Landroid/animation/ValueAnimator;
    int-to-long v2, p4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 598
    invoke-virtual {v0, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 599
    new-instance v1, Lcn/nubia/deskclock/ui/CountDownView$13;

    invoke-direct {v1, p0}, Lcn/nubia/deskclock/ui/CountDownView$13;-><init>(Lcn/nubia/deskclock/ui/CountDownView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 609
    return-object v0
.end method

.method private createInnerAlphaAnimator(FFLandroid/animation/TimeInterpolator;I)Landroid/animation/Animator;
    .locals 4
    .param p1, "start"    # F
    .param p2, "end"    # F
    .param p3, "tiemInterpolator"    # Landroid/animation/TimeInterpolator;
    .param p4, "duration"    # I

    .prologue
    .line 579
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 580
    .local v0, "animator":Landroid/animation/ValueAnimator;
    int-to-long v2, p4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 581
    invoke-virtual {v0, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 582
    new-instance v1, Lcn/nubia/deskclock/ui/CountDownView$12;

    invoke-direct {v1, p0}, Lcn/nubia/deskclock/ui/CountDownView$12;-><init>(Lcn/nubia/deskclock/ui/CountDownView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 591
    return-object v0
.end method

.method private createTextAlphaAnimator(IILandroid/animation/TimeInterpolator;I)Landroid/animation/Animator;
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "tiemInterpolator"    # Landroid/animation/TimeInterpolator;
    .param p4, "duration"    # I

    .prologue
    .line 555
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 556
    .local v0, "animator":Landroid/animation/ValueAnimator;
    int-to-long v2, p4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 557
    invoke-virtual {v0, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 558
    new-instance v1, Lcn/nubia/deskclock/ui/CountDownView$11;

    invoke-direct {v1, p0}, Lcn/nubia/deskclock/ui/CountDownView$11;-><init>(Lcn/nubia/deskclock/ui/CountDownView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 566
    return-object v0
.end method

.method private drawCountDownProgress(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v2, -0x3d4c0000    # -90.0f

    const/4 v4, 0x0

    .line 1165
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1166
    iget v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mAnimationRotateValue:F

    iget v1, p0, Lcn/nubia/deskclock/ui/CountDownView;->mViewWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v3, p0, Lcn/nubia/deskclock/ui/CountDownView;->mViewHeight:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1167
    iget v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mScaleValue:F

    iget v1, p0, Lcn/nubia/deskclock/ui/CountDownView;->mScaleValue:F

    iget v3, p0, Lcn/nubia/deskclock/ui/CountDownView;->mViewWidth:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v5, p0, Lcn/nubia/deskclock/ui/CountDownView;->mViewHeight:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p1, v0, v1, v3, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1168
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTimerHelper:Lcn/nubia/deskclock/model/TimerHelper;

    invoke-virtual {v0}, Lcn/nubia/deskclock/model/TimerHelper;->isTimeZero()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1170
    iget-object v1, p0, Lcn/nubia/deskclock/ui/CountDownView;->mDialDstRectF2:Landroid/graphics/RectF;

    const/high16 v3, -0x3c4c0000    # -360.0f

    iget-object v5, p0, Lcn/nubia/deskclock/ui/CountDownView;->mRotatePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1178
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1179
    return-void

    .line 1173
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mStartCountDownFlag:Z

    if-nez v0, :cond_0

    .line 1174
    iget-object v1, p0, Lcn/nubia/deskclock/ui/CountDownView;->mDialDstRectF2:Landroid/graphics/RectF;

    iget v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mRotateArcAngle:F

    const/high16 v3, 0x43b40000    # 360.0f

    sub-float v3, v0, v3

    iget-object v5, p0, Lcn/nubia/deskclock/ui/CountDownView;->mRotatePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1175
    iput-boolean v4, p0, Lcn/nubia/deskclock/ui/CountDownView;->mStartCountDownFlag:Z

    goto :goto_0
.end method

.method private drawText(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1152
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1153
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTextAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1154
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/deskclock/ui/CountDownView;->mSecondTextSize:I

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTimeTextScaleValues:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1155
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1156
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTimerHelper:Lcn/nubia/deskclock/model/TimerHelper;

    invoke-virtual {v0}, Lcn/nubia/deskclock/model/TimerHelper;->convertTimeToStr()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcn/nubia/deskclock/ui/CountDownView;->mViewWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mViewHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTextBaseLineY:F

    add-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTextMargin:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1157
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1158
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 126
    .local v1, "resources":Landroid/content/res/Resources;
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mDialPlateBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 127
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mDensity:F

    .line 128
    new-instance v2, Lcn/nubia/deskclock/model/CountDownConfiguration;

    invoke-direct {v2, p1}, Lcn/nubia/deskclock/model/CountDownConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mConfig:Lcn/nubia/deskclock/model/CountDownConfiguration;

    .line 129
    const v2, 0x7f020080

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mDialPlateBitmap:Landroid/graphics/Bitmap;

    .line 132
    :cond_0
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mMatrix:Landroid/graphics/Matrix;

    if-nez v2, :cond_1

    .line 133
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mMatrix:Landroid/graphics/Matrix;

    .line 135
    :cond_1
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mBitmapCutRectF:Landroid/graphics/RectF;

    if-nez v2, :cond_2

    .line 136
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mBitmapCutRectF:Landroid/graphics/RectF;

    .line 138
    :cond_2
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mBitmapCutPath:Landroid/graphics/Path;

    if-nez v2, :cond_3

    .line 139
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mBitmapCutPath:Landroid/graphics/Path;

    .line 141
    :cond_3
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTimerHelper:Lcn/nubia/deskclock/model/TimerHelper;

    if-nez v2, :cond_4

    .line 142
    new-instance v2, Lcn/nubia/deskclock/model/TimerHelper;

    const-wide/16 v4, 0x0

    invoke-direct {v2, v4, v5}, Lcn/nubia/deskclock/model/TimerHelper;-><init>(J)V

    iput-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTimerHelper:Lcn/nubia/deskclock/model/TimerHelper;

    .line 144
    :cond_4
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTouchRegionRectF:Landroid/graphics/RectF;

    if-nez v2, :cond_5

    .line 145
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTouchRegionRectF:Landroid/graphics/RectF;

    .line 147
    :cond_5
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mHandleDrawPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_6

    .line 148
    iput v6, p0, Lcn/nubia/deskclock/ui/CountDownView;->mEnterOrExitAlpha:I

    .line 149
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mHandleDrawPaint:Landroid/graphics/Paint;

    .line 150
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mHandleDrawPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcn/nubia/deskclock/ui/CountDownView;->mEnterOrExitAlpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 152
    :cond_6
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mRotateCircle:Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;

    if-nez v2, :cond_7

    .line 153
    new-instance v2, Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;

    invoke-direct {v2, p0}, Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;-><init>(Lcn/nubia/deskclock/ui/CountDownView;)V

    iput-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mRotateCircle:Lcn/nubia/deskclock/ui/CountDownView$RotateCircle;

    .line 155
    :cond_7
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mControlHandle:Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;

    if-nez v2, :cond_8

    .line 156
    new-instance v2, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;

    invoke-direct {v2, p0}, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;-><init>(Lcn/nubia/deskclock/ui/CountDownView;)V

    iput-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mControlHandle:Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;

    .line 157
    iput-boolean v6, p0, Lcn/nubia/deskclock/ui/CountDownView;->mHandlerFlag:Z

    .line 159
    :cond_8
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mhandleForRefresh:Lcn/nubia/deskclock/ui/CountDownView$handleForRefresh;

    if-nez v2, :cond_9

    .line 160
    new-instance v2, Lcn/nubia/deskclock/ui/CountDownView$handleForRefresh;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcn/nubia/deskclock/ui/CountDownView$handleForRefresh;-><init>(Lcn/nubia/deskclock/ui/CountDownView;Landroid/os/Looper;)V

    iput-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mhandleForRefresh:Lcn/nubia/deskclock/ui/CountDownView$handleForRefresh;

    .line 163
    :cond_9
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mDialSrcRectF:Landroid/graphics/Rect;

    .line 164
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mDialDstRectF:Landroid/graphics/RectF;

    .line 165
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mDialDstRectF2:Landroid/graphics/RectF;

    .line 166
    const v2, 0x7f0a00ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcn/nubia/deskclock/ui/CountDownView;->mDialPlateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mPaddingDistance:I

    .line 167
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mDialSrcRectF:Landroid/graphics/Rect;

    iget-object v3, p0, Lcn/nubia/deskclock/ui/CountDownView;->mDialPlateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcn/nubia/deskclock/ui/CountDownView;->mDialPlateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 168
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_a

    .line 169
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mPaint:Landroid/graphics/Paint;

    .line 170
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 171
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 172
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 173
    iput v6, p0, Lcn/nubia/deskclock/ui/CountDownView;->mPaintAlpha:I

    .line 175
    :cond_a
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTextPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_b

    .line 176
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTextPaint:Landroid/graphics/Paint;

    .line 177
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTextPaint:Landroid/graphics/Paint;

    const v3, 0x7f0f003d

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 178
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 179
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a008b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTextMargin:F

    .line 181
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTextPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/deskclock/DeskClockApplication;->getDinMediumFonts()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 182
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 183
    .local v0, "fm":Landroid/graphics/Paint$FontMetrics;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a008c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mSecondTextSize:I

    .line 185
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTextPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcn/nubia/deskclock/ui/CountDownView;->mSecondTextSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 186
    iput v6, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTextAlpha:I

    .line 187
    const/4 v2, 0x0

    iput v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTimeTextScaleValues:F

    .line 188
    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iput v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTextBaseLineY:F

    .line 190
    .end local v0    # "fm":Landroid/graphics/Paint$FontMetrics;
    :cond_b
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mRotatePaint:Landroid/graphics/Paint;

    if-nez v2, :cond_c

    .line 191
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mRotatePaint:Landroid/graphics/Paint;

    .line 192
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mRotatePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 193
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mRotatePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 194
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mRotatePaint:Landroid/graphics/Paint;

    const/high16 v3, 0x41300000    # 11.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 195
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mRotatePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 196
    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mRotatePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/CountDownView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f003b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 199
    :cond_c
    return-void
.end method

.method private refreshView()V
    .locals 0

    .prologue
    .line 1118
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/CountDownView;->invalidate()V

    .line 1119
    return-void
.end method

.method private refreshViewForTouch(Z)V
    .locals 4
    .param p1, "forceRefresh"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1121
    if-eqz p1, :cond_0

    .line 1123
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mhandleForRefresh:Lcn/nubia/deskclock/ui/CountDownView$handleForRefresh;

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/CountDownView$handleForRefresh;->sendEmptyMessage(I)Z

    .line 1127
    :goto_0
    return-void

    .line 1125
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mhandleForRefresh:Lcn/nubia/deskclock/ui/CountDownView$handleForRefresh;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/deskclock/ui/CountDownView$handleForRefresh;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private resetAnimationParams()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 519
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 520
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mRotatePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 521
    iput v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mScaleValue:F

    .line 522
    iput v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mAnimationRotateValue:F

    .line 523
    iput v1, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTextAlpha:I

    .line 524
    iput v1, p0, Lcn/nubia/deskclock/ui/CountDownView;->mPaintAlpha:I

    .line 525
    iput-boolean v1, p0, Lcn/nubia/deskclock/ui/CountDownView;->mIsNotZeroTimeFlag:Z

    .line 526
    iput v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTimeTextScaleValues:F

    .line 527
    return-void
.end method


# virtual methods
.method public getCanScroll()Z
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mCanScroll:Z

    return v0
.end method

.method public getCurrentHour()I
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTimerHelper:Lcn/nubia/deskclock/model/TimerHelper;

    invoke-virtual {v0}, Lcn/nubia/deskclock/model/TimerHelper;->getHour()I

    move-result v0

    return v0
.end method

.method public getCurrentMinute()I
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTimerHelper:Lcn/nubia/deskclock/model/TimerHelper;

    invoke-virtual {v0}, Lcn/nubia/deskclock/model/TimerHelper;->getMinute()I

    move-result v0

    return v0
.end method

.method public getCurrentOnlySecond()I
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTimerHelper:Lcn/nubia/deskclock/model/TimerHelper;

    invoke-virtual {v0}, Lcn/nubia/deskclock/model/TimerHelper;->getTime()J

    move-result-wide v0

    long-to-int v0, v0

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public getCurrentSecond()I
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTimerHelper:Lcn/nubia/deskclock/model/TimerHelper;

    invoke-virtual {v0}, Lcn/nubia/deskclock/model/TimerHelper;->getSecond()I

    move-result v0

    return v0
.end method

.method public getCurrentTime()J
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTimerHelper:Lcn/nubia/deskclock/model/TimerHelper;

    invoke-virtual {v0}, Lcn/nubia/deskclock/model/TimerHelper;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimerHelper()Lcn/nubia/deskclock/model/TimerHelper;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTimerHelper:Lcn/nubia/deskclock/model/TimerHelper;

    return-object v0
.end method

.method public isTimeZero()Z
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTimerHelper:Lcn/nubia/deskclock/model/TimerHelper;

    invoke-virtual {v0}, Lcn/nubia/deskclock/model/TimerHelper;->isTimeZero()Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const-wide/16 v4, 0x0

    .line 228
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 229
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mDialPlateBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mEnableDraw:Z

    if-nez v0, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 233
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcn/nubia/deskclock/ui/CountDownView;->mWidthRatio:F

    iget v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mHeightRatio:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 234
    iget v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mAnimationRotateValue:F

    iget v1, p0, Lcn/nubia/deskclock/ui/CountDownView;->mViewWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mViewHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 235
    iget v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mScaleValue:F

    iget v1, p0, Lcn/nubia/deskclock/ui/CountDownView;->mScaleValue:F

    iget v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mViewWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcn/nubia/deskclock/ui/CountDownView;->mViewHeight:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 237
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTimerHelper:Lcn/nubia/deskclock/model/TimerHelper;

    invoke-virtual {v0}, Lcn/nubia/deskclock/model/TimerHelper;->isTimeZero()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 238
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 242
    :goto_1
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mDialPlateBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/CountDownView;->mDialSrcRectF:Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mDialDstRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcn/nubia/deskclock/ui/CountDownView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 244
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 246
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/CountDownView;->drawCountDownProgress(Landroid/graphics/Canvas;)V

    .line 247
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mInnerTriangeCircleView:Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;

    if-eqz v0, :cond_2

    .line 248
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTimerHelper:Lcn/nubia/deskclock/model/TimerHelper;

    invoke-virtual {v0}, Lcn/nubia/deskclock/model/TimerHelper;->getTime()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mIsNotZeroTimeFlag:Z

    if-eqz v0, :cond_4

    .line 249
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mInnerTriangeCircleView:Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->setScaleFraction(F)V

    .line 250
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mInnerTriangeCircleView:Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->invalidate()V

    .line 259
    :cond_2
    :goto_2
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/CountDownView;->drawText(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 240
    :cond_3
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/deskclock/ui/CountDownView;->mPaintAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    .line 251
    :cond_4
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTimerHelper:Lcn/nubia/deskclock/model/TimerHelper;

    invoke-virtual {v0}, Lcn/nubia/deskclock/model/TimerHelper;->getTime()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_5

    .line 252
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mInnerTriangeCircleView:Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTimerHelper:Lcn/nubia/deskclock/model/TimerHelper;

    invoke-virtual {v1}, Lcn/nubia/deskclock/model/TimerHelper;->getScaleFraction()F

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->setScaleFraction(F)V

    .line 253
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mInnerTriangeCircleView:Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->invalidate()V

    goto :goto_2

    .line 254
    :cond_5
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTimerHelper:Lcn/nubia/deskclock/model/TimerHelper;

    invoke-virtual {v0}, Lcn/nubia/deskclock/model/TimerHelper;->getTime()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mStartEnterAnimation:Z

    if-eqz v0, :cond_2

    .line 255
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mInnerTriangeCircleView:Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTimerHelper:Lcn/nubia/deskclock/model/TimerHelper;

    invoke-virtual {v1}, Lcn/nubia/deskclock/model/TimerHelper;->getScaleFraction()F

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->setScaleFraction(F)V

    .line 256
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mInnerTriangeCircleView:Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->invalidate()V

    goto :goto_2
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/high16 v8, 0x40a00000    # 5.0f

    const/high16 v7, 0x40000000    # 2.0f

    .line 203
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 204
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mDialPlateBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 219
    :goto_0
    return-void

    .line 207
    :cond_0
    sub-int v0, p4, p2

    iput v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mViewWidth:I

    .line 208
    sub-int v0, p5, p3

    iput v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mViewHeight:I

    .line 209
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTouchRegionRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcn/nubia/deskclock/ui/CountDownView;->mViewWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v7

    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mConfig:Lcn/nubia/deskclock/model/CountDownConfiguration;

    invoke-virtual {v2}, Lcn/nubia/deskclock/model/CountDownConfiguration;->getMaxTouchRadius()F

    move-result v2

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    iget v3, p0, Lcn/nubia/deskclock/ui/CountDownView;->mViewWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v7

    iget-object v4, p0, Lcn/nubia/deskclock/ui/CountDownView;->mConfig:Lcn/nubia/deskclock/model/CountDownConfiguration;

    .line 210
    invoke-virtual {v4}, Lcn/nubia/deskclock/model/CountDownConfiguration;->getMaxTouchRadius()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcn/nubia/deskclock/ui/CountDownView;->mConfig:Lcn/nubia/deskclock/model/CountDownConfiguration;

    invoke-virtual {v4}, Lcn/nubia/deskclock/model/CountDownConfiguration;->getMaxTouchRadius()F

    move-result v4

    mul-float/2addr v4, v7

    .line 209
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 211
    iget v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mViewWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lcn/nubia/deskclock/ui/CountDownView;->mDialPlateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mWidthRatio:F

    .line 212
    iget v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mViewHeight:I

    int-to-float v0, v0

    iget-object v1, p0, Lcn/nubia/deskclock/ui/CountDownView;->mDialPlateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mHeightRatio:F

    .line 213
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mDialDstRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcn/nubia/deskclock/ui/CountDownView;->mViewWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mDialPlateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcn/nubia/deskclock/ui/CountDownView;->mWidthRatio:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mPaddingDistance:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mViewHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcn/nubia/deskclock/ui/CountDownView;->mDialPlateBitmap:Landroid/graphics/Bitmap;

    .line 214
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcn/nubia/deskclock/ui/CountDownView;->mHeightRatio:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/deskclock/ui/CountDownView;->mPaddingDistance:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/deskclock/ui/CountDownView;->mViewWidth:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcn/nubia/deskclock/ui/CountDownView;->mDialPlateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcn/nubia/deskclock/ui/CountDownView;->mWidthRatio:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    iget v4, p0, Lcn/nubia/deskclock/ui/CountDownView;->mPaddingDistance:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcn/nubia/deskclock/ui/CountDownView;->mViewHeight:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcn/nubia/deskclock/ui/CountDownView;->mDialPlateBitmap:Landroid/graphics/Bitmap;

    .line 215
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcn/nubia/deskclock/ui/CountDownView;->mHeightRatio:F

    mul-float/2addr v5, v6

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    iget v5, p0, Lcn/nubia/deskclock/ui/CountDownView;->mPaddingDistance:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 213
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 216
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mDialDstRectF2:Landroid/graphics/RectF;

    iget v1, p0, Lcn/nubia/deskclock/ui/CountDownView;->mViewWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mDialPlateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcn/nubia/deskclock/ui/CountDownView;->mWidthRatio:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mPaddingDistance:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    add-float/2addr v1, v8

    iget v2, p0, Lcn/nubia/deskclock/ui/CountDownView;->mViewHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcn/nubia/deskclock/ui/CountDownView;->mDialPlateBitmap:Landroid/graphics/Bitmap;

    .line 217
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcn/nubia/deskclock/ui/CountDownView;->mHeightRatio:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/deskclock/ui/CountDownView;->mPaddingDistance:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    add-float/2addr v2, v8

    iget v3, p0, Lcn/nubia/deskclock/ui/CountDownView;->mViewWidth:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcn/nubia/deskclock/ui/CountDownView;->mDialPlateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcn/nubia/deskclock/ui/CountDownView;->mWidthRatio:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    iget v4, p0, Lcn/nubia/deskclock/ui/CountDownView;->mPaddingDistance:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v3, v8

    iget v4, p0, Lcn/nubia/deskclock/ui/CountDownView;->mViewHeight:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcn/nubia/deskclock/ui/CountDownView;->mDialPlateBitmap:Landroid/graphics/Bitmap;

    .line 218
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcn/nubia/deskclock/ui/CountDownView;->mHeightRatio:F

    mul-float/2addr v5, v6

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    iget v5, p0, Lcn/nubia/deskclock/ui/CountDownView;->mPaddingDistance:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sub-float/2addr v4, v8

    .line 216
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1130
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mDialPlateBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1131
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mDialPlateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1132
    iput-object v1, p0, Lcn/nubia/deskclock/ui/CountDownView;->mDialPlateBitmap:Landroid/graphics/Bitmap;

    .line 1134
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mhandleForRefresh:Lcn/nubia/deskclock/ui/CountDownView$handleForRefresh;

    if-eqz v0, :cond_1

    .line 1135
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mhandleForRefresh:Lcn/nubia/deskclock/ui/CountDownView$handleForRefresh;

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/CountDownView$handleForRefresh;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1137
    :cond_1
    return-void
.end method

.method public setCanScroll(Z)V
    .locals 0
    .param p1, "canscroll"    # Z

    .prologue
    .line 267
    iput-boolean p1, p0, Lcn/nubia/deskclock/ui/CountDownView;->mCanScroll:Z

    .line 268
    return-void
.end method

.method public setEnableDraw(Z)V
    .locals 0
    .param p1, "darw"    # Z

    .prologue
    .line 1140
    iput-boolean p1, p0, Lcn/nubia/deskclock/ui/CountDownView;->mEnableDraw:Z

    .line 1141
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 263
    iput-object p1, p0, Lcn/nubia/deskclock/ui/CountDownView;->mHanler:Landroid/os/Handler;

    .line 264
    return-void
.end method

.method public setInnerTriangeCircleView(Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;)V
    .locals 0
    .param p1, "innerTriangeCircleView"    # Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;

    .prologue
    .line 1144
    iput-object p1, p0, Lcn/nubia/deskclock/ui/CountDownView;->mInnerTriangeCircleView:Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;

    .line 1145
    return-void
.end method

.method public setTime(III)V
    .locals 2
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I

    .prologue
    .line 303
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTimerHelper:Lcn/nubia/deskclock/model/TimerHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/deskclock/model/TimerHelper;->setTime(III)V

    .line 304
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTimerHelper:Lcn/nubia/deskclock/model/TimerHelper;

    invoke-virtual {v0}, Lcn/nubia/deskclock/model/TimerHelper;->convertTimeToAngle()F

    move-result v0

    iput v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mRotateAngle:F

    .line 305
    iget v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mRotateAngle:F

    iput v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mRotateArcAngle:F

    .line 306
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTimerTextView2:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTimerHelper:Lcn/nubia/deskclock/model/TimerHelper;

    invoke-virtual {v1}, Lcn/nubia/deskclock/model/TimerHelper;->convertTimeToStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/CountDownView;->refreshView()V

    .line 308
    return-void
.end method

.method public setTimerTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tv2"    # Landroid/widget/TextView;

    .prologue
    .line 222
    iput-object p1, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTimerTextView2:Landroid/widget/TextView;

    .line 223
    return-void
.end method

.method public setTotalTime(I)V
    .locals 1
    .param p1, "time"    # I

    .prologue
    .line 1148
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTimerHelper:Lcn/nubia/deskclock/model/TimerHelper;

    invoke-virtual {v0, p1}, Lcn/nubia/deskclock/model/TimerHelper;->setTotalTime(I)V

    .line 1149
    return-void
.end method

.method public startControlHideAnimator()V
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mControlHandle:Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->startHandleHideAnimator()V

    .line 777
    return-void
.end method

.method public startControlShowAnimator()V
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mControlHandle:Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/CountDownView$CountDownControlHandle;->startHandleShowAnimator()V

    .line 773
    return-void
.end method

.method public startEnterAnimator()V
    .locals 13

    .prologue
    .line 312
    iget-object v8, p0, Lcn/nubia/deskclock/ui/CountDownView;->mEnterAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v8, :cond_0

    .line 313
    iget-object v8, p0, Lcn/nubia/deskclock/ui/CountDownView;->mEnterAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->cancel()V

    .line 314
    const/4 v8, 0x0

    iput-object v8, p0, Lcn/nubia/deskclock/ui/CountDownView;->mEnterAnimatorSet:Landroid/animation/AnimatorSet;

    .line 316
    :cond_0
    iget-object v8, p0, Lcn/nubia/deskclock/ui/CountDownView;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v8, :cond_1

    .line 317
    iget-object v8, p0, Lcn/nubia/deskclock/ui/CountDownView;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->cancel()V

    .line 318
    const/4 v8, 0x0

    iput-object v8, p0, Lcn/nubia/deskclock/ui/CountDownView;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    .line 320
    :cond_1
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcn/nubia/deskclock/ui/CountDownView;->mIsNotZeroTimeFlag:Z

    .line 321
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Lcn/nubia/deskclock/ui/CountDownView;->mEnterAnimatorSet:Landroid/animation/AnimatorSet;

    .line 324
    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_0

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 325
    .local v0, "colorCircleAlphaAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v8, 0x258

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 326
    new-instance v8, Lcn/nubia/deskclock/ui/CountDownView$1;

    invoke-direct {v8, p0}, Lcn/nubia/deskclock/ui/CountDownView$1;-><init>(Lcn/nubia/deskclock/ui/CountDownView;)V

    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 337
    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    new-instance v10, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v10}, Landroid/view/animation/LinearInterpolator;-><init>()V

    const/16 v11, 0x258

    invoke-direct {p0, v8, v9, v10, v11}, Lcn/nubia/deskclock/ui/CountDownView;->createInnerAlphaAnimator(FFLandroid/animation/TimeInterpolator;I)Landroid/animation/Animator;

    move-result-object v4

    .line 342
    .local v4, "exterInnerCircleAlphaAnimation":Landroid/animation/Animator;
    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_1

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 343
    .local v3, "enterTextAlphaAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v8, 0xc8

    invoke-virtual {v3, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 344
    const-wide/16 v8, 0x12c

    invoke-virtual {v3, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 345
    new-instance v8, Landroid/view/animation/PathInterpolator;

    const v9, 0x3dcccccd    # 0.1f

    const v10, 0x3f333333    # 0.7f

    const v11, 0x3dcccccd    # 0.1f

    const v12, 0x3f19999a    # 0.6f

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 346
    new-instance v8, Lcn/nubia/deskclock/ui/CountDownView$2;

    invoke-direct {v8, p0}, Lcn/nubia/deskclock/ui/CountDownView$2;-><init>(Lcn/nubia/deskclock/ui/CountDownView;)V

    invoke-virtual {v3, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 356
    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_2

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 357
    .local v2, "colorCircleScaleAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v8, 0x258

    invoke-virtual {v2, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 358
    new-instance v8, Landroid/view/animation/PathInterpolator;

    const v9, 0x3e99999a    # 0.3f

    const v10, 0x3dcccccd    # 0.1f

    const v11, 0x3e99999a    # 0.3f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 359
    new-instance v8, Lcn/nubia/deskclock/ui/CountDownView$3;

    invoke-direct {v8, p0}, Lcn/nubia/deskclock/ui/CountDownView$3;-><init>(Lcn/nubia/deskclock/ui/CountDownView;)V

    invoke-virtual {v2, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 367
    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_3

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 368
    .local v6, "innerCircleScaleAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v8, 0x258

    invoke-virtual {v6, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 369
    new-instance v8, Landroid/view/animation/PathInterpolator;

    const v9, 0x3e99999a    # 0.3f

    const v10, 0x3dcccccd    # 0.1f

    const v11, 0x3e99999a    # 0.3f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v6, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 370
    new-instance v8, Lcn/nubia/deskclock/ui/CountDownView$4;

    invoke-direct {v8, p0}, Lcn/nubia/deskclock/ui/CountDownView$4;-><init>(Lcn/nubia/deskclock/ui/CountDownView;)V

    invoke-virtual {v6, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 383
    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_4

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 384
    .local v7, "textScaleAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v8, 0xc8

    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 385
    const-wide/16 v8, 0x12c

    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 386
    new-instance v8, Landroid/view/animation/PathInterpolator;

    const v9, 0x3dcccccd    # 0.1f

    const v10, 0x3f333333    # 0.7f

    const v11, 0x3dcccccd    # 0.1f

    const v12, 0x3f19999a    # 0.6f

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 387
    new-instance v8, Lcn/nubia/deskclock/ui/CountDownView$5;

    invoke-direct {v8, p0}, Lcn/nubia/deskclock/ui/CountDownView$5;-><init>(Lcn/nubia/deskclock/ui/CountDownView;)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 396
    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_5

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 397
    .local v1, "colorCircleRotateAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v8, 0x258

    invoke-virtual {v1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 398
    new-instance v8, Landroid/view/animation/PathInterpolator;

    const v9, 0x3e99999a    # 0.3f

    const v10, 0x3dcccccd    # 0.1f

    const v11, 0x3e99999a    # 0.3f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 399
    new-instance v8, Lcn/nubia/deskclock/ui/CountDownView$6;

    invoke-direct {v8, p0}, Lcn/nubia/deskclock/ui/CountDownView$6;-><init>(Lcn/nubia/deskclock/ui/CountDownView;)V

    invoke-virtual {v1, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 407
    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_6

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 408
    .local v5, "innerCircleRotateAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v8, 0x258

    invoke-virtual {v5, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 409
    new-instance v8, Landroid/view/animation/PathInterpolator;

    const v9, 0x3e99999a    # 0.3f

    const v10, 0x3dcccccd    # 0.1f

    const v11, 0x3e99999a    # 0.3f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v5, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 410
    new-instance v8, Lcn/nubia/deskclock/ui/CountDownView$7;

    invoke-direct {v8, p0}, Lcn/nubia/deskclock/ui/CountDownView$7;-><init>(Lcn/nubia/deskclock/ui/CountDownView;)V

    invoke-virtual {v5, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 420
    iget-object v8, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTimerHelper:Lcn/nubia/deskclock/model/TimerHelper;

    invoke-virtual {v8}, Lcn/nubia/deskclock/model/TimerHelper;->isTimeZero()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 427
    :cond_2
    iget-object v8, p0, Lcn/nubia/deskclock/ui/CountDownView;->mEnterAnimatorSet:Landroid/animation/AnimatorSet;

    const/16 v9, 0x8

    new-array v9, v9, [Landroid/animation/Animator;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v10, 0x1

    aput-object v3, v9, v10

    const/4 v10, 0x2

    aput-object v4, v9, v10

    const/4 v10, 0x3

    aput-object v2, v9, v10

    const/4 v10, 0x4

    aput-object v6, v9, v10

    const/4 v10, 0x5

    aput-object v7, v9, v10

    const/4 v10, 0x6

    aput-object v1, v9, v10

    const/4 v10, 0x7

    aput-object v5, v9, v10

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 430
    iget-object v8, p0, Lcn/nubia/deskclock/ui/CountDownView;->mEnterAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v9, Lcn/nubia/deskclock/ui/CountDownView$8;

    invoke-direct {v9, p0}, Lcn/nubia/deskclock/ui/CountDownView$8;-><init>(Lcn/nubia/deskclock/ui/CountDownView;)V

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 452
    iget-object v8, p0, Lcn/nubia/deskclock/ui/CountDownView;->mEnterAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    .line 453
    return-void

    .line 324
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 342
    :array_1
    .array-data 4
        0x0
        0xff
    .end array-data

    .line 356
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 367
    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 383
    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 396
    :array_5
    .array-data 4
        -0x3d4c0000    # -90.0f
        0x0
    .end array-data

    .line 407
    :array_6
    .array-data 4
        -0x3d4c0000    # -90.0f
        0x0
    .end array-data
.end method

.method public startExitAnimator()V
    .locals 13

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/16 v10, 0x14

    const/high16 v9, 0x3f800000    # 1.0f

    .line 456
    iget-object v4, p0, Lcn/nubia/deskclock/ui/CountDownView;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_0

    .line 458
    iget-object v4, p0, Lcn/nubia/deskclock/ui/CountDownView;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    .line 460
    const/4 v4, 0x0

    iput-object v4, p0, Lcn/nubia/deskclock/ui/CountDownView;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    .line 462
    :cond_0
    iget-object v4, p0, Lcn/nubia/deskclock/ui/CountDownView;->mEnterAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_1

    .line 464
    iget-object v4, p0, Lcn/nubia/deskclock/ui/CountDownView;->mEnterAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    .line 466
    const/4 v4, 0x0

    iput-object v4, p0, Lcn/nubia/deskclock/ui/CountDownView;->mEnterAnimatorSet:Landroid/animation/AnimatorSet;

    .line 469
    :cond_1
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcn/nubia/deskclock/ui/CountDownView;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    .line 470
    iget-object v4, p0, Lcn/nubia/deskclock/ui/CountDownView;->mConfig:Lcn/nubia/deskclock/model/CountDownConfiguration;

    .line 471
    invoke-virtual {v4}, Lcn/nubia/deskclock/model/CountDownConfiguration;->getDrawCircleOriginY()F

    move-result v4

    iget-object v5, p0, Lcn/nubia/deskclock/ui/CountDownView;->mConfig:Lcn/nubia/deskclock/model/CountDownConfiguration;

    invoke-virtual {v5}, Lcn/nubia/deskclock/model/CountDownConfiguration;->getMaxCutPlateDistance()F

    move-result v5

    add-float/2addr v4, v5

    iget v5, p0, Lcn/nubia/deskclock/ui/CountDownView;->mDensity:F

    mul-float/2addr v5, v7

    add-float/2addr v4, v5

    iget-object v5, p0, Lcn/nubia/deskclock/ui/CountDownView;->mConfig:Lcn/nubia/deskclock/model/CountDownConfiguration;

    .line 472
    invoke-virtual {v5}, Lcn/nubia/deskclock/model/CountDownConfiguration;->getDrawCircleOriginY()F

    move-result v5

    iget v6, p0, Lcn/nubia/deskclock/ui/CountDownView;->mDensity:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    new-instance v6, Landroid/view/animation/PathInterpolator;

    const v7, 0x3f2b851f    # 0.67f

    const v8, 0x3e19999a    # 0.15f

    invoke-direct {v6, v7, v8, v9, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 470
    invoke-direct {p0, v4, v5, v6, v10}, Lcn/nubia/deskclock/ui/CountDownView;->createCutAnimator(FFLandroid/animation/TimeInterpolator;I)Landroid/animation/Animator;

    move-result-object v2

    .line 475
    .local v2, "exitCutAnimator":Landroid/animation/Animator;
    const/16 v4, 0xff

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-direct {p0, v4, v12, v5, v10}, Lcn/nubia/deskclock/ui/CountDownView;->createTextAlphaAnimator(IILandroid/animation/TimeInterpolator;I)Landroid/animation/Animator;

    move-result-object v0

    .line 478
    .local v0, "exitAlphaAnimator":Landroid/animation/Animator;
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-direct {p0, v9, v11, v4, v10}, Lcn/nubia/deskclock/ui/CountDownView;->createHandleAlphaAnimator(FFLandroid/animation/TimeInterpolator;I)Landroid/animation/Animator;

    move-result-object v3

    .line 481
    .local v3, "exitHandleAlphaAnimator":Landroid/animation/Animator;
    const/high16 v4, 0x42700000    # 60.0f

    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v6, 0x3e4ccccd    # 0.2f

    invoke-direct {v5, v6, v11, v9, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-direct {p0, v11, v4, v5, v10}, Lcn/nubia/deskclock/ui/CountDownView;->createArcAnimator(FFLandroid/animation/TimeInterpolator;I)Landroid/animation/Animator;

    move-result-object v1

    .line 484
    .local v1, "exitArcAnimator":Landroid/animation/Animator;
    iget-object v4, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTimerHelper:Lcn/nubia/deskclock/model/TimerHelper;

    invoke-virtual {v4}, Lcn/nubia/deskclock/model/TimerHelper;->isTimeZero()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 485
    iget-object v4, p0, Lcn/nubia/deskclock/ui/CountDownView;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v0, v5, v12

    const/4 v6, 0x1

    aput-object v2, v5, v6

    const/4 v6, 0x2

    aput-object v3, v5, v6

    const/4 v6, 0x3

    aput-object v1, v5, v6

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 490
    :goto_0
    iget-object v4, p0, Lcn/nubia/deskclock/ui/CountDownView;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v5, Lcn/nubia/deskclock/ui/CountDownView$9;

    invoke-direct {v5, p0}, Lcn/nubia/deskclock/ui/CountDownView$9;-><init>(Lcn/nubia/deskclock/ui/CountDownView;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 515
    iget-object v4, p0, Lcn/nubia/deskclock/ui/CountDownView;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 516
    return-void

    .line 488
    :cond_2
    iget-object v4, p0, Lcn/nubia/deskclock/ui/CountDownView;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v0, v5, v12

    const/4 v6, 0x1

    aput-object v2, v5, v6

    const/4 v6, 0x2

    aput-object v3, v5, v6

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0
.end method

.method public startReSetAnimator()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 631
    iget-boolean v4, p0, Lcn/nubia/deskclock/ui/CountDownView;->mIsNotZeroTimeFlag:Z

    if-eqz v4, :cond_1

    .line 632
    const/4 v4, 0x0

    iput v4, p0, Lcn/nubia/deskclock/ui/CountDownView;->mScaleFraction:F

    .line 636
    :goto_0
    iget-object v4, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTimerHelper:Lcn/nubia/deskclock/model/TimerHelper;

    invoke-virtual {v4}, Lcn/nubia/deskclock/model/TimerHelper;->reset()V

    .line 637
    iput-boolean v6, p0, Lcn/nubia/deskclock/ui/CountDownView;->mIsNotZeroTimeFlag:Z

    .line 638
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 639
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    iget-object v4, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTimerTextView2:Landroid/widget/TextView;

    iget-object v5, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTimerHelper:Lcn/nubia/deskclock/model/TimerHelper;

    invoke-virtual {v5}, Lcn/nubia/deskclock/model/TimerHelper;->convertTimeToStr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 642
    iget v3, p0, Lcn/nubia/deskclock/ui/CountDownView;->mRotateArcAngle:F

    .line 643
    .local v3, "outerRotateAngle":F
    const/4 v4, 0x2

    new-array v4, v4, [F

    aput v3, v4, v6

    const/high16 v5, 0x43b40000    # 360.0f

    aput v5, v4, v7

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 644
    .local v2, "outCircleAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v4, 0x3c

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 645
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 646
    new-instance v4, Lcn/nubia/deskclock/ui/CountDownView$15;

    invoke-direct {v4, p0}, Lcn/nubia/deskclock/ui/CountDownView$15;-><init>(Lcn/nubia/deskclock/ui/CountDownView;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 653
    new-instance v4, Lcn/nubia/deskclock/ui/CountDownView$16;

    invoke-direct {v4, p0}, Lcn/nubia/deskclock/ui/CountDownView$16;-><init>(Lcn/nubia/deskclock/ui/CountDownView;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 663
    iget-object v4, p0, Lcn/nubia/deskclock/ui/CountDownView;->mInnerTriangeCircleView:Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;

    if-eqz v4, :cond_0

    .line 664
    iget-object v4, p0, Lcn/nubia/deskclock/ui/CountDownView;->mInnerTriangeCircleView:Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;

    invoke-virtual {v4}, Lcn/nubia/deskclock/ui/CountDownInnerTriangeCircleView;->getResetTimeAnimator()Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 665
    .local v1, "mAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 666
    new-array v4, v7, [Landroid/animation/Animator;

    aput-object v2, v4, v6

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 668
    .end local v1    # "mAnimator":Landroid/animation/ValueAnimator;
    :cond_0
    new-array v4, v7, [Landroid/animation/Animator;

    aput-object v2, v4, v6

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 669
    new-instance v4, Lcn/nubia/deskclock/ui/CountDownView$17;

    invoke-direct {v4, p0}, Lcn/nubia/deskclock/ui/CountDownView$17;-><init>(Lcn/nubia/deskclock/ui/CountDownView;)V

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 694
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 695
    return-void

    .line 634
    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v2    # "outCircleAnimator":Landroid/animation/ValueAnimator;
    .end local v3    # "outerRotateAngle":F
    :cond_1
    iget-object v4, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTimerHelper:Lcn/nubia/deskclock/model/TimerHelper;

    invoke-virtual {v4}, Lcn/nubia/deskclock/model/TimerHelper;->getScaleFraction()F

    move-result v4

    iput v4, p0, Lcn/nubia/deskclock/ui/CountDownView;->mScaleFraction:F

    goto :goto_0
.end method

.method public startSetTimeAnimator(IIILcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$onMinuteAndScondSetListener;Lcn/nubia/deskclock/inter/ICountDownCallback;)V
    .locals 14
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I
    .param p4, "callback"    # Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$onMinuteAndScondSetListener;
    .param p5, "countDownCallback"    # Lcn/nubia/deskclock/inter/ICountDownCallback;

    .prologue
    .line 699
    const-string v9, "CountDownView"

    const-string v10, "startSetTimeAnimator: "

    invoke-static {v9, v10}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    iget-object v9, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTimerHelper:Lcn/nubia/deskclock/model/TimerHelper;

    invoke-virtual {v9}, Lcn/nubia/deskclock/model/TimerHelper;->convertTimeToAngle()F

    move-result v5

    .line 701
    .local v5, "firstangle":F
    invoke-virtual/range {p0 .. p3}, Lcn/nubia/deskclock/ui/CountDownView;->setTime(III)V

    .line 702
    iget-object v9, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTimerHelper:Lcn/nubia/deskclock/model/TimerHelper;

    invoke-virtual {v9}, Lcn/nubia/deskclock/model/TimerHelper;->convertTimeToAngle()F

    move-result v7

    .line 703
    .local v7, "secondangle":F
    sub-float v6, v5, v7

    .line 704
    .local v6, "firstsub":F
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-double v10, v9

    const-wide v12, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpg-double v9, v10, v12

    if-gtz v9, :cond_0

    .line 769
    :goto_0
    return-void

    .line 707
    :cond_0
    float-to-int v9, v5

    int-to-float v9, v9

    sub-float v3, v5, v9

    .line 708
    .local v3, "f1":F
    float-to-int v9, v7

    int-to-float v9, v9

    sub-float v4, v7, v9

    .line 709
    .local v4, "f2":F
    float-to-int v9, v5

    div-int/lit16 v9, v9, 0x438

    if-lez v9, :cond_2

    .line 710
    float-to-int v9, v5

    rem-int/lit16 v9, v9, 0x168

    add-int/lit16 v9, v9, 0x438

    int-to-float v9, v9

    add-float v5, v9, v3

    .line 714
    :goto_1
    float-to-int v9, v7

    div-int/lit16 v9, v9, 0x438

    if-lez v9, :cond_3

    .line 715
    float-to-int v9, v7

    rem-int/lit16 v9, v9, 0x168

    add-int/lit16 v9, v9, 0x438

    int-to-float v9, v9

    add-float v7, v9, v4

    .line 720
    :goto_2
    sub-float v9, v7, v5

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 722
    .local v8, "secondsub":F
    const/high16 v9, 0x44870000    # 1080.0f

    cmpl-float v9, v7, v9

    if-ltz v9, :cond_1

    const/high16 v9, 0x44870000    # 1080.0f

    cmpl-float v9, v5, v9

    if-ltz v9, :cond_1

    .line 723
    const/4 v9, 0x0

    cmpl-float v9, v6, v9

    if-lez v9, :cond_4

    .line 724
    const/high16 v9, 0x43b40000    # 360.0f

    add-float/2addr v5, v9

    .line 730
    :cond_1
    :goto_3
    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    aput v5, v9, v10

    const/4 v10, 0x1

    aput v7, v9, v10

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 731
    .local v2, "animator":Landroid/animation/ValueAnimator;
    new-instance v9, Landroid/view/animation/PathInterpolator;

    const v10, 0x3e4ccccd    # 0.2f

    const/4 v11, 0x0

    const v12, 0x3e99999a    # 0.3f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 732
    new-instance v9, Lcn/nubia/deskclock/ui/CountDownView$18;

    invoke-direct {v9, p0}, Lcn/nubia/deskclock/ui/CountDownView$18;-><init>(Lcn/nubia/deskclock/ui/CountDownView;)V

    invoke-virtual {v2, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 740
    new-instance v9, Lcn/nubia/deskclock/ui/CountDownView$19;

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-direct {v9, p0, v0, v1}, Lcn/nubia/deskclock/ui/CountDownView$19;-><init>(Lcn/nubia/deskclock/ui/CountDownView;Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$onMinuteAndScondSetListener;Lcn/nubia/deskclock/inter/ICountDownCallback;)V

    invoke-virtual {v2, v9}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 768
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 712
    .end local v2    # "animator":Landroid/animation/ValueAnimator;
    .end local v8    # "secondsub":F
    :cond_2
    float-to-int v9, v5

    rem-int/lit16 v9, v9, 0x438

    int-to-float v9, v9

    add-float v5, v9, v3

    goto :goto_1

    .line 717
    :cond_3
    float-to-int v9, v7

    rem-int/lit16 v9, v9, 0x438

    int-to-float v9, v9

    add-float v7, v9, v4

    goto :goto_2

    .line 726
    .restart local v8    # "secondsub":F
    :cond_4
    cmpg-float v9, v7, v5

    if-gtz v9, :cond_1

    .line 727
    const/high16 v9, 0x43b40000    # 360.0f

    add-float/2addr v7, v9

    goto :goto_3
.end method

.method public updateTime(J)V
    .locals 5
    .param p1, "time"    # J

    .prologue
    const/4 v4, 0x1

    .line 780
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTimerHelper:Lcn/nubia/deskclock/model/TimerHelper;

    invoke-virtual {v0}, Lcn/nubia/deskclock/model/TimerHelper;->isTimeZero()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 782
    iput-boolean v4, p0, Lcn/nubia/deskclock/ui/CountDownView;->mIsNotZeroTimeFlag:Z

    .line 783
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mHanler:Landroid/os/Handler;

    const v1, 0x12341

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 795
    :goto_0
    return-void

    .line 786
    :cond_0
    iput-boolean v4, p0, Lcn/nubia/deskclock/ui/CountDownView;->mHandlerFlag:Z

    .line 787
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTimerHelper:Lcn/nubia/deskclock/model/TimerHelper;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/deskclock/model/TimerHelper;->subTime(J)V

    .line 788
    iget-object v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mTimerHelper:Lcn/nubia/deskclock/model/TimerHelper;

    invoke-virtual {v0}, Lcn/nubia/deskclock/model/TimerHelper;->convertTimeToAngle()F

    move-result v0

    iput v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mRotateAngle:F

    .line 789
    iget v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mRotateAngle:F

    iput v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mRotateArcAngle:F

    .line 790
    iget v0, p0, Lcn/nubia/deskclock/ui/CountDownView;->mRotateArcAngle:F

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 791
    iput-boolean v4, p0, Lcn/nubia/deskclock/ui/CountDownView;->mIsNotZeroTimeFlag:Z

    .line 794
    :cond_1
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/CountDownView;->refreshView()V

    goto :goto_0
.end method
