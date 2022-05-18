.class public Lcom/huanju/ssp/base/utils/DrawableUtils;
.super Ljava/lang/Object;
.source "DrawableUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDrawable(III)Landroid/graphics/drawable/GradientDrawable;
    .locals 2
    .param p0, "contentColor"    # I
    .param p1, "strokeColor"    # I
    .param p2, "radius"    # I

    .prologue
    .line 31
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 32
    .local v0, "drawable":Landroid/graphics/drawable/GradientDrawable;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 33
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 34
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 35
    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 36
    return-object v0
.end method

.method public static createSelector(II)Landroid/graphics/drawable/StateListDrawable;
    .locals 3
    .param p0, "normalColor"    # I
    .param p1, "pressedColro"    # I

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-static {p0, p0, v2}, Lcom/huanju/ssp/base/utils/DrawableUtils;->createDrawable(III)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 62
    .local v0, "normalState":Landroid/graphics/drawable/Drawable;
    invoke-static {p1, p1, v2}, Lcom/huanju/ssp/base/utils/DrawableUtils;->createDrawable(III)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    .line 63
    .local v1, "pressedState":Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Lcom/huanju/ssp/base/utils/DrawableUtils;->createSelector(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    return-object v2
.end method

.method public static createSelector(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;
    .locals 4
    .param p0, "normalState"    # Landroid/graphics/drawable/Drawable;
    .param p1, "pressedState"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    .line 47
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 48
    .local v0, "bg":Landroid/graphics/drawable/StateListDrawable;
    if-nez p1, :cond_0

    .line 49
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 50
    const-string v1, "#30000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 52
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 54
    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x101009e

    aput v2, v1, v3

    invoke-virtual {v0, v1, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 55
    new-array v1, v3, [I

    invoke-virtual {v0, v1, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 56
    return-object v0

    .line 52
    nop

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data
.end method

.method public static getArea(Landroid/view/View;Landroid/graphics/RectF;I)Landroid/graphics/RectF;
    .locals 7
    .param p0, "v"    # Landroid/view/View;
    .param p1, "r"    # Landroid/graphics/RectF;
    .param p2, "rang"    # I

    .prologue
    const/4 v6, 0x0

    .line 100
    iget v4, p1, Landroid/graphics/RectF;->left:F

    int-to-float v5, p2

    sub-float/2addr v4, v5

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 101
    .local v1, "left":F
    iget v4, p1, Landroid/graphics/RectF;->top:F

    int-to-float v5, p2

    sub-float/2addr v4, v5

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 102
    .local v3, "top":F
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p1, Landroid/graphics/RectF;->right:F

    int-to-float v6, p2

    add-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 103
    .local v2, "right":F
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, p2

    add-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 104
    .local v0, "bottom":F
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v1, v3, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v4
.end method

.method public static getDisplayAnim()Landroid/view/animation/Animation;
    .locals 2

    .prologue
    .line 109
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x10a0000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public static getRoundedCornerBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "roundPx"    # F

    .prologue
    .line 116
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 117
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 116
    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 118
    .local v2, "output":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 119
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 120
    .local v3, "paint":Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct {v4, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 121
    .local v4, "rect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/RectF;

    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v5, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 122
    .local v5, "rectF":Landroid/graphics/RectF;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 123
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 124
    const/high16 v7, -0x1000000

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    invoke-virtual {v0, v5, p1, p1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 126
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 127
    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 128
    .local v6, "src":Landroid/graphics/Rect;
    invoke-virtual {v0, p0, v6, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "output":Landroid/graphics/Bitmap;
    .end local v3    # "paint":Landroid/graphics/Paint;
    .end local v4    # "rect":Landroid/graphics/Rect;
    .end local v5    # "rectF":Landroid/graphics/RectF;
    .end local v6    # "src":Landroid/graphics/Rect;
    :goto_0
    return-object v2

    .line 130
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v2, p0

    .line 131
    goto :goto_0
.end method

.method public static getXPath(FFF)[F
    .locals 4
    .param p0, "roundX"    # F
    .param p1, "roundY"    # F
    .param p2, "roundR"    # F

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 90
    const/16 v1, 0x8

    new-array v0, v1, [F

    const/4 v1, 0x0

    div-float v2, p2, v3

    sub-float v2, p0, v2

    aput v2, v0, v1

    const/4 v1, 0x1

    div-float v2, p2, v3

    sub-float v2, p1, v2

    aput v2, v0, v1

    const/4 v1, 0x2

    div-float v2, p2, v3

    add-float/2addr v2, p0

    aput v2, v0, v1

    const/4 v1, 0x3

    div-float v2, p2, v3

    add-float/2addr v2, p1

    aput v2, v0, v1

    const/4 v1, 0x4

    div-float v2, p2, v3

    sub-float v2, p0, v2

    aput v2, v0, v1

    const/4 v1, 0x5

    div-float v2, p2, v3

    add-float/2addr v2, p1

    aput v2, v0, v1

    const/4 v1, 0x6

    div-float v2, p2, v3

    add-float/2addr v2, p0

    aput v2, v0, v1

    const/4 v1, 0x7

    div-float v2, p2, v3

    sub-float v2, p1, v2

    aput v2, v0, v1

    .line 93
    .local v0, "point":[F
    return-object v0
.end method
