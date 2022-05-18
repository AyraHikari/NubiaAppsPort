.class public Lcom/android/gallery3d/filtershow/filters/o;
.super Lcom/android/gallery3d/filtershow/filters/f;
.source ""

# interfaces
.implements Lcom/android/gallery3d/filtershow/imageshow/z;


# instance fields
.field private r:F

.field private s:F

.field private t:F

.field private u:F

.field private v:I


# direct methods
.method public constructor <init>()V
    .locals 5

    const-string v0, "Emptiness"

    const/4 v1, 0x0

    const/16 v2, 0x32

    const/16 v3, 0x64

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/gallery3d/filtershow/filters/f;-><init>(Ljava/lang/String;III)V

    const/high16 v4, 0x7fc00000    # Float.NaN

    iput v4, p0, Lcom/android/gallery3d/filtershow/filters/o;->r:F

    iput v4, p0, Lcom/android/gallery3d/filtershow/filters/o;->t:F

    const-string v4, "EMPTINESS"

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/filters/x;->d0(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/filters/x;->e0(Z)V

    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/filters/x;->Y(I)V

    const v4, 0x7f0e00b9

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/filters/x;->g0(I)V

    const v4, 0x7f080139

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/filters/x;->W(I)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->a0(Ljava/lang/String;)V

    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterEmptiness;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->X(Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/f;->q0(I)V

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/filtershow/filters/f;->p0(I)V

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/filters/f;->o0(I)V

    return-void
.end method


# virtual methods
.method public D()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 1

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/o;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/o;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/o;->E(Lcom/android/gallery3d/filtershow/filters/x;)V

    return-object v0
.end method

.method protected E(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/f;->E(Lcom/android/gallery3d/filtershow/filters/x;)V

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

    const-string v1, "circle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/o;->r:F

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/o;->s:F

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/o;->t:F

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/o;->u:F

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    :goto_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    goto :goto_0

    :cond_0
    const-string v1, "adjust"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/o;->v:I

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    return-void
.end method

.method public S()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/o;->getValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public U(Landroid/util/JsonWriter;)V
    .locals 2

    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v0, "circle"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/o;->r:F

    float-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/o;->s:F

    float-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/o;->t:F

    float-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/o;->u:F

    float-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    const-string v0, "adjust"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/o;->getValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method public a()F
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/o;->t:F

    return v0
.end method

.method public d(F)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/o;->t:F

    return-void
.end method

.method public g(FF)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/o;->r:F

    iput p2, p0, Lcom/android/gallery3d/filtershow/filters/o;->s:F

    return-void
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/o;->v:I

    return v0
.end method

.method public j0(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/f;->j0(Lcom/android/gallery3d/filtershow/filters/x;)V

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/o;

    iget v0, p1, Lcom/android/gallery3d/filtershow/filters/o;->r:F

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/o;->r:F

    iget v0, p1, Lcom/android/gallery3d/filtershow/filters/o;->s:F

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/o;->s:F

    iget v0, p1, Lcom/android/gallery3d/filtershow/filters/o;->t:F

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/o;->t:F

    iget p1, p1, Lcom/android/gallery3d/filtershow/filters/o;->u:F

    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/o;->u:F

    return-void
.end method

.method public k()F
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/o;->s:F

    return v0
.end method

.method public l(I)V
    .locals 1

    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/o;->v:I

    if-gez p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/o;->v:I

    :cond_0
    iget p1, p0, Lcom/android/gallery3d/filtershow/filters/o;->v:I

    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/o;->v:I

    :cond_1
    return-void
.end method

.method public o(FF)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/o;->t:F

    iput p2, p0, Lcom/android/gallery3d/filtershow/filters/o;->u:F

    return-void
.end method

.method public q()F
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/o;->r:F

    return v0
.end method

.method public r()F
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/o;->u:F

    return v0
.end method

.method public s0()Z
    .locals 2

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/o;->r:F

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

.method public u(F)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/o;->u:F

    return-void
.end method
