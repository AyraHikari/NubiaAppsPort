.class public Lcom/android/gallery3d/filtershow/filters/c0;
.super Lcom/android/gallery3d/filtershow/filters/f;
.source ""


# instance fields
.field private r:F


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "TinyPlanet"

    const/4 v1, 0x0

    const/16 v2, 0x32

    const/16 v3, 0x64

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/gallery3d/filtershow/filters/f;-><init>(Ljava/lang/String;III)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/c0;->r:F

    const-string v0, "TINYPLANET"

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->d0(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->e0(Z)V

    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->X(Ljava/lang/Class;)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->Y(I)V

    const v0, 0x7f0e019c

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->g0(I)V

    const v0, 0x7f08026b

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->W(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/f;->q0(I)V

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->f0(Z)V

    return-void
.end method


# virtual methods
.method public D()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 1

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/c0;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/c0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/c0;->E(Lcom/android/gallery3d/filtershow/filters/x;)V

    return-object v0
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

    if-ge v1, v2, :cond_2

    aget-object v2, p1, v1

    aget-object v2, v2, v0

    const-string v3, "Value"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    aget-object v2, p1, v1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/filters/f;->l(I)V

    goto :goto_1

    :cond_0
    aget-object v2, p1, v1

    aget-object v2, v2, v0

    const-string v4, "Angle"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    aget-object v2, p1, v1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/filters/c0;->u0(F)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public H(Lcom/android/gallery3d/filtershow/filters/x;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/f;->H(Lcom/android/gallery3d/filtershow/filters/x;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/c0;->r:F

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/c0;

    iget p1, p1, Lcom/android/gallery3d/filtershow/filters/c0;->r:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public S()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public V()[[Ljava/lang/String;
    .locals 6

    const/4 v0, 0x3

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Name"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/x;->L()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Value"

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/f;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Angle"

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/c0;->r:F

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    return-object v0
.end method

.method public j0(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/c0;

    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/f;->j0(Lcom/android/gallery3d/filtershow/filters/x;)V

    iget p1, v0, Lcom/android/gallery3d/filtershow/filters/c0;->r:F

    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/c0;->r:F

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/c0;->t0()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/c0;->v0(I)V

    return-void
.end method

.method public s0()F
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/c0;->r:F

    return v0
.end method

.method public t0()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/f;->getValue()I

    move-result v0

    return v0
.end method

.method public u0(F)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/c0;->r:F

    return-void
.end method

.method public v0(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/f;->l(I)V

    return-void
.end method
