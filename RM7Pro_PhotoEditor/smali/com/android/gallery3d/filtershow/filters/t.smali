.class public Lcom/android/gallery3d/filtershow/filters/t;
.super Lcom/android/gallery3d/filtershow/filters/x;
.source ""

# interfaces
.implements Lcom/android/gallery3d/filtershow/filters/c1;


# instance fields
.field private m:Landroid/content/Context;

.field private n:Lcom/android/gallery3d/filtershow/materials/g;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/gallery3d/filtershow/mosaic/c;",
            ">;"
        }
    .end annotation
.end field

.field private p:I

.field private q:I

.field private r:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/gallery3d/filtershow/materials/g;)V
    .locals 3

    const-string v0, "MOSAIC"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/t;->m:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/t;->n:Lcom/android/gallery3d/filtershow/materials/g;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/t;->o:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/t;->p:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/t;->q:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/filters/t;->r:Z

    const-class v2, Lcom/android/gallery3d/filtershow/filters/w0;

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/filters/x;->X(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/t;->m:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/filters/t;->n:Lcom/android/gallery3d/filtershow/materials/g;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/x;->Y(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/filters/t;->n:Lcom/android/gallery3d/filtershow/materials/g;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/materials/g;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/x;->g0(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/filters/t;->n:Lcom/android/gallery3d/filtershow/materials/g;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/materials/g;->d()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/x;->b0(I)V

    const p1, 0x7f08010d

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/x;->W(I)V

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->c0(Z)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->e0(Z)V

    return-void
.end method

.method public static v0(Ljava/util/Vector;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lcom/android/gallery3d/filtershow/filters/x;",
            ">;Z)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/x;

    instance-of v1, v0, Lcom/android/gallery3d/filtershow/filters/t;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/t;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/filters/t;->w0(Z)V

    goto :goto_0

    :cond_1
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

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/t;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/t;->m:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/t;->n:Lcom/android/gallery3d/filtershow/materials/g;

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/filtershow/filters/t;-><init>(Landroid/content/Context;Lcom/android/gallery3d/filtershow/materials/g;)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/t;->E(Lcom/android/gallery3d/filtershow/filters/x;)V

    return-object v0
.end method

.method protected E(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/x;->E(Lcom/android/gallery3d/filtershow/filters/x;)V

    invoke-virtual {p1, p0}, Lcom/android/gallery3d/filtershow/filters/x;->j0(Lcom/android/gallery3d/filtershow/filters/x;)V

    return-void
.end method

.method public F(Landroid/util/JsonReader;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/x;->F(Landroid/util/JsonReader;)V

    return-void
.end method

.method public H(Lcom/android/gallery3d/filtershow/filters/x;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/t;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/t;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/t;->o:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/t;->n0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/filters/t;->r:Z

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/t;->p0()Z

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public T(Lcom/android/gallery3d/filtershow/filters/x;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/t;->H(Lcom/android/gallery3d/filtershow/filters/x;)Z

    move-result p1

    return p1
.end method

.method public U(Landroid/util/JsonWriter;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/x;->U(Landroid/util/JsonWriter;)V

    return-void
.end method

.method public j0(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 2

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/t;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/t;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/x;->L()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->a0(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/t;->k0()Lcom/android/gallery3d/filtershow/materials/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/t;->r0(Lcom/android/gallery3d/filtershow/materials/g;)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/t;->m0()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/t;->t0(I)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/t;->l0()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/t;->s0(I)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/t;->n0()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/t;->n0()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/t;->o:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/t;->p0()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/t;->w0(Z)V

    :cond_1
    return-void
.end method

.method public k0()Lcom/android/gallery3d/filtershow/materials/g;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/t;->n:Lcom/android/gallery3d/filtershow/materials/g;

    return-object v0
.end method

.method public l0()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/t;->q:I

    return v0
.end method

.method public m0()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/t;->p:I

    return v0
.end method

.method public n0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/gallery3d/filtershow/mosaic/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/t;->o:Ljava/util/List;

    return-object v0
.end method

.method public o0()I
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/t;->o:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public p0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/filters/t;->r:Z

    return v0
.end method

.method public q0(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInRotatePannel  flag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "test"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public r0(Lcom/android/gallery3d/filtershow/materials/g;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/t;->n:Lcom/android/gallery3d/filtershow/materials/g;

    return-void
.end method

.method public s0(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/t;->q:I

    return-void
.end method

.method public t0(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/t;->p:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FilterMosaicRepresentation coversize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/t;->o:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u0(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/gallery3d/filtershow/mosaic/c;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/t;->o:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/t;->o:Ljava/util/List;

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/t;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method

.method public w0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/filters/t;->r:Z

    return-void
.end method

.method public x0(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 1

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/t;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/t;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/t;->n0()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/t;->n0()Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/t;->o:Ljava/util/List;

    return-void

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/t;->o:Ljava/util/List;

    return-void
.end method
