.class public Lcom/android/gallery3d/filtershow/imageshow/a0;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:I

.field private static b:I

.field private static c:I

.field private static d:I


# direct methods
.method private static a(Lcom/android/gallery3d/filtershow/imageshow/c;Lcom/android/gallery3d/filtershow/imageshow/c;Lcom/android/gallery3d/filtershow/imageshow/c;Lcom/android/gallery3d/filtershow/imageshow/c;)Lcom/android/gallery3d/filtershow/imageshow/e;
    .locals 2

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/c;->b:F

    iget v1, p3, Lcom/android/gallery3d/filtershow/imageshow/c;->b:F

    sub-float v1, v0, v1

    iget p0, p0, Lcom/android/gallery3d/filtershow/imageshow/c;->a:F

    iget p3, p3, Lcom/android/gallery3d/filtershow/imageshow/c;->a:F

    sub-float p3, p0, p3

    div-float/2addr v1, p3

    mul-float/2addr p0, v1

    sub-float/2addr v0, p0

    iget p0, p1, Lcom/android/gallery3d/filtershow/imageshow/c;->b:F

    iget p3, p2, Lcom/android/gallery3d/filtershow/imageshow/c;->b:F

    sub-float p3, p0, p3

    iget p1, p1, Lcom/android/gallery3d/filtershow/imageshow/c;->a:F

    iget p2, p2, Lcom/android/gallery3d/filtershow/imageshow/c;->a:F

    sub-float p2, p1, p2

    div-float/2addr p3, p2

    mul-float/2addr p1, p3

    sub-float/2addr p0, p1

    sub-float/2addr p0, v0

    sub-float p1, v1, p3

    div-float/2addr p0, p1

    mul-float/2addr v1, p0

    add-float/2addr v1, v0

    new-instance p1, Lcom/android/gallery3d/filtershow/imageshow/e;

    invoke-direct {p1, p0, v1}, Lcom/android/gallery3d/filtershow/imageshow/e;-><init>(FF)V

    return-object p1
.end method

