.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;
.super Lcom/android/gallery3d/filtershow/filters/i1;
.source ""


# instance fields
.field private a:Lcom/android/gallery3d/filtershow/filters/p;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/content/res/Resources;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/i1;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->a:Lcom/android/gallery3d/filtershow/filters/p;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->b:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->c:Landroid/content/res/Resources;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->d:I

    return-void
.end method

.method private native nativeIsArtFilter()I
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 10

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->d()Lcom/android/gallery3d/filtershow/filters/p;

    move-result-object p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->c:Landroid/content/res/Resources;

    if-nez p2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->d()Lcom/android/gallery3d/filtershow/filters/p;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/filters/p;->s0()I

    move-result p2

    if-nez p2, :cond_1

    return-object p1

    :cond_1
    iget-object p3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->b:Landroid/graphics/Bitmap;

    if-eqz p3, :cond_2

    iget p3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->d:I

    if-eq p3, p2, :cond_4

    :cond_2
    new-instance p3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iput p2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->d:I

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->c:Landroid/content/res/Resources;

    invoke-static {v0, p2, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->b:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "bad resource for filter: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ImageFilterFx"

    invoke-static {p3, p2}, Lcom/android/gallery3d/filtershow/c/a;->f(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    iget-object p2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->b:Landroid/graphics/Bitmap;

    if-nez p2, :cond_5

    return-object p1

    :cond_5
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/lit8 p2, v2, 0x4

    mul-int v8, p2, v3

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getEnvironment()Lcom/android/gallery3d/filtershow/pipeline/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/pipeline/e;->k()Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->d()Lcom/android/gallery3d/filtershow/filters/p;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/filters/f;->getValue()I

    move-result p2

    int-to-float v9, p2

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->b:Landroid/graphics/Bitmap;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->nativeApplyFilter(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap;IIIIF)V

    :cond_6
    :goto_1
    return-object p1
.end method

.method public collageApply(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/lit8 v0, v2, 0x4

    mul-int v8, v0, v3

    const/4 v7, 0x0

    const/high16 v9, 0x42c80000    # 100.0f

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v9}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->nativeApplyFilter(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap;IIIIF)V

    return-object p1
.end method

.method public d()Lcom/android/gallery3d/filtershow/filters/p;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->a:Lcom/android/gallery3d/filtershow/filters/p;

    return-object v0
.end method

.method public e()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->nativeIsArtFilter()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public f(Landroid/content/res/Resources;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->c:Landroid/content/res/Resources;

    return-void
.end method

.method public freeResources()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->b:Landroid/graphics/Bitmap;

    return-void
.end method

.method public getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/android/gallery3d/filtershow/filters/f;
    .locals 1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->d()Lcom/android/gallery3d/filtershow/filters/p;

    move-result-object v0

    return-object v0
.end method

.method protected native nativeApplyFilter(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap;IIIIF)V
.end method

.method public useRepresentation(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 0

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/p;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->a:Lcom/android/gallery3d/filtershow/filters/p;

    return-void
.end method
