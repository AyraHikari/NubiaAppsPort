.class public Lcn/nubia/notepad/view/RoundCornerLinearLayout;
.super Landroid/widget/LinearLayout;
.source "RoundCornerLinearLayout.java"


# instance fields
.field private bgColor:I

.field private clipArea:Landroid/graphics/Path;

.field private cornerRadius:I

.field private pfd:Landroid/graphics/PaintFlagsDrawFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcn/nubia/notepad/view/RoundCornerLinearLayout;->setAttr(Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcn/nubia/notepad/view/RoundCornerLinearLayout;->setAttr(Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-direct {p0, p2, p3}, Lcn/nubia/notepad/view/RoundCornerLinearLayout;->setAttr(Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method private setAttr(Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    invoke-virtual {p0}, Lcn/nubia/notepad/view/RoundCornerLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcn/nubia/notepad/preset/R$styleable;->RoundCornerLinearLayout:[I

    invoke-virtual {v1, p1, v2, p2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 42
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    const/high16 v1, 0x42380000    # 46.0f

    .line 43
    invoke-virtual {p0}, Lcn/nubia/notepad/view/RoundCornerLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 42
    invoke-static {v4, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/notepad/view/RoundCornerLinearLayout;->cornerRadius:I

    .line 44
    const/4 v1, -0x1

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/notepad/view/RoundCornerLinearLayout;->bgColor:I

    .line 45
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 46
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 59
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 60
    iget-object v0, p0, Lcn/nubia/notepad/view/RoundCornerLinearLayout;->clipArea:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 61
    iget v0, p0, Lcn/nubia/notepad/view/RoundCornerLinearLayout;->bgColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 62
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 63
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 64
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldW"    # I
    .param p4, "oldH"    # I

    .prologue
    const/4 v3, 0x0

    .line 50
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 51
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcn/nubia/notepad/view/RoundCornerLinearLayout;->clipArea:Landroid/graphics/Path;

    .line 52
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 53
    .local v0, "rect":Landroid/graphics/RectF;
    iget-object v1, p0, Lcn/nubia/notepad/view/RoundCornerLinearLayout;->clipArea:Landroid/graphics/Path;

    iget v2, p0, Lcn/nubia/notepad/view/RoundCornerLinearLayout;->cornerRadius:I

    int-to-float v2, v2

    iget v3, p0, Lcn/nubia/notepad/view/RoundCornerLinearLayout;->cornerRadius:I

    int-to-float v3, v3

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 54
    return-void
.end method
