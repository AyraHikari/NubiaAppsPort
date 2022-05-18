.class public Lcn/nubia/deskclock/ui/HintView;
.super Landroid/view/View;
.source "HintView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deskclock/ui/HintView$ScanTextControl;
    }
.end annotation


# static fields
.field private static final INIT_TEXT_Y_DP:I = 0x10

.field private static final MAX_CIRCLE_ALPHA:I = 0x1a


# instance fields
.field private mAlpha:F

.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mCirclePaint:Landroid/graphics/Paint;

.field private mCircleRadius:I

.field private mCircleX:I

.field private mCircleY:I

.field private final mColors:[I

.field private mColorsEx:[I

.field private mDensity:F

.field private mFlingText:Ljava/lang/String;

.field private mFlingTextX:I

.field private mFlingTextY:I

.field private mGradientAnimator:Landroid/animation/ValueAnimator;

.field private mGradientPosition:F

.field private mLinearGradient:Landroid/graphics/LinearGradient;

.field private mPositions:[F

.field private mScaleAlpha:F

.field private mScaledDensity:F

.field private mScanTextControl:Lcn/nubia/deskclock/ui/HintView$ScanTextControl;

.field private mTextFlingPaint:Landroid/graphics/Paint;

.field private mTextHeight:F

.field private viewHeight:I

.field private viewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/deskclock/ui/HintView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/deskclock/ui/HintView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x5

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    iput v0, p0, Lcn/nubia/deskclock/ui/HintView;->viewWidth:I

    .line 22
    iput v0, p0, Lcn/nubia/deskclock/ui/HintView;->viewHeight:I

    .line 27
    iput v0, p0, Lcn/nubia/deskclock/ui/HintView;->mCircleRadius:I

    .line 28
    iput v0, p0, Lcn/nubia/deskclock/ui/HintView;->mCircleX:I

    iput v0, p0, Lcn/nubia/deskclock/ui/HintView;->mCircleY:I

    .line 29
    iput v1, p0, Lcn/nubia/deskclock/ui/HintView;->mDensity:F

    .line 30
    iput v1, p0, Lcn/nubia/deskclock/ui/HintView;->mScaledDensity:F

    .line 32
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/HintView;->mColors:[I

    .line 34
    new-array v0, v2, [I

    iput-object v0, p0, Lcn/nubia/deskclock/ui/HintView;->mColorsEx:[I

    .line 35
    new-array v0, v2, [F

    iput-object v0, p0, Lcn/nubia/deskclock/ui/HintView;->mPositions:[F

    .line 36
    iput v1, p0, Lcn/nubia/deskclock/ui/HintView;->mGradientPosition:F

    .line 37
    iput v3, p0, Lcn/nubia/deskclock/ui/HintView;->mScaleAlpha:F

    .line 39
    iput v3, p0, Lcn/nubia/deskclock/ui/HintView;->mAlpha:F

    .line 51
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/HintView;->init(Landroid/content/Context;)V

    .line 52
    return-void

    .line 32
    nop

    :array_0
    .array-data 4
        0x4cffffff    # 1.3421772E8f
        0x4cffffff    # 1.3421772E8f
        0x73ffffff
        0x4cffffff    # 1.3421772E8f
        0x4cffffff    # 1.3421772E8f
    .end array-data
.end method

.method static synthetic access$102(Lcn/nubia/deskclock/ui/HintView;F)F
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/HintView;
    .param p1, "x1"    # F

    .prologue
    .line 18
    iput p1, p0, Lcn/nubia/deskclock/ui/HintView;->mAlpha:F

    return p1
.end method

.method static synthetic access$202(Lcn/nubia/deskclock/ui/HintView;F)F
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/HintView;
    .param p1, "x1"    # F

    .prologue
    .line 18
    iput p1, p0, Lcn/nubia/deskclock/ui/HintView;->mGradientPosition:F

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/deskclock/ui/HintView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/HintView;

    .prologue
    .line 18
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/HintView;->setHorizontalGradient()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/deskclock/ui/HintView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/HintView;

    .prologue
    .line 18
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/HintView;->startTextAnimation()V

    return-void
.end method

.method private dpToPx(F)I
    .locals 4
    .param p1, "dpValue"    # F

    .prologue
    .line 116
    iget v0, p0, Lcn/nubia/deskclock/ui/HintView;->mDensity:F

    mul-float/2addr v0, p1

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private drawCircle(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 93
    iget v0, p0, Lcn/nubia/deskclock/ui/HintView;->mCircleX:I

    int-to-float v0, v0

    iget v1, p0, Lcn/nubia/deskclock/ui/HintView;->mCircleY:I

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/deskclock/ui/HintView;->mCircleRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcn/nubia/deskclock/ui/HintView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 94
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v3, -0x1

    const/high16 v2, 0x41800000    # 16.0f

    .line 59
    iput v0, p0, Lcn/nubia/deskclock/ui/HintView;->mFlingTextX:I

    .line 60
    iput v0, p0, Lcn/nubia/deskclock/ui/HintView;->mFlingTextY:I

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcn/nubia/deskclock/ui/HintView;->mDensity:F

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v0, p0, Lcn/nubia/deskclock/ui/HintView;->mScaledDensity:F

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/ui/HintView;->mCirclePaint:Landroid/graphics/Paint;

    .line 64
    iget-object v0, p0, Lcn/nubia/deskclock/ui/HintView;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    iget-object v0, p0, Lcn/nubia/deskclock/ui/HintView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget-object v0, p0, Lcn/nubia/deskclock/ui/HintView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 67
    iget-object v0, p0, Lcn/nubia/deskclock/ui/HintView;->mCirclePaint:Landroid/graphics/Paint;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/ui/HintView;->mTextFlingPaint:Landroid/graphics/Paint;

    .line 70
    iget-object v0, p0, Lcn/nubia/deskclock/ui/HintView;->mTextFlingPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget-object v0, p0, Lcn/nubia/deskclock/ui/HintView;->mTextFlingPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 72
    iget-object v0, p0, Lcn/nubia/deskclock/ui/HintView;->mTextFlingPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v2}, Lcn/nubia/deskclock/ui/HintView;->dpToPx(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 74
    iget-object v0, p0, Lcn/nubia/deskclock/ui/HintView;->mTextFlingPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 75
    iget-object v0, p0, Lcn/nubia/deskclock/ui/HintView;->mTextFlingPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/HintView;->mFlingText:Ljava/lang/String;

    .line 78
    new-instance v0, Lcn/nubia/deskclock/ui/HintView$ScanTextControl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/deskclock/ui/HintView$ScanTextControl;-><init>(Lcn/nubia/deskclock/ui/HintView;Lcn/nubia/deskclock/ui/HintView$1;)V

    iput-object v0, p0, Lcn/nubia/deskclock/ui/HintView;->mScanTextControl:Lcn/nubia/deskclock/ui/HintView$ScanTextControl;

    .line 79
    invoke-direct {p0, v2}, Lcn/nubia/deskclock/ui/HintView;->dpToPx(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcn/nubia/deskclock/ui/HintView;->mTextHeight:F

    .line 80
    return-void
.end method

.method private setAlphaAnimation()V
    .locals 4

    .prologue
    .line 124
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/HintView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 125
    iget-object v0, p0, Lcn/nubia/deskclock/ui/HintView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 126
    iget-object v0, p0, Lcn/nubia/deskclock/ui/HintView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 127
    iget-object v0, p0, Lcn/nubia/deskclock/ui/HintView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcn/nubia/deskclock/ui/HintView$1;

    invoke-direct {v1, p0}, Lcn/nubia/deskclock/ui/HintView$1;-><init>(Lcn/nubia/deskclock/ui/HintView;)V

    .line 128
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 135
    return-void

    .line 124
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setColorAlpha(IF)I
    .locals 3
    .param p1, "color"    # I
    .param p2, "alpha"    # F

    .prologue
    const/16 v2, 0xff

    .line 181
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 182
    .local v0, "colorAlpha":I
    int-to-float v1, v0

    mul-float/2addr v1, p2

    float-to-int v0, v1

    .line 183
    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    return v1
.end method

.method private setGradientAnimation()V
    .locals 6

    .prologue
    .line 138
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/HintView;->mGradientAnimator:Landroid/animation/ValueAnimator;

    .line 139
    iget-object v0, p0, Lcn/nubia/deskclock/ui/HintView;->mGradientAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 140
    iget-object v0, p0, Lcn/nubia/deskclock/ui/HintView;->mGradientAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e99999a    # 0.3f

    const/4 v3, 0x0

    const v4, 0x3f333333    # 0.7f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 142
    iget-object v0, p0, Lcn/nubia/deskclock/ui/HintView;->mGradientAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcn/nubia/deskclock/ui/HintView$2;

    invoke-direct {v1, p0}, Lcn/nubia/deskclock/ui/HintView$2;-><init>(Lcn/nubia/deskclock/ui/HintView;)V

    .line 143
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 151
    return-void

    .line 138
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setHorizontalGradient()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    const/4 v11, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 188
    iget v0, p0, Lcn/nubia/deskclock/ui/HintView;->mFlingTextX:I

    int-to-float v1, v0

    .line 189
    .local v1, "x1":F
    iget v0, p0, Lcn/nubia/deskclock/ui/HintView;->mFlingTextY:I

    int-to-float v0, v0

    iget v5, p0, Lcn/nubia/deskclock/ui/HintView;->mTextHeight:F

    mul-float/2addr v5, v12

    sub-float v2, v0, v5

    .line 190
    .local v2, "y1":F
    iget v0, p0, Lcn/nubia/deskclock/ui/HintView;->mFlingTextY:I

    int-to-float v0, v0

    iget v5, p0, Lcn/nubia/deskclock/ui/HintView;->mTextHeight:F

    const/high16 v6, 0x3fc00000    # 1.5f

    mul-float/2addr v5, v6

    add-float v4, v0, v5

    .line 191
    .local v4, "y2":F
    const v10, 0x3f2aaaab

    .line 192
    .local v10, "start":F
    const/4 v8, 0x0

    .line 193
    .local v8, "end":F
    const v9, 0x3e2aaaab

    .line 195
    .local v9, "offset":F
    iget-object v0, p0, Lcn/nubia/deskclock/ui/HintView;->mPositions:[F

    const/4 v5, 0x0

    aput v5, v0, v13

    .line 196
    iget-object v0, p0, Lcn/nubia/deskclock/ui/HintView;->mPositions:[F

    sub-float v5, v8, v10

    iget v6, p0, Lcn/nubia/deskclock/ui/HintView;->mGradientPosition:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v10

    aput v5, v0, v11

    .line 197
    iget-object v5, p0, Lcn/nubia/deskclock/ui/HintView;->mPositions:[F

    iget-object v0, p0, Lcn/nubia/deskclock/ui/HintView;->mPositions:[F

    aget v0, v0, v11

    add-float/2addr v0, v9

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    move v0, v3

    :goto_0
    aput v0, v5, v14

    .line 199
    iget-object v5, p0, Lcn/nubia/deskclock/ui/HintView;->mPositions:[F

    const/4 v6, 0x3

    iget-object v0, p0, Lcn/nubia/deskclock/ui/HintView;->mPositions:[F

    aget v0, v0, v11

    mul-float v7, v12, v9

    add-float/2addr v0, v7

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    move v0, v3

    :goto_1
    aput v0, v5, v6

    .line 201
    iget-object v0, p0, Lcn/nubia/deskclock/ui/HintView;->mPositions:[F

    const/4 v5, 0x4

    aput v3, v0, v5

    .line 203
    iget v0, p0, Lcn/nubia/deskclock/ui/HintView;->mAlpha:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    .line 204
    iput v3, p0, Lcn/nubia/deskclock/ui/HintView;->mAlpha:F

    .line 206
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/ui/HintView;->mColorsEx:[I

    iget-object v3, p0, Lcn/nubia/deskclock/ui/HintView;->mColors:[I

    aget v3, v3, v13

    iget v5, p0, Lcn/nubia/deskclock/ui/HintView;->mAlpha:F

    iget v6, p0, Lcn/nubia/deskclock/ui/HintView;->mScaleAlpha:F

    mul-float/2addr v5, v6

    invoke-direct {p0, v3, v5}, Lcn/nubia/deskclock/ui/HintView;->setColorAlpha(IF)I

    move-result v3

    aput v3, v0, v13

    .line 207
    iget-object v0, p0, Lcn/nubia/deskclock/ui/HintView;->mColorsEx:[I

    iget-object v3, p0, Lcn/nubia/deskclock/ui/HintView;->mColors:[I

    aget v3, v3, v11

    iget v5, p0, Lcn/nubia/deskclock/ui/HintView;->mAlpha:F

    iget v6, p0, Lcn/nubia/deskclock/ui/HintView;->mScaleAlpha:F

    mul-float/2addr v5, v6

    invoke-direct {p0, v3, v5}, Lcn/nubia/deskclock/ui/HintView;->setColorAlpha(IF)I

    move-result v3

    aput v3, v0, v11

    .line 208
    iget-object v0, p0, Lcn/nubia/deskclock/ui/HintView;->mColorsEx:[I

    iget-object v3, p0, Lcn/nubia/deskclock/ui/HintView;->mColors:[I

    aget v3, v3, v14

    iget v5, p0, Lcn/nubia/deskclock/ui/HintView;->mAlpha:F

    iget v6, p0, Lcn/nubia/deskclock/ui/HintView;->mScaleAlpha:F

    mul-float/2addr v5, v6

    invoke-direct {p0, v3, v5}, Lcn/nubia/deskclock/ui/HintView;->setColorAlpha(IF)I

    move-result v3

    aput v3, v0, v14

    .line 209
    iget-object v0, p0, Lcn/nubia/deskclock/ui/HintView;->mColorsEx:[I

    const/4 v3, 0x3

    iget-object v5, p0, Lcn/nubia/deskclock/ui/HintView;->mColors:[I

    const/4 v6, 0x3

    aget v5, v5, v6

    iget v6, p0, Lcn/nubia/deskclock/ui/HintView;->mAlpha:F

    iget v7, p0, Lcn/nubia/deskclock/ui/HintView;->mScaleAlpha:F

    mul-float/2addr v6, v7

    invoke-direct {p0, v5, v6}, Lcn/nubia/deskclock/ui/HintView;->setColorAlpha(IF)I

    move-result v5

    aput v5, v0, v3

    .line 210
    iget-object v0, p0, Lcn/nubia/deskclock/ui/HintView;->mColorsEx:[I

    const/4 v3, 0x4

    iget-object v5, p0, Lcn/nubia/deskclock/ui/HintView;->mColors:[I

    const/4 v6, 0x4

    aget v5, v5, v6

    iget v6, p0, Lcn/nubia/deskclock/ui/HintView;->mAlpha:F

    iget v7, p0, Lcn/nubia/deskclock/ui/HintView;->mScaleAlpha:F

    mul-float/2addr v6, v7

    invoke-direct {p0, v5, v6}, Lcn/nubia/deskclock/ui/HintView;->setColorAlpha(IF)I

    move-result v5

    aput v5, v0, v3

    .line 211
    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v5, p0, Lcn/nubia/deskclock/ui/HintView;->mColorsEx:[I

    iget-object v6, p0, Lcn/nubia/deskclock/ui/HintView;->mPositions:[F

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcn/nubia/deskclock/ui/HintView;->mLinearGradient:Landroid/graphics/LinearGradient;

    .line 214
    iget-object v0, p0, Lcn/nubia/deskclock/ui/HintView;->mTextFlingPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcn/nubia/deskclock/ui/HintView;->mLinearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 215
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lcn/nubia/deskclock/ui/HintView;->mPositions:[F

    aget v0, v0, v11

    add-float/2addr v0, v9

    goto/16 :goto_0

    .line 199
    :cond_2
    iget-object v0, p0, Lcn/nubia/deskclock/ui/HintView;->mPositions:[F

    aget v0, v0, v11

    mul-float v7, v12, v9

    add-float/2addr v0, v7

    goto/16 :goto_1
.end method

.method private spToPx(F)I
    .locals 2
    .param p1, "spValue"    # F

    .prologue
    .line 120
    iget v0, p0, Lcn/nubia/deskclock/ui/HintView;->mScaledDensity:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private startAlphaAnimation()V
    .locals 1

    .prologue
    .line 160
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/HintView;->stopAlphaAnimation()V

    .line 161
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/HintView;->setAlphaAnimation()V

    .line 162
    iget-object v0, p0, Lcn/nubia/deskclock/ui/HintView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 163
    return-void
.end method

.method private startTextAnimation()V
    .locals 1

    .prologue
    .line 154
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/HintView;->stopGradientAnimation()V

    .line 155
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/HintView;->setGradientAnimation()V

    .line 156
    iget-object v0, p0, Lcn/nubia/deskclock/ui/HintView;->mGradientAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 157
    return-void
.end method

.method private stopAlphaAnimation()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcn/nubia/deskclock/ui/HintView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcn/nubia/deskclock/ui/HintView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/HintView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 177
    :cond_0
    return-void
.end method

.method private stopGradientAnimation()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcn/nubia/deskclock/ui/HintView;->mGradientAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcn/nubia/deskclock/ui/HintView;->mGradientAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/HintView;->mGradientAnimator:Landroid/animation/ValueAnimator;

    .line 170
    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 85
    iget v0, p0, Lcn/nubia/deskclock/ui/HintView;->mScaleAlpha:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcn/nubia/deskclock/ui/HintView;->mAlpha:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcn/nubia/deskclock/ui/HintView;->mFlingText:Ljava/lang/String;

    iget v1, p0, Lcn/nubia/deskclock/ui/HintView;->mFlingTextX:I

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/deskclock/ui/HintView;->mFlingTextY:I

    int-to-float v2, v2

    iget-object v3, p0, Lcn/nubia/deskclock/ui/HintView;->mTextFlingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 89
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/HintView;->drawCircle(Landroid/graphics/Canvas;)V

    .line 90
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 98
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 99
    sub-int v0, p4, p2

    iput v0, p0, Lcn/nubia/deskclock/ui/HintView;->viewWidth:I

    .line 100
    sub-int v0, p5, p3

    iput v0, p0, Lcn/nubia/deskclock/ui/HintView;->viewHeight:I

    .line 101
    iget v0, p0, Lcn/nubia/deskclock/ui/HintView;->viewWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/nubia/deskclock/ui/HintView;->mFlingTextX:I

    .line 102
    iget v0, p0, Lcn/nubia/deskclock/ui/HintView;->viewHeight:I

    const/high16 v1, 0x41800000    # 16.0f

    invoke-direct {p0, v1}, Lcn/nubia/deskclock/ui/HintView;->dpToPx(F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/deskclock/ui/HintView;->mFlingTextY:I

    .line 103
    iget v0, p0, Lcn/nubia/deskclock/ui/HintView;->viewWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/nubia/deskclock/ui/HintView;->mCircleX:I

    .line 104
    iget v0, p0, Lcn/nubia/deskclock/ui/HintView;->viewHeight:I

    iput v0, p0, Lcn/nubia/deskclock/ui/HintView;->mCircleY:I

    .line 105
    return-void
.end method

.method public startScanText()V
    .locals 1

    .prologue
    .line 254
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/HintView;->startAlphaAnimation()V

    .line 255
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/HintView;->startTextAnimation()V

    .line 256
    iget-object v0, p0, Lcn/nubia/deskclock/ui/HintView;->mScanTextControl:Lcn/nubia/deskclock/ui/HintView$ScanTextControl;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/HintView$ScanTextControl;->startScanTextRunnable()V

    .line 257
    return-void
.end method

.method public stopScanText()V
    .locals 1

    .prologue
    .line 260
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/HintView;->stopAlphaAnimation()V

    .line 261
    iget-object v0, p0, Lcn/nubia/deskclock/ui/HintView;->mScanTextControl:Lcn/nubia/deskclock/ui/HintView$ScanTextControl;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/HintView$ScanTextControl;->StopScanTextRunnable()V

    .line 262
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/HintView;->stopGradientAnimation()V

    .line 264
    return-void
.end method