.method private static b(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/gallery3d/filtershow/imageshow/c;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/imageshow/c;

    iget v2, v2, Lcom/android/gallery3d/filtershow/imageshow/c;->a:F

    float-to-int v2, v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/filtershow/imageshow/c;

    iget v4, v4, Lcom/android/gallery3d/filtershow/imageshow/c;->a:F

    float-to-int v4, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/filtershow/imageshow/c;

    iget v4, v4, Lcom/android/gallery3d/filtershow/imageshow/c;->b:F

    float-to-int v4, v4

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/filtershow/imageshow/c;

    iget v5, v5, Lcom/android/gallery3d/filtershow/imageshow/c;->b:F

    float-to-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/filtershow/imageshow/c;

    iget v5, v5, Lcom/android/gallery3d/filtershow/imageshow/c;->a:F

    float-to-int v5, v5

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/filtershow/imageshow/c;

    iget v6, v6, Lcom/android/gallery3d/filtershow/imageshow/c;->a:F

    float-to-int v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/imageshow/c;

    iget v1, v1, Lcom/android/gallery3d/filtershow/imageshow/c;->b:F

    float-to-int v1, v1

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/filtershow/imageshow/c;

    iget v6, v6, Lcom/android/gallery3d/filtershow/imageshow/c;->b:F

    float-to-int v6, v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v6, v2, v4, v5, v1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static c(Ljava/util/ArrayList;I)Lcom/android/gallery3d/filtershow/imageshow/b0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;I)",
            "Lcom/android/gallery3d/filtershow/imageshow/b0;"
        }
    .end annotation

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_2

    add-int/lit8 v0, p1, 0x1

    move v1, v0

    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-static {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/a0;->i(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p0, Lcom/android/gallery3d/filtershow/imageshow/b0;

    invoke-direct {p0, p1, v1}, Lcom/android/gallery3d/filtershow/imageshow/b0;-><init>(II)V

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move p1, v0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/gallery3d/filtershow/imageshow/c;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/gallery3d/filtershow/imageshow/y;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/android/gallery3d/filtershow/imageshow/a0;->b(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-static {p0, v1}, Lcom/android/gallery3d/filtershow/imageshow/a0;->c(Ljava/util/ArrayList;I)Lcom/android/gallery3d/filtershow/imageshow/b0;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, v1, Lcom/android/gallery3d/filtershow/imageshow/b0;->b:I

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, v1, Lcom/android/gallery3d/filtershow/imageshow/b0;->b:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/imageshow/b0;

    new-instance v2, Lcom/android/gallery3d/filtershow/imageshow/y;

    iget v3, v1, Lcom/android/gallery3d/filtershow/imageshow/b0;->a:I

    iget v1, v1, Lcom/android/gallery3d/filtershow/imageshow/b0;->b:I

    invoke-direct {v2, v3, v1}, Lcom/android/gallery3d/filtershow/imageshow/y;-><init>(II)V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method private static e(Ljava/util/ArrayList;Lcom/android/gallery3d/filtershow/imageshow/y;)Lcom/android/gallery3d/filtershow/imageshow/e;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/gallery3d/filtershow/imageshow/c;",
            ">;",
            "Lcom/android/gallery3d/filtershow/imageshow/y;",
            ")",
            "Lcom/android/gallery3d/filtershow/imageshow/e;"
        }
    .end annotation

    iget v0, p1, Lcom/android/gallery3d/filtershow/imageshow/y;->a:I

    iget p1, p1, Lcom/android/gallery3d/filtershow/imageshow/y;->b:I

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/imageshow/c;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/imageshow/c;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/imageshow/c;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/gallery3d/filtershow/imageshow/c;

    invoke-static {v1, v2, v3, p0}, Lcom/android/gallery3d/filtershow/imageshow/a0;->a(Lcom/android/gallery3d/filtershow/imageshow/c;Lcom/android/gallery3d/filtershow/imageshow/c;Lcom/android/gallery3d/filtershow/imageshow/c;Lcom/android/gallery3d/filtershow/imageshow/c;)Lcom/android/gallery3d/filtershow/imageshow/e;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/e;->b(I)V

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/e;->a(I)V

    return-object p0
.end method

.method private static f(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/gallery3d/filtershow/imageshow/c;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/gallery3d/filtershow/imageshow/y;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/gallery3d/filtershow/imageshow/e;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/imageshow/y;

    invoke-static {p0, v1}, Lcom/android/gallery3d/filtershow/imageshow/a0;->e(Ljava/util/ArrayList;Lcom/android/gallery3d/filtershow/imageshow/y;)Lcom/android/gallery3d/filtershow/imageshow/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static g(Landroid/graphics/Rect;Ljava/util/ArrayList;IILcom/android/gallery3d/filtershow/imageshow/c;)Landroid/graphics/Path;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/ArrayList<",
            "Lcom/android/gallery3d/filtershow/imageshow/c;",
            ">;II",
            "Lcom/android/gallery3d/filtershow/imageshow/c;",
            ")",
            "Landroid/graphics/Path;"
        }
    .end annotation

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/imageshow/c;

    iget v1, v1, Lcom/android/gallery3d/filtershow/imageshow/c;->a:F

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/imageshow/c;

    iget v2, v2, Lcom/android/gallery3d/filtershow/imageshow/c;->b:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    move v3, p2

    :goto_0
    if-gt v3, p3, :cond_0

    sget v4, Lcom/android/gallery3d/filtershow/imageshow/a0;->a:I

    float-to-int v5, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    sput v4, Lcom/android/gallery3d/filtershow/imageshow/a0;->a:I

    sget v4, Lcom/android/gallery3d/filtershow/imageshow/a0;->c:I

    float-to-int v6, v2

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    sput v4, Lcom/android/gallery3d/filtershow/imageshow/a0;->c:I

    sget v4, Lcom/android/gallery3d/filtershow/imageshow/a0;->b:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    sput v4, Lcom/android/gallery3d/filtershow/imageshow/a0;->b:I

    sget v4, Lcom/android/gallery3d/filtershow/imageshow/a0;->d:I

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    sput v4, Lcom/android/gallery3d/filtershow/imageshow/a0;->d:I

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/filtershow/imageshow/c;

    iget v4, v4, Lcom/android/gallery3d/filtershow/imageshow/c;->a:F

    add-float/2addr v1, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/filtershow/imageshow/c;

    iget v5, v5, Lcom/android/gallery3d/filtershow/imageshow/c;->b:F

    add-float/2addr v2, v5

    div-float/2addr v2, v4

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/filtershow/imageshow/c;

    iget v4, v4, Lcom/android/gallery3d/filtershow/imageshow/c;->a:F

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/filtershow/imageshow/c;

    iget v5, v5, Lcom/android/gallery3d/filtershow/imageshow/c;->b:F

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/imageshow/c;

    iget v1, v1, Lcom/android/gallery3d/filtershow/imageshow/c;->a:F

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/imageshow/c;

    iget v2, v2, Lcom/android/gallery3d/filtershow/imageshow/c;->b:F

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sget p3, Lcom/android/gallery3d/filtershow/imageshow/a0;->a:I

    iget v1, p4, Lcom/android/gallery3d/filtershow/imageshow/c;->a:F

    float-to-int v1, v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    sput p3, Lcom/android/gallery3d/filtershow/imageshow/a0;->a:I

    sget p3, Lcom/android/gallery3d/filtershow/imageshow/a0;->c:I

    iget v1, p4, Lcom/android/gallery3d/filtershow/imageshow/c;->b:F

    float-to-int v1, v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    sput p3, Lcom/android/gallery3d/filtershow/imageshow/a0;->c:I

    sget p3, Lcom/android/gallery3d/filtershow/imageshow/a0;->b:I

    iget v1, p4, Lcom/android/gallery3d/filtershow/imageshow/c;->a:F

    float-to-int v1, v1

    invoke-static {p3, v1}, Ljava/lang/Math;->max(II)I

    move-result p3

    sput p3, Lcom/android/gallery3d/filtershow/imageshow/a0;->b:I

    sget p3, Lcom/android/gallery3d/filtershow/imageshow/a0;->d:I

    iget v1, p4, Lcom/android/gallery3d/filtershow/imageshow/c;->b:F

    float-to-int v1, v1

    invoke-static {p3, v1}, Ljava/lang/Math;->max(II)I

    move-result p3

    sput p3, Lcom/android/gallery3d/filtershow/imageshow/a0;->d:I

    sget v1, Lcom/android/gallery3d/filtershow/imageshow/a0;->a:I

    sget v2, Lcom/android/gallery3d/filtershow/imageshow/a0;->c:I

    sget v3, Lcom/android/gallery3d/filtershow/imageshow/a0;->b:I

    invoke-virtual {p0, v1, v2, v3, p3}, Landroid/graphics/Rect;->set(IIII)V

    iget p0, p4, Lcom/android/gallery3d/filtershow/imageshow/c;->a:F

    iget p3, p4, Lcom/android/gallery3d/filtershow/imageshow/c;->b:F

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/gallery3d/filtershow/imageshow/c;

    iget p4, p4, Lcom/android/gallery3d/filtershow/imageshow/c;->a:F

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/gallery3d/filtershow/imageshow/c;

    iget p1, p1, Lcom/android/gallery3d/filtershow/imageshow/c;->b:F

    invoke-virtual {v0, p0, p3, p4, p1}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-object v0
.end method

.method private static h(Landroid/graphics/Rect;Ljava/util/ArrayList;IILcom/android/gallery3d/filtershow/imageshow/c;Lcom/android/gallery3d/filtershow/imageshow/c;)Landroid/graphics/Path;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/ArrayList<",
            "Lcom/android/gallery3d/filtershow/imageshow/c;",
            ">;II",
            "Lcom/android/gallery3d/filtershow/imageshow/c;",
            "Lcom/android/gallery3d/filtershow/imageshow/c;",
            ")",
            "Landroid/graphics/Path;"
        }
    .end annotation

    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/imageshow/c;

    iget v0, v0, Lcom/android/gallery3d/filtershow/imageshow/c;->a:F

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/imageshow/c;

    iget v1, v1, Lcom/android/gallery3d/filtershow/imageshow/c;->b:F

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    float-to-int v2, v0

    sput v2, Lcom/android/gallery3d/filtershow/imageshow/a0;->a:I

    float-to-int v3, v1

    sput v3, Lcom/android/gallery3d/filtershow/imageshow/a0;->c:I

    sput v2, Lcom/android/gallery3d/filtershow/imageshow/a0;->b:I

    sput v3, Lcom/android/gallery3d/filtershow/imageshow/a0;->d:I

    move v2, p2

    :goto_0
    if-gt v2, p3, :cond_0

    sget v3, Lcom/android/gallery3d/filtershow/imageshow/a0;->a:I

    float-to-int v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    sput v3, Lcom/android/gallery3d/filtershow/imageshow/a0;->a:I

    sget v3, Lcom/android/gallery3d/filtershow/imageshow/a0;->c:I

    float-to-int v5, v1

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    sput v3, Lcom/android/gallery3d/filtershow/imageshow/a0;->c:I

    sget v3, Lcom/android/gallery3d/filtershow/imageshow/a0;->b:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    sput v3, Lcom/android/gallery3d/filtershow/imageshow/a0;->b:I

    sget v3, Lcom/android/gallery3d/filtershow/imageshow/a0;->d:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    sput v3, Lcom/android/gallery3d/filtershow/imageshow/a0;->d:I

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/imageshow/c;

    iget v3, v3, Lcom/android/gallery3d/filtershow/imageshow/c;->a:F

    add-float/2addr v0, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/filtershow/imageshow/c;

    iget v4, v4, Lcom/android/gallery3d/filtershow/imageshow/c;->b:F

    add-float/2addr v1, v4

    div-float/2addr v1, v3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/imageshow/c;

    iget v3, v3, Lcom/android/gallery3d/filtershow/imageshow/c;->a:F

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/filtershow/imageshow/c;

    iget v4, v4, Lcom/android/gallery3d/filtershow/imageshow/c;->b:F

    invoke-virtual {v7, v0, v1, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/imageshow/c;

    iget v0, v0, Lcom/android/gallery3d/filtershow/imageshow/c;->a:F

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/imageshow/c;

    iget v1, v1, Lcom/android/gallery3d/filtershow/imageshow/c;->b:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget p3, Lcom/android/gallery3d/filtershow/imageshow/a0;->a:I

    iget v0, p4, Lcom/android/gallery3d/filtershow/imageshow/c;->a:F

    float-to-int v0, v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    sput p3, Lcom/android/gallery3d/filtershow/imageshow/a0;->a:I

    sget p3, Lcom/android/gallery3d/filtershow/imageshow/a0;->c:I

    iget v0, p4, Lcom/android/gallery3d/filtershow/imageshow/c;->b:F

    float-to-int v0, v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    sput p3, Lcom/android/gallery3d/filtershow/imageshow/a0;->c:I

    sget p3, Lcom/android/gallery3d/filtershow/imageshow/a0;->b:I

    iget v0, p4, Lcom/android/gallery3d/filtershow/imageshow/c;->a:F

    float-to-int v0, v0

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    sput p3, Lcom/android/gallery3d/filtershow/imageshow/a0;->b:I

    sget p3, Lcom/android/gallery3d/filtershow/imageshow/a0;->d:I

    iget v0, p4, Lcom/android/gallery3d/filtershow/imageshow/c;->b:F

    float-to-int v0, v0

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    sput p3, Lcom/android/gallery3d/filtershow/imageshow/a0;->d:I

    sget p3, Lcom/android/gallery3d/filtershow/imageshow/a0;->a:I

    iget v0, p5, Lcom/android/gallery3d/filtershow/imageshow/c;->a:F

    float-to-int v0, v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    sput p3, Lcom/android/gallery3d/filtershow/imageshow/a0;->a:I

    sget p3, Lcom/android/gallery3d/filtershow/imageshow/a0;->c:I

    iget v0, p5, Lcom/android/gallery3d/filtershow/imageshow/c;->b:F

    float-to-int v0, v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    sput p3, Lcom/android/gallery3d/filtershow/imageshow/a0;->c:I

    sget p3, Lcom/android/gallery3d/filtershow/imageshow/a0;->b:I

    iget v0, p5, Lcom/android/gallery3d/filtershow/imageshow/c;->a:F

    float-to-int v0, v0

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    sput p3, Lcom/android/gallery3d/filtershow/imageshow/a0;->b:I

    sget p3, Lcom/android/gallery3d/filtershow/imageshow/a0;->d:I

    iget v0, p5, Lcom/android/gallery3d/filtershow/imageshow/c;->b:F

    float-to-int v0, v0

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    sput p3, Lcom/android/gallery3d/filtershow/imageshow/a0;->d:I

    sget v0, Lcom/android/gallery3d/filtershow/imageshow/a0;->a:I

    sget v1, Lcom/android/gallery3d/filtershow/imageshow/a0;->c:I

    sget v2, Lcom/android/gallery3d/filtershow/imageshow/a0;->b:I

    invoke-virtual {p0, v0, v1, v2, p3}, Landroid/graphics/Rect;->set(IIII)V

    iget v1, p4, Lcom/android/gallery3d/filtershow/imageshow/c;->a:F

    iget v2, p4, Lcom/android/gallery3d/filtershow/imageshow/c;->b:F

    iget v3, p5, Lcom/android/gallery3d/filtershow/imageshow/c;->a:F

    iget v4, p5, Lcom/android/gallery3d/filtershow/imageshow/c;->b:F

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/gallery3d/filtershow/imageshow/c;

    iget v5, p0, Lcom/android/gallery3d/filtershow/imageshow/c;->a:F

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/gallery3d/filtershow/imageshow/c;

    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/c;->b:F

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    return-object v7
.end method

.method private static i(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 3

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static j(Landroid/graphics/Rect;Landroid/graphics/Path;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Path;",
            "Ljava/util/ArrayList<",
            "Lcom/android/gallery3d/filtershow/imageshow/c;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/gallery3d/filtershow/imageshow/y;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    invoke-static {p2, p3}, Lcom/android/gallery3d/filtershow/imageshow/a0;->f(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v0, 0x1

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/imageshow/e;

    if-eqz v1, :cond_1

    iget v1, v2, Lcom/android/gallery3d/filtershow/imageshow/c;->a:F

    float-to-int v1, v1

    sput v1, Lcom/android/gallery3d/filtershow/imageshow/a0;->a:I

    iget v3, v2, Lcom/android/gallery3d/filtershow/imageshow/c;->b:F

    float-to-int v3, v3

    sput v3, Lcom/android/gallery3d/filtershow/imageshow/a0;->c:I

    sput v1, Lcom/android/gallery3d/filtershow/imageshow/a0;->b:I

    sput v3, Lcom/android/gallery3d/filtershow/imageshow/a0;->d:I

    const/4 v1, 0x0

    :cond_1
    iget v3, v2, Lcom/android/gallery3d/filtershow/imageshow/e;->c:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x2

    iget v4, v2, Lcom/android/gallery3d/filtershow/imageshow/e;->d:I

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    invoke-static {p0, p2, v3, v4, v2}, Lcom/android/gallery3d/filtershow/imageshow/a0;->g(Landroid/graphics/Rect;Ljava/util/ArrayList;IILcom/android/gallery3d/filtershow/imageshow/c;)Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static k(Landroid/graphics/Rect;Landroid/graphics/Path;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Path;",
            "Ljava/util/ArrayList<",
            "Lcom/android/gallery3d/filtershow/imageshow/c;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v4, v0, -0x5

    if-ltz v4, :cond_2

    const/4 v1, 0x5

    if-ge v4, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/gallery3d/filtershow/imageshow/c;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/gallery3d/filtershow/imageshow/c;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    const/4 v3, 0x5

    move-object v1, p0

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lcom/android/gallery3d/filtershow/imageshow/a0;->h(Landroid/graphics/Rect;Ljava/util/ArrayList;IILcom/android/gallery3d/filtershow/imageshow/c;Lcom/android/gallery3d/filtershow/imageshow/c;)Landroid/graphics/Path;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method
