.class public Lcom/android/gallery3d/filtershow/filters/f;
.super Lcom/android/gallery3d/filtershow/filters/x;
.source ""

# interfaces
.implements Lcom/android/gallery3d/filtershow/controller/m;


# instance fields
.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/filters/x;-><init>(Ljava/lang/String;)V

    const-string p1, "FilterBasicRep"

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    iput p2, p0, Lcom/android/gallery3d/filtershow/filters/f;->m:I

    iput p4, p0, Lcom/android/gallery3d/filtershow/filters/f;->o:I

    invoke-virtual {p0, p3}, Lcom/android/gallery3d/filtershow/filters/f;->l(I)V

    return-void
.end method


# virtual methods
.method public A(Lcom/android/gallery3d/filtershow/controller/f;)V
    .locals 0

    return-void
.end method

.method public D()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 3

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/f;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/x;->L()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/android/gallery3d/filtershow/filters/f;-><init>(Ljava/lang/String;III)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/f;->E(Lcom/android/gallery3d/filtershow/filters/x;)V

    return-object v0
.end method

.method protected E(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/x;->E(Lcom/android/gallery3d/filtershow/filters/x;)V

    invoke-virtual {p1, p0}, Lcom/android/gallery3d/filtershow/filters/x;->j0(Lcom/android/gallery3d/filtershow/filters/x;)V

    return-void
.end method

.method public G([[Ljava/lang/String;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/x;->G([[Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    aget-object v2, v2, v0

    const-string v3, "Value"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object p1, p1, v1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/f;->n:I

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public H(Lcom/android/gallery3d/filtershow/filters/x;)Z
    .locals 3

    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/x;->H(Lcom/android/gallery3d/filtershow/filters/x;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/f;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/f;

    iget v0, p1, Lcom/android/gallery3d/filtershow/filters/f;->m:I

    iget v2, p0, Lcom/android/gallery3d/filtershow/filters/f;->m:I

    if-ne v0, v2, :cond_1

    iget v0, p1, Lcom/android/gallery3d/filtershow/filters/f;->o:I

    iget v2, p0, Lcom/android/gallery3d/filtershow/filters/f;->o:I

    if-ne v0, v2, :cond_1

    iget v0, p1, Lcom/android/gallery3d/filtershow/filters/f;->n:I

    iget v2, p0, Lcom/android/gallery3d/filtershow/filters/f;->n:I

    if-ne v0, v2, :cond_1

    iget v0, p1, Lcom/android/gallery3d/filtershow/filters/f;->p:I

    iget v2, p0, Lcom/android/gallery3d/filtershow/filters/f;->p:I

    if-ne v0, v2, :cond_1

    iget p1, p1, Lcom/android/gallery3d/filtershow/filters/f;->q:I

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/f;->q:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public V()[[Ljava/lang/String;
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [[Ljava/lang/String;

    new-array v2, v0, [Ljava/lang/String;

    const-string v3, "Name"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/x;->L()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    aput-object v2, v1, v4

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "Value"

    aput-object v2, v0, v4

    iget v2, p0, Lcom/android/gallery3d/filtershow/filters/f;->n:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    aput-object v0, v1, v5

    return-object v1
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/f;->n:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/f;->m:I

    return v0
.end method

.method public j0(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 1

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/f;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/f;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/f;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/f;->q0(I)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/f;->x()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/f;->p0(I)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/f;->getValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/f;->l(I)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/f;->k0()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/f;->o0(I)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/f;->l0()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/f;->r0(I)V

    :cond_0
    return-void
.end method

.method public k0()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/f;->p:I

    return v0
.end method

.method public l(I)V
    .locals 1

    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/f;->n:I

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/f;->m:I

    if-ge p1, v0, :cond_0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/f;->n:I

    :cond_0
    iget p1, p0, Lcom/android/gallery3d/filtershow/filters/f;->n:I

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/f;->o:I

    if-le p1, v0, :cond_1

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/f;->n:I

    :cond_1
    return-void
.end method

.method public l0()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/f;->q:I

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    const-string v0, "ParameterInteger"

    return-object v0
.end method

.method public m0()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/f;->getValue()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v0, :cond_0

    const-string v2, "+"

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/x;->L()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n0()V
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/f;->p:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/f;->n:I

    return-void
.end method

.method public o0(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/f;->p:I

    return-void
.end method

.method public p0(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/f;->o:I

    return-void
.end method

.method public q0(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/f;->m:I

    return-void
.end method

.method public r0(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/f;->q:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/x;->L()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/f;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/gallery3d/filtershow/filters/f;->n:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/f;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/f;->o:I

    return v0
.end method
