.class public Lcom/android/gallery3d/filtershow/filters/n0;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilter;
.source ""


# instance fields
.field a:Lcom/android/gallery3d/filtershow/filters/k;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;-><init>()V

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/k;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/k;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/n0;->a:Lcom/android/gallery3d/filtershow/filters/k;

    const-string v0, "Curves"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/n0;->e()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 9

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/filters/n0;->a:Lcom/android/gallery3d/filtershow/filters/k;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/android/gallery3d/filtershow/filters/k;->k0(I)Lcom/android/gallery3d/filtershow/imageshow/c0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/imageshow/c0;->m()Z

    move-result p2

    const/16 v0, 0x100

    if-nez p2, :cond_0

    new-array v7, v0, [I

    invoke-virtual {p0, v7, p3}, Lcom/android/gallery3d/filtershow/filters/n0;->d([II)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v1, p0

    move-object v2, p1

    move-object v5, v7

    move-object v6, v7

    invoke-virtual/range {v1 .. v7}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->nativeApplyGradientFilter(Landroid/graphics/Bitmap;II[I[I[I)V

    :cond_0
    iget-object p2, p0, Lcom/android/gallery3d/filtershow/filters/n0;->a:Lcom/android/gallery3d/filtershow/filters/k;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/android/gallery3d/filtershow/filters/k;->k0(I)Lcom/android/gallery3d/filtershow/imageshow/c0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/imageshow/c0;->m()Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_1

    new-array p2, v0, [I

    invoke-virtual {p0, p2, p3}, Lcom/android/gallery3d/filtershow/filters/n0;->d([II)V

    move-object v6, p2

    goto :goto_0

    :cond_1
    move-object v6, v1

    :goto_0
    iget-object p2, p0, Lcom/android/gallery3d/filtershow/filters/n0;->a:Lcom/android/gallery3d/filtershow/filters/k;

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Lcom/android/gallery3d/filtershow/filters/k;->k0(I)Lcom/android/gallery3d/filtershow/imageshow/c0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/imageshow/c0;->m()Z

    move-result p2

    if-nez p2, :cond_2

    new-array p2, v0, [I

    invoke-virtual {p0, p2, p3}, Lcom/android/gallery3d/filtershow/filters/n0;->d([II)V

    move-object v7, p2

    goto :goto_1

    :cond_2
    move-object v7, v1

    :goto_1
    iget-object p2, p0, Lcom/android/gallery3d/filtershow/filters/n0;->a:Lcom/android/gallery3d/filtershow/filters/k;

    const/4 p3, 0x3

    invoke-virtual {p2, p3}, Lcom/android/gallery3d/filtershow/filters/k;->k0(I)Lcom/android/gallery3d/filtershow/imageshow/c0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/imageshow/c0;->m()Z

    move-result p2

    if-nez p2, :cond_3

    new-array v1, v0, [I

    invoke-virtual {p0, v1, p3}, Lcom/android/gallery3d/filtershow/filters/n0;->d([II)V

    :cond_3
    move-object v8, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->nativeApplyGradientFilter(Landroid/graphics/Bitmap;II[I[I[I)V

    return-object p1
.end method

.method public d([II)V
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/n0;->a:Lcom/android/gallery3d/filtershow/filters/k;

    invoke-virtual {v0, p2}, Lcom/android/gallery3d/filtershow/filters/k;->k0(I)Lcom/android/gallery3d/filtershow/imageshow/c0;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/imageshow/c0;->j()[F

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_1

    aget v1, p2, v0

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public e()V
    .locals 4

    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/c0;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/imageshow/c0;-><init>()V

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/c0;->a(FF)I

    invoke-virtual {v0, v2, v1}, Lcom/android/gallery3d/filtershow/imageshow/c0;->a(FF)I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/n0;->a:Lcom/android/gallery3d/filtershow/filters/k;

    new-instance v3, Lcom/android/gallery3d/filtershow/imageshow/c0;

    invoke-direct {v3, v0}, Lcom/android/gallery3d/filtershow/imageshow/c0;-><init>(Lcom/android/gallery3d/filtershow/imageshow/c0;)V

    invoke-virtual {v2, v1, v3}, Lcom/android/gallery3d/filtershow/filters/k;->n0(ILcom/android/gallery3d/filtershow/imageshow/c0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 1

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/k;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/k;-><init>()V

    return-object v0
.end method

.method public useRepresentation(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 0

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/k;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/n0;->a:Lcom/android/gallery3d/filtershow/filters/k;

    return-void
.end method
