.class public Lcn/nubia/deskclock/ui/StopWatchClockView;
.super Landroid/view/View;
.source "StopWatchClockView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;,
        Lcn/nubia/deskclock/ui/StopWatchClockView$TimingState;,
        Lcn/nubia/deskclock/ui/StopWatchClockView$VisibleState;
    }
.end annotation


# static fields
.field private static final ENTER_ALPHA_DELAY_TIME:I = 0x64

.field private static final ENTER_ALPHA_TIME:I = 0x258

.field private static final ENTER_DIAL_TIME:I = 0x258

.field private static final ENTER_HAND_ANGLE_DELAY_TIME:I = 0x96

.field private static final ENTER_HAND_ANGLE_TIME:I = 0x1c2

.field private static final ENTER_MS_DELAY_TIME:I = 0xc8

.field private static final ENTER_MS_TIME:I = 0x190

.field private static final ENTER_SCALE_TIME:I = 0x258

.field private static final EXIT_TIME:I = 0x64

.field private static final RESET_TIME:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "StopWatchClockView"


# instance fields
.field private mAlpha:I

.field private mAlphaInterpolator:Landroid/view/animation/Interpolator;

.field private mAnimatorHandAngle:F

.field private mCenterX:F

.field private mCenterY:F

.field private mCircleRadius:F

.field private mContext:Landroid/content/Context;

.field private mDeciBaseLineY:F

.field private mDeciCircleBgBitmap:Landroid/graphics/Bitmap;

.field private mDeciSecondString:Ljava/lang/String;

.field private mDeciStringHeight:F

.field private mDeciTextPaint:Landroid/graphics/Paint;

.field private mDeciTextSize:I

.field private mDialBgBitmap:Landroid/graphics/Bitmap;

.field private mDialBitmap:Landroid/graphics/Bitmap;

.field private mDialDstRectF:Landroid/graphics/RectF;

.field private mDialMaxWidth:F

.field private mDialSrcRectF:Landroid/graphics/Rect;

.field private mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field private mEnableDraw:Z

.field private mEnterAnimationFlag:Z

.field private mEnterAnimatorSet:Landroid/animation/AnimatorSet;

.field private mExitAnimatorSet:Landroid/animation/AnimatorSet;

.field private mHandAlpha:I

.field private mHandAngle:F

.field private mInnerColorBitmap:Landroid/graphics/Bitmap;

.field private mInnerDriverCircleBitmap:Landroid/graphics/Bitmap;

.field private mIsFirst:Z

.field private mIsReset:Z

.field private mMillionSecAlpha:I

.field private mMinAndSecScaleValues:F

.field private mMinHandAngle:F

.field private mPaint:Landroid/graphics/Paint;

.field private mSecTextScaleValues:F

.field private mSecondString:Ljava/lang/String;

.field private mSecondStringHeight:F

.field private mSecondTextSize:I

.field private mStopWatchControl:Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;

.field private mTextBaseLineY:F

.field private mTextMargin:F

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTimeFormater:Lcn/nubia/deskclock/util/StopWatchTimeFormater;

.field private mTimeTextScaleValues:F

.field private mTimingState:Lcn/nubia/deskclock/ui/StopWatchClockView$TimingState;

.field private mVisibleState:Lcn/nubia/deskclock/ui/StopWatchClockView$VisibleState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/deskclock/ui/StopWatchClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    iput-object p1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mContext:Landroid/content/Context;

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    iput-boolean v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mEnableDraw:Z

    .line 109
    iput-boolean v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mIsFirst:Z

    .line 110
    iput-boolean v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mIsReset:Z

    .line 111
    iput-boolean v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mEnterAnimationFlag:Z

    .line 121
    iput-object p1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mContext:Landroid/content/Context;

    .line 122
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/StopWatchClockView;->initializeResource(Landroid/content/Context;)V

    .line 123
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/StopWatchClockView;->initializeDialHand(Landroid/content/Context;)V

    .line 124
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/StopWatchClockView;->intializeText(Landroid/content/Context;)V

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/deskclock/ui/StopWatchClockView;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/StopWatchClockView;

    .prologue
    .line 37
    iget v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mHandAlpha:I

    return v0
.end method

