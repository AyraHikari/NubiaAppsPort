.class public Lcn/nubia/collage/o/b/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/collage/o/b/c$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/util/List;I)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/collage/o/a/d;",
            ">;I)I"
        }
    .end annotation

    const/4 p1, 0x0

    if-eqz p0, :cond_6

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/collage/o/a/m;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    new-instance v7, Lcn/nubia/collage/o/b/c$a;

    invoke-direct {v7, p1}, Lcn/nubia/collage/o/b/c$a;-><init>(I)V

    move v4, p1

    move v5, v4

    :cond_1
    :goto_0
    if-ge v5, v0, :cond_5

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/collage/o/a/d;

    invoke-virtual {p1}, Lcn/nubia/collage/o/a/d;->a()Lcn/nubia/collage/o/a/c;

    move-result-object v1

    instance-of v2, p1, Lcn/nubia/collage/o/a/m;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcn/nubia/collage/o/a/c;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcn/nubia/collage/n/f;->k()Lcn/nubia/collage/n/f;

    move-result-object v2

    check-cast p1, Lcn/nubia/collage/o/a/m;

    invoke-virtual {p1}, Lcn/nubia/collage/o/a/m;->f()I

    move-result p1

    invoke-virtual {v2, p1}, Lcn/nubia/collage/n/f;->f(I)Landroid/graphics/Point;

    move-result-object p1

    invoke-virtual {v1}, Lcn/nubia/collage/o/a/c;->d()I

    move-result v2

    invoke-virtual {v1}, Lcn/nubia/collage/o/a/c;->k()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p1, Landroid/graphics/Point;->x:I

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcn/nubia/collage/o/a/c;->g()I

    move-result v2

    iget v3, p1, Landroid/graphics/Point;->y:I

    mul-int/2addr v2, v3

    iget p1, p1, Landroid/graphics/Point;->x:I

    div-int/2addr v2, p1

    invoke-virtual {v1, v2}, Lcn/nubia/collage/o/a/c;->n(I)V

    :cond_2
    move v6, v2

    iput v5, v7, Lcn/nubia/collage/o/b/c$a;->a:I

    invoke-static {p0, v7, v0, v4}, Lcn/nubia/collage/o/b/c;->b(Ljava/util/List;Lcn/nubia/collage/o/b/c$a;II)I

    move-result p1

    iget v1, v7, Lcn/nubia/collage/o/b/c$a;->a:I

    if-ge v1, v0, :cond_4

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/collage/o/a/d;

    invoke-virtual {v2}, Lcn/nubia/collage/o/a/d;->a()Lcn/nubia/collage/o/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/collage/o/a/c;->i()Z

    move-result v2

    if-nez v2, :cond_4

    move-object v1, p0

    move-object v2, v7

    move v3, v0

    invoke-static/range {v1 .. v6}, Lcn/nubia/collage/o/b/c;->c(Ljava/util/List;Lcn/nubia/collage/o/b/c$a;IIII)I

    move-result v1

    iget v2, v7, Lcn/nubia/collage/o/b/c$a;->a:I

    if-le p1, v1, :cond_3

    goto :goto_1

    :cond_3
    move p1, v1

    :goto_1
    move v4, p1

    move v5, v2

    goto :goto_0

    :cond_4
    move v4, p1

    move v5, v1

    goto :goto_0

    :cond_5
    return v4

    :cond_6
    :goto_2
    return p1
.end method

.method private static b(Ljava/util/List;Lcn/nubia/collage/o/b/c$a;II)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/collage/o/a/d;",
            ">;",
            "Lcn/nubia/collage/o/b/c$a;",
            "II)I"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p1, Lcn/nubia/collage/o/b/c$a;->a:I

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/collage/o/a/d;

    invoke-virtual {v1}, Lcn/nubia/collage/o/a/d;->a()Lcn/nubia/collage/o/a/c;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcn/nubia/collage/o/a/c;->o(I)V

    invoke-virtual {v1}, Lcn/nubia/collage/o/a/c;->b()I

    move-result v2

    invoke-virtual {v1}, Lcn/nubia/collage/o/a/c;->d()I

    move-result v1

    move v3, v2

    :goto_0
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_7

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcn/nubia/collage/o/a/m;

    if-nez v4, :cond_7

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/collage/o/a/d;

    invoke-virtual {v4}, Lcn/nubia/collage/o/a/d;->a()Lcn/nubia/collage/o/a/c;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/collage/o/a/c;->k()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcn/nubia/collage/n/f;->k()Lcn/nubia/collage/n/f;

    move-result-object v5

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/collage/o/a/e;

    invoke-virtual {v6}, Lcn/nubia/collage/o/a/e;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/nubia/collage/n/f;->l(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v4, v5}, Lcn/nubia/collage/o/a/c;->n(I)V

    goto :goto_1

    :cond_1
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/collage/o/a/e;

    invoke-virtual {v5}, Lcn/nubia/collage/o/a/e;->h()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v1}, Lcn/nubia/collage/o/a/c;->n(I)V

    :cond_2
    :goto_1
    invoke-virtual {v4, p3}, Lcn/nubia/collage/o/a/c;->o(I)V

    invoke-virtual {v4}, Lcn/nubia/collage/o/a/c;->b()I

    move-result v5

    if-le v3, v5, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Lcn/nubia/collage/o/a/c;->b()I

    move-result v3

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Lcn/nubia/collage/o/a/c;->j()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcn/nubia/collage/n/f;->k()Lcn/nubia/collage/n/f;

    move-result-object v5

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/collage/o/a/e;

    invoke-virtual {v6}, Lcn/nubia/collage/o/a/e;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/nubia/collage/n/f;->l(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v6, v5}, Lcn/nubia/collage/o/a/c;->a(II)V

    :cond_5
    invoke-virtual {v4}, Lcn/nubia/collage/o/a/c;->h()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v4, v2}, Lcn/nubia/collage/o/a/c;->o(I)V

    goto :goto_2

    :cond_6
    invoke-virtual {v4, p3}, Lcn/nubia/collage/o/a/c;->o(I)V

    :goto_2
    invoke-virtual {v4}, Lcn/nubia/collage/o/a/c;->b()I

    move-result v5

    if-le v3, v5, :cond_3

    goto/16 :goto_0

    :cond_7
    iput v0, p1, Lcn/nubia/collage/o/b/c$a;->a:I

    return v3
