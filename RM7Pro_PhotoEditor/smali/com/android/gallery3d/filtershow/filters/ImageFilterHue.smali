.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;
.super Lcom/android/gallery3d/filtershow/filters/i1;
.source ""


# instance fields
.field private a:Lcom/android/gallery3d/filtershow/filters/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/i1;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;->a:Lcom/android/gallery3d/filtershow/filters/b;

    const-string v0, "Hue"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/b;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/b;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;->a:Lcom/android/gallery3d/filtershow/filters/b;

    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/i1;->getParameters()Lcom/android/gallery3d/filtershow/filters/f;

    move-result-object p2

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/i1;->getParameters()Lcom/android/gallery3d/filtershow/filters/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/f;->getValue()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;->a:Lcom/android/gallery3d/filtershow/filters/b;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/b;->e()V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;->a:Lcom/android/gallery3d/filtershow/filters/b;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/filters/b;->g(F)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;->a:Lcom/android/gallery3d/filtershow/filters/b;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/b;->c()[F

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;->nativeApplyFilter(Landroid/graphics/Bitmap;II[F)V

    return-object p1
.end method

.method public getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 2

    invoke-super {p0}, Lcom/android/gallery3d/filtershow/filters/i1;->getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/f;

    const-string v1, "Hue"

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->a0(Ljava/lang/String;)V

    const-string v1, "HUE"

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->d0(Ljava/lang/String;)V

    const-class v1, Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->X(Ljava/lang/Class;)V

    const/16 v1, -0xb4

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/f;->q0(I)V

    const/16 v1, 0xb4

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/f;->p0(I)V

    const v1, 0x7f0e0101

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->g0(I)V

    sget v1, Lcom/android/gallery3d/filtershow/editors/a;->y:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->W(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->f0(Z)V

    return-object v0
.end method

.method protected native nativeApplyFilter(Landroid/graphics/Bitmap;II[F)V
.end method
