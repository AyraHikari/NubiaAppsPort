.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterBwFilter;
.super Lcom/android/gallery3d/filtershow/filters/i1;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/i1;-><init>()V

    const-string v0, "BW Filter"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 7

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/i1;->getParameters()Lcom/android/gallery3d/filtershow/filters/f;

    move-result-object p2

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 p2, 0x3

    new-array p2, p2, [F

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/i1;->getParameters()Lcom/android/gallery3d/filtershow/filters/f;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/gallery3d/filtershow/filters/f;->getValue()I

    move-result p3

    add-int/lit16 p3, p3, 0xb4

    int-to-float p3, p3

    const/4 v0, 0x0

    aput p3, p2, v0

    const/4 p3, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p2, p3

    const/4 p3, 0x2

    aput v1, p2, p3

    invoke-static {p2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p2

    shr-int/lit8 p3, p2, 0x10

    and-int/lit16 v4, p3, 0xff

    shr-int/lit8 p3, p2, 0x8

    and-int/lit16 v5, p3, 0xff

    shr-int/2addr p2, v0

    and-int/lit16 v6, p2, 0xff

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBwFilter;->nativeApplyFilter(Landroid/graphics/Bitmap;IIIII)V

    return-object p1
.end method

.method public getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 2

    invoke-super {p0}, Lcom/android/gallery3d/filtershow/filters/i1;->getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/f;

    const-string v1, "BW Filter"

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->a0(Ljava/lang/String;)V

    const-string v1, "BWFILTER"

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->d0(Ljava/lang/String;)V

    const-class v1, Lcom/android/gallery3d/filtershow/filters/ImageFilterBwFilter;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->X(Ljava/lang/Class;)V

    const/16 v1, 0xb4

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/f;->p0(I)V

    const/16 v1, -0xb4

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/f;->q0(I)V

    const v1, 0x7f0e0040

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->g0(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->f0(Z)V

    return-object v0
.end method

.method protected native nativeApplyFilter(Landroid/graphics/Bitmap;IIIII)V
.end method
