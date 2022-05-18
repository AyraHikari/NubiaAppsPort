.class public Lcn/nubia/deskclock/ui/ClockMotionHelper;
.super Ljava/lang/Object;
.source "ClockMotionHelper.java"

# interfaces
.implements Lcn/nubia/deskclock/inter/IMotionDetect;


# static fields
.field private static final TAG:Ljava/lang/String; = "ClockMotionHelper"

.field private static final mAnalogClockIds:[I

.field private static final mNumberClockIds:[I


# instance fields
.field private mButtonMarginTopNarrow:F

.field private mButtonMarginTopWide:F

.field private mButtonView:Landroid/view/View;

.field private mClockContainerView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCountdownResetButtonDefaultMarginLeft:F

.field private mCountdownResetButtonLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mCountdownResetButtonMarginLeft:F

.field private mCountdwonResetButton:Landroid/view/View;

.field private mCurrentAlarmNumberView:Lcn/nubia/deskclock/ui/NubiaDigitalClock;

.field private mCurrentAnalogView:Landroid/view/View;

.field private mCurrentNumberView:Landroid/view/View;

.field private mCurrentWorldNumberView:Lcn/nubia/deskclock/ui/NubiaDigitalClock;

.field private mIsInUpView:Z

.field private mLastViewstatus:Z

.field private mMoveToUp:Z

.field private mRange:I

.field private mStopwatchRecordButton:Landroid/view/View;

.field private mStopwatchResetButtonDefaultMarginLeft:F

.field private mStopwatchResetButtonMarginLeft:F

.field private mTitleBarHigh:F

.field private mVerticalMotionContainerLayout:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

.field private mltyMax:F

.field private mltyMin:F

.field private set:Landroid/animation/AnimatorSet;

.field private stopwatchRestButtonLayoutParams:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 25
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mAnalogClockIds:[I

    .line 28
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mNumberClockIds:[I

    return-void

    .line 25
    :array_0
    .array-data 4
        0x7f120174
        0x7f12009b
        0x7f120166
        0x7f1200da
    .end array-data

    .line 28
    :array_1
    .array-data 4
        0x7f120176
        0x7f12009d
        0x7f120168
        0x7f1200dd
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/nubia/deskclock/ui/ClockContainer;Lcn/nubia/deskclock/ui/ClockBottomLayout;Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clockContainer"    # Lcn/nubia/deskclock/ui/ClockContainer;
    .param p3, "buttonView"    # Lcn/nubia/deskclock/ui/ClockBottomLayout;
    .param p4, "motionLayout"    # Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    .prologue
    const v4, 0x7f0a006b

    const v3, 0x7f0a006a

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean v2, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mIsInUpView:Z

    .line 41
    iput-boolean v2, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mLastViewstatus:Z

    .line 42
    iput v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mltyMin:F

    .line 43
    iput v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mltyMax:F

    .line 44
    iput v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mTitleBarHigh:F

    .line 55
    iput-boolean v2, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mMoveToUp:Z

    .line 63
    iput-object p2, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mClockContainerView:Landroid/view/View;

    .line 64
    iput-object p4, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mVerticalMotionContainerLayout:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    .line 65
    iput-object p1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mContext:Landroid/content/Context;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 68
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0a019a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mltyMin:F

    .line 69
    const v1, 0x7f0a0199

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mltyMax:F

    .line 70
    const v1, 0x7f0a00a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mTitleBarHigh:F

    .line 71
    const v1, 0x7f0a006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mButtonMarginTopNarrow:F

    .line 72
    const v1, 0x7f0a006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mButtonMarginTopWide:F

    .line 73
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mVerticalMotionContainerLayout:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    invoke-virtual {v1, p0}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->setOnMotionDetectListener(Lcn/nubia/deskclock/inter/IMotionDetect;)V

    .line 74
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mStopwatchResetButtonMarginLeft:F

    .line 75
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mStopwatchResetButtonDefaultMarginLeft:F

    .line 76
    invoke-virtual {p4}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->getRange()I

    move-result v1

    iput v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mRange:I

    .line 77
    iput-object p3, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mButtonView:Landroid/view/View;

    .line 79
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mButtonView:Landroid/view/View;

    const v2, 0x7f1200b3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mStopwatchRecordButton:Landroid/view/View;

    .line 80
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mStopwatchRecordButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->stopwatchRestButtonLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 81
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mStopwatchRecordButton:Landroid/view/View;

    iget-object v2, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->stopwatchRestButtonLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mButtonView:Landroid/view/View;

    const v2, 0x7f1200b8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCountdwonResetButton:Landroid/view/View;

    .line 84
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCountdwonResetButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCountdownResetButtonLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 85
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCountdwonResetButton:Landroid/view/View;

    iget-object v2, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCountdownResetButtonLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCountdownResetButtonMarginLeft:F

    .line 87
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCountdownResetButtonDefaultMarginLeft:F

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/deskclock/ui/ClockMotionHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/ClockMotionHelper;

    .prologue
    .line 23
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mClockContainerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/deskclock/ui/ClockMotionHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/ClockMotionHelper;

    .prologue
    .line 23
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mButtonView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/deskclock/ui/ClockMotionHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/ClockMotionHelper;

    .prologue
    .line 23
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCurrentAnalogView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public isMovable(Landroid/view/View;F)V
    .locals 0
    .param p1, "paramView"    # Landroid/view/View;
    .param p2, "paramInt1"    # F

    .prologue
    .line 279
    return-void
.end method

.method public onMove(Landroid/view/View;F)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "paramInt1"    # F

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 104
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCurrentNumberView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCurrentAnalogView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCurrentNumberView:Landroid/view/View;

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mltyMax:F

    sub-float v2, p2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 108
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mButtonView:Landroid/view/View;

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mltyMin:F

    sub-float v2, p2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 109
    iget v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mltyMax:F

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mRange:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpl-float v1, p2, v1

    if-lez v1, :cond_4

    .line 110
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCurrentAnalogView:Landroid/view/View;

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mltyMax:F

    sub-float v2, p2, v2

    mul-float/2addr v2, v5

    iget v3, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mRange:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 111
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mButtonView:Landroid/view/View;

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mltyMax:F

    sub-float v2, p2, v2

    mul-float/2addr v2, v5

    iget v3, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mRange:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 112
    iput-boolean v6, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mIsInUpView:Z

    .line 114
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/deskclock/util/Utils;->isLayoutRtl(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 115
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->stopwatchRestButtonLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mStopwatchResetButtonDefaultMarginLeft:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 119
    :goto_1
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mStopwatchRecordButton:Landroid/view/View;

    iget-object v2, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->stopwatchRestButtonLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCountdownResetButtonLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCountdownResetButtonDefaultMarginLeft:F

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 122
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCountdwonResetButton:Landroid/view/View;

    iget-object v2, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCountdownResetButtonLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    :goto_2
    iget-boolean v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mLastViewstatus:Z

    iget-boolean v2, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mIsInUpView:Z

    if-eq v1, v2, :cond_2

    .line 143
    iget-boolean v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mIsInUpView:Z

    if-eqz v1, :cond_6

    .line 144
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCurrentAnalogView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 145
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCurrentNumberView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 151
    :cond_2
    :goto_3
    iget-boolean v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mIsInUpView:Z

    iput-boolean v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mLastViewstatus:Z

    goto :goto_0

    .line 117
    :cond_3
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->stopwatchRestButtonLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mStopwatchResetButtonDefaultMarginLeft:F

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    .line 124
    :cond_4
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCurrentAnalogView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 125
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCurrentNumberView:Landroid/view/View;

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mltyMin:F

    sub-float/2addr v2, p2

    mul-float/2addr v2, v5

    iget v3, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mRange:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 126
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mButtonView:Landroid/view/View;

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mltyMin:F

    sub-float/2addr v2, p2

    mul-float/2addr v2, v5

    iget v3, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mRange:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 127
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mIsInUpView:Z

    .line 129
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/deskclock/util/Utils;->isLayoutRtl(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 130
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->stopwatchRestButtonLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mStopwatchResetButtonMarginLeft:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 134
    :goto_4
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mStopwatchRecordButton:Landroid/view/View;

    iget-object v2, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->stopwatchRestButtonLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mStopwatchRecordButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v0

    .line 138
    .local v0, "marginStart":I
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCountdownResetButtonLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCountdownResetButtonMarginLeft:F

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 139
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCountdwonResetButton:Landroid/view/View;

    iget-object v2, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCountdownResetButtonLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 132
    .end local v0    # "marginStart":I
    :cond_5
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->stopwatchRestButtonLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mStopwatchResetButtonMarginLeft:F

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_4

    .line 147
    :cond_6
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCurrentAnalogView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 148
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCurrentNumberView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method public onMoveCancel(Landroid/view/View;FZ)V
    .locals 9
    .param p1, "paramView"    # Landroid/view/View;
    .param p2, "paramInt1"    # F
    .param p3, "isToMax"    # Z

    .prologue
    .line 156
    iget-object v3, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCurrentNumberView:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCurrentAnalogView:Landroid/view/View;

    if-nez v3, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    const-string v3, "ClockMotionHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMoveCancel: paramView.getTranslationY() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ;; mltyMax : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mltyMax:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ;; mltyMin : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mltyMin:F

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v3, "ClockMotionHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMoveCancel: isToMax : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v3

    iget v4, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mltyMax:F

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v3

    iget v4, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mltyMin:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    .line 164
    :cond_2
    const-string v3, "ClockMotionHelper"

    const-string v4, "onMoveCancel: "

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v3, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->set:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_3

    .line 166
    iget-object v3, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->set:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 191
    :goto_1
    iget-object v3, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mClockContainerView:Landroid/view/View;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 192
    iget-object v3, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mButtonView:Landroid/view/View;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 194
    iget-object v4, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCurrentNumberView:Landroid/view/View;

    const-string v5, "y"

    const/4 v3, 0x2

    new-array v6, v3, [F

    const/4 v3, 0x0

    iget v7, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mltyMax:F

    sub-float v7, p2, v7

    iget v8, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mTitleBarHigh:F

    add-float/2addr v7, v8

    aput v7, v6, v3

    const/4 v7, 0x1

    if-eqz p3, :cond_4

    iget v3, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mTitleBarHigh:F

    :goto_2
    aput v3, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 197
    .local v2, "number":Landroid/animation/ObjectAnimator;
    iget-object v4, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mButtonView:Landroid/view/View;

    const-string v5, "y"

    const/4 v3, 0x2

    new-array v6, v3, [F

    const/4 v3, 0x0

    iget v7, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mltyMin:F

    sub-float v7, p2, v7

    iget v8, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mButtonMarginTopWide:F

    add-float/2addr v7, v8

    aput v7, v6, v3

    const/4 v7, 0x1

    if-eqz p3, :cond_5

    iget v3, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mButtonMarginTopNarrow:F

    :goto_3
    aput v3, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 200
    .local v1, "button":Landroid/animation/ObjectAnimator;
    iget v3, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mltyMax:F

    iget v4, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mRange:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    cmpl-float v3, p2, v3

    if-lez v3, :cond_7

    .line 201
    const-string v3, "ClockMotionHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMoveCancel: down isToMax : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v4, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCurrentAnalogView:Landroid/view/View;

    const-string v5, "alpha"

    const/4 v3, 0x2

    new-array v6, v3, [F

    const/4 v3, 0x0

    iget v7, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mltyMax:F

    sub-float v7, p2, v7

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v7, v8

    iget v8, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mRange:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v7, v8

    aput v7, v6, v3

    const/4 v7, 0x1

    if-eqz p3, :cond_6

    const/4 v3, 0x0

    :goto_4
    aput v3, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 205
    .local v0, "analog":Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->set:Landroid/animation/AnimatorSet;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 206
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mMoveToUp:Z

    .line 214
    .end local v0    # "analog":Landroid/animation/ObjectAnimator;
    :goto_5
    iget-object v3, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->set:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 168
    .end local v1    # "button":Landroid/animation/ObjectAnimator;
    .end local v2    # "number":Landroid/animation/ObjectAnimator;
    :cond_3
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->set:Landroid/animation/AnimatorSet;

    .line 169
    iget-object v3, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->set:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x50

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 170
    iget-object v3, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->set:Landroid/animation/AnimatorSet;

    new-instance v4, Lcn/nubia/deskclock/ui/ClockMotionHelper$1;

    invoke-direct {v4, p0}, Lcn/nubia/deskclock/ui/ClockMotionHelper$1;-><init>(Lcn/nubia/deskclock/ui/ClockMotionHelper;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_1

    .line 194
    :cond_4
    iget v3, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mltyMin:F

    iget v8, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mltyMax:F

    sub-float/2addr v3, v8

    goto/16 :goto_2

    .line 197
    .restart local v2    # "number":Landroid/animation/ObjectAnimator;
    :cond_5
    iget v3, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mButtonMarginTopWide:F

    goto/16 :goto_3

    .line 202
    .restart local v1    # "button":Landroid/animation/ObjectAnimator;
    :cond_6
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_4

    .line 208
    :cond_7
    const-string v3, "ClockMotionHelper"

    const-string v4, "onMoveCancel: up : "

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v3, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCurrentAnalogView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 210
    iget-object v3, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->set:Landroid/animation/AnimatorSet;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 211
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mMoveToUp:Z

    goto :goto_5
.end method

.method public onMoveFinish(Landroid/view/View;Z)V
    .locals 8
    .param p1, "paramView"    # Landroid/view/View;
    .param p2, "islayoutMax"    # Z

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 219
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCurrentAnalogView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCurrentNumberView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    const-string v1, "ClockMotionHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-- onMoveFinish --  islayoutMax : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";; mButtonView.getTranslationY : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mButtonView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mButtonView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 224
    if-eqz p2, :cond_4

    .line 225
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCurrentAnalogView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 226
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCurrentAnalogView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 227
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCurrentNumberView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 228
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCurrentNumberView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 229
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCurrentNumberView:Landroid/view/View;

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mltyMax:F

    iget v3, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mltyMax:F

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 230
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mButtonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    .line 231
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mButtonView:Landroid/view/View;

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mltyMax:F

    iget v3, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mltyMin:F

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 234
    :cond_2
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/deskclock/util/Utils;->isLayoutRtl(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 235
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->stopwatchRestButtonLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mStopwatchResetButtonMarginLeft:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 239
    :goto_1
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mStopwatchRecordButton:Landroid/view/View;

    iget-object v2, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->stopwatchRestButtonLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mStopwatchRecordButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v0

    .line 241
    .local v0, "marginStart":I
    const-string v1, "ClockMotionHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMoveFinish: marginStart : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCountdownResetButtonLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCountdownResetButtonMarginLeft:F

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 244
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCountdwonResetButton:Landroid/view/View;

    iget-object v2, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCountdownResetButtonLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 237
    .end local v0    # "marginStart":I
    :cond_3
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->stopwatchRestButtonLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mStopwatchResetButtonMarginLeft:F

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    .line 246
    :cond_4
    const-string v1, "ClockMotionHelper"

    const-string v2, "onMoveFinish min"

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCurrentAnalogView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 248
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCurrentAnalogView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 249
    const-string v1, "ClockMotionHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMoveFinish: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCurrentAnalogView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v1, "ClockMotionHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMoveFinish: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCurrentAnalogView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCurrentNumberView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 252
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCurrentNumberView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 253
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCurrentNumberView:Landroid/view/View;

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mltyMin:F

    iget v3, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mltyMax:F

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 254
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mButtonView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 256
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/deskclock/util/Utils;->isLayoutRtl(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 257
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->stopwatchRestButtonLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mStopwatchResetButtonDefaultMarginLeft:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 261
    :goto_2
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mStopwatchRecordButton:Landroid/view/View;

    iget-object v2, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->stopwatchRestButtonLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCountdownResetButtonLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCountdownResetButtonDefaultMarginLeft:F

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 264
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCountdwonResetButton:Landroid/view/View;

    iget-object v2, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCountdownResetButtonLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 259
    :cond_5
    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->stopwatchRestButtonLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mStopwatchResetButtonDefaultMarginLeft:F

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_2
.end method

.method public onMoveStart(Landroid/view/View;Z)V
    .locals 2
    .param p1, "paramView"    # Landroid/view/View;
    .param p2, "paramInt1"    # Z

    .prologue
    const/4 v1, 0x0

    .line 270
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCurrentAnalogView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCurrentNumberView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCurrentAnalogView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCurrentNumberView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setClockVisibilityControl(I)V
    .locals 2
    .param p1, "tab"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mClockContainerView:Landroid/view/View;

    sget-object v1, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mAnalogClockIds:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCurrentAnalogView:Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mClockContainerView:Landroid/view/View;

    sget-object v1, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mNumberClockIds:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCurrentNumberView:Landroid/view/View;

    .line 98
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mVerticalMotionContainerLayout:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mVerticalMotionContainerLayout:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    .line 99
    invoke-virtual {v1}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->getIsLayoutMax()Z

    move-result v1

    .line 98
    invoke-virtual {p0, v0, v1}, Lcn/nubia/deskclock/ui/ClockMotionHelper;->onMoveFinish(Landroid/view/View;Z)V

    .line 100
    return-void
.end method

.method public setContentView(Landroid/widget/ListView;)V
    .locals 1
    .param p1, "View"    # Landroid/widget/ListView;

    .prologue
    .line 92
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mVerticalMotionContainerLayout:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    invoke-virtual {v0, p1}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->setListView(Landroid/widget/ListView;)V

    .line 93
    return-void
.end method

.method public setDigitalClockUpdate(IZ)V
    .locals 2
    .param p1, "tab"    # I
    .param p2, "updateFlag"    # Z

    .prologue
    .line 282
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 283
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mClockContainerView:Landroid/view/View;

    const v1, 0x7f12009d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/ui/NubiaDigitalClock;

    iput-object v0, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCurrentAlarmNumberView:Lcn/nubia/deskclock/ui/NubiaDigitalClock;

    .line 284
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCurrentAlarmNumberView:Lcn/nubia/deskclock/ui/NubiaDigitalClock;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCurrentAlarmNumberView:Lcn/nubia/deskclock/ui/NubiaDigitalClock;

    invoke-virtual {v0, p2}, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->setUpdateFlag(Z)V

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    if-nez p1, :cond_0

    .line 288
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mClockContainerView:Landroid/view/View;

    const v1, 0x7f12006b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/ui/NubiaDigitalClock;

    iput-object v0, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCurrentWorldNumberView:Lcn/nubia/deskclock/ui/NubiaDigitalClock;

    .line 289
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCurrentWorldNumberView:Lcn/nubia/deskclock/ui/NubiaDigitalClock;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcn/nubia/deskclock/ui/ClockMotionHelper;->mCurrentWorldNumberView:Lcn/nubia/deskclock/ui/NubiaDigitalClock;

    invoke-virtual {v0, p2}, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->setUpdateFlag(Z)V

    goto :goto_0
.end method

.method public setEmptyLayoutVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 297
    return-void
.end method
