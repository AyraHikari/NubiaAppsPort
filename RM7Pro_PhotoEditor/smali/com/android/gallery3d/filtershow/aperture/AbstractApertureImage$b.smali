.class public Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:F

.field g:F

.field h:F

.field i:I

.field j:I

.field k:F

.field l:F

.field m:I

.field n:F

.field o:I

.field p:I

.field q:I

.field r:I

.field s:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->s:I

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->r:I

    return-void
.end method

.method public c(F)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->f:F

    return-void
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->d:I

    return-void
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->c:I

    return-void
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->q:I

    return-void
.end method

.method public g(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->o:I

    return-void
.end method

.method public h(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->p:I

    return-void
.end method

.method public i(F)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->l:F

    return-void
.end method

.method public j(F)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->k:F

    return-void
.end method

.method public k(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    const p1, 0x3f7d70a4    # 0.99f

    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->g:F

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const p1, 0x3c23d70a    # 0.01f

    goto :goto_0

    :goto_1
    return-void
.end method

.method public l(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    const p1, 0x3f7d70a4    # 0.99f

    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->h:F

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const p1, 0x3c23d70a    # 0.01f

    goto :goto_0

    :goto_1
    return-void
.end method

.method public m(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->j:I

    return-void
.end method

.method public n(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->i:I

    return-void
.end method

.method public o(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->m:I

    return-void
.end method

.method public p(F)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->n:F

    return-void
.end method

.method public q(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->e:I

    return-void
.end method

.method public r(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->b:I

    return-void
.end method

.method public s(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->a:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DimenInfo: srcW:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", srcH:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", depthW:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", depthH:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,rotate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", aperture:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", x:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->g:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->h:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", main_dac:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", iso:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fnum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->k:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",  exposure:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->l:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " face:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->p:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", apertBokehWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", apertBokehHeight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ratio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/aperture/AbstractApertureImage$b;->n:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
