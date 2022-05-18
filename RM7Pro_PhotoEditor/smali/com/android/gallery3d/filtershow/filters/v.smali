.class public abstract Lcom/android/gallery3d/filtershow/filters/v;
.super Lcom/android/gallery3d/filtershow/filters/x;
.source ""


# instance fields
.field private m:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/android/gallery3d/filtershow/filters/u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/filters/x;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/v;->m:Ljava/util/Vector;

    const-class p1, Lcom/android/gallery3d/filtershow/filters/ImageFilterRedEye;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/x;->X(Ljava/lang/Class;)V

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/x;->Y(I)V

    invoke-virtual {p0, p2}, Lcom/android/gallery3d/filtershow/filters/x;->g0(I)V

    invoke-virtual {p0, p3}, Lcom/android/gallery3d/filtershow/filters/x;->W(I)V

    return-void
.end method


# virtual methods
.method protected E(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/x;->E(Lcom/android/gallery3d/filtershow/filters/x;)V

    invoke-virtual {p1, p0}, Lcom/android/gallery3d/filtershow/filters/x;->j0(Lcom/android/gallery3d/filtershow/filters/x;)V

    return-void
.end method

.method public S()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/v;->m0()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/v;->m0()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public j0(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 2

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/v;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/v;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/v;->m:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object p1, p1, Lcom/android/gallery3d/filtershow/filters/v;->m:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/u;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/v;->m:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public k0(Lcom/android/gallery3d/filtershow/filters/u;)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/v;->m:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public l0(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/v;->m:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public m0()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/android/gallery3d/filtershow/filters/u;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/v;->m:Ljava/util/Vector;

    return-object v0
.end method

.method public n0()I
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/v;->m:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public o0(Lcom/android/gallery3d/filtershow/filters/d1;)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/v;->m:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    return-void
.end method
