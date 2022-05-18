.class public Lcom/android/gallery3d/filtershow/filters/e;
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

.field private r:I

.field private s:I

.field private t:I

.field private u:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "AdjustColor"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/e;->m:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/e;->s:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/e;->t:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/e;->u:I

    const-string v0, "adjustColor"

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->d0(Ljava/lang/String;)V

    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterAdjustColor;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->X(Ljava/lang/Class;)V

    const v0, 0x7f0e012c

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->g0(I)V

    const v0, 0x7f080105

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->W(I)V

    return-void
.end method


# virtual methods
.method public A(Lcom/android/gallery3d/filtershow/controller/f;)V
    .locals 0

    return-void
.end method

.method public A0(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/e;->r:I

    return-void
.end method

.method public B0(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/e;->u:I

    return-void
.end method

.method public D()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 1

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/e;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/e;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/e;->E(Lcom/android/gallery3d/filtershow/filters/x;)V

    return-object v0
.end method

.method protected E(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/x;->E(Lcom/android/gallery3d/filtershow/filters/x;)V

    invoke-virtual {p1, p0}, Lcom/android/gallery3d/filtershow/filters/x;->j0(Lcom/android/gallery3d/filtershow/filters/x;)V

    return-void
.end method

.method public F(Landroid/util/JsonReader;)V
    .locals 2

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "adjustColor"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/e;->t:I

    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/e;->s:I

    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/e;->u:I

    :cond_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    return-void
.end method

.method public H(Lcom/android/gallery3d/filtershow/filters/x;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/e;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/e;

    const-string v0, "adjustColor"

    if-ne v0, v0, :cond_0

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/e;->k0()I

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/e;->t:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/e;->n0()I

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/e;->s:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/e;->s0()I

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/e;->u:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/e;->x()I

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/e;->p:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/e;->h()I

    move-result p1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/e;->n:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public U(Landroid/util/JsonWriter;)V
    .locals 2

    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v0, "adjustColor"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/e;->t:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/e;->s:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/e;->u:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/e;->o:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/e;->n:I

    return v0
.end method

.method public j0(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 1

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/e;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/e;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/e;->y0(I)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/e;->x()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/e;->x0(I)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/e;->getValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/e;->l(I)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/e;->m0()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/e;->v0(I)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/e;->r0()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/e;->A0(I)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/e;->l0()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/e;->u0(I)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/e;->n0()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/e;->w0(I)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/e;->k0()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/e;->t0(I)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/e;->s0()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/e;->B0(I)V

    return-void
.end method

.method public k0()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/e;->t:I

    return v0
.end method

.method public l(I)V
    .locals 1

    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/e;->o:I

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/e;->n:I

    if-ge p1, v0, :cond_0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/e;->o:I

    :cond_0
    iget p1, p0, Lcom/android/gallery3d/filtershow/filters/e;->o:I

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/e;->p:I

    if-le p1, v0, :cond_1

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/e;->o:I

    :cond_1
    return-void
.end method

.method public l0()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/e;->m:I

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public m0()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/e;->q:I

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public n0()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/e;->s:I

    return v0
.end method

.method public o0(I)I
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/android/gallery3d/filtershow/filters/e;->u:I

    return p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no such type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget p1, p0, Lcom/android/gallery3d/filtershow/filters/e;->s:I

    return p1

    :cond_2
    iget p1, p0, Lcom/android/gallery3d/filtershow/filters/e;->t:I

    return p1
.end method

.method public p0(I)I
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x64

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no such type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v1
.end method

.method public q0(I)I
    .locals 3

    const/4 v0, 0x1

    const/16 v1, -0x64

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no such type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v1
.end method

.method public r0()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/e;->r:I

    return v0
.end method

.method public s0()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/e;->u:I

    return v0
.end method

.method public t0(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/e;->t:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public u0(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/e;->m:I

    return-void
.end method

.method public v0(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/e;->q:I

    return-void
.end method

.method public w0(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/e;->s:I

    return-void
.end method

.method public x()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/e;->p:I

    return v0
.end method

.method public x0(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/e;->p:I

    return-void
.end method

.method public y0(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/e;->n:I

    return-void
.end method

.method public z0(II)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iput p2, p0, Lcom/android/gallery3d/filtershow/filters/e;->u:I

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no such type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    iput p2, p0, Lcom/android/gallery3d/filtershow/filters/e;->s:I

    goto :goto_0

    :cond_2
    iput p2, p0, Lcom/android/gallery3d/filtershow/filters/e;->t:I

    :goto_0
    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/e;->m:I

    return-void
.end method
