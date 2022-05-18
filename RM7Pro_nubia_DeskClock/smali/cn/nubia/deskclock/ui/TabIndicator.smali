.class public Lcn/nubia/deskclock/ui/TabIndicator;
.super Landroid/view/View;
.source "TabIndicator.java"


# instance fields
.field private mIndicatorBmp:Landroid/graphics/Bitmap;

.field private mStartX:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/deskclock/ui/TabIndicator;->mStartX:I

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/deskclock/ui/TabIndicator;->mStartX:I

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/deskclock/ui/TabIndicator;->mStartX:I

    .line 32
    return-void
.end method


# virtual methods
.method protected drawIndicatorView(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 57
    iget-object v0, p0, Lcn/nubia/deskclock/ui/TabIndicator;->mIndicatorBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/deskclock/ui/TabIndicator;->mIndicatorBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    iget-object v0, p0, Lcn/nubia/deskclock/ui/TabIndicator;->mIndicatorBmp:Landroid/graphics/Bitmap;

    iget v1, p0, Lcn/nubia/deskclock/ui/TabIndicator;->mStartX:I

    int-to-float v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 68
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/TabIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201b6

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/TabIndicator;->mIndicatorBmp:Landroid/graphics/Bitmap;

    .line 69
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 74
    iget-object v0, p0, Lcn/nubia/deskclock/ui/TabIndicator;->mIndicatorBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcn/nubia/deskclock/ui/TabIndicator;->mIndicatorBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/TabIndicator;->mIndicatorBmp:Landroid/graphics/Bitmap;

    .line 78
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 52
    invoke-virtual {p0, p1}, Lcn/nubia/deskclock/ui/TabIndicator;->drawIndicatorView(Landroid/graphics/Canvas;)V

    .line 53
    return-void
.end method

.method public setStartX(I)V
    .locals 0
    .param p1, "x"    # I

    .prologue
    .line 46
    iput p1, p0, Lcn/nubia/deskclock/ui/TabIndicator;->mStartX:I

    .line 47
    return-void
.end method
