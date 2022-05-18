.class public Lcom/android/gallery3d/filtershow/filters/m;
.super Lcom/android/gallery3d/filtershow/filters/f;
.source ""


# instance fields
.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "FilterDocRepresentation"

    const/4 v1, 0x0

    const/16 v2, 0x32

    const/16 v3, 0x64

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/gallery3d/filtershow/filters/f;-><init>(Ljava/lang/String;III)V

    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/m;->r:I

    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/m;->s:I

    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/m;->t:I

    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/m;->u:I

    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/m;->v:I

    const-class v0, Lcom/android/gallery3d/filtershow/filters/r0;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->X(Ljava/lang/Class;)V

    return-void
.end method

.method public static s0(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;
    .locals 6

    invoke-static {}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->q1()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->r()Ljava/util/Vector;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/filters/m;->w0(Ljava/util/Vector;)Lcom/android/gallery3d/filtershow/filters/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/m;->S()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object p0

    :cond_1
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/filtershow/filters/x;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/x;->J()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/filtershow/filters/x;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/x;->K()I

    move-result v4

    const/4 v5, 0x7

    if-eq v4, v5, :cond_4

    move v2, v3

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    invoke-virtual {v0, v2, v1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changImagePreset :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->r()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "newdoc"

    invoke-static {v1, v0}, Lcom/android/gallery3d/filtershow/c/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private static w0(Ljava/util/Vector;)Lcom/android/gallery3d/filtershow/filters/m;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lcom/android/gallery3d/filtershow/filters/x;",
            ">;)",
            "Lcom/android/gallery3d/filtershow/filters/m;"
        }
    .end annotation

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Lcom/android/gallery3d/filtershow/filters/m;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/m;-><init>()V

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_6

    invoke-virtual {p0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/filters/x;

    instance-of v4, v3, Lcom/android/gallery3d/filtershow/filters/f;

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/x;->J()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/android/gallery3d/filtershow/filters/s0;

    if-ne v4, v5, :cond_1

    check-cast v3, Lcom/android/gallery3d/filtershow/filters/f;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/f;->getValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/filters/m;->C0(I)V

    goto :goto_1

    :cond_1
    const-class v5, Lcom/android/gallery3d/filtershow/filters/t0;

    if-ne v4, v5, :cond_2

    check-cast v3, Lcom/android/gallery3d/filtershow/filters/f;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/f;->getValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/filters/m;->D0(I)V

    goto :goto_1

    :cond_2
    const-class v5, Lcom/android/gallery3d/filtershow/filters/o0;

    if-ne v4, v5, :cond_3

    check-cast v3, Lcom/android/gallery3d/filtershow/filters/f;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/f;->getValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/filters/m;->z0(I)V

    goto :goto_1

    :cond_3
    const-class v5, Lcom/android/gallery3d/filtershow/filters/p0;

    if-ne v4, v5, :cond_4

    check-cast v3, Lcom/android/gallery3d/filtershow/filters/f;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/f;->getValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/filters/m;->A0(I)V

    goto :goto_1

    :cond_4
    const-class v5, Lcom/android/gallery3d/filtershow/filters/q0;

    if-ne v4, v5, :cond_5

    check-cast v3, Lcom/android/gallery3d/filtershow/filters/f;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/f;->getValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/filters/m;->B0(I)V

    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-object v0

    :cond_7
    :goto_2
    const-string p0, "PhotoEditor"

    const-string v0, "FilterDocRepresentation getDocRepresentation: empty or null reps"

    invoke-static {p0, v0}, Lcom/android/gallery3d/filtershow/c/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/android/gallery3d/filtershow/filters/m;

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/m;-><init>()V

    return-object p0
.end method


# virtual methods
.method public A0(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/m;->t:I

    return-void
.end method

.method public B0(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/m;->u:I

    return-void
.end method

.method public C0(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/m;->r:I

    return-void
.end method

.method public D()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 1

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/m;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/m;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/m;->E(Lcom/android/gallery3d/filtershow/filters/x;)V

    return-object v0
.end method

.method public D0(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/m;->s:I

    return-void
.end method

.method protected E(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/f;->E(Lcom/android/gallery3d/filtershow/filters/x;)V

    invoke-virtual {p1, p0}, Lcom/android/gallery3d/filtershow/filters/x;->j0(Lcom/android/gallery3d/filtershow/filters/x;)V

    return-void
.end method

.method public G([[Ljava/lang/String;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/f;->G([[Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_5

    aget-object v2, p1, v1

    aget-object v2, v2, v0

    const-string v3, "SkinSmooth"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    aget-object v2, p1, v1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/filtershow/filters/m;->r:I

    goto :goto_1

    :cond_0
    aget-object v2, p1, v1

    aget-object v2, v2, v0

    const-string v4, "SkinTone"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    aget-object v2, p1, v1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/filtershow/filters/m;->s:I

    goto :goto_1

    :cond_1
    aget-object v2, p1, v1

    aget-object v2, v2, v0

    const-string v4, "EyesEnlarge"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    aget-object v2, p1, v1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/filtershow/filters/m;->t:I

    goto :goto_1

    :cond_2
    aget-object v2, p1, v1

    aget-object v2, v2, v0

    const-string v4, "FaceSlime"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    aget-object v2, p1, v1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/filtershow/filters/m;->u:I

    goto :goto_1

    :cond_3
    aget-object v2, p1, v1

    aget-object v2, v2, v0

    const-string v4, "EyesCircleRemove"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    aget-object v2, p1, v1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/filtershow/filters/m;->v:I

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public H(Lcom/android/gallery3d/filtershow/filters/x;)Z
    .locals 3

    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/f;->H(Lcom/android/gallery3d/filtershow/filters/x;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/m;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/m;

    iget v0, p1, Lcom/android/gallery3d/filtershow/filters/m;->v:I

    iget v2, p0, Lcom/android/gallery3d/filtershow/filters/m;->v:I

    if-ne v0, v2, :cond_1

    iget v0, p1, Lcom/android/gallery3d/filtershow/filters/m;->t:I

    iget v2, p0, Lcom/android/gallery3d/filtershow/filters/m;->t:I

    if-ne v0, v2, :cond_1

    iget v0, p1, Lcom/android/gallery3d/filtershow/filters/m;->u:I

    iget v2, p0, Lcom/android/gallery3d/filtershow/filters/m;->u:I

    if-ne v0, v2, :cond_1

    iget v0, p1, Lcom/android/gallery3d/filtershow/filters/m;->r:I

    iget v2, p0, Lcom/android/gallery3d/filtershow/filters/m;->r:I

    if-ne v0, v2, :cond_1

    iget p1, p1, Lcom/android/gallery3d/filtershow/filters/m;->s:I

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/m;->s:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public P()Ljava/lang/String;
    .locals 1

    const-string v0, "FilterDocRepresentation"

    return-object v0
.end method

.method public S()Z
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/m;->s:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/m;->r:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/m;->v:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/m;->u:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/m;->t:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public V()[[Ljava/lang/String;
    .locals 6

    const/4 v0, 0x5

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "SkinSmooth"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/m;->r:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "SkinTone"

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/m;->s:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "EyesEnlarge"

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/m;->t:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "FaceSlime"

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/m;->u:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "EyesCircleRemove"

    aput-object v2, v1, v4

    iget v2, p0, Lcom/android/gallery3d/filtershow/filters/m;->v:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method public j0(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 1

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/m;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/m;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/m;->t0()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/m;->z0(I)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/m;->u0()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/m;->A0(I)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/m;->v0()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/m;->B0(I)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/m;->x0()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/m;->C0(I)V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/m;->y0()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/m;->D0(I)V

    :cond_0
    return-void
.end method

.method public m0()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/m;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t0()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/m;->v:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FilterDoc:  Smooth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/m;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Tone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/m;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " EyesEnlarge:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/m;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " EyesCircleRemove:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/m;->v:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " FaceSlime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/m;->u:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u0()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/m;->t:I

    return v0
.end method

.method public v0()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/m;->u:I

    return v0
.end method

.method public x0()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/m;->r:I

    return v0
.end method

.method public y0()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/m;->s:I

    return v0
.end method

.method public z0(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/m;->v:I

    return-void
.end method
