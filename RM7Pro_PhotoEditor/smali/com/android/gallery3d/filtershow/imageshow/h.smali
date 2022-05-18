.class public final Lcom/android/gallery3d/filtershow/imageshow/h;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/imageshow/h$b;
    }
.end annotation


# direct methods
.method public static A(Landroid/graphics/RectF;F)V
    .locals 4

    iget v0, p0, Landroid/graphics/RectF;->left:F

    mul-float/2addr v0, p1

    iget v1, p0, Landroid/graphics/RectF;->top:F

    mul-float/2addr v1, p1

    iget v2, p0, Landroid/graphics/RectF;->right:F

    mul-float/2addr v2, p1

    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v3, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public static B([F[F)[F
    .locals 9

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x2

    aget v3, p1, v2

    const/4 v4, 0x1

    aget v5, p1, v4

    const/4 v6, 0x3

    aget p1, p1, v6

    sub-float/2addr v3, v1

    sub-float/2addr p1, v5

    const/4 v6, 0x0

    cmpl-float v7, v3, v6

    if-nez v7, :cond_0

    cmpl-float v6, p1, v6

    if-nez v6, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    aget v6, p0, v0

    sub-float/2addr v6, v1

    mul-float/2addr v6, v3

    aget v7, p0, v4

    sub-float/2addr v7, v5

    mul-float/2addr v7, p1

    add-float/2addr v6, v7

    mul-float v7, v3, v3

    mul-float v8, p1, p1

    add-float/2addr v7, v8

    div-float/2addr v6, v7

    new-array v7, v2, [F

    mul-float/2addr v3, v6

    add-float/2addr v1, v3

    aput v1, v7, v0

    mul-float/2addr v6, p1

    add-float/2addr v5, v6

    aput v5, v7, v4

    new-array p1, v2, [F

    aget v1, v7, v0

    aget v2, p0, v0

    sub-float/2addr v1, v2

    aput v1, p1, v0

    aget v0, v7, v4

    aget p0, p0, v4

    sub-float/2addr v0, p0

    aput v0, p1, v4

    return-object p1
.end method

.method public static C(Ljava/util/Collection;)Lcom/android/gallery3d/filtershow/imageshow/h$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/gallery3d/filtershow/filters/x;",
            ">;)",
            "Lcom/android/gallery3d/filtershow/imageshow/h$b;"
        }
    .end annotation

    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/h$b;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/imageshow/h$b;-><init>()V

    invoke-static {v0, p0}, Lcom/android/gallery3d/filtershow/imageshow/h;->D(Lcom/android/gallery3d/filtershow/imageshow/h$b;Ljava/util/Collection;)V

    return-object v0
.end method

.method public static D(Lcom/android/gallery3d/filtershow/imageshow/h$b;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/filtershow/imageshow/h$b;",
            "Ljava/util/Collection<",
            "Lcom/android/gallery3d/filtershow/filters/x;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/h$b;->e()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/x;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/x;->S()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/x;->P()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ROTATION"

    if-ne v1, v2, :cond_2

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/z;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/z;->m0()Lcom/android/gallery3d/filtershow/filters/z$b;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->a:Lcom/android/gallery3d/filtershow/filters/z$b;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/x;->P()Ljava/lang/String;

    move-result-object v1

    const-string v2, "STRAIGHTEN"

    if-ne v1, v2, :cond_3

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/b0;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/b0;->l0()F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->b:F

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/x;->P()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CROP"

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->c:Landroid/graphics/RectF;

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/j;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/j;->m0()Landroid/graphics/RectF;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/d;->c(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/j;->s0()I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->d:I

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/j;->n0()Landroid/graphics/Path;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->e:Landroid/graphics/Path;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/j;->o0()Landroid/graphics/Path;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->f:Landroid/graphics/Path;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/j;->r0()I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->g:I

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/j;->q0()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->h:I

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/x;->P()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MIRROR"

    if-ne v1, v2, :cond_5

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/s;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/s;->m0()Lcom/android/gallery3d/filtershow/filters/s$b;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->i:Lcom/android/gallery3d/filtershow/filters/s$b;

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/x;->P()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CROP_STRAIGHTEN"

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->b:F

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/y;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/y;->r0()F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->b:F

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->c:Landroid/graphics/RectF;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/y;->n0()Landroid/graphics/RectF;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/d;->c(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/y;->q0()Lcom/android/gallery3d/filtershow/filters/y$c;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->a:Lcom/android/gallery3d/filtershow/filters/z$b;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/y$c;->v()I

    move-result v1

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/filters/z$b;->s(I)Lcom/android/gallery3d/filtershow/filters/z$b;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/gallery3d/filtershow/filters/z$b;->r(Lcom/android/gallery3d/filtershow/filters/z$b;Lcom/android/gallery3d/filtershow/filters/z$b;)Lcom/android/gallery3d/filtershow/filters/z$b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->a:Lcom/android/gallery3d/filtershow/filters/z$b;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/y;->o0()Lcom/android/gallery3d/filtershow/filters/y$b;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->i:Lcom/android/gallery3d/filtershow/filters/s$b;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/y$b;->s()C

    move-result v0

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/filters/s$b;->s(C)Lcom/android/gallery3d/filtershow/filters/s$b;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/gallery3d/filtershow/filters/s$b;->r(Lcom/android/gallery3d/filtershow/filters/s$b;Lcom/android/gallery3d/filtershow/filters/s$b;)Lcom/android/gallery3d/filtershow/filters/s$b;

    move-result-object v0

    goto :goto_1

    :cond_6
    return-void
.end method

.method public static E([F)F
    .locals 3

    const/4 v0, 0x0

    aget v1, p0, v0

    aget v0, p0, v0

    mul-float/2addr v1, v0

    const/4 v0, 0x1

    aget v2, p0, v0

    aget p0, p0, v0

    mul-float/2addr v2, p0

    add-float/2addr v1, v2

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method private static a(Landroid/graphics/Rect;I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    iget p1, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v0

    iput p1, p0, Landroid/graphics/Rect;->top:I

    :goto_0
    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v0

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_0
    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private static b(Landroid/graphics/Rect;I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    iget p1, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v0

    iput p1, p0, Landroid/graphics/Rect;->left:I

    :goto_0
    iget p1, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v0

    iput p1, p0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_0
    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private static c(Landroid/graphics/Rect;)V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-lez v0, :cond_1

    invoke-static {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/h;->b(Landroid/graphics/Rect;I)V

    goto :goto_0

    :cond_1
    neg-int v0, v0

    invoke-static {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/h;->a(Landroid/graphics/Rect;I)V

    :goto_0
    return-void
.end method

.method private static d(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/imageshow/h$b;)Landroid/graphics/Bitmap;
    .locals 13

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {p1, v6, v7}, Lcom/android/gallery3d/filtershow/imageshow/h;->r(Lcom/android/gallery3d/filtershow/imageshow/h$b;II)Landroid/graphics/RectF;

    move-result-object v8

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v8}, Lcom/android/gallery3d/filtershow/imageshow/h;->x(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-static {v9}, Lcom/android/gallery3d/filtershow/imageshow/h;->f(Landroid/graphics/Rect;)V

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v5

    const/4 v0, 0x0

    move-object v1, p1

    move v2, v6

    move v3, v7

    invoke-static/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/imageshow/h;->k(Landroid/graphics/RectF;Lcom/android/gallery3d/filtershow/imageshow/h$b;IIII)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->n()Lcom/android/gallery3d/filtershow/e/a;

    move-result-object v1

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "frame = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FreeCrop"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v4, -0x1000000

    const-string v9, "GeometryMathUtils"

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-lez v2, :cond_4

    if-gtz v3, :cond_0

    goto/16 :goto_1

    :cond_0
    iget v8, p1, Lcom/android/gallery3d/filtershow/imageshow/h$b;->d:I

    const/4 v12, 0x3

    if-ne v8, v12, :cond_3

    iget-object v8, p1, Lcom/android/gallery3d/filtershow/imageshow/h$b;->e:Landroid/graphics/Path;

    if-eqz v8, :cond_3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v10, v10, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget v8, p1, Lcom/android/gallery3d/filtershow/imageshow/h$b;->g:I

    if-eq v8, v2, :cond_1

    iget v8, p1, Lcom/android/gallery3d/filtershow/imageshow/h$b;->h:I

    if-ne v8, v3, :cond_2

    :cond_1
    iget-object v8, p1, Lcom/android/gallery3d/filtershow/imageshow/h$b;->f:Landroid/graphics/Path;

    if-eqz v8, :cond_2

    const-string v8, "LYF Into Final Path"

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p1, Lcom/android/gallery3d/filtershow/imageshow/h$b;->f:Landroid/graphics/Path;

    goto :goto_0

    :cond_2
    iget-object v5, p1, Lcom/android/gallery3d/filtershow/imageshow/h$b;->e:Landroid/graphics/Path;

    :goto_0
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v9, v5, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const v5, -0xffff01

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v5, 0x40800000    # 4.0f

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v9, p0, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v4, p0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    int-to-float p0, v6

    iget-object p1, p1, Lcom/android/gallery3d/filtershow/imageshow/h$b;->c:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    mul-float/2addr p0, v0

    float-to-int p0, p0

    int-to-float v0, v7

    iget p1, p1, Landroid/graphics/RectF;->top:F

    mul-float/2addr v0, p1

    float-to-int p1, v0

    invoke-static {v8, p0, p1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 v5, 0x7

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/gallery3d/filtershow/e/a;->c(III)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_2

    :cond_4
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR!!!w h <=0.holder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  crop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p0

    :goto_2
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {v2, p0, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getShape mode = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/android/gallery3d/filtershow/imageshow/h$b;->d:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p1, Lcom/android/gallery3d/filtershow/imageshow/h$b;->d:I

    const/4 v0, 0x2

    if-eq p0, v11, :cond_6

    if-ne p0, v0, :cond_5

    goto :goto_3

    :cond_5
    return-object v1

    :cond_6
    :goto_3
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v10, v10, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iget p1, p1, Lcom/android/gallery3d/filtershow/imageshow/h$b;->d:I

    if-ne p1, v11, :cond_7

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v2, p1, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_4

    :cond_7
    if-ne p1, v0, :cond_8

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-static {p1, v0}, Lcom/android/gallery3d/filtershow/crop/b;->j(Landroid/graphics/Path;Landroid/graphics/RectF;)V

    invoke-virtual {v2, p1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_8
    :goto_4
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v2, v1, v5, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    sget-object p1, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v4, p1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p0
.end method

.method public static e(Ljava/util/Collection;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/gallery3d/filtershow/filters/x;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    invoke-static {p0}, Lcom/android/gallery3d/filtershow/imageshow/h;->C(Ljava/util/Collection;)Lcom/android/gallery3d/filtershow/imageshow/h$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/h$b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LOOK bitmapsize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FreeCrop"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/h;->s(Ljava/util/Collection;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eq p0, p1, :cond_0

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->n()Lcom/android/gallery3d/filtershow/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/e/a;->a(Landroid/graphics/Bitmap;)Z

    :cond_0
    move-object p1, p0

    :cond_1
    return-object p1
.end method

.method private static f(Landroid/graphics/Rect;)V
    .locals 1

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/j;->getIsEqual()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/gallery3d/filtershow/imageshow/h;->c(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public static g(FFF)F
    .locals 0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static h(Landroid/graphics/Matrix;Lcom/android/gallery3d/filtershow/imageshow/h$b;)V
    .locals 3

    iget-object p1, p1, Lcom/android/gallery3d/filtershow/imageshow/h$b;->i:Lcom/android/gallery3d/filtershow/filters/s$b;

    sget-object v0, Lcom/android/gallery3d/filtershow/filters/s$b;->d:Lcom/android/gallery3d/filtershow/filters/s$b;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v2, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/android/gallery3d/filtershow/filters/s$b;->c:Lcom/android/gallery3d/filtershow/filters/s$b;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/android/gallery3d/filtershow/filters/s$b;->e:Lcom/android/gallery3d/filtershow/filters/s$b;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static i([F[F)F
    .locals 2

    const/4 v0, 0x0

    aget v1, p0, v0

    aget v0, p1, v0

    mul-float/2addr v1, v0

    const/4 v0, 0x1

    aget p0, p0, v0

    aget p1, p1, v0

    mul-float/2addr p0, p1

    add-float/2addr v1, p0

    return v1
.end method

.method public static j(Lcom/android/gallery3d/filtershow/imageshow/h$b;Landroid/graphics/Canvas;Landroid/graphics/Bitmap;II)Landroid/graphics/RectF;
    .locals 7

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move-object v0, v6

    move-object v1, p0

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/imageshow/h;->k(Landroid/graphics/RectF;Lcom/android/gallery3d/filtershow/imageshow/h$b;IIII)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1, p2, p0, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-object v6
.end method

.method public static k(Landroid/graphics/RectF;Lcom/android/gallery3d/filtershow/imageshow/h$b;IIII)Landroid/graphics/Matrix;
    .locals 3

    invoke-static {p1, p2, p3}, Lcom/android/gallery3d/filtershow/imageshow/h;->m(Lcom/android/gallery3d/filtershow/imageshow/h$b;II)Landroid/graphics/Matrix;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GeometryMath getCropSelectionToScreenMatrix m:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lyhcc"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2, p3}, Lcom/android/gallery3d/filtershow/imageshow/h;->r(Lcom/android/gallery3d/filtershow/imageshow/h$b;II)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p3

    int-to-float p4, p4

    int-to-float p5, p5

    invoke-static {p2, p3, p4, p5}, Lcom/android/gallery3d/filtershow/imageshow/h;->z(FFFF)F

    move-result p2

    invoke-virtual {v0, p2, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-static {p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/h;->A(Landroid/graphics/RectF;F)V

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p4, p2

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p3

    sub-float p3, p4, p3

    div-float/2addr p5, p2

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    sub-float p2, p5, p2

    invoke-virtual {v0, p3, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    sub-float/2addr p4, p2

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    sub-float/2addr p5, p2

    invoke-virtual {p1, p4, p5}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :cond_0
    return-object v0
.end method

.method public static l(IILcom/android/gallery3d/filtershow/imageshow/h$b;)Landroid/graphics/Matrix;
    .locals 7

    invoke-static {p2, p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/h;->r(Lcom/android/gallery3d/filtershow/imageshow/h$b;II)Landroid/graphics/RectF;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/imageshow/h;->x(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/imageshow/h;->f(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    const/4 v1, 0x0

    move-object v2, p2

    move v3, p0

    move v4, p1

    invoke-static/range {v1 .. v6}, Lcom/android/gallery3d/filtershow/imageshow/h;->k(Landroid/graphics/RectF;Lcom/android/gallery3d/filtershow/imageshow/h$b;IIII)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method private static m(Lcom/android/gallery3d/filtershow/imageshow/h$b;II)Landroid/graphics/Matrix;
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    int-to-float p2, p2

    div-float/2addr p2, v0

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    neg-float p1, p1

    neg-float p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget p1, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->b:F

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->a:Lcom/android/gallery3d/filtershow/filters/z$b;

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/filters/z$b;->t()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-static {v0, p0}, Lcom/android/gallery3d/filtershow/imageshow/h;->h(Landroid/graphics/Matrix;Lcom/android/gallery3d/filtershow/imageshow/h$b;)V

    return-object v0
.end method

.method public static n(Lcom/android/gallery3d/filtershow/imageshow/h$b;IIII)Landroid/graphics/Matrix;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/imageshow/h;->o(Lcom/android/gallery3d/filtershow/imageshow/h$b;IIIIF)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method public static o(Lcom/android/gallery3d/filtershow/imageshow/h$b;IIIIF)Landroid/graphics/Matrix;
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->a:Lcom/android/gallery3d/filtershow/filters/z$b;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/imageshow/h;->v(Lcom/android/gallery3d/filtershow/filters/z$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, p1

    move v0, p2

    goto :goto_0

    :cond_0
    move v0, p1

    move v1, p2

    :goto_0
    int-to-float v0, v0

    int-to-float v1, v1

    int-to-float p3, p3

    int-to-float p4, p4

    invoke-static {v0, v1, p3, p4}, Lcom/android/gallery3d/filtershow/imageshow/h;->z(FFFF)F

    move-result v0

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr p5, v1

    mul-float/2addr v0, p5

    int-to-float p5, p1

    div-float p5, p3, p5

    int-to-float v1, p2

    div-float v1, p4, v1

    invoke-static {p5, v1}, Ljava/lang/Math;->min(FF)F

    invoke-static {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/h;->m(Lcom/android/gallery3d/filtershow/imageshow/h$b;II)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p0, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p3, p1

    div-float/2addr p4, p1

    invoke-virtual {p0, p3, p4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object p0
.end method

.method public static p(Ljava/util/Collection;ZLandroid/graphics/Rect;FF)Landroid/graphics/Matrix;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/gallery3d/filtershow/filters/x;",
            ">;Z",
            "Landroid/graphics/Rect;",
            "FF)",
            "Landroid/graphics/Matrix;"
        }
    .end annotation

    invoke-static {p0}, Lcom/android/gallery3d/filtershow/imageshow/h;->C(Ljava/util/Collection;)Lcom/android/gallery3d/filtershow/imageshow/h$b;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float v2, p0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float v3, p0

    move v1, p1

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/imageshow/h;->q(Lcom/android/gallery3d/filtershow/imageshow/h$b;ZFFFF)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method public static q(Lcom/android/gallery3d/filtershow/imageshow/h$b;ZFFFF)Landroid/graphics/Matrix;
    .locals 6

    float-to-int v2, p2

    float-to-int v3, p3

    float-to-int v4, p4

    float-to-int v5, p5

    const/4 v0, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/imageshow/h;->k(Landroid/graphics/RectF;Lcom/android/gallery3d/filtershow/imageshow/h$b;IIII)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method public static r(Lcom/android/gallery3d/filtershow/imageshow/h$b;II)Landroid/graphics/RectF;
    .locals 3

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->c:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-static {v0, p1, p2}, Lcom/android/gallery3d/filtershow/filters/j;->l0(Landroid/graphics/RectF;II)V

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->b:F

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->b:F

    invoke-static {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/h;->m(Lcom/android/gallery3d/filtershow/imageshow/h$b;II)Landroid/graphics/Matrix;

    move-result-object p1

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/h$b;->b:F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-object v0
.end method

.method private static s(Ljava/util/Collection;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/gallery3d/filtershow/filters/x;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/x;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/imageshow/h;->C(Ljava/util/Collection;)Lcom/android/gallery3d/filtershow/imageshow/h$b;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/gallery3d/filtershow/imageshow/h;->d(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/imageshow/h$b;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static t(Lcom/android/gallery3d/filtershow/imageshow/h$b;Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 0

    return-void
.end method

.method public static u([F[F)[F
    .locals 11

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget v3, p0, v2

    const/4 v4, 0x2

    aget v5, p0, v4

    const/4 v6, 0x3

    aget p0, p0, v6

    aget v7, p1, v0

    aget v8, p1, v2

    aget v9, p1, v4

    aget p1, p1, v6

    sub-float/2addr v1, v5

    sub-float/2addr v3, p0

    sub-float v6, v5, v9

    sub-float v10, p1, p0

    sub-float/2addr v7, v9

    sub-float/2addr v8, p1

    mul-float p1, v3, v7

    mul-float v9, v1, v8

    sub-float/2addr p1, v9

    const/4 v9, 0x0

    cmpl-float v9, p1, v9

    if-nez v9, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    mul-float/2addr v10, v7

    mul-float/2addr v8, v6

    add-float/2addr v10, v8

    div-float/2addr v10, p1

    new-array p1, v4, [F

    mul-float/2addr v1, v10

    add-float/2addr v5, v1

    aput v5, p1, v0

    mul-float/2addr v10, v3

    add-float/2addr p0, v10

    aput p0, p1, v2

    return-object p1
.end method

.method public static v(Lcom/android/gallery3d/filtershow/filters/z$b;)Z
    .locals 2

    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/h$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static w([F)[F
    .locals 5

    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p0, v0

    mul-float/2addr v1, v2

    const/4 v2, 0x1

    aget v3, p0, v2

    aget v4, p0, v2

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v1, v3

    const/4 v3, 0x2

    new-array v3, v3, [F

    aget v4, p0, v0

    div-float/2addr v4, v1

    aput v4, v3, v0

    aget p0, p0, v2

    div-float/2addr p0, v1

    aput p0, v3, v2

    return-object v3
.end method

.method public static x(Landroid/graphics/RectF;)Landroid/graphics/Rect;
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static y([F[F)F
    .locals 3

    const/4 v0, 0x0

    aget v1, p1, v0

    aget v0, p1, v0

    mul-float/2addr v1, v0

    const/4 v0, 0x1

    aget v2, p1, v0

    aget v0, p1, v0

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/h;->i([F[F)F

    move-result p0

    div-float/2addr p0, v0

    return p0
.end method

.method public static z(FFFF)F
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_1

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_1

    cmpl-float v0, p0, p2

    if-nez v0, :cond_0

    cmpl-float v0, p1, p3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    div-float/2addr p2, p0

    div-float/2addr p3, p1

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method
