.class public Lcom/android/gallery3d/filtershow/filters/p;
.super Lcom/android/gallery3d/filtershow/filters/f;
.source ""


# instance fields
.field private r:I

.field private s:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 3

    const-string p1, "Default"

    const/4 v0, 0x0

    const/16 v1, 0x32

    const/16 v2, 0x64

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/gallery3d/filtershow/filters/f;-><init>(Ljava/lang/String;III)V

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/p;->r:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/p;->s:I

    const-class p1, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/x;->X(Ljava/lang/Class;)V

    iput p2, p0, Lcom/android/gallery3d/filtershow/filters/p;->r:I

    iput p3, p0, Lcom/android/gallery3d/filtershow/filters/p;->s:I

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/x;->Y(I)V

    invoke-virtual {p0, p3}, Lcom/android/gallery3d/filtershow/filters/x;->g0(I)V

    const/4 p1, 0x1

    const p2, 0x7f0e012b

    if-eq p3, p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/x;->e0(Z)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/f;->q0(I)V

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/filters/f;->p0(I)V

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/f;->o0(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->e0(Z)V

    const p2, 0x7f080184

    invoke-virtual {p0, p2}, Lcom/android/gallery3d/filtershow/filters/x;->W(I)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/x;->f0(Z)V

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

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/p;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/x;->L()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/gallery3d/filtershow/filters/p;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/p;->E(Lcom/android/gallery3d/filtershow/filters/x;)V

    return-object v0
.end method

.method protected E(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/f;->E(Lcom/android/gallery3d/filtershow/filters/x;)V

    return-void
.end method

.method public H(Lcom/android/gallery3d/filtershow/filters/x;)Z
    .locals 3

    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/f;->H(Lcom/android/gallery3d/filtershow/filters/x;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/p;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/p;

    iget v0, p1, Lcom/android/gallery3d/filtershow/filters/p;->s:I

    iget v2, p0, Lcom/android/gallery3d/filtershow/filters/p;->s:I

    if-ne v0, v2, :cond_1

    iget p1, p1, Lcom/android/gallery3d/filtershow/filters/p;->r:I

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/p;->r:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public T(Lcom/android/gallery3d/filtershow/filters/x;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/x;->T(Lcom/android/gallery3d/filtershow/filters/x;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/p;->H(Lcom/android/gallery3d/filtershow/filters/x;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized j0(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/f;->j0(Lcom/android/gallery3d/filtershow/filters/x;)V

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/p;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/p;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/x;->L()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->a0(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/x;->P()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->d0(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/p;->s0()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/p;->u0(I)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/p;->t0()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/p;->v0(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public s0()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/p;->r:I

    return v0
.end method

.method public t0()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/p;->s:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FilterFx: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/x;->L()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " bitmap rsc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/p;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u0(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/p;->r:I

    return-void
.end method

.method public v0(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/p;->s:I

    return-void
.end method
