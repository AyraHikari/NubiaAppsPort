.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterRedEye;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilter;
.source ""


# instance fields
.field a:Lcom/android/gallery3d/filtershow/filters/w;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;-><init>()V

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/w;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/w;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterRedEye;->a:Lcom/android/gallery3d/filtershow/filters/w;

    const-string v0, "Red Eye"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    const/4 v0, 0x4

    new-array v0, v0, [S

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterRedEye;->a:Lcom/android/gallery3d/filtershow/filters/w;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/v;->n0()I

    move-result v1

    invoke-virtual {p0, p2, p3}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getOriginalToScreenMatrix(II)Landroid/graphics/Matrix;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_1

    new-instance v5, Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterRedEye;->a:Lcom/android/gallery3d/filtershow/filters/w;

    invoke-virtual {v6, v4}, Lcom/android/gallery3d/filtershow/filters/v;->l0(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/filtershow/filters/d1;

    iget-object v6, v6, Lcom/android/gallery3d/filtershow/filters/d1;->a:Landroid/graphics/RectF;

    invoke-direct {v5, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    int-to-float v6, p2

    int-to-float v7, p3

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v8, v6, v7}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, v5, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    int-to-short v6, v6

    aput-short v6, v0, v3

    iget v6, v5, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    int-to-short v6, v6

    const/4 v7, 0x1

    aput-short v6, v0, v7

    const/4 v6, 0x2

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v7

    float-to-int v7, v7

    int-to-short v7, v7

    aput-short v7, v0, v6

    const/4 v6, 0x3

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v5, v5

    int-to-short v5, v5

    aput-short v5, v0, v6

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRedEye;->nativeApplyFilter(Landroid/graphics/Bitmap;II[S)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 1

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/w;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/w;-><init>()V

    return-object v0
.end method

.method protected native nativeApplyFilter(Landroid/graphics/Bitmap;II[S)V
.end method

.method public useRepresentation(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 0

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/w;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterRedEye;->a:Lcom/android/gallery3d/filtershow/filters/w;

    return-void
.end method
