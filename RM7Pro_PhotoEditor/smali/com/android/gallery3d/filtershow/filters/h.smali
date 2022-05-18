.class public Lcom/android/gallery3d/filtershow/filters/h;
.super Lcom/android/gallery3d/filtershow/filters/x;
.source ""


# static fields
.field public static r:I = -0x1

.field public static s:I = -0x1000000

.field public static t:I = -0x777778

.field public static u:I = -0x3356

.field public static v:I = -0x555556


# instance fields
.field private m:Lcom/android/gallery3d/filtershow/controller/b;

.field private n:Lcom/android/gallery3d/filtershow/controller/b;

.field private o:Lcom/android/gallery3d/filtershow/controller/k;

.field private p:[Lcom/android/gallery3d/filtershow/controller/h;

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(III)V
    .locals 7

    const-string v0, "ColorBorder"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/android/gallery3d/filtershow/controller/b;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/16 v4, 0x1e

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/filtershow/controller/b;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/h;->m:Lcom/android/gallery3d/filtershow/controller/b;

    new-instance v0, Lcom/android/gallery3d/filtershow/controller/b;

    const/4 v4, 0x1

    const/16 v5, 0x64

    invoke-direct {v0, v4, v3, v1, v5}, Lcom/android/gallery3d/filtershow/controller/b;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/h;->n:Lcom/android/gallery3d/filtershow/controller/b;

    new-instance v0, Lcom/android/gallery3d/filtershow/controller/k;

    sget v5, Lcom/android/gallery3d/filtershow/filters/h;->r:I

    invoke-direct {v0, v3, v5}, Lcom/android/gallery3d/filtershow/controller/k;-><init>(II)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/h;->o:Lcom/android/gallery3d/filtershow/controller/k;

    new-array v5, v2, [Lcom/android/gallery3d/filtershow/controller/h;

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/filters/h;->m:Lcom/android/gallery3d/filtershow/controller/b;

    aput-object v6, v5, v1

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/filters/h;->n:Lcom/android/gallery3d/filtershow/controller/b;

    aput-object v6, v5, v4

    aput-object v0, v5, v3

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/filters/h;->p:[Lcom/android/gallery3d/filtershow/controller/h;

    const-string v0, "duduwa"

    const-string v5, "FilterColorBorderRepresentation: aha"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "COLORBORDER"

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->d0(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/filters/x;->Y(I)V

    const v0, 0x7f0e0034

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->g0(I)V

    const v0, 0x7f080107

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->W(I)V

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->e0(Z)V

    const-class v0, Lcom/android/gallery3d/filtershow/filters/m0;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->X(Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/h;->o:Lcom/android/gallery3d/filtershow/controller/k;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/controller/k;->l(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/filters/h;->m:Lcom/android/gallery3d/filtershow/controller/b;

    invoke-virtual {p1, p2}, Lcom/android/gallery3d/filtershow/controller/b;->l(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/filters/h;->n:Lcom/android/gallery3d/filtershow/controller/b;

    invoke-virtual {p1, p3}, Lcom/android/gallery3d/filtershow/controller/b;->l(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/filters/h;->o:Lcom/android/gallery3d/filtershow/controller/k;

    const/4 p2, 0x5

    new-array p2, p2, [I

    sget p3, Lcom/android/gallery3d/filtershow/filters/h;->r:I

    aput p3, p2, v1

    sget p3, Lcom/android/gallery3d/filtershow/filters/h;->s:I

    aput p3, p2, v4

    sget p3, Lcom/android/gallery3d/filtershow/filters/h;->t:I

    aput p3, p2, v3

    sget p3, Lcom/android/gallery3d/filtershow/filters/h;->u:I

    aput p3, p2, v2

    sget p3, Lcom/android/gallery3d/filtershow/filters/h;->v:I

    const/4 v0, 0x4

    aput p3, p2, v0

    invoke-virtual {p1, p2}, Lcom/android/gallery3d/filtershow/controller/k;->e([I)V

    return-void
.end method


# virtual methods
.method public B()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public D()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 2

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/android/gallery3d/filtershow/filters/h;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/h;->E(Lcom/android/gallery3d/filtershow/filters/x;)V

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

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "size"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/h;->m:Lcom/android/gallery3d/filtershow/controller/b;

    :goto_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/controller/b;->l(I)V

    goto :goto_0

    :cond_0
    const-string v1, "radius"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/h;->n:Lcom/android/gallery3d/filtershow/controller/b;

    goto :goto_1

    :cond_1
    const-string v1, "color"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/h;->o:Lcom/android/gallery3d/filtershow/controller/k;

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/controller/k;->l(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

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
    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/h;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/h;

    iget-object v0, p1, Lcom/android/gallery3d/filtershow/filters/h;->o:Lcom/android/gallery3d/filtershow/controller/k;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/controller/k;->getValue()I

    move-result v0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/h;->o:Lcom/android/gallery3d/filtershow/controller/k;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/controller/k;->getValue()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v0, p1, Lcom/android/gallery3d/filtershow/filters/h;->n:Lcom/android/gallery3d/filtershow/controller/b;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/controller/b;->getValue()I

    move-result v0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/h;->n:Lcom/android/gallery3d/filtershow/controller/b;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/controller/b;->getValue()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object p1, p1, Lcom/android/gallery3d/filtershow/filters/h;->m:Lcom/android/gallery3d/filtershow/controller/b;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/controller/b;->getValue()I

    move-result p1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/h;->m:Lcom/android/gallery3d/filtershow/controller/b;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/controller/b;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public Q()I
    .locals 1

    invoke-super {p0}, Lcom/android/gallery3d/filtershow/filters/x;->Q()I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0e0034

    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/filters/x;->Q()I

    move-result v0

    return v0
.end method

.method public U(Landroid/util/JsonWriter;)V
    .locals 2

    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v0, "size"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/h;->m:Lcom/android/gallery3d/filtershow/controller/b;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/controller/b;->getValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    const-string v0, "radius"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/h;->n:Lcom/android/gallery3d/filtershow/controller/b;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/controller/b;->getValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    const-string v0, "color"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/h;->o:Lcom/android/gallery3d/filtershow/controller/k;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/controller/k;->getValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method public j0(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 2

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/h;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/h;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/x;->L()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->a0(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/h;->m0()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/h;->s0(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/h;->o:Lcom/android/gallery3d/filtershow/controller/k;

    iget-object v1, p1, Lcom/android/gallery3d/filtershow/filters/h;->o:Lcom/android/gallery3d/filtershow/controller/k;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/controller/k;->a(Lcom/android/gallery3d/filtershow/controller/k;)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/h;->l0()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/h;->r0(I)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/h;->k0()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/h;->q0(I)V

    :cond_0
    return-void
.end method

.method public k0()I
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/h;->n:Lcom/android/gallery3d/filtershow/controller/b;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/controller/b;->getValue()I

    move-result v0

    return v0
.end method

.method public l0()I
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/h;->m:Lcom/android/gallery3d/filtershow/controller/b;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/controller/b;->getValue()I

    move-result v0

    return v0
.end method

.method public m0()I
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/h;->o:Lcom/android/gallery3d/filtershow/controller/k;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/controller/k;->getValue()I

    move-result v0

    return v0
.end method

.method public n0()Lcom/android/gallery3d/filtershow/controller/h;
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/h;->p:[Lcom/android/gallery3d/filtershow/controller/h;

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/h;->q:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public o0(I)Lcom/android/gallery3d/filtershow/controller/h;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/h;->p:[Lcom/android/gallery3d/filtershow/controller/h;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public p0()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public q0(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/h;->n:Lcom/android/gallery3d/filtershow/controller/b;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/controller/b;->l(I)V

    return-void
.end method

.method public r0(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/h;->m:Lcom/android/gallery3d/filtershow/controller/b;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/controller/b;->l(I)V

    return-void
.end method

.method public s0(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/h;->o:Lcom/android/gallery3d/filtershow/controller/k;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/controller/k;->l(I)V

    return-void
.end method

.method public t0(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/h;->q:I

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
