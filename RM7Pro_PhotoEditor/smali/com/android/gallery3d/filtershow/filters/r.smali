.class public Lcom/android/gallery3d/filtershow/filters/r;
.super Lcom/android/gallery3d/filtershow/filters/x;
.source ""


# instance fields
.field private m:Lcom/android/gallery3d/filtershow/d/a;

.field private n:Lcom/android/gallery3d/filtershow/materials/g;

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/filtershow/materials/g;Ljava/lang/String;)V
    .locals 1

    const-string v0, "ImageBorder"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;-><init>(Ljava/lang/String;)V

    const-class v0, Lcom/android/gallery3d/filtershow/filters/j0;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->X(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/r;->n:Lcom/android/gallery3d/filtershow/materials/g;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/filters/r;->o:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/x;->Y(I)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/filters/r;->n:Lcom/android/gallery3d/filtershow/materials/g;

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/materials/g;->a()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/gallery3d/filtershow/filters/x;->g0(I)V

    const p2, 0x7f080184

    invoke-virtual {p0, p2}, Lcom/android/gallery3d/filtershow/filters/x;->W(I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/android/gallery3d/filtershow/filters/x;->e0(Z)V

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/x;->c0(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/filters/r;->n:Lcom/android/gallery3d/filtershow/materials/g;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/materials/g;->d()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/x;->b0(I)V

    return-void
.end method


# virtual methods
.method public B()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public D()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 3

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/r;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/r;->n:Lcom/android/gallery3d/filtershow/materials/g;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/r;->o:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/filtershow/filters/r;-><init>(Lcom/android/gallery3d/filtershow/materials/g;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/r;->E(Lcom/android/gallery3d/filtershow/filters/x;)V

    return-object v0
.end method

.method protected E(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/x;->E(Lcom/android/gallery3d/filtershow/filters/x;)V

    invoke-virtual {p1, p0}, Lcom/android/gallery3d/filtershow/filters/x;->j0(Lcom/android/gallery3d/filtershow/filters/x;)V

    return-void
.end method

.method public H(Lcom/android/gallery3d/filtershow/filters/x;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/x;->H(Lcom/android/gallery3d/filtershow/filters/x;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/r;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/r;

    iget-object p1, p1, Lcom/android/gallery3d/filtershow/filters/r;->m:Lcom/android/gallery3d/filtershow/d/a;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/r;->m:Lcom/android/gallery3d/filtershow/d/a;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public M(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/r;->n:Lcom/android/gallery3d/filtershow/materials/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/materials/g;->c(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public Q()I
    .locals 1

    invoke-super {p0}, Lcom/android/gallery3d/filtershow/filters/x;->Q()I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0e012b

    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/filters/x;->Q()I

    move-result v0

    return v0
.end method

.method public j0(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 1

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/r;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/r;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/x;->L()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->a0(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/r;->l0()Lcom/android/gallery3d/filtershow/materials/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/r;->n0(Lcom/android/gallery3d/filtershow/materials/g;)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/r;->m0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/r;->o0(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public k0()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/r;->n:Lcom/android/gallery3d/filtershow/materials/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/materials/g;->e()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/r;->n:Lcom/android/gallery3d/filtershow/materials/g;

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/r;->m:Lcom/android/gallery3d/filtershow/d/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/d/a;->d()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/r;->m:Lcom/android/gallery3d/filtershow/d/a;

    :cond_1
    return-void
.end method

.method public l0()Lcom/android/gallery3d/filtershow/materials/g;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/r;->n:Lcom/android/gallery3d/filtershow/materials/g;

    return-object v0
.end method

.method public m0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/r;->o:Ljava/lang/String;

    return-object v0
.end method

.method public n0(Lcom/android/gallery3d/filtershow/materials/g;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/r;->n:Lcom/android/gallery3d/filtershow/materials/g;

    return-void
.end method

.method public o0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/r;->o:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FilterBorder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/x;->L()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
