.class public Lcom/android/gallery3d/filtershow/filters/o0;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;-><init>()V

    const-string v0, "ImageFilterDocEyesCircleRemove"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 2

    invoke-super {p0}, Lcom/android/gallery3d/filtershow/filters/i1;->getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/f;

    const-string v1, "ImageFilterDocEyesCircleRemove"

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->a0(Ljava/lang/String;)V

    const-class v1, Lcom/android/gallery3d/filtershow/filters/o0;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->X(Ljava/lang/Class;)V

    invoke-static {}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->q1()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->isUseDocFace()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0e0067

    goto :goto_0

    :cond_0
    const v1, 0x7f0e0066

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->g0(I)V

    const-string v1, "DOCEYESCIRCLEREMOVE"

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->d0(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/f;->q0(I)V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/f;->p0(I)V

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/f;->o0(I)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/f;->l(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->f0(Z)V

    return-object v0
.end method

.method public getValue()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/i1;->getParameters()Lcom/android/gallery3d/filtershow/filters/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/f;->getValue()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->docEyesCircleRemove:I

    return-void
.end method
