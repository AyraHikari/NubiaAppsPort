.class public Lcom/android/gallery3d/filtershow/filters/r0;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;
.source ""


# instance fields
.field private a:Lcom/android/gallery3d/filtershow/filters/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;-><init>()V

    const-string v0, "ImageFilterDocGather"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 2

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/m;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/m;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->e0(Z)V

    const-class v1, Lcom/android/gallery3d/filtershow/filters/r0;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->X(Ljava/lang/Class;)V

    const-string v1, "FilterDocRepresentation"

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->d0(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->f0(Z)V

    return-object v0
.end method

.method public getParameters()Lcom/android/gallery3d/filtershow/filters/f;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/r0;->a:Lcom/android/gallery3d/filtershow/filters/m;

    return-object v0
.end method

.method public getValue()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/r0;->a:Lcom/android/gallery3d/filtershow/filters/m;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/m;->x0()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->docSkinSmooth:I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/r0;->a:Lcom/android/gallery3d/filtershow/filters/m;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/m;->y0()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->docSkinTone:I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/r0;->a:Lcom/android/gallery3d/filtershow/filters/m;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/m;->t0()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->docEyesCircleRemove:I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/r0;->a:Lcom/android/gallery3d/filtershow/filters/m;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/m;->u0()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->docEyesEnlarge:I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/r0;->a:Lcom/android/gallery3d/filtershow/filters/m;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/m;->v0()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->docFaceSlime:I

    return-void
.end method

.method public useRepresentation(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 1

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/m;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/r0;->a:Lcom/android/gallery3d/filtershow/filters/m;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/m;->x0()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->docSkinSmooth:I

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/m;->y0()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->docSkinTone:I

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/m;->t0()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->docEyesCircleRemove:I

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/m;->u0()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->docEyesEnlarge:I

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/m;->v0()I

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->docFaceSlime:I

    return-void
.end method
