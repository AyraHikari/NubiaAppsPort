.class public Lcom/android/gallery3d/filtershow/pipeline/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/pipeline/b$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/android/gallery3d/filtershow/pipeline/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/b;->a:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/pipeline/b;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/pipeline/b;->a:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/pipeline/b$a;

    iget-object v2, v2, Lcom/android/gallery3d/filtershow/pipeline/b$a;->b:Landroid/graphics/Bitmap;

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public b(Ljava/util/Vector;)Lcom/android/gallery3d/filtershow/filters/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lcom/android/gallery3d/filtershow/filters/x;",
            ">;)",
            "Lcom/android/gallery3d/filtershow/filters/x;"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/x;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/x;->K()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method public c(Ljava/util/Vector;)Ljava/util/Vector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lcom/android/gallery3d/filtershow/filters/x;",
            ">;)",
            "Ljava/util/Vector<",
            "Lcom/android/gallery3d/filtershow/filters/x;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/filters/x;

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/g0;->W()Lcom/android/gallery3d/filtershow/filters/g0;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/filtershow/filters/a;->n(Lcom/android/gallery3d/filtershow/filters/x;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public d(Ljava/util/Vector;)Ljava/util/Vector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lcom/android/gallery3d/filtershow/filters/x;",
            ">;)",
            "Ljava/util/Vector<",
            "Lcom/android/gallery3d/filtershow/filters/x;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/filters/x;

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/g0;->W()Lcom/android/gallery3d/filtershow/filters/g0;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/filtershow/filters/a;->n(Lcom/android/gallery3d/filtershow/filters/x;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public e(Ljava/util/Vector;)Ljava/util/Vector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lcom/android/gallery3d/filtershow/filters/x;",
            ">;)",
            "Ljava/util/Vector<",
            "Lcom/android/gallery3d/filtershow/filters/x;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/filters/x;

    instance-of v3, v2, Lcom/android/gallery3d/filtershow/filters/a0;

    if-nez v3, :cond_0

    instance-of v3, v2, Lcom/android/gallery3d/filtershow/filters/f0;

    if-nez v3, :cond_0

    instance-of v3, v2, Lcom/android/gallery3d/filtershow/filters/t;

    if-nez v3, :cond_0

    instance-of v3, v2, Lcom/android/gallery3d/filtershow/filters/n;

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public f(Landroid/graphics/Bitmap;Ljava/util/Vector;Lcom/android/gallery3d/filtershow/pipeline/e;)Landroid/graphics/Bitmap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/Vector<",
            "Lcom/android/gallery3d/filtershow/filters/x;",
            ">;",
            "Lcom/android/gallery3d/filtershow/pipeline/e;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/g0;->W()Lcom/android/gallery3d/filtershow/filters/g0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/a;->T()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/filters/x;

    move-object v3, v2

    check-cast v3, Lcom/android/gallery3d/filtershow/filters/f;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/f;->getValue()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/x;->P()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/filtershow/filters/a;->U(Ljava/lang/String;I)V

    invoke-virtual {p3}, Lcom/android/gallery3d/filtershow/pipeline/e;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/a;->I()[I

    move-result-object v9

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/a;->G()[Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/a;->F()[I

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/a;->E()[I

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/a;->H()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v2, p1

    invoke-static/range {v2 .. v9}, Lcom/android/gallery3d/filtershow/filters/ImageFilterNubiaAlgorithm;->nativeApplyFilter(Landroid/graphics/Bitmap;II[Landroid/graphics/Bitmap;[I[I[Ljava/lang/String;[I)V

    if-eq p1, p1, :cond_3

    invoke-virtual {p3, p1}, Lcom/android/gallery3d/filtershow/pipeline/e;->b(Landroid/graphics/Bitmap;)V

    :cond_3
    return-object p1
.end method

.method public g(Landroid/graphics/Bitmap;Ljava/util/Vector;Lcom/android/gallery3d/filtershow/pipeline/e;)Landroid/graphics/Bitmap;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/Vector<",
            "Lcom/android/gallery3d/filtershow/filters/x;",
            ">;",
            "Lcom/android/gallery3d/filtershow/pipeline/e;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {p2 .. p2}, Ljava/util/Vector;->size()I

    move-result v4

    if-nez v4, :cond_0

    const/16 v2, 0xb

    invoke-virtual {v3, v1, v2}, Lcom/android/gallery3d/filtershow/pipeline/e;->f(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/pipeline/b;->d(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/pipeline/b;->b(Ljava/util/Vector;)Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v5

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/pipeline/b;->e(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, Lcom/android/gallery3d/filtershow/pipeline/e;->d()Lcom/android/gallery3d/filtershow/e/a;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/gallery3d/filtershow/e/a;->e(Lcom/android/gallery3d/filtershow/pipeline/b;)V

    invoke-static {v4}, Lcom/android/gallery3d/filtershow/pipeline/b$a;->c(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v7

    iget-object v8, v0, Lcom/android/gallery3d/filtershow/pipeline/b;->a:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-ne v7, v8, :cond_1

    iget-object v7, v0, Lcom/android/gallery3d/filtershow/pipeline/b;->a:Ljava/util/Vector;

    invoke-virtual {v7, v4}, Ljava/util/Vector;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    iput-object v4, v0, Lcom/android/gallery3d/filtershow/pipeline/b;->a:Ljava/util/Vector;

    :cond_2
    const/4 v8, 0x1

    const/4 v9, -0x1

    move v12, v8

    move v11, v9

    const/4 v10, 0x0

    :goto_0
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v13

    if-ge v10, v13, :cond_5

    invoke-virtual {v4, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/gallery3d/filtershow/pipeline/b$a;

    iget-object v14, v0, Lcom/android/gallery3d/filtershow/pipeline/b;->a:Ljava/util/Vector;

    invoke-virtual {v14, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/gallery3d/filtershow/pipeline/b$a;

    if-eqz v12, :cond_3

    invoke-virtual {v13, v14}, Lcom/android/gallery3d/filtershow/pipeline/b$a;->e(Lcom/android/gallery3d/filtershow/pipeline/b$a;)Z

    move-result v12

    :cond_3
    if-eqz v12, :cond_4

    move v11, v10

    goto :goto_1

    :cond_4
    iget-object v15, v0, Lcom/android/gallery3d/filtershow/pipeline/b;->a:Ljava/util/Vector;

    invoke-virtual {v15, v10}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    iget-object v15, v0, Lcom/android/gallery3d/filtershow/pipeline/b;->a:Ljava/util/Vector;

    invoke-virtual {v15, v13, v10}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    iget-object v13, v14, Lcom/android/gallery3d/filtershow/pipeline/b$a;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v13}, Lcom/android/gallery3d/filtershow/pipeline/e;->b(Landroid/graphics/Bitmap;)V

    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    if-le v11, v9, :cond_7

    move v10, v11

    :goto_2
    if-lez v10, :cond_6

    iget-object v12, v0, Lcom/android/gallery3d/filtershow/pipeline/b;->a:Ljava/util/Vector;

    invoke-virtual {v12, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/gallery3d/filtershow/pipeline/b$a;

    iget-object v12, v12, Lcom/android/gallery3d/filtershow/pipeline/b$a;->b:Landroid/graphics/Bitmap;

    if-nez v12, :cond_6

    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    :cond_6
    iget-object v12, v0, Lcom/android/gallery3d/filtershow/pipeline/b;->a:Ljava/util/Vector;

    invoke-virtual {v12, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/gallery3d/filtershow/pipeline/b$a;

    iget-object v12, v12, Lcom/android/gallery3d/filtershow/pipeline/b$a;->b:Landroid/graphics/Bitmap;

    goto :goto_3

    :cond_7
    move-object v12, v4

    move v10, v11

    :goto_3
    move-object v13, v4

    move v14, v9

    :goto_4
    iget-object v15, v0, Lcom/android/gallery3d/filtershow/pipeline/b;->a:Ljava/util/Vector;

    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v15

    if-ge v10, v15, :cond_b

    if-eq v10, v9, :cond_8

    if-nez v12, :cond_9

    :cond_8
    const/16 v12, 0xc

    invoke-virtual {v3, v1, v12}, Lcom/android/gallery3d/filtershow/pipeline/e;->f(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v12

    move-object v13, v12

    if-ne v10, v9, :cond_9

    goto :goto_5

    :cond_9
    iget-object v15, v0, Lcom/android/gallery3d/filtershow/pipeline/b;->a:Ljava/util/Vector;

    invoke-virtual {v15, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/gallery3d/filtershow/pipeline/b$a;

    iget-object v7, v15, Lcom/android/gallery3d/filtershow/pipeline/b$a;->b:Landroid/graphics/Bitmap;

    if-nez v7, :cond_a

    invoke-virtual {v3, v12, v8}, Lcom/android/gallery3d/filtershow/pipeline/e;->f(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v15, v3, v7}, Lcom/android/gallery3d/filtershow/pipeline/b$a;->b(Lcom/android/gallery3d/filtershow/pipeline/e;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v15, Lcom/android/gallery3d/filtershow/pipeline/b$a;->b:Landroid/graphics/Bitmap;

    move-object v12, v7

    move v14, v10

    :cond_a
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_b
    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/pipeline/b;->c(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0, v12, v1, v3}, Lcom/android/gallery3d/filtershow/pipeline/b;->f(Landroid/graphics/Bitmap;Ljava/util/Vector;Lcom/android/gallery3d/filtershow/pipeline/e;)Landroid/graphics/Bitmap;

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_c

    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/filters/x;

    invoke-virtual {v3, v2, v12}, Lcom/android/gallery3d/filtershow/pipeline/e;->a(Lcom/android/gallery3d/filtershow/filters/x;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v12

    goto :goto_6

    :cond_c
    if-eqz v5, :cond_d

    invoke-virtual {v3, v5, v12}, Lcom/android/gallery3d/filtershow/pipeline/e;->a(Lcom/android/gallery3d/filtershow/filters/x;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v12

    :cond_d
    invoke-virtual {v3, v13}, Lcom/android/gallery3d/filtershow/pipeline/e;->b(Landroid/graphics/Bitmap;)V

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v11, :cond_e

    iget-object v1, v0, Lcom/android/gallery3d/filtershow/pipeline/b;->a:Ljava/util/Vector;

    invoke-virtual {v1, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/pipeline/b$a;

    iget-object v2, v1, Lcom/android/gallery3d/filtershow/pipeline/b$a;->b:Landroid/graphics/Bitmap;

    iput-object v4, v1, Lcom/android/gallery3d/filtershow/pipeline/b$a;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/filtershow/pipeline/e;->b(Landroid/graphics/Bitmap;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_e
    if-eq v14, v9, :cond_f

    iget-object v1, v0, Lcom/android/gallery3d/filtershow/pipeline/b;->a:Ljava/util/Vector;

    invoke-virtual {v1, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/pipeline/b$a;

    iput-object v4, v1, Lcom/android/gallery3d/filtershow/pipeline/b$a;->b:Landroid/graphics/Bitmap;

    :cond_f
    invoke-virtual {v0, v12}, Lcom/android/gallery3d/filtershow/pipeline/b;->a(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v1, 0xd

    invoke-virtual {v3, v12, v1}, Lcom/android/gallery3d/filtershow/pipeline/e;->f(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    :cond_10
    return-object v12
.end method
