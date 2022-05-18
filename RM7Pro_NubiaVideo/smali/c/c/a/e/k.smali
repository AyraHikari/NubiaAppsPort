.class public Lc/c/a/e/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/graphics/RectF;Lc/c/a/e/a;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lc/c/a/e/a;->h()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lc/c/a/e/a;->c()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Lc/c/a/e/a;->g()I

    move-result v2

    .line 4
    invoke-virtual {p1}, Lc/c/a/e/a;->f()I

    move-result p1

    .line 5
    iget v3, p0, Landroid/graphics/RectF;->left:F

    int-to-float v2, v2

    div-float/2addr v3, v2

    iput v3, p0, Landroid/graphics/RectF;->left:F

    .line 6
    iget v3, p0, Landroid/graphics/RectF;->right:F

    div-float/2addr v3, v2

    iput v3, p0, Landroid/graphics/RectF;->right:F

    .line 7
    iget v4, p0, Landroid/graphics/RectF;->top:F

    int-to-float p1, p1

    div-float/2addr v4, p1

    iput v4, p0, Landroid/graphics/RectF;->top:F

    .line 8
    iget v4, p0, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v4, p1

    iput v4, p0, Landroid/graphics/RectF;->bottom:F

    int-to-float v0, v0

    div-float/2addr v0, v2

    cmpl-float v2, v3, v0

    if-lez v2, :cond_0

    .line 9
    iput v0, p0, Landroid/graphics/RectF;->right:F

    :cond_0
    int-to-float v0, v1

    div-float/2addr v0, p1

    cmpl-float p1, v4, v0

    if-lez p1, :cond_1

    .line 10
    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    :cond_1
    return-void
.end method

.method public static b(Lc/c/a/e/a;Landroid/graphics/RectF;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lc/c/a/e/a;->h()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lc/c/a/e/a;->c()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Lc/c/a/e/a;->i()Z

    move-result p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    move v3, v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    int-to-float p0, v2

    int-to-float v2, v3

    int-to-float v0, v0

    int-to-float v1, v1

    .line 4
    invoke-virtual {p1, p0, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public static c(Landroid/graphics/RectF;[F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 2
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v0

    const/4 v1, 0x5

    aput v0, p1, v1

    .line 3
    iget v0, p0, Landroid/graphics/RectF;->left:F

    const/16 v1, 0xc

    aput v0, p1, v1

    .line 4
    iget p0, p0, Landroid/graphics/RectF;->top:F

    const/16 v0, 0xd

    aput p0, p1, v0

    return-void
.end method
