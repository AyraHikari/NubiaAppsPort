.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterAdjustColor;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilter;
.source ""


# instance fields
.field a:Lcom/android/gallery3d/filtershow/filters/e;

.field private b:Lcom/android/gallery3d/filtershow/filters/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;-><init>()V

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/e;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/e;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterAdjustColor;->a:Lcom/android/gallery3d/filtershow/filters/e;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterAdjustColor;->b:Lcom/android/gallery3d/filtershow/filters/b;

    const-string v0, "adjustColor"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/b;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/b;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterAdjustColor;->b:Lcom/android/gallery3d/filtershow/filters/b;

    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterAdjustColor;->a:Lcom/android/gallery3d/filtershow/filters/e;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/e;->l0()I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterAdjustColor;->a:Lcom/android/gallery3d/filtershow/filters/e;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/e;->o0(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterAdjustColor;->b:Lcom/android/gallery3d/filtershow/filters/b;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/b;->e()V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterAdjustColor;->b:Lcom/android/gallery3d/filtershow/filters/b;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/filters/b;->g(F)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterAdjustColor;->b:Lcom/android/gallery3d/filtershow/filters/b;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/b;->c()[F

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterAdjustColor;->nativeApplyFilterHue(Landroid/graphics/Bitmap;II[F)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterAdjustColor;->a:Lcom/android/gallery3d/filtershow/filters/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/e;->o0(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterAdjustColor;->nativeApplyFilterContrast(Landroid/graphics/Bitmap;IIF)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterAdjustColor;->a:Lcom/android/gallery3d/filtershow/filters/e;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/e;->o0(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterAdjustColor;->nativeApplyFilterSaturation(Landroid/graphics/Bitmap;IIF)V

    return-object p1
.end method

.method public getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterAdjustColor;->a:Lcom/android/gallery3d/filtershow/filters/e;

    return-object v0
.end method

.method protected native nativeApplyFilterContrast(Landroid/graphics/Bitmap;IIF)V
.end method

.method protected native nativeApplyFilterHue(Landroid/graphics/Bitmap;II[F)V
.end method

.method protected native nativeApplyFilterSaturation(Landroid/graphics/Bitmap;IIF)V
.end method

.method public useRepresentation(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 0

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/e;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterAdjustColor;->a:Lcom/android/gallery3d/filtershow/filters/e;

    return-void
.end method
