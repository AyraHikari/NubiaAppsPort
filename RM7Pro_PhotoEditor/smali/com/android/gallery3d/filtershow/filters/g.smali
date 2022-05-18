.class public Lcom/android/gallery3d/filtershow/filters/g;
.super Lcom/android/gallery3d/filtershow/filters/x;
.source ""


# static fields
.field private static v:I = -0x64

.field private static w:I = 0x64


# instance fields
.field private m:I

.field private n:Lcom/android/gallery3d/filtershow/controller/b;

.field private o:Lcom/android/gallery3d/filtershow/controller/b;

.field private p:Lcom/android/gallery3d/filtershow/controller/b;

.field private q:Lcom/android/gallery3d/filtershow/controller/b;

.field private r:Lcom/android/gallery3d/filtershow/controller/b;

.field private s:Lcom/android/gallery3d/filtershow/controller/b;

.field private t:Lcom/android/gallery3d/filtershow/controller/b;

.field private u:[Lcom/android/gallery3d/filtershow/controller/b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "ChannelSaturation"

    invoke-direct {v0, v1}, Lcom/android/gallery3d/filtershow/filters/x;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/gallery3d/filtershow/filters/g;->m:I

    new-instance v2, Lcom/android/gallery3d/filtershow/controller/b;

    sget v3, Lcom/android/gallery3d/filtershow/filters/g;->v:I

    sget v4, Lcom/android/gallery3d/filtershow/filters/g;->w:I

    invoke-direct {v2, v1, v1, v3, v4}, Lcom/android/gallery3d/filtershow/controller/b;-><init>(IIII)V

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/filters/g;->n:Lcom/android/gallery3d/filtershow/controller/b;

    new-instance v5, Lcom/android/gallery3d/filtershow/controller/b;

    const/4 v6, 0x1

    invoke-direct {v5, v6, v1, v3, v4}, Lcom/android/gallery3d/filtershow/controller/b;-><init>(IIII)V

    iput-object v5, v0, Lcom/android/gallery3d/filtershow/filters/g;->o:Lcom/android/gallery3d/filtershow/controller/b;

    new-instance v7, Lcom/android/gallery3d/filtershow/controller/b;

    const/4 v8, 0x2

    invoke-direct {v7, v8, v1, v3, v4}, Lcom/android/gallery3d/filtershow/controller/b;-><init>(IIII)V

    iput-object v7, v0, Lcom/android/gallery3d/filtershow/filters/g;->p:Lcom/android/gallery3d/filtershow/controller/b;

    new-instance v9, Lcom/android/gallery3d/filtershow/controller/b;

    const/4 v10, 0x3

    invoke-direct {v9, v10, v1, v3, v4}, Lcom/android/gallery3d/filtershow/controller/b;-><init>(IIII)V

    iput-object v9, v0, Lcom/android/gallery3d/filtershow/filters/g;->q:Lcom/android/gallery3d/filtershow/controller/b;

    new-instance v11, Lcom/android/gallery3d/filtershow/controller/b;

    const/4 v12, 0x4

    invoke-direct {v11, v12, v1, v3, v4}, Lcom/android/gallery3d/filtershow/controller/b;-><init>(IIII)V

    iput-object v11, v0, Lcom/android/gallery3d/filtershow/filters/g;->r:Lcom/android/gallery3d/filtershow/controller/b;

    new-instance v13, Lcom/android/gallery3d/filtershow/controller/b;

    const/4 v14, 0x5

    invoke-direct {v13, v14, v1, v3, v4}, Lcom/android/gallery3d/filtershow/controller/b;-><init>(IIII)V

    iput-object v13, v0, Lcom/android/gallery3d/filtershow/filters/g;->s:Lcom/android/gallery3d/filtershow/controller/b;

    new-instance v15, Lcom/android/gallery3d/filtershow/controller/b;

    const/4 v14, 0x6

    invoke-direct {v15, v14, v1, v3, v4}, Lcom/android/gallery3d/filtershow/controller/b;-><init>(IIII)V

    iput-object v15, v0, Lcom/android/gallery3d/filtershow/filters/g;->t:Lcom/android/gallery3d/filtershow/controller/b;

    const/4 v3, 0x7

    new-array v3, v3, [Lcom/android/gallery3d/filtershow/controller/b;

    aput-object v2, v3, v1

    aput-object v5, v3, v6

    aput-object v7, v3, v8

    aput-object v9, v3, v10

    aput-object v11, v3, v12

    const/4 v1, 0x5

    aput-object v13, v3, v1

    aput-object v15, v3, v14

    iput-object v3, v0, Lcom/android/gallery3d/filtershow/filters/g;->u:[Lcom/android/gallery3d/filtershow/controller/b;

    const v2, 0x7f0e0164

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/filters/x;->g0(I)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->Y(I)V

    const-string v1, "channelsaturation"

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->d0(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/android/gallery3d/filtershow/filters/x;->e0(Z)V

    const-class v1, Lcom/android/gallery3d/filtershow/filters/k0;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->X(Ljava/lang/Class;)V

    const v1, 0x7f080106

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->W(I)V

    invoke-virtual {v0, v6}, Lcom/android/gallery3d/filtershow/filters/x;->f0(Z)V

    return-void
.end method


# virtual methods
.method public D()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 1

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/g;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/g;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/g;->E(Lcom/android/gallery3d/filtershow/filters/x;)V

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

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ARGS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/filters/g;->r0(II)V

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/filters/g;->r0(II)V

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    const/4 v0, 0x2

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/filters/g;->r0(II)V

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    const/4 v0, 0x3

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/filters/g;->r0(II)V

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    const/4 v0, 0x4

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/filters/g;->r0(II)V

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    const/4 v0, 0x5

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/filters/g;->r0(II)V

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    const/4 v0, 0x6

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/filters/g;->r0(II)V

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    return-void
.end method

.method public H(Lcom/android/gallery3d/filtershow/filters/x;)Z
    .locals 4

    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/x;->H(Lcom/android/gallery3d/filtershow/filters/x;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/g;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/g;

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/g;->u:[Lcom/android/gallery3d/filtershow/controller/b;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/filters/g;->n0(I)I

    move-result v2

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/g;->n0(I)I

    move-result v3

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public U(Landroid/util/JsonWriter;)V
    .locals 2

    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v0, "ARGS"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/g;->n0(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/g;->n0(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/g;->n0(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/g;->n0(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/g;->n0(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/g;->n0(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/g;->n0(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method public j0(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 3

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/g;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/g;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/g;->u:[Lcom/android/gallery3d/filtershow/controller/b;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/android/gallery3d/filtershow/filters/g;->u:[Lcom/android/gallery3d/filtershow/controller/b;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/controller/b;->a(Lcom/android/gallery3d/filtershow/controller/h;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public k0()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/g;->m:I

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/g;->n0(I)I

    move-result v0

    return v0
.end method

.method public l0(I)Lcom/android/gallery3d/filtershow/controller/h;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/g;->u:[Lcom/android/gallery3d/filtershow/controller/b;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public m0()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/g;->m:I

    return v0
.end method

.method public n0(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/g;->u:[Lcom/android/gallery3d/filtershow/controller/b;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/controller/b;->getValue()I

    move-result p1

    return p1
.end method

.method public o0()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/g;->m0()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/g;->l0(I)Lcom/android/gallery3d/filtershow/controller/h;

    move-result-object v0

    instance-of v1, v0, Lcom/android/gallery3d/filtershow/controller/b;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/gallery3d/filtershow/controller/b;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/controller/b;->c()I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/g;->u:[Lcom/android/gallery3d/filtershow/controller/b;

    iget v2, p0, Lcom/android/gallery3d/filtershow/filters/g;->m:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/controller/b;->l(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p0(I)V
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/g;->m:I

    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/g;->r0(II)V

    return-void
.end method

.method public q0(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/g;->m:I

    return-void
.end method

.method public r0(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/g;->u:[Lcom/android/gallery3d/filtershow/controller/b;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Lcom/android/gallery3d/filtershow/controller/b;->l(I)V

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

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/g;->o:Lcom/android/gallery3d/filtershow/controller/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/g;->r:Lcom/android/gallery3d/filtershow/controller/b;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/g;->o:Lcom/android/gallery3d/filtershow/controller/b;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/g;->q:Lcom/android/gallery3d/filtershow/controller/b;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/g;->n:Lcom/android/gallery3d/filtershow/controller/b;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/g;->p:Lcom/android/gallery3d/filtershow/controller/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
