.class public Lcom/android/gallery3d/filtershow/filters/k;
.super Lcom/android/gallery3d/filtershow/filters/x;
.source ""


# instance fields
.field private m:[Lcom/android/gallery3d/filtershow/imageshow/c0;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Curves"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/gallery3d/filtershow/imageshow/c0;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/k;->m:[Lcom/android/gallery3d/filtershow/imageshow/c0;

    const-string v0, "CURVES"

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->d0(Ljava/lang/String;)V

    const-class v0, Lcom/android/gallery3d/filtershow/filters/n0;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->X(Ljava/lang/Class;)V

    const v0, 0x7f0e005b

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->g0(I)V

    const v0, 0x7f070100

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->b0(I)V

    const v0, 0x7f080181

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->W(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->e0(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->f0(Z)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/k;->l0()V

    return-void
.end method


# virtual methods
.method public D()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 1

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/k;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/k;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/k;->E(Lcom/android/gallery3d/filtershow/filters/x;)V

    return-object v0
.end method

.method protected E(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/x;->E(Lcom/android/gallery3d/filtershow/filters/x;)V

    invoke-virtual {p1, p0}, Lcom/android/gallery3d/filtershow/filters/x;->j0(Lcom/android/gallery3d/filtershow/filters/x;)V

    return-void
.end method

.method public F(Landroid/util/JsonReader;)V
    .locals 5

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/gallery3d/filtershow/imageshow/c0;

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Name"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->a0(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "Curve"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/android/gallery3d/filtershow/imageshow/c0;

    invoke-direct {v2}, Lcom/android/gallery3d/filtershow/imageshow/c0;-><init>()V

    aput-object v2, v0, v1

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    :goto_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    aget-object v4, v0, v1

    invoke-virtual {v4, v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/c0;->a(FF)I

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    goto :goto_0

    :cond_3
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/k;->m:[Lcom/android/gallery3d/filtershow/imageshow/c0;

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
    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/k;

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lcom/android/gallery3d/filtershow/filters/k;

    move v0, v1

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/k;->k0(I)Lcom/android/gallery3d/filtershow/imageshow/c0;

    move-result-object v2

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/filters/k;->k0(I)Lcom/android/gallery3d/filtershow/imageshow/c0;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/c0;->q(Lcom/android/gallery3d/filtershow/imageshow/c0;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public S()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/k;->k0(I)Lcom/android/gallery3d/filtershow/imageshow/c0;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/k;->k0(I)Lcom/android/gallery3d/filtershow/imageshow/c0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/c0;->m()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public U(Landroid/util/JsonWriter;)V
    .locals 7

    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v0, "Name"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/x;->L()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/k;->m:[Lcom/android/gallery3d/filtershow/imageshow/c0;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Curve"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/k;->m:[Lcom/android/gallery3d/filtershow/imageshow/c0;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/c0;->k()I

    move-result v2

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_0

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/k;->m:[Lcom/android/gallery3d/filtershow/imageshow/c0;

    aget-object v4, v4, v1

    invoke-virtual {v4, v3}, Lcom/android/gallery3d/filtershow/imageshow/c0;->l(I)Lcom/android/gallery3d/filtershow/imageshow/b;

    move-result-object v4

    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    iget v5, v4, Lcom/android/gallery3d/filtershow/imageshow/b;->a:F

    float-to-double v5, v5

    invoke-virtual {p1, v5, v6}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    iget v4, v4, Lcom/android/gallery3d/filtershow/imageshow/b;->b:F

    float-to-double v4, v4

    invoke-virtual {p1, v4, v5}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method public j0(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 5

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/k;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot use parameters from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FilterCurvesRepresentation"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    check-cast p1, Lcom/android/gallery3d/filtershow/filters/k;

    const/4 v0, 0x4

    new-array v1, v0, [Lcom/android/gallery3d/filtershow/imageshow/c0;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p1, Lcom/android/gallery3d/filtershow/filters/k;->m:[Lcom/android/gallery3d/filtershow/imageshow/c0;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    new-instance v4, Lcom/android/gallery3d/filtershow/imageshow/c0;

    invoke-direct {v4, v3}, Lcom/android/gallery3d/filtershow/imageshow/c0;-><init>(Lcom/android/gallery3d/filtershow/imageshow/c0;)V

    aput-object v4, v1, v2

    goto :goto_1

    :cond_1
    new-instance v3, Lcom/android/gallery3d/filtershow/imageshow/c0;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/imageshow/c0;-><init>()V

    aput-object v3, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/k;->m:[Lcom/android/gallery3d/filtershow/imageshow/c0;

    return-void
.end method

.method public k0(I)Lcom/android/gallery3d/filtershow/imageshow/c0;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/k;->m:[Lcom/android/gallery3d/filtershow/imageshow/c0;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public l0()V
    .locals 4

    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/c0;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/imageshow/c0;-><init>()V

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/c0;->a(FF)I

    invoke-virtual {v0, v2, v1}, Lcom/android/gallery3d/filtershow/imageshow/c0;->a(FF)I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/k;->m:[Lcom/android/gallery3d/filtershow/imageshow/c0;

    new-instance v3, Lcom/android/gallery3d/filtershow/imageshow/c0;

    invoke-direct {v3, v0}, Lcom/android/gallery3d/filtershow/imageshow/c0;-><init>(Lcom/android/gallery3d/filtershow/imageshow/c0;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public m0()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/k;->l0()V

    return-void
.end method

.method public n0(ILcom/android/gallery3d/filtershow/imageshow/c0;)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/k;->m:[Lcom/android/gallery3d/filtershow/imageshow/c0;

    aput-object p2, v0, p1

    return-void
.end method
