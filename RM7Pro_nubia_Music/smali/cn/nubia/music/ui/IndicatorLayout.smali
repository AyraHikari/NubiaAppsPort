.class public Lcn/nubia/music/ui/IndicatorLayout;
.super Landroid/widget/LinearLayout;
.source "IndicatorLayout.java"


# instance fields
.field private DIMEN_6:I

.field private mChildCount:I

.field private mColor:I

.field private mHeight:I

.field private mLeft:I

.field private mPaddingBottom:I

.field private mPaddingLeftAndRight:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRectF:Landroid/graphics/RectF;

.field private mTop:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    const/16 v0, 0x8

    iput v0, p0, Lcn/nubia/music/ui/IndicatorLayout;->mHeight:I

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const v4, 0x7f0d00fb

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/16 v0, 0x8

    iput v0, p0, Lcn/nubia/music/ui/IndicatorLayout;->mHeight:I

    .line 37
    invoke-virtual {p0, v2}, Lcn/nubia/music/ui/IndicatorLayout;->setBackgroundColor(I)V

    .line 38
    sget-object v0, Lcn/nubia/music/preset/R$styleable;->Indicator:[I

    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 39
    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/music/ui/IndicatorLayout;->mColor:I

    .line 40
    const v1, 0x7f0d00fa

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/music/ui/IndicatorLayout;->mPaddingLeftAndRight:I

    .line 41
    const/4 v1, 0x2

    invoke-static {v4}, Lcn/nubia/music/utils/ResHelper;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/music/ui/IndicatorLayout;->mPaddingBottom:I

    .line 42
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    const v0, 0x7f0d0101

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/ui/IndicatorLayout;->mHeight:I

    .line 44
    invoke-static {v4}, Lcn/nubia/music/utils/ResHelper;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/ui/IndicatorLayout;->DIMEN_6:I

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/ui/IndicatorLayout;->mPaint:Landroid/graphics/Paint;

    .line 47
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/ui/IndicatorLayout;->mRectF:Landroid/graphics/RectF;

    .line 48
    iget-object v0, p0, Lcn/nubia/music/ui/IndicatorLayout;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/music/ui/IndicatorLayout;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    iget-object v0, p0, Lcn/nubia/music/ui/IndicatorLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 50
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 75
    iget-object v0, p0, Lcn/nubia/music/ui/IndicatorLayout;->mRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcn/nubia/music/ui/IndicatorLayout;->mLeft:I

    iget v2, p0, Lcn/nubia/music/ui/IndicatorLayout;->mPaddingLeftAndRight:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 76
    iget-object v0, p0, Lcn/nubia/music/ui/IndicatorLayout;->mRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcn/nubia/music/ui/IndicatorLayout;->mTop:I

    iget v2, p0, Lcn/nubia/music/ui/IndicatorLayout;->mPaddingBottom:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 77
    iget-object v0, p0, Lcn/nubia/music/ui/IndicatorLayout;->mRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcn/nubia/music/ui/IndicatorLayout;->mLeft:I

    iget v2, p0, Lcn/nubia/music/ui/IndicatorLayout;->mWidth:I

    add-int/2addr v1, v2

    iget v2, p0, Lcn/nubia/music/ui/IndicatorLayout;->mPaddingLeftAndRight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 78
    iget-object v0, p0, Lcn/nubia/music/ui/IndicatorLayout;->mRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcn/nubia/music/ui/IndicatorLayout;->mTop:I

    iget v2, p0, Lcn/nubia/music/ui/IndicatorLayout;->mHeight:I

    add-int/2addr v1, v2

    iget v2, p0, Lcn/nubia/music/ui/IndicatorLayout;->mPaddingBottom:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 80
    iget-object v0, p0, Lcn/nubia/music/ui/IndicatorLayout;->mRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcn/nubia/music/ui/IndicatorLayout;->DIMEN_6:I

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/music/ui/IndicatorLayout;->DIMEN_6:I

    int-to-float v2, v2

    iget-object v3, p0, Lcn/nubia/music/ui/IndicatorLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 81
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 82
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 55
    invoke-virtual {p0}, Lcn/nubia/music/ui/IndicatorLayout;->getChildCount()I

    move-result v0

    iput v0, p0, Lcn/nubia/music/ui/IndicatorLayout;->mChildCount:I

    .line 56
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 60
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 61
    invoke-virtual {p0}, Lcn/nubia/music/ui/IndicatorLayout;->getMeasuredWidth()I

    move-result v0

    .line 62
    invoke-virtual {p0}, Lcn/nubia/music/ui/IndicatorLayout;->getMeasuredHeight()I

    move-result v1

    .line 63
    iget v2, p0, Lcn/nubia/music/ui/IndicatorLayout;->mChildCount:I

    div-int/2addr v0, v2

    iput v0, p0, Lcn/nubia/music/ui/IndicatorLayout;->mWidth:I

    .line 64
    iget v0, p0, Lcn/nubia/music/ui/IndicatorLayout;->mHeight:I

    sub-int v0, v1, v0

    iput v0, p0, Lcn/nubia/music/ui/IndicatorLayout;->mTop:I

    .line 65
    return-void
.end method

.method public scroll(IF)V
    .locals 2

    .prologue
    .line 68
    int-to-float v0, p1

    add-float/2addr v0, p2

    iget v1, p0, Lcn/nubia/music/ui/IndicatorLayout;->mWidth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcn/nubia/music/ui/IndicatorLayout;->mLeft:I

    .line 69
    invoke-virtual {p0}, Lcn/nubia/music/ui/IndicatorLayout;->invalidate()V

    .line 70
    return-void
.end method
