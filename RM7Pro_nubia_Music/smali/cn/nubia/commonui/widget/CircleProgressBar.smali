.class public Lcn/nubia/commonui/widget/CircleProgressBar;
.super Landroid/view/View;
.source "CircleProgressBar.java"


# instance fields
.field private mCirclePaint:Landroid/graphics/Paint;

.field private mCircleRadius:F

.field private mCircleSize:I

.field private mDrawTextX:F

.field private mDrawTextY:F

.field private mMax:I

.field private mProgress:I

.field private mReachedBarColor:I

.field private mSectorPaint:Landroid/graphics/Paint;

.field private mTextColor:I

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSize:F

.field private mUnreachedBarColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/widget/CircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 36
    sget v0, Lcn/nubia/commonui/R$attr;->circleProgressBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/widget/CircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/16 v2, 0x64

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    iput v1, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mProgress:I

    .line 27
    iput v2, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mMax:I

    .line 42
    sget-object v0, Lcn/nubia/commonui/R$styleable;->CircleProgressBar:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 44
    sget v1, Lcn/nubia/commonui/R$styleable;->CircleProgressBar_maxProgressNubia:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mMax:I

    .line 45
    sget v1, Lcn/nubia/commonui/R$styleable;->CircleProgressBar_progressCircleRadius:I

    .line 47
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/CircleProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/commonui/R$dimen;->nubia_circle_progress_radius_default:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mCircleRadius:F

    .line 49
    sget v1, Lcn/nubia/commonui/R$styleable;->CircleProgressBar_progressReachedColor:I

    .line 51
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/CircleProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/commonui/R$color;->nubia_circle_progress_reached_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mReachedBarColor:I

    .line 53
    sget v1, Lcn/nubia/commonui/R$styleable;->CircleProgressBar_progressUnreachedColor:I

    .line 55
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/CircleProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/commonui/R$color;->nubia_circle_progress_unreached_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mUnreachedBarColor:I

    .line 57
    sget v1, Lcn/nubia/commonui/R$styleable;->CircleProgressBar_progressTextColor:I

    .line 58
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/CircleProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/commonui/R$color;->nubia_circle_progress_reached_color:I

    .line 59
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 57
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mTextColor:I

    .line 60
    sget v1, Lcn/nubia/commonui/R$styleable;->CircleProgressBar_progressTextSize:I

    .line 62
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/CircleProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/commonui/R$dimen;->nubia_text_size_extrasmall:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mTextSize:F

    .line 64
    sget v1, Lcn/nubia/commonui/R$styleable;->CircleProgressBar_progressCircleSize:I

    .line 66
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/CircleProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/commonui/R$dimen;->nubia_circle_progress_width_default:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 64
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mCircleSize:I

    .line 68
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    invoke-direct {p0}, Lcn/nubia/commonui/widget/CircleProgressBar;->initPaint()V

    .line 71
    return-void
.end method

.method private calculateCircleCenter()V
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 115
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/CircleProgressBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/CircleProgressBar;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/CircleProgressBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 116
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/CircleProgressBar;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mDrawTextX:F

    .line 117
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/CircleProgressBar;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/CircleProgressBar;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/CircleProgressBar;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 118
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/CircleProgressBar;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mDrawTextY:F

    .line 119
    return-void
.end method

.method private initPaint()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 76
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mTextPaint:Landroid/graphics/Paint;

    .line 77
    iget-object v0, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 78
    iget-object v0, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    iget-object v0, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 82
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mCirclePaint:Landroid/graphics/Paint;

    .line 83
    iget-object v0, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mCircleSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 84
    iget-object v0, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mUnreachedBarColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget-object v0, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mSectorPaint:Landroid/graphics/Paint;

    .line 89
    iget-object v0, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mSectorPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mCircleSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 90
    iget-object v0, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mSectorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 91
    iget-object v0, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mSectorPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mReachedBarColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    return-void
.end method

.method private measure(IZ)I
    .locals 4

    .prologue
    .line 103
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 104
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 105
    iget v2, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mCircleSize:I

    .line 106
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_0

    .line 111
    :goto_0
    return v0

    .line 109
    :cond_0
    iget v0, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mCircleRadius:F

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    goto :goto_0
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mMax:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mProgress:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 124
    invoke-direct {p0}, Lcn/nubia/commonui/widget/CircleProgressBar;->calculateCircleCenter()V

    .line 126
    iget v0, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mDrawTextX:F

    iget v1, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mDrawTextY:F

    iget v2, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mCircleRadius:F

    iget-object v3, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/CircleProgressBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mDrawTextX:F

    iget v2, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mDrawTextY:F

    iget v3, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mTextSize:F

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 133
    iget v0, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mDrawTextX:F

    iget v1, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mCircleRadius:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 134
    iget v1, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mDrawTextY:F

    iget v2, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mCircleRadius:F

    sub-float/2addr v1, v2

    float-to-int v2, v1

    .line 135
    iget v1, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mDrawTextX:F

    iget v3, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mCircleRadius:F

    add-float/2addr v1, v3

    float-to-int v3, v1

    .line 136
    iget v1, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mDrawTextY:F

    iget v4, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mCircleRadius:F

    add-float/2addr v1, v4

    float-to-int v4, v1

    .line 137
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float v2, v2

    int-to-float v3, v3

    int-to-float v4, v4

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 138
    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/CircleProgressBar;->getProgress()I

    move-result v0

    mul-int/lit16 v0, v0, 0x168

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/CircleProgressBar;->getMax()I

    move-result v3

    div-int/2addr v0, v3

    int-to-float v3, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mSectorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 140
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 97
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/widget/CircleProgressBar;->measure(IZ)I

    move-result v0

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0, p2, v1}, Lcn/nubia/commonui/widget/CircleProgressBar;->measure(IZ)I

    move-result v1

    .line 97
    invoke-virtual {p0, v0, v1}, Lcn/nubia/commonui/widget/CircleProgressBar;->setMeasuredDimension(II)V

    .line 99
    return-void
.end method

.method public setMax(I)V
    .locals 0

    .prologue
    .line 147
    iput p1, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mMax:I

    .line 148
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .prologue
    .line 155
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 156
    :cond_0
    :goto_0
    iget v0, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mProgress:I

    if-ne p1, v0, :cond_2

    .line 161
    :goto_1
    return-void

    .line 155
    :cond_1
    iget v0, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mMax:I

    if-le p1, v0, :cond_0

    iget p1, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mMax:I

    goto :goto_0

    .line 159
    :cond_2
    iput p1, p0, Lcn/nubia/commonui/widget/CircleProgressBar;->mProgress:I

    .line 160
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/CircleProgressBar;->invalidate()V

    goto :goto_1
.end method
