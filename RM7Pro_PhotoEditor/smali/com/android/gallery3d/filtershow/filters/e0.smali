.class public Lcom/android/gallery3d/filtershow/filters/e0;
.super Lcom/android/gallery3d/filtershow/filters/x;
.source ""

# interfaces
.implements Lcom/android/gallery3d/filtershow/imageshow/z;


# static fields
.field private static x:I = -0x64

.field private static y:I = 0x64

.field private static z:I = 0xc8


# instance fields
.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:Lcom/android/gallery3d/filtershow/controller/b;

.field private r:Lcom/android/gallery3d/filtershow/controller/b;

.field private s:Lcom/android/gallery3d/filtershow/controller/b;

.field private t:Lcom/android/gallery3d/filtershow/controller/b;

.field private u:Lcom/android/gallery3d/filtershow/controller/b;

.field private v:[Lcom/android/gallery3d/filtershow/controller/b;

.field private w:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    const-string v0, "Vignette"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/e0;->m:F

    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/e0;->n:F

    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/e0;->o:F

    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/e0;->p:F

    new-instance v1, Lcom/android/gallery3d/filtershow/controller/b;

    sget v2, Lcom/android/gallery3d/filtershow/filters/e0;->x:I

    sget v3, Lcom/android/gallery3d/filtershow/filters/e0;->y:I

    const/4 v4, 0x0

    const/16 v5, 0x32

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/android/gallery3d/filtershow/controller/b;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/e0;->q:Lcom/android/gallery3d/filtershow/controller/b;

    new-instance v5, Lcom/android/gallery3d/filtershow/controller/b;

    const/4 v6, 0x1

    invoke-direct {v5, v6, v4, v2, v3}, Lcom/android/gallery3d/filtershow/controller/b;-><init>(IIII)V

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/filters/e0;->r:Lcom/android/gallery3d/filtershow/controller/b;

    new-instance v7, Lcom/android/gallery3d/filtershow/controller/b;

    const/4 v8, 0x2

    invoke-direct {v7, v8, v4, v2, v3}, Lcom/android/gallery3d/filtershow/controller/b;-><init>(IIII)V

    iput-object v7, p0, Lcom/android/gallery3d/filtershow/filters/e0;->s:Lcom/android/gallery3d/filtershow/controller/b;

    new-instance v9, Lcom/android/gallery3d/filtershow/controller/b;

    const/4 v10, 0x3

    invoke-direct {v9, v10, v4, v2, v3}, Lcom/android/gallery3d/filtershow/controller/b;-><init>(IIII)V

    iput-object v9, p0, Lcom/android/gallery3d/filtershow/filters/e0;->t:Lcom/android/gallery3d/filtershow/controller/b;

    new-instance v2, Lcom/android/gallery3d/filtershow/controller/b;

    sget v3, Lcom/android/gallery3d/filtershow/filters/e0;->z:I

    const/4 v11, 0x4

    const/16 v12, 0x28

    invoke-direct {v2, v11, v12, v4, v3}, Lcom/android/gallery3d/filtershow/controller/b;-><init>(IIII)V

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/filters/e0;->u:Lcom/android/gallery3d/filtershow/controller/b;

    const/4 v3, 0x5

    new-array v3, v3, [Lcom/android/gallery3d/filtershow/controller/b;

    aput-object v1, v3, v4

    aput-object v5, v3, v6

    aput-object v7, v3, v8

    aput-object v9, v3, v10

    aput-object v2, v3, v11

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/filters/e0;->v:[Lcom/android/gallery3d/filtershow/controller/b;

    const-string v1, "VIGNETTE"

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->d0(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/android/gallery3d/filtershow/filters/x;->e0(Z)V

    invoke-virtual {p0, v11}, Lcom/android/gallery3d/filtershow/filters/x;->Y(I)V

    const v1, 0x7f0e01a2

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->g0(I)V

    const v1, 0x7f080287

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->W(I)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->a0(Ljava/lang/String;)V

    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->X(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public D()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 1

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/e0;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/e0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/e0;->E(Lcom/android/gallery3d/filtershow/filters/x;)V

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

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ellipse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/e0;->m:F

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/e0;->n:F

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/e0;->o:F

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/e0;->p:F

    :goto_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    goto :goto_0

    :cond_0
    const-string v1, "adjust"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/e0;->q:Lcom/android/gallery3d/filtershow/controller/b;

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/controller/b;->l(I)V

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/e0;->r:Lcom/android/gallery3d/filtershow/controller/b;

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/controller/b;->l(I)V

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/e0;->s:Lcom/android/gallery3d/filtershow/controller/b;

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/controller/b;->l(I)V

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/e0;->t:Lcom/android/gallery3d/filtershow/controller/b;

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/controller/b;->l(I)V

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/e0;->u:Lcom/android/gallery3d/filtershow/controller/b;

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/controller/b;->l(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    :cond_2
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
    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/e0;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/e0;

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/e0;->v:[Lcom/android/gallery3d/filtershow/controller/b;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/controller/b;->getValue()I

    move-result v2

    iget-object v3, p1, Lcom/android/gallery3d/filtershow/filters/e0;->v:[Lcom/android/gallery3d/filtershow/controller/b;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/controller/b;->getValue()I

    move-result v3

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/e0;->q()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/e0;->q()F

    move-result v2

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/e0;->k()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/e0;->k()F

    move-result v2

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/e0;->a()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/e0;->a()F

    move-result v2

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/e0;->r()F

    move-result p1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/e0;->r()F

    move-result v0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public S()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public U(Landroid/util/JsonWriter;)V
    .locals 2

    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v0, "ellipse"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/e0;->m:F

    float-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/e0;->n:F

    float-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/e0;->o:F

    float-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/e0;->p:F

    float-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    const-string v0, "adjust"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/e0;->q:Lcom/android/gallery3d/filtershow/controller/b;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/controller/b;->getValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/e0;->r:Lcom/android/gallery3d/filtershow/controller/b;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/controller/b;->getValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/e0;->s:Lcom/android/gallery3d/filtershow/controller/b;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/controller/b;->getValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/e0;->t:Lcom/android/gallery3d/filtershow/controller/b;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/controller/b;->getValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/e0;->u:Lcom/android/gallery3d/filtershow/controller/b;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/controller/b;->getValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method public a()F
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/e0;->o:F

    return v0
.end method

.method public d(F)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/e0;->o:F

    return-void
.end method

.method public g(FF)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/e0;->m:F

    iput p2, p0, Lcom/android/gallery3d/filtershow/filters/e0;->n:F

    return-void
.end method

.method public j0(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/x;->j0(Lcom/android/gallery3d/filtershow/filters/x;)V

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/e0;

    iget v0, p1, Lcom/android/gallery3d/filtershow/filters/e0;->m:F

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/e0;->m:F

    iget v0, p1, Lcom/android/gallery3d/filtershow/filters/e0;->n:F

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/e0;->n:F

    iget v0, p1, Lcom/android/gallery3d/filtershow/filters/e0;->o:F

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/e0;->o:F

    iget v0, p1, Lcom/android/gallery3d/filtershow/filters/e0;->p:F

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/e0;->p:F

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/e0;->q:Lcom/android/gallery3d/filtershow/controller/b;

    iget-object v1, p1, Lcom/android/gallery3d/filtershow/filters/e0;->q:Lcom/android/gallery3d/filtershow/controller/b;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/controller/b;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/controller/b;->l(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/e0;->r:Lcom/android/gallery3d/filtershow/controller/b;

    iget-object v1, p1, Lcom/android/gallery3d/filtershow/filters/e0;->r:Lcom/android/gallery3d/filtershow/controller/b;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/controller/b;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/controller/b;->l(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/e0;->s:Lcom/android/gallery3d/filtershow/controller/b;

    iget-object v1, p1, Lcom/android/gallery3d/filtershow/filters/e0;->s:Lcom/android/gallery3d/filtershow/controller/b;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/controller/b;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/controller/b;->l(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/e0;->t:Lcom/android/gallery3d/filtershow/controller/b;

    iget-object v1, p1, Lcom/android/gallery3d/filtershow/filters/e0;->t:Lcom/android/gallery3d/filtershow/controller/b;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/controller/b;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/controller/b;->l(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/e0;->u:Lcom/android/gallery3d/filtershow/controller/b;

    iget-object p1, p1, Lcom/android/gallery3d/filtershow/filters/e0;->u:Lcom/android/gallery3d/filtershow/controller/b;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/controller/b;->getValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/controller/b;->l(I)V

    return-void
.end method

.method public k()F
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/e0;->n:F

    return v0
.end method

.method public k0()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/e0;->w:I

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/e0;->n0(I)I

    move-result v0

    return v0
.end method

.method public l0(I)Lcom/android/gallery3d/filtershow/controller/b;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/e0;->v:[Lcom/android/gallery3d/filtershow/controller/b;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public m0()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/e0;->w:I

    return v0
.end method

.method public n0(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/e0;->v:[Lcom/android/gallery3d/filtershow/controller/b;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/controller/b;->getValue()I

    move-result p1

    return p1
.end method

.method public o(FF)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/e0;->o:F

    iput p2, p0, Lcom/android/gallery3d/filtershow/filters/e0;->p:F

    return-void
.end method

.method public o0()Z
    .locals 2

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/e0;->m:F

    const/high16 v1, 0x7fc00000    # Float.NaN

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p0()I
    .locals 3

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/e0;->w:I

    if-nez v0, :cond_0

    const/16 v1, 0x32

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/16 v1, 0x28

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/e0;->v:[Lcom/android/gallery3d/filtershow/controller/b;

    aget-object v0, v2, v0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/controller/b;->l(I)V

    return v1
.end method

.method public q()F
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/e0;->m:F

    return v0
.end method

.method public q0(I)V
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/e0;->w:I

    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/e0;->s0(II)V

    return-void
.end method

.method public r()F
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/e0;->p:F

    return v0
.end method

.method public r0(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/e0;->w:I

    return-void
.end method

.method public s0(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/e0;->v:[Lcom/android/gallery3d/filtershow/controller/b;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Lcom/android/gallery3d/filtershow/controller/b;->l(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/x;->L()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/e0;->m:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/e0;->n:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " radius: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/e0;->o:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(F)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/e0;->p:F

    return-void
.end method
