.class public Lcom/android/gallery3d/filtershow/crop/d;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lcom/android/gallery3d/filtershow/crop/a;

.field private b:Z

.field private c:F

.field private d:F

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;Landroid/graphics/RectF;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/crop/d;->b:Z

    const/high16 v1, 0x42340000    # 45.0f

    iput v1, p0, Lcom/android/gallery3d/filtershow/crop/d;->c:F

    const/high16 v1, 0x41a00000    # 20.0f

    iput v1, p0, Lcom/android/gallery3d/filtershow/crop/d;->d:F

    iput v0, p0, Lcom/android/gallery3d/filtershow/crop/d;->e:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/crop/d;->f:I

    new-instance v0, Lcom/android/gallery3d/filtershow/crop/a;

    rem-int/lit16 p3, p3, 0x168

    int-to-float p3, p3

    invoke-direct {v0, p3, p1, p2}, Lcom/android/gallery3d/filtershow/crop/a;-><init>(FLandroid/graphics/RectF;Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/crop/d;->a:Lcom/android/gallery3d/filtershow/crop/a;

    return-void
.end method

.method private a(FF)I
    .locals 8

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/d;->a:Lcom/android/gallery3d/filtershow/crop/a;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/crop/a;->b()Landroid/graphics/RectF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/RectF;->left:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, v0, Landroid/graphics/RectF;->right:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    sub-float v3, p2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v4, p2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/android/gallery3d/filtershow/crop/d;->c:F

    cmpg-float v6, v1, v5

    if-gtz v6, :cond_0

    add-float v6, p2, v5

    iget v7, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_0

    sub-float v6, p2, v5

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    cmpg-float v1, v2, v5

    if-gtz v1, :cond_1

    add-float v1, p2, v5

    iget v2, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    sub-float/2addr p2, v5

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float p2, p2, v1

    if-gtz p2, :cond_1

    const/4 p2, 0x4

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    cmpg-float v1, v3, v5

    if-gtz v1, :cond_2

    add-float v1, p1, v5

    iget v2, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    sub-float v1, p1, v5

    iget v2, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    cmpg-float v1, v3, v4

    if-gez v1, :cond_2

    or-int/lit8 p2, p2, 0x2

    goto :goto_1

    :cond_2
    cmpg-float v1, v4, v5

    if-gtz v1, :cond_3

    add-float v1, p1, v5

    iget v2, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3

    sub-float/2addr p1, v5

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_3

    or-int/lit8 p2, p2, 0x8

    :cond_3
    :goto_1
    return p2
.end method

.method public static b(I)Z
    .locals 1

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(I)Z
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static d(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/16 v1, 0x8

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static e(I)Z
    .locals 1

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/android/gallery3d/filtershow/crop/d;->b(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/gallery3d/filtershow/crop/d;->d(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/gallery3d/filtershow/crop/d;->c(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static g(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    or-int/lit8 p0, p0, 0x2

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    or-int/lit8 p0, p0, 0x1

    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    or-int/lit8 p0, p0, 0x8

    :cond_2
    const/16 v0, 0x8

    if-ne p0, v0, :cond_3

    or-int/lit8 p0, p0, 0x4

    :cond_3
    return p0
.end method

.method private static h(Landroid/graphics/RectF;IFF)Landroid/graphics/RectF;
    .locals 3

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    new-instance p1, Landroid/graphics/RectF;

    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v2

    add-float/2addr v2, v0

    add-float/2addr v2, p2

    iget p2, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    add-float/2addr p2, p0

    add-float/2addr p2, p3

    invoke-direct {p1, v0, v1, v2, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    new-instance p1, Landroid/graphics/RectF;

    iget v0, p0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float/2addr v0, v1

    add-float/2addr v0, p2

    iget p2, p0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    add-float/2addr p0, p2

    add-float/2addr p0, p3

    invoke-direct {p1, v0, p2, v1, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    new-instance p1, Landroid/graphics/RectF;

    iget v0, p0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float/2addr v0, v1

    add-float/2addr v0, p2

    iget p2, p0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr p2, v1

    add-float/2addr p2, p3

    iget p3, p0, Landroid/graphics/RectF;->right:F

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p1, v0, p2, p3, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    if-ne p1, v0, :cond_3

    new-instance p1, Landroid/graphics/RectF;

    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr v1, v2

    add-float/2addr v1, p3

    iget p3, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v2

    add-float/2addr p3, v2

    add-float/2addr p3, p2

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p1, v0, v1, p3, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public f()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/crop/d;->e:I

    return-void
.end method

.method public i()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/d;->a:Lcom/android/gallery3d/filtershow/crop/a;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/crop/a;->b()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public j(Landroid/graphics/RectF;)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/d;->a:Lcom/android/gallery3d/filtershow/crop/a;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/crop/a;->m(Landroid/graphics/RectF;)V

    return-void
.end method

.method public k()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/d;->a:Lcom/android/gallery3d/filtershow/crop/a;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/crop/a;->d()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/crop/d;->e:I

    return v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/crop/d;->f:I

    return v0
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/crop/d;->b:Z

    return v0
.end method

.method public o(FF)Z
    .locals 10

    iget v0, p0, Lcom/android/gallery3d/filtershow/crop/d;->e:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/d;->a:Lcom/android/gallery3d/filtershow/crop/a;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/crop/a;->b()Landroid/graphics/RectF;

    move-result-object v0

    iget v2, p0, Lcom/android/gallery3d/filtershow/crop/d;->d:F

    iget v3, p0, Lcom/android/gallery3d/filtershow/crop/d;->e:I

    const/16 v4, 0x10

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/d;->a:Lcom/android/gallery3d/filtershow/crop/a;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/filtershow/crop/a;->h(FF)V

    return v5

    :cond_1
    and-int/lit8 v4, v3, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    iget v7, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v7, p1

    iget v8, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v8, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iget v8, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    goto :goto_0

    :cond_2
    move v7, v6

    :goto_0
    and-int/lit8 v8, v3, 0x2

    if-eqz v8, :cond_3

    iget v6, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, p2

    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v9, v2

    invoke-static {v6, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iget v9, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v9

    :cond_3
    and-int/lit8 v9, v3, 0x4

    if-eqz v9, :cond_4

    iget v7, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v7, p1

    iget p1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr p1, v2

    invoke-static {v7, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v7, v0, Landroid/graphics/RectF;->right:F

    sub-float v7, p1, v7

    :cond_4
    and-int/lit8 p1, v3, 0x8

    if-eqz p1, :cond_5

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v6, p2

    iget p2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr p2, v2

    invoke-static {v6, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v6, p2, v2

    :cond_5
    iget-boolean p2, p0, Lcom/android/gallery3d/filtershow/crop/d;->b:Z

    if-eqz p2, :cond_8

    const/4 p1, 0x2

    new-array p2, p1, [F

    iget v2, v0, Landroid/graphics/RectF;->left:F

    aput v2, p2, v1

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    aput v2, p2, v5

    new-array v4, p1, [F

    iget v8, v0, Landroid/graphics/RectF;->right:F

    aput v8, v4, v1

    iget v8, v0, Landroid/graphics/RectF;->top:F

    aput v8, v4, v5

    const/4 v9, 0x3

    if-eq v3, v9, :cond_6

    const/16 v9, 0xc

    if-ne v3, v9, :cond_7

    :cond_6
    aput v8, p2, v5

    aput v2, v4, v5

    :cond_7
    new-array v2, p1, [F

    aget v8, p2, v1

    aget v9, v4, v1

    sub-float/2addr v8, v9

    aput v8, v2, v1

    aget p2, p2, v5

    aget v4, v4, v5

    sub-float/2addr p2, v4

    aput p2, v2, v5

    new-array p1, p1, [F

    aput v7, p1, v1

    aput v6, p1, v5

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/imageshow/h;->w([F)[F

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/h;->y([F[F)F

    move-result p1

    aget v1, p2, v1

    mul-float/2addr v1, p1

    aget p2, p2, v5

    mul-float/2addr p1, p2

    invoke-static {v0, v3, v1, p1}, Lcom/android/gallery3d/filtershow/crop/d;->h(Landroid/graphics/RectF;IFF)Landroid/graphics/RectF;

    move-result-object p1

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/crop/d;->a:Lcom/android/gallery3d/filtershow/crop/a;

    invoke-virtual {p2, p1}, Lcom/android/gallery3d/filtershow/crop/a;->a(Landroid/graphics/RectF;)V

    goto :goto_1

    :cond_8
    if-eqz v4, :cond_9

    iget p2, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr p2, v7

    iput p2, v0, Landroid/graphics/RectF;->left:F

    :cond_9
    if-eqz v8, :cond_a

    iget p2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr p2, v6

    iput p2, v0, Landroid/graphics/RectF;->top:F

    :cond_a
    if-eqz v9, :cond_b

    iget p2, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr p2, v7

    iput p2, v0, Landroid/graphics/RectF;->right:F

    :cond_b
    if-eqz p1, :cond_c

    iget p1, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p1, v6

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    :cond_c
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/crop/d;->a:Lcom/android/gallery3d/filtershow/crop/a;

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/crop/a;->j(Landroid/graphics/RectF;)V

    :goto_1
    return v5
.end method

.method public p(FF)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/crop/d;->a(FF)I

    move-result p1

    iget-boolean p2, p0, Lcom/android/gallery3d/filtershow/crop/d;->b:Z

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/crop/d;->g(I)I

    move-result p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/crop/d;->q(I)Z

    move-result p1

    return p1
.end method

.method public q(I)Z
    .locals 1

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/crop/d;->e(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/crop/d;->b:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/crop/d;->c(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/crop/d;->b(I)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bad corner selected"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/gallery3d/filtershow/crop/d;->e:I

    const/4 p1, 0x1

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bad edge selected"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public r(Landroid/graphics/RectF;Landroid/graphics/RectF;I)V
    .locals 1

    new-instance v0, Lcom/android/gallery3d/filtershow/crop/a;

    rem-int/lit16 p3, p3, 0x168

    int-to-float p3, p3

    invoke-direct {v0, p3, p1, p2}, Lcom/android/gallery3d/filtershow/crop/a;-><init>(FLandroid/graphics/RectF;Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/crop/d;->a:Lcom/android/gallery3d/filtershow/crop/a;

    return-void
.end method

.method public s(FF)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-lez p1, :cond_2

    cmpg-float p1, p2, v0

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/crop/d;->a:Lcom/android/gallery3d/filtershow/crop/a;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/crop/a;->d()Landroid/graphics/RectF;

    move-result-object p1

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/crop/d;->a:Lcom/android/gallery3d/filtershow/crop/a;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/crop/a;->f()F

    move-result p1

    invoke-static {p2, p1}, Lcom/android/gallery3d/filtershow/imageshow/s;->K(Landroid/graphics/RectF;F)V

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p1

    iget v0, p0, Lcom/android/gallery3d/filtershow/crop/d;->d:F

    cmpg-float p1, p1, v0

    if-ltz p1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p1

    iget v0, p0, Lcom/android/gallery3d/filtershow/crop/d;->d:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/crop/d;->b:Z

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/crop/d;->a:Lcom/android/gallery3d/filtershow/crop/a;

    invoke-virtual {p1, p2}, Lcom/android/gallery3d/filtershow/crop/a;->l(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/crop/d;->f()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Width and Height must be greater than zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public t(FF)Z
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-lez v1, :cond_2

    cmpg-float v0, p2, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/d;->a:Lcom/android/gallery3d/filtershow/crop/a;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/crop/a;->d()Landroid/graphics/RectF;

    move-result-object v0

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/d;->a:Lcom/android/gallery3d/filtershow/crop/a;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/crop/a;->f()F

    move-result v0

    invoke-static {v1, v0}, Lcom/android/gallery3d/filtershow/imageshow/s;->K(Landroid/graphics/RectF;F)V

    invoke-static {v1, p1, p2}, Lcom/android/gallery3d/filtershow/crop/c;->c(Landroid/graphics/RectF;FF)V

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result p1

    iget p2, p0, Lcom/android/gallery3d/filtershow/crop/d;->d:F

    cmpg-float p1, p1, p2

    if-ltz p1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result p1

    iget p2, p0, Lcom/android/gallery3d/filtershow/crop/d;->d:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/crop/d;->b:Z

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/crop/d;->a:Lcom/android/gallery3d/filtershow/crop/a;

    invoke-virtual {p2, v1}, Lcom/android/gallery3d/filtershow/crop/a;->l(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/crop/d;->f()V

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Width and Height must be greater than zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public u(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    iput p1, p0, Lcom/android/gallery3d/filtershow/crop/d;->d:F

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Min dide must be greater than zero"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public v(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/crop/d;->f:I

    return-void
.end method

.method public w(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    iput p1, p0, Lcom/android/gallery3d/filtershow/crop/d;->c:F

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tolerance must be greater than zero"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public x()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/crop/d;->b:Z

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/crop/d;->f()V

    return-void
.end method