.end method

.method private static c(Ljava/util/List;Lcn/nubia/collage/o/b/c$a;IIII)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/collage/o/a/d;",
            ">;",
            "Lcn/nubia/collage/o/b/c$a;",
            "IIII)I"
        }
    .end annotation

    iget v0, p1, Lcn/nubia/collage/o/b/c$a;->a:I

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/collage/o/a/d;

    invoke-virtual {v1}, Lcn/nubia/collage/o/a/d;->a()Lcn/nubia/collage/o/a/c;

    move-result-object v1

    invoke-static {}, Lcn/nubia/collage/n/f;->k()Lcn/nubia/collage/n/f;

    move-result-object v2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/collage/o/a/m;

    invoke-virtual {v3}, Lcn/nubia/collage/o/a/m;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/nubia/collage/n/f;->f(I)Landroid/graphics/Point;

    move-result-object v2

    invoke-virtual {v1}, Lcn/nubia/collage/o/a/c;->d()I

    move-result v3

    invoke-virtual {v1}, Lcn/nubia/collage/o/a/c;->k()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    iget v4, v2, Landroid/graphics/Point;->x:I

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcn/nubia/collage/o/a/c;->g()I

    move-result v3

    iget v4, v2, Landroid/graphics/Point;->y:I

    mul-int/2addr v3, v4

    iget v2, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v2

    if-le v3, p5, :cond_0

    const/4 v5, 0x1

    move p5, v3

    :cond_0
    invoke-virtual {v1, p5}, Lcn/nubia/collage/o/a/c;->n(I)V

    move v3, p5

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcn/nubia/collage/o/b/c;->b(Ljava/util/List;Lcn/nubia/collage/o/b/c$a;II)I

    move-result p1

    if-eqz v5, :cond_2

    invoke-static {p0, p4, v0, v3}, Lcn/nubia/collage/o/b/c;->d(Ljava/util/List;III)V

    :cond_2
    return p1
.end method

