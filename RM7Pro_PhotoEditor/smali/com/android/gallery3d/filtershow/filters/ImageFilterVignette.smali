.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;
.super Lcom/android/gallery3d/filtershow/filters/y0;
.source ""


# instance fields
.field private g:Landroid/graphics/Bitmap;

.field private h:Lcom/android/gallery3d/filtershow/filters/h1;

.field i:Lcom/android/gallery3d/filtershow/filters/e0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/y0;-><init>()V

    const-string v0, "Vignette"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    return-void
.end method

.method private r(FFII)F
    .locals 1

    int-to-float p3, p3

    sub-float/2addr p3, p1

    cmpg-float v0, p1, p3

    if-gez v0, :cond_0

    move p1, p3

    :cond_0
    cmpg-float p3, p1, p2

    if-gez p3, :cond_1

    move p1, p2

    :cond_1
    int-to-float p3, p4

    sub-float/2addr p3, p2

    cmpg-float p2, p1, p3

    if-gez p2, :cond_2

    move p1, p3

    :cond_2
    mul-float/2addr p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p1, p2

    return p1
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 11

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;->i:Lcom/android/gallery3d/filtershow/filters/e0;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    if-nez p3, :cond_2

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;->g:Landroid/graphics/Bitmap;

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getEnvironment()Lcom/android/gallery3d/filtershow/pipeline/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/pipeline/e;->h()Lcom/android/gallery3d/filtershow/pipeline/i;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/gallery3d/filtershow/pipeline/i;->b()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070118

    invoke-static {p2, p3}, Lcom/android/gallery3d/filtershow/filters/i0;->a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;->g:Landroid/graphics/Bitmap;

    :cond_1
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->max(II)I

    move-result p3

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v0, p3, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;->g:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object p1

    :cond_2
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "P875N02"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 p2, v4, 0x2

    div-int/lit8 p3, v5, 0x2

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-direct {p0, v1, v2, v4, v5}, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;->r(FFII)F

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;->i:Lcom/android/gallery3d/filtershow/filters/e0;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/e0;->o0()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, v4, v5}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getOriginalToScreenMatrix(II)Landroid/graphics/Matrix;

    move-result-object p2

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/gallery3d/filtershow/imageshow/x;->F()Landroid/graphics/Rect;

    move-result-object p3

    if-nez p3, :cond_3

    return-object p1

    :cond_3
    iget v1, p3, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;->i:Lcom/android/gallery3d/filtershow/filters/e0;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/e0;->q()F

    move-result v3

    mul-float/2addr v1, v3

    aput v1, v2, v0

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;->i:Lcom/android/gallery3d/filtershow/filters/e0;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/e0;->k()F

    move-result v3

    mul-float/2addr v1, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    invoke-virtual {p2, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v1, v2, v0

    float-to-int v1, v1

    aget v6, v2, v3

    float-to-int v6, v6

    iget v7, p3, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;->i:Lcom/android/gallery3d/filtershow/filters/e0;

    invoke-virtual {v8}, Lcom/android/gallery3d/filtershow/filters/e0;->a()F

    move-result v8

    mul-float/2addr v7, v8

    aput v7, v2, v0

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float p3, p3

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;->i:Lcom/android/gallery3d/filtershow/filters/e0;

    invoke-virtual {v7}, Lcom/android/gallery3d/filtershow/filters/e0;->r()F

    move-result v7

    mul-float/2addr p3, v7

    aput p3, v2, v3

    invoke-virtual {p2, v2}, Landroid/graphics/Matrix;->mapVectors([F)V

    aget p2, v2, v0

    aget p3, v2, v3

    move v8, p2

    move v9, p3

    move v7, v6

    move v6, v1

    goto :goto_0

    :cond_4
    move v6, p2

    move v7, p3

    move v8, v1

    move v9, v8

    :goto_0
    iget-object p2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;->i:Lcom/android/gallery3d/filtershow/filters/e0;

    invoke-virtual {p2, v0}, Lcom/android/gallery3d/filtershow/filters/e0;->n0(I)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;->s(I)F

    move-result v10

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v10}, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;->nativeApplyFilter(Landroid/graphics/Bitmap;IIIIFFF)V

    goto :goto_1

    :cond_5
    invoke-super {p0, p1, p2, p3}, Lcom/android/gallery3d/filtershow/filters/y0;->apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    :goto_1
    return-object p1
.end method

.method protected d()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/y0;->h()Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/y0;->h()Landroid/support/v8/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;->h:Lcom/android/gallery3d/filtershow/filters/h1;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/filtershow/filters/h1;->k(J)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;->h:Lcom/android/gallery3d/filtershow/filters/h1;

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/filtershow/filters/h1;->j(J)V

    return-void
.end method

.method protected f(Landroid/content/res/Resources;FI)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/y0;->j()Landroid/support/v8/renderscript/RenderScript;

    move-result-object p1

    new-instance p2, Lcom/android/gallery3d/filtershow/filters/h1;

    invoke-direct {p2, p1}, Lcom/android/gallery3d/filtershow/filters/h1;-><init>(Landroid/support/v8/renderscript/RenderScript;)V

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;->h:Lcom/android/gallery3d/filtershow/filters/h1;

    return-void
.end method

.method public getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 1

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/e0;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/e0;-><init>()V

    return-object v0
.end method

.method protected l()V
    .locals 0

    return-void
.end method

.method public m()V
    .locals 0

    return-void
.end method

.method protected native nativeApplyFilter(Landroid/graphics/Bitmap;IIIIFFF)V
.end method

.method protected o()V
    .locals 13

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/y0;->h()Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/y0;->h()Landroid/support/v8/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v1

    div-int/lit8 v2, v0, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;->r(FFII)F

    move-result v4

    const/4 v5, 0x2

    new-array v6, v5, [F

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;->i:Lcom/android/gallery3d/filtershow/filters/e0;

    invoke-virtual {v7}, Lcom/android/gallery3d/filtershow/filters/e0;->o0()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getOriginalToScreenMatrix(II)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/x;->F()Landroid/graphics/Rect;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget v4, v3, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;->i:Lcom/android/gallery3d/filtershow/filters/e0;

    invoke-virtual {v7}, Lcom/android/gallery3d/filtershow/filters/e0;->q()F

    move-result v7

    mul-float/2addr v4, v7

    aput v4, v6, v8

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;->i:Lcom/android/gallery3d/filtershow/filters/e0;

    invoke-virtual {v7}, Lcom/android/gallery3d/filtershow/filters/e0;->k()F

    move-result v7

    mul-float/2addr v4, v7

    const/4 v7, 0x1

    aput v4, v6, v7

    invoke-virtual {v2, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v4, v6, v8

    aget v9, v6, v7

    iget v10, v3, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    iget-object v11, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;->i:Lcom/android/gallery3d/filtershow/filters/e0;

    invoke-virtual {v11}, Lcom/android/gallery3d/filtershow/filters/e0;->a()F

    move-result v11

    mul-float/2addr v10, v11

    aput v10, v6, v8

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iget-object v10, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;->i:Lcom/android/gallery3d/filtershow/filters/e0;

    invoke-virtual {v10}, Lcom/android/gallery3d/filtershow/filters/e0;->r()F

    move-result v10

    mul-float/2addr v3, v10

    aput v3, v6, v7

    invoke-virtual {v2, v6}, Landroid/graphics/Matrix;->mapVectors([F)V

    aget v2, v6, v8

    aget v3, v6, v7

    move v6, v3

    move v3, v9

    move v12, v4

    move v4, v2

    move v2, v12

    goto :goto_0

    :cond_1
    move v6, v4

    :goto_0
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;->h:Lcom/android/gallery3d/filtershow/filters/h1;

    int-to-long v9, v0

    invoke-virtual {v7, v9, v10}, Lcom/android/gallery3d/filtershow/filters/h1;->k(J)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;->h:Lcom/android/gallery3d/filtershow/filters/h1;

    int-to-long v9, v1

    invoke-virtual {v0, v9, v10}, Lcom/android/gallery3d/filtershow/filters/h1;->j(J)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;->i:Lcom/android/gallery3d/filtershow/filters/e0;

    invoke-virtual {v0, v8}, Lcom/android/gallery3d/filtershow/filters/e0;->n0(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;->h:Lcom/android/gallery3d/filtershow/filters/h1;

    const/4 v7, 0x0

    if-gez v0, :cond_2

    neg-int v8, v0

    int-to-float v8, v8

    goto :goto_1

    :cond_2
    move v8, v7

    :goto_1
    invoke-virtual {v1, v8}, Lcom/android/gallery3d/filtershow/filters/h1;->i(F)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;->h:Lcom/android/gallery3d/filtershow/filters/h1;

    if-lez v0, :cond_3

    int-to-float v7, v0

    :cond_3
    invoke-virtual {v1, v7}, Lcom/android/gallery3d/filtershow/filters/h1;->f(F)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;->h:Lcom/android/gallery3d/filtershow/filters/h1;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;->i:Lcom/android/gallery3d/filtershow/filters/e0;

    invoke-virtual {v1, v5}, Lcom/android/gallery3d/filtershow/filters/e0;->n0(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/h1;->h(F)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;->h:Lcom/android/gallery3d/filtershow/filters/h1;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;->i:Lcom/android/gallery3d/filtershow/filters/e0;

    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Lcom/android/gallery3d/filtershow/filters/e0;->n0(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/h1;->g(F)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;->h:Lcom/android/gallery3d/filtershow/filters/h1;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/filters/h1;->d(F)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;->h:Lcom/android/gallery3d/filtershow/filters/h1;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/filters/h1;->e(F)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;->h:Lcom/android/gallery3d/filtershow/filters/h1;

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/filters/h1;->l(F)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;->h:Lcom/android/gallery3d/filtershow/filters/h1;

    invoke-virtual {v0, v6}, Lcom/android/gallery3d/filtershow/filters/h1;->m(F)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;->h:Lcom/android/gallery3d/filtershow/filters/h1;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;->i:Lcom/android/gallery3d/filtershow/filters/e0;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/filters/e0;->n0(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/h1;->n(F)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;->h:Lcom/android/gallery3d/filtershow/filters/h1;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/h1;->c()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;->h:Lcom/android/gallery3d/filtershow/filters/h1;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/y0;->h()Landroid/support/v8/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/y0;->i()Landroid/support/v8/renderscript/Allocation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/filtershow/filters/h1;->a(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    return-void
.end method

.method public s(I)F
    .locals 1

    const/high16 v0, 0x43480000    # 200.0f

    if-gtz p1, :cond_0

    int-to-float p1, p1

    div-float/2addr p1, v0

    neg-float p1, p1

    const/high16 v0, -0x3d380000    # -100.0f

    :goto_0
    mul-float/2addr p1, v0

    goto :goto_1

    :cond_0
    if-lez p1, :cond_1

    int-to-float p1, p1

    div-float/2addr p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    neg-float p1, p1

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p1, v0

    return p1
.end method

.method public useRepresentation(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 0

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/e0;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;->i:Lcom/android/gallery3d/filtershow/filters/e0;

    return-void
.end method
