.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterWBalance;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilter;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;-><init>()V

    const-string v0, "WBalance"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/filters/ImageFilterWBalance;->nativeApplyFilter(Landroid/graphics/Bitmap;IIII)V

    return-object p1
.end method

.method public getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 2

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/l;

    const-string v1, "WBalance"

    invoke-direct {v0, v1}, Lcom/android/gallery3d/filtershow/filters/l;-><init>(Ljava/lang/String;)V

    const-string v1, "WBALANCE"

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->d0(Ljava/lang/String;)V

    const-class v1, Lcom/android/gallery3d/filtershow/filters/ImageFilterWBalance;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->X(Ljava/lang/Class;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->Y(I)V

    const v1, 0x7f0e01a8

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->g0(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->e0(Z)V

    const v1, 0x7f080184

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->W(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->f0(Z)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->Z(Z)V

    return-object v0
.end method

.method protected native nativeApplyFilter(Landroid/graphics/Bitmap;IIII)V
.end method

.method public useRepresentation(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 0

    return-void
.end method
