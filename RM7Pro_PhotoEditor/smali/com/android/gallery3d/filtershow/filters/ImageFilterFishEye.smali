.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterFishEye;
.super Lcom/android/gallery3d/filtershow/filters/i1;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/i1;-><init>()V

    const-string v0, "fish-eye"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/i1;->getParameters()Lcom/android/gallery3d/filtershow/filters/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/f;->getValue()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFishEye;->nativeApplyFilter(Landroid/graphics/Bitmap;IIF)V

    return-object p1
.end method

.method public getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 2

    invoke-super {p0}, Lcom/android/gallery3d/filtershow/filters/i1;->getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/f;

    const-string v1, "fish-eye"

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->a0(Ljava/lang/String;)V

    const-string v1, "FISH_EYE"

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->d0(Ljava/lang/String;)V

    const-class v1, Lcom/android/gallery3d/filtershow/filters/ImageFilterFishEye;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->X(Ljava/lang/Class;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->Y(I)V

    const v1, 0x7f0e00a1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->g0(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->f0(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/f;->q0(I)V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/f;->p0(I)V

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/f;->o0(I)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/f;->l(I)V

    return-object v0
.end method

.method protected native nativeApplyFilter(Landroid/graphics/Bitmap;IIF)V
.end method
