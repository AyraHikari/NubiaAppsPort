.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterEmptiness;
.super Lcom/android/gallery3d/filtershow/filters/i1;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/i1;-><init>()V

    const-string v0, "Emptiness"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    return-void
.end method

.method private d(FFII)F
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
    .locals 10

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/i1;->getParameters()Lcom/android/gallery3d/filtershow/filters/f;

    move-result-object p2

    check-cast p2, Lcom/android/gallery3d/filtershow/filters/o;

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/filters/o;->getValue()I

    move-result v9

    const/high16 v8, 0x40000000    # 2.0f

    div-int/lit8 p3, v2, 0x2

    int-to-float p3, p3

    div-int/lit8 v0, v3, 0x2

    int-to-float v0, v0

    invoke-direct {p0, p3, v0, v2, v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterEmptiness;->d(FFII)F

    move-result v1

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/filters/o;->s0()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v2, v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getOriginalToScreenMatrix(II)Landroid/graphics/Matrix;

    move-result-object p3

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/filters/o;->q()F

    move-result v0

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/filters/o;->k()F

    move-result v1

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v0, 0x1

    aput v1, v4, v0

    invoke-virtual {p3, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v1, v4, v5

    aget v0, v4, v0

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/filters/o;->a()F

    move-result v4

    invoke-virtual {p3, v4}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v4

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/filters/o;->r()F

    move-result p2

    invoke-virtual {p3, p2}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result p2

    move v7, p2

    move p3, v1

    move v6, v4

    goto :goto_0

    :cond_1
    move v6, v1

    move v7, v6

    :goto_0
    float-to-int v4, p3

    float-to-int v5, v0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/gallery3d/filtershow/filters/ImageFilterEmptiness;->nativeApplyFilter(Landroid/graphics/Bitmap;IIIIFFFI)V

    return-object p1
.end method

.method public getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 1

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/o;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/o;-><init>()V

    return-object v0
.end method

.method protected native nativeApplyFilter(Landroid/graphics/Bitmap;IIIIFFFI)V
.end method
