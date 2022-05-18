.class public Lcn/nubia/weather/ui/view/CircleView;
.super Landroid/view/View;
.source "CircleView.java"


# instance fields
.field private mAngle:I

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mDefaultHeight:I

.field private mDefaultWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/weather/ui/view/CircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/weather/ui/view/CircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/weather/ui/view/CircleView;->mAngle:I

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200fa

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/weather/ui/view/CircleView;->mBitmap:Landroid/graphics/Bitmap;

    .line 32
    iget-object v0, p0, Lcn/nubia/weather/ui/view/CircleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcn/nubia/weather/ui/view/CircleView;->mDefaultHeight:I

    .line 33
    iget-object v0, p0, Lcn/nubia/weather/ui/view/CircleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcn/nubia/weather/ui/view/CircleView;->mDefaultWidth:I

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/weather/ui/view/CircleView;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/CircleView;

    .prologue
    .line 14
    iget v0, p0, Lcn/nubia/weather/ui/view/CircleView;->mAngle:I

    return v0
.end method

.method static synthetic access$002(Lcn/nubia/weather/ui/view/CircleView;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/CircleView;
    .param p1, "x1"    # I

    .prologue
    .line 14
    iput p1, p0, Lcn/nubia/weather/ui/view/CircleView;->mAngle:I

    return p1
.end method


# virtual methods
.method public animatorIsRunning()Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcn/nubia/weather/ui/view/CircleView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/weather/ui/view/CircleView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, 0x0

    .line 49
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 50
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 51
    iget v0, p0, Lcn/nubia/weather/ui/view/CircleView;->mAngle:I

    int-to-float v0, v0

    iget v1, p0, Lcn/nubia/weather/ui/view/CircleView;->mDefaultWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Lcn/nubia/weather/ui/view/CircleView;->mDefaultHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 52
    iget-object v0, p0, Lcn/nubia/weather/ui/view/CircleView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 53
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 54
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 44
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 45
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 38
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 39
    iget v0, p0, Lcn/nubia/weather/ui/view/CircleView;->mDefaultWidth:I

    iget v1, p0, Lcn/nubia/weather/ui/view/CircleView;->mDefaultHeight:I

    invoke-virtual {p0, v0, v1}, Lcn/nubia/weather/ui/view/CircleView;->setMeasuredDimension(II)V

    .line 40
    return-void
.end method

.method public setAngle(F)V
    .locals 2
    .param p1, "angle"    # F

    .prologue
    .line 57
    const/high16 v1, 0x42340000    # 45.0f

    div-float v1, p1, v1

    float-to-int v1, v1

    mul-int/lit8 v0, v1, 0x2d

    .line 58
    .local v0, "newAngle":I
    const/16 v1, 0x168

    if-ne v0, v1, :cond_0

    .line 59
    const/4 v0, 0x0

    .line 61
    :cond_0
    iget v1, p0, Lcn/nubia/weather/ui/view/CircleView;->mAngle:I

    if-eq v1, v0, :cond_1

    .line 62
    iput v0, p0, Lcn/nubia/weather/ui/view/CircleView;->mAngle:I

    .line 63
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/CircleView;->invalidate()V

    .line 65
    :cond_1
    return-void
.end method

.method public startAnimation()V
    .locals 4

    .prologue
    .line 72
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/CircleView;->stopAnimation()V

    .line 73
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/weather/ui/view/CircleView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 74
    iget-object v0, p0, Lcn/nubia/weather/ui/view/CircleView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 75
    iget-object v0, p0, Lcn/nubia/weather/ui/view/CircleView;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/32 v2, 0x5f5e100

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 76
    iget-object v0, p0, Lcn/nubia/weather/ui/view/CircleView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcn/nubia/weather/ui/view/CircleView$1;

    invoke-direct {v1, p0}, Lcn/nubia/weather/ui/view/CircleView$1;-><init>(Lcn/nubia/weather/ui/view/CircleView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 92
    iget-object v0, p0, Lcn/nubia/weather/ui/view/CircleView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 93
    return-void

    .line 73
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcn/nubia/weather/ui/view/CircleView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcn/nubia/weather/ui/view/CircleView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/weather/ui/view/CircleView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 100
    :cond_0
    return-void
.end method