.method static synthetic access$002(Lcn/nubia/deskclock/ui/StopWatchClockView;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/StopWatchClockView;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mHandAlpha:I

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/deskclock/ui/StopWatchClockView;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/StopWatchClockView;

    .prologue
    .line 37
    iget v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mMillionSecAlpha:I

    return v0
.end method

.method static synthetic access$102(Lcn/nubia/deskclock/ui/StopWatchClockView;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/StopWatchClockView;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mMillionSecAlpha:I

    return p1
.end method

.method static synthetic access$200(Lcn/nubia/deskclock/ui/StopWatchClockView;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/StopWatchClockView;

    .prologue
    .line 37
    iget v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mAlpha:I

    return v0
.end method

.method static synthetic access$202(Lcn/nubia/deskclock/ui/StopWatchClockView;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/StopWatchClockView;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mAlpha:I

    return p1
.end method

.method static synthetic access$302(Lcn/nubia/deskclock/ui/StopWatchClockView;F)F
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/StopWatchClockView;
    .param p1, "x1"    # F

    .prologue
    .line 37
    iput p1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mMinAndSecScaleValues:F

    return p1
.end method

.method static synthetic access$402(Lcn/nubia/deskclock/ui/StopWatchClockView;F)F
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/StopWatchClockView;
    .param p1, "x1"    # F

    .prologue
    .line 37
    iput p1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mTimeTextScaleValues:F

    return p1
.end method

.method static synthetic access$502(Lcn/nubia/deskclock/ui/StopWatchClockView;F)F
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/StopWatchClockView;
    .param p1, "x1"    # F

    .prologue
    .line 37
    iput p1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mAnimatorHandAngle:F

    return p1
.end method

.method static synthetic access$602(Lcn/nubia/deskclock/ui/StopWatchClockView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/StopWatchClockView;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mEnterAnimationFlag:Z

    return p1
.end method

.method static synthetic access$702(Lcn/nubia/deskclock/ui/StopWatchClockView;F)F
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/StopWatchClockView;
    .param p1, "x1"    # F

    .prologue
    .line 37
    iput p1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mHandAngle:F

    return p1
.end method

.method static synthetic access$802(Lcn/nubia/deskclock/ui/StopWatchClockView;F)F
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/StopWatchClockView;
    .param p1, "x1"    # F

    .prologue
    .line 37
    iput p1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mMinHandAngle:F

    return p1
.end method

.method private drawHand(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 589
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 590
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 591
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mHandAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 592
    iget v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mHandAngle:F

    iget v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mAnimatorHandAngle:F

    add-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mCenterX:F

    iget v2, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mCenterY:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 593
    iget v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mMinAndSecScaleValues:F

    iget v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mMinAndSecScaleValues:F

    iget v2, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mCenterX:F

    iget v3, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mCenterY:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 594
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 595
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDialBgBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDialSrcRectF:Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDialDstRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 596
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 597
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 598
    return-void
.end method

.method private drawMSBg(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 575
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 576
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 577
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 578
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mMillionSecAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 579
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDeciCircleBgBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mCenterX:F

    iget-object v2, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDeciCircleBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mCenterY:F

    const/high16 v3, 0x42c20000    # 97.0f

    add-float/2addr v2, v3

    iget-object v3, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDeciCircleBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 580
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 581
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 582
    return-void
.end method

.method private drawOvalDial(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v4, 0xff

    .line 601
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 602
    iget v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mHandAngle:F

    iget v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mAnimatorHandAngle:F

    add-float/2addr v0, v1

    const/high16 v1, 0x43af0000    # 350.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mIsFirst:Z

    if-eqz v0, :cond_2

    .line 606
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mIsReset:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mEnterAnimationFlag:Z

    if-eqz v0, :cond_3

    .line 607
    :cond_1
    iget v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mMinHandAngle:F

    iget v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mAnimatorHandAngle:F

    add-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mCenterX:F

    iget v2, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mCenterY:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 608
    iget v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mMinAndSecScaleValues:F

    iget v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mMinAndSecScaleValues:F

    iget v2, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mCenterX:F

    iget v3, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mCenterY:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 609
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 611
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mInnerColorBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDialSrcRectF:Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDialDstRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 612
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 617
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 618
    return-void

    .line 603
    :cond_2
    iget-boolean v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mIsFirst:Z

    if-eqz v0, :cond_0

    .line 604
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mIsFirst:Z

    goto :goto_0

    .line 614
    :cond_3
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 615
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mInnerColorBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDialSrcRectF:Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDialDstRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1
.end method

.method private drawText(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 626
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 627
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 628
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mTimeFormater:Lcn/nubia/deskclock/util/StopWatchTimeFormater;

    invoke-virtual {v0}, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->getHour()I

    move-result v0

    if-lez v0, :cond_0

    .line 629
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a018e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mSecondTextSize:I

    .line 635
    :goto_0
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mSecondTextSize:I

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mTimeTextScaleValues:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 636
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 637
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 638
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mSecondString:Ljava/lang/String;

    iget v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mCenterX:F

    iget v2, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mCenterY:F

    iget v3, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mTextBaseLineY:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 640
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 642
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 643
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDeciTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mMillionSecAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 644
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDeciTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDeciTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 645
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDeciTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 646
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDeciSecondString:Ljava/lang/String;

    iget v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mCenterX:F

    iget v2, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mCenterY:F

    iget v3, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mSecondStringHeight:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDeciStringHeight:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mTextMargin:F

    add-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDeciBaseLineY:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDeciTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 648
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 650
    return-void

    .line 632
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a018f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mSecondTextSize:I

    goto :goto_0
.end method

.method private initializeDialHand(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0184

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0185

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDialMaxWidth:F

    .line 154
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDialSrcRectF:Landroid/graphics/Rect;

    .line 155
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDialDstRectF:Landroid/graphics/RectF;

    .line 156
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDialSrcRectF:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDialBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDialBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 158
    iput v3, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mHandAngle:F

    .line 159
    iput v3, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mMinHandAngle:F

    .line 160
    iput v4, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mHandAlpha:I

    .line 161
    iput v4, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mMillionSecAlpha:I

    .line 162
    iput v3, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mAnimatorHandAngle:F

    .line 163
    iput v4, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mAlpha:I

    .line 164
    iput v3, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mSecTextScaleValues:F

    .line 165
    iput v3, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mMinAndSecScaleValues:F

    .line 166
    iput v3, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mTimeTextScaleValues:F

    .line 167
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mPaint:Landroid/graphics/Paint;

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0181

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mCircleRadius:F

    .line 169
    return-void
.end method

.method private initializeResource(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    sget-object v0, Lcn/nubia/deskclock/ui/StopWatchClockView$VisibleState;->INVISIBLE:Lcn/nubia/deskclock/ui/StopWatchClockView$VisibleState;

    iput-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mVisibleState:Lcn/nubia/deskclock/ui/StopWatchClockView$VisibleState;

    .line 129
    sget-object v0, Lcn/nubia/deskclock/ui/StopWatchClockView$TimingState;->RESETTING:Lcn/nubia/deskclock/ui/StopWatchClockView$TimingState;

    iput-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mTimingState:Lcn/nubia/deskclock/ui/StopWatchClockView$TimingState;

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201aa

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDialBitmap:Landroid/graphics/Bitmap;

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201a5

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDialBgBitmap:Landroid/graphics/Bitmap;

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201a7

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mInnerColorBitmap:Landroid/graphics/Bitmap;

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201a8

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mInnerDriverCircleBitmap:Landroid/graphics/Bitmap;

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201a3

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDeciCircleBgBitmap:Landroid/graphics/Bitmap;

    .line 145
    new-instance v0, Lcn/nubia/deskclock/util/StopWatchTimeFormater;

    invoke-direct {v0}, Lcn/nubia/deskclock/util/StopWatchTimeFormater;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mTimeFormater:Lcn/nubia/deskclock/util/StopWatchTimeFormater;

    .line 146
    new-instance v0, Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;-><init>(Lcn/nubia/deskclock/ui/StopWatchClockView;)V

    iput-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mStopWatchControl:Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;

    .line 147
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    .line 148
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 149
    return-void
.end method

.method private intializeText(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v7, 0x7f0a018f

    const v6, 0x7f0a0183

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mSecondTextSize:I

    .line 174
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDeciTextSize:I

    .line 176
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mTextPaint:Landroid/graphics/Paint;

    .line 177
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDeciTextPaint:Landroid/graphics/Paint;

    .line 178
    iget-object v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mTextPaint:Landroid/graphics/Paint;

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fonts/Roboto_Bold.ttf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 180
    iget-object v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mTextPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/deskclock/DeskClockApplication;->getDinMediumFonts()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 181
    iget-object v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDeciTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fonts/Roboto_Bold.ttf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 183
    iget-object v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mTextPaint:Landroid/graphics/Paint;

    const v2, 0x7f0f0079

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 184
    iget-object v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mTextPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 185
    iget-object v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDeciTextPaint:Landroid/graphics/Paint;

    const v2, 0x7f0f0074

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 186
    iget-object v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDeciTextPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 187
    iget-object v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mTimeFormater:Lcn/nubia/deskclock/util/StopWatchTimeFormater;

    invoke-virtual {v1}, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->secondTimeToString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mSecondString:Ljava/lang/String;

    .line 188
    iget-object v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mTimeFormater:Lcn/nubia/deskclock/util/StopWatchTimeFormater;

    invoke-virtual {v1}, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->deciSecondTimeToString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDeciSecondString:Ljava/lang/String;

    .line 189
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0190

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mTextMargin:F

    .line 191
    iput v4, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mSecondStringHeight:F

    .line 192
    iput v4, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDeciStringHeight:F

    .line 194
    iget-object v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDeciTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDeciTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 195
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDeciStringHeight:F

    .line 196
    iget-object v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 197
    .local v0, "fm":Landroid/graphics/Paint$FontMetrics;
    iget-object v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mSecondTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 198
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v5

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v1, v2

    iput v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDeciBaseLineY:F

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mSecondStringHeight:F

    .line 202
    iget-object v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDeciTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 204
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v5

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mTextBaseLineY:F

    .line 205
    return-void
.end method

.method private resetEnterParams()V
    .locals 1

    .prologue
    .line 463
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mEnterAnimationFlag:Z

    .line 464
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mMillionSecAlpha:I

    .line 465
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mTimeTextScaleValues:F

    .line 466
    return-void
.end method

.method private resetTimingParameter()V
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mTimeFormater:Lcn/nubia/deskclock/util/StopWatchTimeFormater;

    invoke-virtual {v0}, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->reset()V

    .line 506
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mTimeFormater:Lcn/nubia/deskclock/util/StopWatchTimeFormater;

    invoke-virtual {v0}, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->secondTimeToString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mSecondString:Ljava/lang/String;

    .line 507
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mTimeFormater:Lcn/nubia/deskclock/util/StopWatchTimeFormater;

    invoke-virtual {v0}, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->deciSecondTimeToString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDeciSecondString:Ljava/lang/String;

    .line 508
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/StopWatchClockView;->invalidate()V

    .line 509
    return-void
.end method

.method private setEnterAnimation()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const v12, 0x3f333333    # 0.7f

    const/4 v11, 0x2

    const v10, 0x3dcccccd    # 0.1f

    .line 211
    const-string v7, "StopWatchClockView"

    const-string v8, "setEnterAnimation: "

    invoke-static {v7, v8}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mEnterAnimatorSet:Landroid/animation/AnimatorSet;

    .line 213
    new-array v7, v11, [F

    const/4 v8, 0x0

    aput v14, v7, v8

    const/4 v8, 0x1

    iget v9, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDialMaxWidth:F

    aput v9, v7, v8

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 214
    .local v0, "enterDialAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v8, 0x258

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 215
    new-instance v7, Landroid/view/animation/PathInterpolator;

    const v8, 0x3e19999a    # 0.15f

    const v9, 0x3e99999a    # 0.3f

    invoke-direct {v7, v10, v8, v9, v13}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 216
    new-instance v7, Lcn/nubia/deskclock/ui/StopWatchClockView$1;

    invoke-direct {v7, p0}, Lcn/nubia/deskclock/ui/StopWatchClockView$1;-><init>(Lcn/nubia/deskclock/ui/StopWatchClockView;)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 223
    new-array v7, v11, [I

    fill-array-data v7, :array_0

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 224
    .local v1, "enterHandAlphaAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v8, 0x258

    invoke-virtual {v1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 225
    iget-object v7, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 226
    new-instance v7, Lcn/nubia/deskclock/ui/StopWatchClockView$2;

    invoke-direct {v7, p0}, Lcn/nubia/deskclock/ui/StopWatchClockView$2;-><init>(Lcn/nubia/deskclock/ui/StopWatchClockView;)V

    invoke-virtual {v1, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 234
    new-array v7, v11, [I

    fill-array-data v7, :array_1

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 235
    .local v2, "enterMillionSecAlphaAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v8, 0x190

    invoke-virtual {v2, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 236
    const-wide/16 v8, 0xc8

    invoke-virtual {v2, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 237
    new-instance v7, Landroid/view/animation/PathInterpolator;

    const v8, 0x3f147ae1    # 0.58f

    invoke-direct {v7, v14, v14, v8, v13}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 238
    new-instance v7, Lcn/nubia/deskclock/ui/StopWatchClockView$3;

    invoke-direct {v7, p0}, Lcn/nubia/deskclock/ui/StopWatchClockView$3;-><init>(Lcn/nubia/deskclock/ui/StopWatchClockView;)V

    invoke-virtual {v2, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 246
    new-array v7, v11, [I

    fill-array-data v7, :array_2

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 247
    .local v3, "enterTextAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v8, 0x12c

    invoke-virtual {v3, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 248
    const-wide/16 v8, 0xc8

    invoke-virtual {v3, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 249
    new-instance v7, Landroid/view/animation/PathInterpolator;

    const v8, 0x3f19999a    # 0.6f

    invoke-direct {v7, v10, v12, v10, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 250
    new-instance v7, Lcn/nubia/deskclock/ui/StopWatchClockView$4;

    invoke-direct {v7, p0}, Lcn/nubia/deskclock/ui/StopWatchClockView$4;-><init>(Lcn/nubia/deskclock/ui/StopWatchClockView;)V

    invoke-virtual {v3, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 259
    new-array v7, v11, [F

    fill-array-data v7, :array_3

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 260
    .local v5, "secDialAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v8, 0x258

    invoke-virtual {v5, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 261
    new-instance v7, Landroid/view/animation/PathInterpolator;

    invoke-direct {v7, v10, v12, v10, v13}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 262
    new-instance v7, Lcn/nubia/deskclock/ui/StopWatchClockView$5;

    invoke-direct {v7, p0}, Lcn/nubia/deskclock/ui/StopWatchClockView$5;-><init>(Lcn/nubia/deskclock/ui/StopWatchClockView;)V

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 270
    new-array v7, v11, [F

    fill-array-data v7, :array_4

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 271
    .local v6, "timeScaleAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v8, 0x12c

    invoke-virtual {v6, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 272
    const-wide/16 v8, 0xc8

    invoke-virtual {v6, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 273
    new-instance v7, Landroid/view/animation/PathInterpolator;

    const v8, 0x3f19999a    # 0.6f

    invoke-direct {v7, v10, v12, v10, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 274
    new-instance v7, Lcn/nubia/deskclock/ui/StopWatchClockView$6;

    invoke-direct {v7, p0}, Lcn/nubia/deskclock/ui/StopWatchClockView$6;-><init>(Lcn/nubia/deskclock/ui/StopWatchClockView;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 283
    new-array v7, v11, [F

    fill-array-data v7, :array_5

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 284
    .local v4, "mEnterHandAngleAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v8, 0x1c2

    invoke-virtual {v4, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 285
    const-wide/16 v8, 0x96

    invoke-virtual {v4, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 286
    new-instance v7, Landroid/view/animation/PathInterpolator;

    invoke-direct {v7, v10, v12, v10, v13}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 287
    new-instance v7, Lcn/nubia/deskclock/ui/StopWatchClockView$7;

    invoke-direct {v7, p0}, Lcn/nubia/deskclock/ui/StopWatchClockView$7;-><init>(Lcn/nubia/deskclock/ui/StopWatchClockView;)V

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 295
    new-instance v7, Lcn/nubia/deskclock/ui/StopWatchClockView$8;

    invoke-direct {v7, p0}, Lcn/nubia/deskclock/ui/StopWatchClockView$8;-><init>(Lcn/nubia/deskclock/ui/StopWatchClockView;)V

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 303
    iget-object v7, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mEnterAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 304
    iget-object v7, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mEnterAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 305
    iget-object v7, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mEnterAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 306
    iget-object v7, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mEnterAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 307
    iget-object v7, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mEnterAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 308
    iget-object v7, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mTimingState:Lcn/nubia/deskclock/ui/StopWatchClockView$TimingState;

    sget-object v8, Lcn/nubia/deskclock/ui/StopWatchClockView$TimingState;->TIMING:Lcn/nubia/deskclock/ui/StopWatchClockView$TimingState;

    if-eq v7, v8, :cond_0

    .line 309
    iget-object v7, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mEnterAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 310
    iget-object v7, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mEnterAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 312
    :cond_0
    iget-object v7, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mEnterAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v8, Lcn/nubia/deskclock/ui/StopWatchClockView$9;

    invoke-direct {v8, p0}, Lcn/nubia/deskclock/ui/StopWatchClockView$9;-><init>(Lcn/nubia/deskclock/ui/StopWatchClockView;)V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 333
    iget-object v7, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mEnterAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    .line 334
    return-void

    .line 223
    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data

    .line 234
    :array_1
    .array-data 4
        0x0
        0xff
    .end array-data

    .line 246
    :array_2
    .array-data 4
        0x0
        0xff
    .end array-data

    .line 259
    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 270
    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 283
    :array_5
    .array-data 4
        -0x3d4c0000    # -90.0f
        0x0
    .end array-data
.end method

.method private setExitAnimation()V
    .locals 12

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x64

    const/4 v8, 0x2

    const/high16 v7, 0x3f800000    # 1.0f

    .line 340
    const-string v4, "StopWatchClockView"

    const-string v5, "setExitAnimation: "

    invoke-static {v4, v5}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iput-boolean v6, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mEnterAnimationFlag:Z

    .line 342
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    .line 343
    new-array v4, v8, [F

    iget v5, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDialMaxWidth:F

    aput v5, v4, v6

    const/4 v5, 0x1

    aput v9, v4, v5

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 344
    .local v0, "exitDialAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 345
    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3f2b851f    # 0.67f

    const v6, 0x3e19999a    # 0.15f

    invoke-direct {v4, v5, v6, v7, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 346
    new-instance v4, Lcn/nubia/deskclock/ui/StopWatchClockView$10;

    invoke-direct {v4, p0}, Lcn/nubia/deskclock/ui/StopWatchClockView$10;-><init>(Lcn/nubia/deskclock/ui/StopWatchClockView;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 353
    new-array v4, v8, [I

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 354
    .local v3, "exitTextAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual {v3, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 355
    iget-object v4, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 356
    new-instance v4, Lcn/nubia/deskclock/ui/StopWatchClockView$11;

    invoke-direct {v4, p0}, Lcn/nubia/deskclock/ui/StopWatchClockView$11;-><init>(Lcn/nubia/deskclock/ui/StopWatchClockView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 364
    new-array v4, v8, [I

    fill-array-data v4, :array_1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 365
    .local v1, "exitHandAlphaAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual {v1, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 366
    iget-object v4, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 367
    new-instance v4, Lcn/nubia/deskclock/ui/StopWatchClockView$12;

    invoke-direct {v4, p0}, Lcn/nubia/deskclock/ui/StopWatchClockView$12;-><init>(Lcn/nubia/deskclock/ui/StopWatchClockView;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 375
    new-array v4, v8, [F

    fill-array-data v4, :array_2

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 376
    .local v2, "exitHandAngleAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual {v2, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 377
    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e4ccccd    # 0.2f

    invoke-direct {v4, v5, v9, v7, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 378
    new-instance v4, Lcn/nubia/deskclock/ui/StopWatchClockView$13;

    invoke-direct {v4, p0}, Lcn/nubia/deskclock/ui/StopWatchClockView$13;-><init>(Lcn/nubia/deskclock/ui/StopWatchClockView;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 386
    new-instance v4, Lcn/nubia/deskclock/ui/StopWatchClockView$14;

    invoke-direct {v4, p0}, Lcn/nubia/deskclock/ui/StopWatchClockView$14;-><init>(Lcn/nubia/deskclock/ui/StopWatchClockView;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 393
    iget-object v4, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 394
    iget-object v4, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 395
    iget-object v4, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mTimingState:Lcn/nubia/deskclock/ui/StopWatchClockView$TimingState;

    sget-object v5, Lcn/nubia/deskclock/ui/StopWatchClockView$TimingState;->TIMING:Lcn/nubia/deskclock/ui/StopWatchClockView$TimingState;

    if-eq v4, v5, :cond_0

    .line 396
    iget-object v4, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 399
    :cond_0
    iget-object v4, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 400
    return-void

    .line 353
    nop

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data

    .line 364
    :array_1
    .array-data 4
        0xff
        0x0
    .end array-data

    .line 375
    :array_2
    .array-data 4
        0x0
        0x42700000    # 60.0f
    .end array-data
.end method

.method private setResetAnimation()V
    .locals 13

    .prologue
    const v12, 0x3e4ccccd    # 0.2f

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 414
    iget v4, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mHandAngle:F

    .line 415
    .local v4, "resetStartAngle":F
    new-array v5, v11, [F

    aput v4, v5, v9

    aput v8, v5, v10

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 416
    .local v2, "resetAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v6, 0xc8

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 417
    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v6, 0x3e99999a    # 0.3f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v12, v8, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 418
    new-instance v5, Lcn/nubia/deskclock/ui/StopWatchClockView$15;

    invoke-direct {v5, p0}, Lcn/nubia/deskclock/ui/StopWatchClockView$15;-><init>(Lcn/nubia/deskclock/ui/StopWatchClockView;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 425
    iget v3, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mMinHandAngle:F

    .line 426
    .local v3, "resetMinStartAngle":F
    new-array v5, v11, [F

    aput v3, v5, v9

    aput v8, v5, v10

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 427
    .local v0, "reseMintAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v6, 0xc8

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 428
    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v6, 0x3e99999a    # 0.3f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v12, v8, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 429
    new-instance v5, Lcn/nubia/deskclock/ui/StopWatchClockView$16;

    invoke-direct {v5, p0}, Lcn/nubia/deskclock/ui/StopWatchClockView$16;-><init>(Lcn/nubia/deskclock/ui/StopWatchClockView;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 437
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 438
    .local v1, "resetAnimationSet":Landroid/animation/AnimatorSet;
    new-array v5, v11, [Landroid/animation/Animator;

    aput-object v2, v5, v9

    aput-object v0, v5, v10

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 439
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 440
    return-void
.end method


# virtual methods
.method public cancelAnimatorSet()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 403
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mEnterAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 404
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mEnterAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 405
    iput-object v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mEnterAnimatorSet:Landroid/animation/AnimatorSet;

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 408
    iput-object v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mExitAnimatorSet:Landroid/animation/AnimatorSet;

    goto :goto_0
.end method

.method public getCurrentDeciSecond()I
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mTimeFormater:Lcn/nubia/deskclock/util/StopWatchTimeFormater;

    invoke-virtual {v0}, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->getDeciSecond()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()I
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mTimeFormater:Lcn/nubia/deskclock/util/StopWatchTimeFormater;

    invoke-virtual {v0}, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->getHour()I

    move-result v0

    return v0
.end method

.method public getCurrentMinute()I
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mTimeFormater:Lcn/nubia/deskclock/util/StopWatchTimeFormater;

    invoke-virtual {v0}, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->getMinute()I

    move-result v0

    return v0
.end method

.method public getCurrentSecond()I
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mTimeFormater:Lcn/nubia/deskclock/util/StopWatchTimeFormater;

    invoke-virtual {v0}, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->getSecond()I

    move-result v0

    return v0
.end method

.method public getDigitalDeciSecondTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mTimeFormater:Lcn/nubia/deskclock/util/StopWatchTimeFormater;

    invoke-virtual {v0}, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->deciSecondTimeToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDigitalSecondTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mTimeFormater:Lcn/nubia/deskclock/util/StopWatchTimeFormater;

    invoke-virtual {v0}, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->secondTimeToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 553
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 554
    iget-boolean v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mEnableDraw:Z

    if-nez v0, :cond_0

    .line 555
    const-string v0, "StopWatchClockView"

    const-string v1, "onDraw: not draw "

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    :goto_0
    return-void

    .line 558
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 559
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/StopWatchClockView;->drawOvalDial(Landroid/graphics/Canvas;)V

    .line 560
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/StopWatchClockView;->drawHand(Landroid/graphics/Canvas;)V

    .line 561
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/StopWatchClockView;->drawMSBg(Landroid/graphics/Canvas;)V

    .line 562
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/StopWatchClockView;->drawText(Landroid/graphics/Canvas;)V

    .line 563
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 564
    iget v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mMinAndSecScaleValues:F

    iget v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mMinAndSecScaleValues:F

    iget v2, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mCenterX:F

    iget v3, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mCenterY:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 565
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mInnerDriverCircleBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mCenterX:F

    iget-object v2, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mInnerDriverCircleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mCenterY:F

    iget-object v3, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mInnerDriverCircleBitmap:Landroid/graphics/Bitmap;

    .line 566
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    .line 565
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 567
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 538
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 540
    sub-int v1, p4, p2

    int-to-float v1, v1

    div-float/2addr v1, v7

    iput v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mCenterX:F

    .line 541
    sub-int v1, p5, p3

    int-to-float v1, v1

    div-float/2addr v1, v7

    iput v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mCenterY:F

    .line 542
    const/high16 v0, 0x3f800000    # 1.0f

    .line 544
    .local v0, "ratioScale":F
    iget-object v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDialDstRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mCenterX:F

    iget-object v3, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDialBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mCenterY:F

    iget-object v4, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDialBgBitmap:Landroid/graphics/Bitmap;

    .line 545
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    iget v4, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mCenterX:F

    iget-object v5, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDialBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    iget v5, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mCenterY:F

    iget-object v6, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDialBgBitmap:Landroid/graphics/Bitmap;

    .line 546
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v0

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 544
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 548
    const/high16 v0, 0x3f800000    # 1.0f

    .line 549
    return-void
.end method

.method public pauseTiming()V
    .locals 2

    .prologue
    .line 486
    sget v0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 487
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mTimeFormater:Lcn/nubia/deskclock/util/StopWatchTimeFormater;

    invoke-virtual {v0}, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->setPausetime()V

    .line 488
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mStopWatchControl:Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;->StopTiming()V

    .line 489
    const/4 v0, 0x2

    sput v0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mState:I

    .line 491
    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 714
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDialBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDialBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 716
    iput-object v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDialBitmap:Landroid/graphics/Bitmap;

    .line 718
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDialBgBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 719
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDialBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 720
    iput-object v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDialBgBitmap:Landroid/graphics/Bitmap;

    .line 722
    :cond_1
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mInnerColorBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 723
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mInnerColorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 724
    iput-object v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mInnerColorBitmap:Landroid/graphics/Bitmap;

    .line 726
    :cond_2
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mInnerDriverCircleBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 727
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mInnerDriverCircleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 728
    iput-object v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mInnerDriverCircleBitmap:Landroid/graphics/Bitmap;

    .line 730
    :cond_3
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDeciCircleBgBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 731
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDeciCircleBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 732
    iput-object v1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDeciCircleBgBitmap:Landroid/graphics/Bitmap;

    .line 734
    :cond_4
    return-void
.end method

.method public resetTiming()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 494
    iput-boolean v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mIsReset:Z

    .line 495
    iput-boolean v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mIsFirst:Z

    .line 496
    sget v0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mState:I

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mStopWatchControl:Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;->StopTiming()V

    .line 498
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/StopWatchClockView;->resetTimingParameter()V

    .line 499
    const/4 v0, 0x0

    sput v0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mState:I

    .line 500
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/StopWatchClockView;->setResetAnimation()V

    .line 502
    :cond_0
    return-void
.end method

.method public setEnableDraw(Z)V
    .locals 0
    .param p1, "darw"    # Z

    .prologue
    .line 737
    iput-boolean p1, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mEnableDraw:Z

    .line 738
    return-void
.end method

.method public setHandAngle(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 443
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mTimeFormater:Lcn/nubia/deskclock/util/StopWatchTimeFormater;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->addTime(J)V

    .line 444
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mTimeFormater:Lcn/nubia/deskclock/util/StopWatchTimeFormater;

    invoke-virtual {v0}, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->overMax()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mStopWatchControl:Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;->clearTimingAsync()V

    .line 447
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mTimeFormater:Lcn/nubia/deskclock/util/StopWatchTimeFormater;

    invoke-virtual {v0}, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->timeToAngle()F

    move-result v0

    iput v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mHandAngle:F

    .line 448
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mTimeFormater:Lcn/nubia/deskclock/util/StopWatchTimeFormater;

    invoke-virtual {v0}, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->minTimeToAngle()F

    move-result v0

    iput v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mMinHandAngle:F

    .line 449
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mTimeFormater:Lcn/nubia/deskclock/util/StopWatchTimeFormater;

    invoke-virtual {v0}, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->secondTimeToString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mSecondString:Ljava/lang/String;

    .line 450
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mTimeFormater:Lcn/nubia/deskclock/util/StopWatchTimeFormater;

    invoke-virtual {v0}, Lcn/nubia/deskclock/util/StopWatchTimeFormater;->deciSecondTimeToString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mDeciSecondString:Ljava/lang/String;

    .line 451
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/StopWatchClockView;->invalidate()V

    .line 452
    return-void
.end method

.method public startCloseAnimation()V
    .locals 3

    .prologue
    .line 469
    const-string v0, "StopWatchClockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startCloseAnimation: mVisibleState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mVisibleState:Lcn/nubia/deskclock/ui/StopWatchClockView$VisibleState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mVisibleState:Lcn/nubia/deskclock/ui/StopWatchClockView$VisibleState;

    sget-object v1, Lcn/nubia/deskclock/ui/StopWatchClockView$VisibleState;->VISIBLE:Lcn/nubia/deskclock/ui/StopWatchClockView$VisibleState;

    if-ne v0, v1, :cond_0

    .line 471
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/StopWatchClockView;->cancelAnimatorSet()V

    .line 472
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/StopWatchClockView;->setExitAnimation()V

    .line 473
    sget-object v0, Lcn/nubia/deskclock/ui/StopWatchClockView$VisibleState;->INVISIBLE:Lcn/nubia/deskclock/ui/StopWatchClockView$VisibleState;

    iput-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mVisibleState:Lcn/nubia/deskclock/ui/StopWatchClockView$VisibleState;

    .line 475
    :cond_0
    return-void
.end method

.method public startEnterAnimation()V
    .locals 3

    .prologue
    .line 455
    const-string v0, "StopWatchClockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startEnterAnimation: mVisibleState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mVisibleState:Lcn/nubia/deskclock/ui/StopWatchClockView$VisibleState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/StopWatchClockView;->cancelAnimatorSet()V

    .line 457
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/StopWatchClockView;->resetEnterParams()V

    .line 458
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/StopWatchClockView;->setEnterAnimation()V

    .line 459
    sget-object v0, Lcn/nubia/deskclock/ui/StopWatchClockView$VisibleState;->VISIBLE:Lcn/nubia/deskclock/ui/StopWatchClockView$VisibleState;

    iput-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mVisibleState:Lcn/nubia/deskclock/ui/StopWatchClockView$VisibleState;

    .line 460
    return-void
.end method

.method public startTiming()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 478
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mIsReset:Z

    .line 479
    sget v0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mState:I

    if-eq v0, v1, :cond_0

    .line 480
    iget-object v0, p0, Lcn/nubia/deskclock/ui/StopWatchClockView;->mStopWatchControl:Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/StopWatchClockView$StopWatchControl;->startTiming()V

    .line 481
    sput v1, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mState:I

    .line 483
    :cond_0
    return-void
.end method