.method private static d(Ljava/util/List;III)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/collage/o/a/d;",
            ">;III)V"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/collage/o/a/d;

    invoke-virtual {v0}, Lcn/nubia/collage/o/a/d;->a()Lcn/nubia/collage/o/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/collage/o/a/c;->d()I

    move-result v1

    invoke-virtual {v0, p3}, Lcn/nubia/collage/o/a/c;->n(I)V

    invoke-virtual {v0}, Lcn/nubia/collage/o/a/c;->d()I

    move-result p3

    :cond_0
    :goto_0
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_2

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/collage/o/a/d;

    invoke-virtual {v0}, Lcn/nubia/collage/o/a/d;->a()Lcn/nubia/collage/o/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/collage/o/a/c;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcn/nubia/collage/o/a/c;->d()I

    move-result v2

    sub-int/2addr v2, v1

    add-int/2addr v2, p3

    invoke-virtual {v0, v2}, Lcn/nubia/collage/o/a/c;->n(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcn/nubia/collage/o/a/c;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    sub-int v2, p3, v1

    invoke-virtual {v0, v2}, Lcn/nubia/collage/o/a/c;->o(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static e(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/collage/o/a/d;",
            ">;I)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/collage/o/a/d;

    invoke-virtual {v0}, Lcn/nubia/collage/o/a/d;->a()Lcn/nubia/collage/o/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/collage/o/a/c;->d()I

    move-result v0

    add-int/2addr v0, p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/collage/o/a/d;

    invoke-virtual {p0}, Lcn/nubia/collage/o/a/d;->a()Lcn/nubia/collage/o/a/c;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcn/nubia/collage/o/a/c;->n(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static f(Ljava/util/List;[I)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/collage/o/a/d;",
            ">;[I)I"
        }
    .end annotation

    array-length v0, p1

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    aget v4, p1, v3

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/collage/o/a/d;

    invoke-virtual {v4}, Lcn/nubia/collage/o/a/d;->a()Lcn/nubia/collage/o/a/c;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/collage/o/a/c;->d()I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-array v3, v0, [I

    move v4, v2

    :goto_1
    if-ge v4, v0, :cond_5

    aget v5, p1, v4

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/collage/o/a/d;

    invoke-virtual {v5}, Lcn/nubia/collage/o/a/d;->a()Lcn/nubia/collage/o/a/c;

    move-result-object v5

    invoke-static {}, Lcn/nubia/collage/n/f;->k()Lcn/nubia/collage/n/f;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcn/nubia/collage/n/f;->m(I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5}, Lcn/nubia/collage/o/a/c;->d()I

    move-result v7

    aput v7, v3, v4

    invoke-virtual {v5}, Lcn/nubia/collage/o/a/c;->k()Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcn/nubia/collage/o/a/c;->g()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/2addr v7, v6

    aput v7, v3, v4

    aget v6, v3, v4

    invoke-virtual {v5, v6}, Lcn/nubia/collage/o/a/c;->n(I)V

    :cond_1
    add-int/lit8 v5, v4, 0x1

    if-ge v5, v0, :cond_4

    aget v6, p1, v5

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/collage/o/a/d;

    invoke-virtual {v6}, Lcn/nubia/collage/o/a/d;->a()Lcn/nubia/collage/o/a/c;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/collage/o/a/c;->i()Z

    move-result v6

    if-nez v6, :cond_4

    aget v6, p1, v5

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/collage/o/a/d;

    invoke-virtual {v6}, Lcn/nubia/collage/o/a/d;->a()Lcn/nubia/collage/o/a/c;

    move-result-object v6

    invoke-static {}, Lcn/nubia/collage/n/f;->k()Lcn/nubia/collage/n/f;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcn/nubia/collage/n/f;->m(I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6}, Lcn/nubia/collage/o/a/c;->d()I

    move-result v8

    aput v8, v3, v5

    invoke-virtual {v6}, Lcn/nubia/collage/o/a/c;->k()Z

    move-result v8

    if-eqz v8, :cond_3

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Lcn/nubia/collage/o/a/c;->g()I

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int/2addr v8, v9

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/2addr v8, v7

    aput v8, v3, v5

    aget v7, v3, v5

    aget v8, v3, v4

    if-le v7, v8, :cond_2

    aget v7, v3, v5

    aput v7, v3, v4

    aget v7, p1, v4

    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/nubia/collage/o/a/d;

    invoke-virtual {v7}, Lcn/nubia/collage/o/a/d;->a()Lcn/nubia/collage/o/a/c;

    move-result-object v7

    aget v4, v3, v4

    invoke-virtual {v7, v4}, Lcn/nubia/collage/o/a/c;->n(I)V

    aget v4, v3, v5

    goto :goto_2

    :cond_2
    aget v4, v3, v4

    aput v4, v3, v5

    aget v4, v3, v5

    :goto_2
    invoke-virtual {v6, v4}, Lcn/nubia/collage/o/a/c;->n(I)V

    :cond_3
    move v4, v5

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_5
    move v4, v2

    :goto_3
    if-ge v2, v0, :cond_d

    aget v5, v3, v2

    aget v6, v1, v2

    sub-int/2addr v5, v6

    add-int/lit8 v6, v0, -0x1

    if-ne v2, v6, :cond_6

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v7, v2, 0x1

    aget v7, p1, v7

    :goto_4
    aget v8, p1, v2

    :goto_5
    if-ge v8, v7, :cond_9

    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/nubia/collage/o/a/d;

    invoke-virtual {v9}, Lcn/nubia/collage/o/a/d;->a()Lcn/nubia/collage/o/a/c;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcn/nubia/collage/o/a/c;->o(I)V

    if-eqz v5, :cond_8

    invoke-virtual {v9}, Lcn/nubia/collage/o/a/c;->h()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {v9, v5}, Lcn/nubia/collage/o/a/c;->o(I)V

    :cond_7
    invoke-virtual {v9}, Lcn/nubia/collage/o/a/c;->k()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Lcn/nubia/collage/o/a/e;

    if-eqz v10, :cond_8

    invoke-virtual {v9}, Lcn/nubia/collage/o/a/c;->d()I

    move-result v10

    add-int/2addr v10, v5

    invoke-virtual {v9, v10}, Lcn/nubia/collage/o/a/c;->n(I)V

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_9
    if-ge v2, v6, :cond_a

    add-int/lit8 v7, v2, 0x1

    aget v7, p1, v7

    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/nubia/collage/o/a/d;

    invoke-virtual {v7}, Lcn/nubia/collage/o/a/d;->a()Lcn/nubia/collage/o/a/c;

    move-result-object v7

    invoke-virtual {v7}, Lcn/nubia/collage/o/a/c;->i()Z

    move-result v7

    if-nez v7, :cond_b

    :cond_a
    if-ne v2, v6, :cond_c

    :cond_b
    add-int/2addr v4, v5

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_d
    invoke-static {p0, v4}, Lcn/nubia/collage/o/b/c;->e(Ljava/util/List;I)V

    return v4
.end method
