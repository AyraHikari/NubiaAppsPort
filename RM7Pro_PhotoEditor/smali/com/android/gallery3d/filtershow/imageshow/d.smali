.class public Lcom/android/gallery3d/filtershow/imageshow/d;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private static a(FFF)F
    .locals 0

    sub-float/2addr p0, p1

    mul-float/2addr p0, p2

    add-float/2addr p1, p0

    return p1
.end method

.method private static b(FFF)F
    .locals 0

    sub-float/2addr p1, p0

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    return p0
.end method

.method public static c(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 4

    if-nez p0, :cond_0

    new-instance p0, Landroid/graphics/RectF;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v0, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->left:F

    invoke-static {v1, v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/d;->b(FFF)F

    move-result v1

    iput v1, p0, Landroid/graphics/RectF;->left:F

    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    invoke-static {v1, v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/d;->b(FFF)F

    move-result v1

    iput v1, p0, Landroid/graphics/RectF;->top:F

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    invoke-static {v1, v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/d;->a(FFF)F

    move-result v1

    iput v1, p0, Landroid/graphics/RectF;->right:F

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v1, v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/d;->a(FFF)F

    move-result p1

    iput p1, p0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public static d(Landroid/graphics/RectF;)Z
    .locals 3

    iget v0, p0, Landroid/graphics/RectF;->left:F

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/gallery3d/filtershow/imageshow/d;->e(IF)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v1, v0}, Lcom/android/gallery3d/filtershow/imageshow/d;->e(IF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v2, v0}, Lcom/android/gallery3d/filtershow/imageshow/d;->e(IF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v2, p0}, Lcom/android/gallery3d/filtershow/imageshow/d;->e(IF)Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method private static e(IF)Z
    .locals 6

    float-to-double v0, p1

    int-to-double p0, p0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    sub-double v4, p0, v2

    cmpl-double v4, v0, v4

    if-lez v4, :cond_0

    add-double/2addr p0, v2

    cmpg-double p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
