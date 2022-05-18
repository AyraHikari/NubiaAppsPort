.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;
.super Lcom/android/gallery3d/filtershow/filters/i1;
.source ""


# instance fields
.field private a:Landroid/content/res/Resources;

.field private b:I

.field private c:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/i1;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->a:Landroid/content/res/Resources;

    const v1, 0x7f07012e

    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->b:I

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->c:Landroid/graphics/Bitmap;

    const-string v0, "drama"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->c:Landroid/graphics/Bitmap;

    if-nez p2, :cond_1

    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 p3, 0x0

    iput-boolean p3, p2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iget p3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->b:I

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->a:Landroid/content/res/Resources;

    invoke-static {v0, p3, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->c:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "bad resource for filter: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ImageFilterDrama"

    invoke-static {p3, p2}, Lcom/android/gallery3d/filtershow/c/a;->f(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->c:Landroid/graphics/Bitmap;

    if-nez p2, :cond_2

    return-object p1

    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/i1;->getParameters()Lcom/android/gallery3d/filtershow/filters/f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/filters/f;->getValue()I

    move-result p2

    int-to-float v8, p2

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->c:Landroid/graphics/Bitmap;

    const/high16 v7, -0x40800000    # -1.0f

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->nativeApplyFilter(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap;IIFF)V

    return-object p1
.end method

.method public d(Landroid/content/res/Resources;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->a:Landroid/content/res/Resources;

    return-void
.end method

.method public freeResources()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->c:Landroid/graphics/Bitmap;

    return-void
.end method

.method public getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 5

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/f;

    const-string v1, "Default"

    const/4 v2, 0x0

    const/16 v3, 0x32

    const/16 v4, 0x64

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/filtershow/filters/f;-><init>(Ljava/lang/String;III)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->e0(Z)V

    const-string v2, "drama"

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/filters/x;->a0(Ljava/lang/String;)V

    const-string v2, "DRAMA"

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/filters/x;->d0(Ljava/lang/String;)V

    const-class v2, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/filters/x;->X(Ljava/lang/Class;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/filters/x;->Y(I)V

    const v2, 0x7f0e009f

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/filters/x;->g0(I)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->f0(Z)V

    return-object v0
.end method

.method protected native nativeApplyFilter(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap;IIFF)V
.end method
