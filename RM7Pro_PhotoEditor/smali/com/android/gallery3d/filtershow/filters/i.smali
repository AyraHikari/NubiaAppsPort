.class public Lcom/android/gallery3d/filtershow/filters/i;
.super Lcom/android/gallery3d/filtershow/filters/c;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/filters/c;-><init>(Ljava/lang/String;)V

    const-string p1, "FilterColorRepresentation"

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/x;->d0(Ljava/lang/String;)V

    const-class p1, Lcom/android/gallery3d/filtershow/filters/l0;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/x;->X(Ljava/lang/Class;)V

    const p1, 0x7f0e012c

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/x;->g0(I)V

    const p1, 0x7f080094

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/x;->W(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/x;->e0(Z)V

    return-void
.end method


# virtual methods
.method public D()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 2

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/i;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/android/gallery3d/filtershow/filters/i;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/c;->E(Lcom/android/gallery3d/filtershow/filters/x;)V

    return-object v0
.end method

.method public j0(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 2

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/i;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/i;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/c;->m0()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/x;

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/c;->k0(Lcom/android/gallery3d/filtershow/filters/x;)V

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/android/gallery3d/filtershow/filters/c;->n:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/c;->n:I

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/c;->getValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/c;->l(I)V

    :cond_1
    return-void
.end method
