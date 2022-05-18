.class public Lcom/android/gallery3d/filtershow/filters/w;
.super Lcom/android/gallery3d/filtershow/filters/v;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 3

    sget v0, Lcom/android/gallery3d/filtershow/editors/q;->s:I

    const-string v1, "RedEye"

    const v2, 0x7f0e015b

    invoke-direct {p0, v1, v2, v0}, Lcom/android/gallery3d/filtershow/filters/v;-><init>(Ljava/lang/String;II)V

    const-string v0, "REDEYE"

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->d0(Ljava/lang/String;)V

    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterRedEye;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->X(Ljava/lang/Class;)V

    const v0, 0x7f07022c

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->b0(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/x;->c0(Z)V

    return-void
.end method


# virtual methods
.method public D()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 1

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/w;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/w;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/w;->E(Lcom/android/gallery3d/filtershow/filters/x;)V

    return-object v0
.end method

.method protected E(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/v;->E(Lcom/android/gallery3d/filtershow/filters/x;)V

    invoke-virtual {p1, p0}, Lcom/android/gallery3d/filtershow/filters/x;->j0(Lcom/android/gallery3d/filtershow/filters/x;)V

    return-void
.end method

.method public p0(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 5

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/v;->m0()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/filters/v;->l0(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/filters/d1;

    invoke-virtual {v3, p1}, Lcom/android/gallery3d/filtershow/filters/d1;->b(Landroid/graphics/RectF;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/filters/d1;

    iget-object v3, v2, Lcom/android/gallery3d/filtershow/filters/d1;->a:Landroid/graphics/RectF;

    invoke-virtual {p1, v3}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    iget-object v3, v2, Lcom/android/gallery3d/filtershow/filters/d1;->b:Landroid/graphics/RectF;

    invoke-virtual {p2, v3}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/filters/v;->o0(Lcom/android/gallery3d/filtershow/filters/d1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/android/gallery3d/filtershow/filters/d1;

    invoke-direct {v0, p1, p2}, Lcom/android/gallery3d/filtershow/filters/d1;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/v;->k0(Lcom/android/gallery3d/filtershow/filters/u;)V

    return-void
.end method
