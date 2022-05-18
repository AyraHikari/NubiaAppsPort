.class public Lcom/android/gallery3d/filtershow/filters/u0;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilter;
.source ""


# instance fields
.field private a:Lcom/android/gallery3d/filtershow/filters/n;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:F

.field private g:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/u0;->a:Lcom/android/gallery3d/filtershow/filters/n;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/u0;->b:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/u0;->c:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/u0;->d:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/u0;->e:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/u0;->f:F

    return-void
.end method

.method private d(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/u0;->h()Lcom/android/gallery3d/filtershow/filters/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/n;->m0()Ljava/util/List;

    move-result-object v2

    const-string v3, "ImageFilterDraw"

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_0

    goto/16 :goto_4

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    :goto_0
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ImageFilterDraw apply size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "drawd"

    invoke-static {v8, v7}, Lcom/android/gallery3d/filtershow/c/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, p1, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/gallery3d/filtershow/mosaic/a;

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    const/4 v9, 0x0

    invoke-virtual {v4, p2, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v5}, Landroid/graphics/Paint;->reset()V

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v8, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object v8, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    new-instance v8, Landroid/graphics/CornerPathEffect;

    const/high16 v9, 0x41200000    # 10.0f

    invoke-direct {v8, v9}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v9, v9, v9}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    iget v10, p0, Lcom/android/gallery3d/filtershow/filters/u0;->f:F

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v11

    const-string v12, "final"

    if-nez v10, :cond_2

    goto :goto_2

    :cond_2
    const-string v10, "getOriginalDrawPaths"

    invoke-static {v12, v10}, Lcom/android/gallery3d/filtershow/c/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-virtual {v7}, Lcom/android/gallery3d/filtershow/mosaic/a;->a()Ljava/util/List;

    move-result-object v10

    invoke-direct {p0, v8, v5, v10}, Lcom/android/gallery3d/filtershow/filters/u0;->e(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;)V

    iget v10, p0, Lcom/android/gallery3d/filtershow/filters/u0;->f:F

    cmpl-float v10, v10, v11

    if-nez v10, :cond_3

    goto :goto_3

    :cond_3
    const-string v10, "getOriginalErasePaths"

    invoke-static {v12, v10}, Lcom/android/gallery3d/filtershow/c/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    invoke-virtual {v7}, Lcom/android/gallery3d/filtershow/mosaic/a;->b()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-direct {p0, v8, v5, v7}, Lcom/android/gallery3d/filtershow/filters/u0;->f(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;)V

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v7, p1, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePathDraw "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/gallery3d/filtershow/c/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_5
    :goto_4
    const-string p2, "imagefilterDraw updatePathDraw error.. mosaicCovers.size < 0"

    invoke-static {v3, p2}, Lcom/android/gallery3d/filtershow/c/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private e(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Ljava/util/List<",
            "Lcom/android/gallery3d/filtershow/mosaic/b;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/u0;->a:Lcom/android/gallery3d/filtershow/filters/n;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/n;->q0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "matrix"

    const-string v2, "ImageFilterDraw drawDrawPath canvas.rotate(mPathRotation);"

    invoke-static {v1, v2}, Lcom/android/gallery3d/filtershow/c/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/u0;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    :cond_0
    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/u0;->f:F

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageFilterDraw drawDrawPath size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawd"

    invoke-static {v2, v1}, Lcom/android/gallery3d/filtershow/c/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/mosaic/b;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/mosaic/b;->e()I

    move-result v2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/mosaic/b;->f()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/mosaic/b;->a()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/mosaic/b;->b()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private f(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Ljava/util/List<",
            "Lcom/android/gallery3d/filtershow/mosaic/f;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/u0;->a:Lcom/android/gallery3d/filtershow/filters/n;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/n;->q0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "matrix"

    const-string v2, "ImageFilterDraw drawDrawPath canvas.rotate(mPathRotation);"

    invoke-static {v1, v2}, Lcom/android/gallery3d/filtershow/c/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/u0;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    :cond_0
    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/u0;->f:F

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/mosaic/f;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/mosaic/f;->d()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/mosaic/f;->a()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private g(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scale "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/u0;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "final"

    invoke-static {v1, v0}, Lcom/android/gallery3d/filtershow/c/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/gallery3d/filtershow/filters/u0;->d(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    return-object p1
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 5

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/u0;->h()Lcom/android/gallery3d/filtershow/filters/n;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "filter apply "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/u0;->a:Lcom/android/gallery3d/filtershow/filters/n;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "abcc"

    invoke-static {v1, v0}, Lcom/android/gallery3d/filtershow/c/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/u0;->h()Lcom/android/gallery3d/filtershow/filters/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/n;->o0()Z

    move-result v0

    const-string v1, "test"

    if-eqz v0, :cond_1

    const-string v0, "=====================================return ================================="

    invoke-static {v1, v0}, Lcom/android/gallery3d/filtershow/c/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=====================================scaleFactor = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " quality = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/gallery3d/filtershow/c/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->K()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v0

    instance-of v2, v0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->s()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/imageshow/h;->C(Ljava/util/Collection;)Lcom/android/gallery3d/filtershow/imageshow/h$b;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImageFilterDraw apply  holder : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/h$b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "matrix"

    invoke-static {v3, v2}, Lcom/android/gallery3d/filtershow/c/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/x;->t()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/x;->g0()V

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v3, v2, v0}, Lcom/android/gallery3d/filtershow/imageshow/h;->l(IILcom/android/gallery3d/filtershow/imageshow/h$b;)Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/u0;->g:Landroid/graphics/Matrix;

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/u0;->b:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/u0;->c:I

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->u()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->j0()V

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->u()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/filtershow/filters/u0;->d:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/u0;->e:I

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imagefilterDraw apply bitmap w = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/gallery3d/filtershow/filters/u0;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  h = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/gallery3d/filtershow/filters/u0;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  mosaicBitmap = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/gallery3d/filtershow/filters/u0;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  mosaicHeight = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/gallery3d/filtershow/filters/u0;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/gallery3d/filtershow/c/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " imagefilterDraw apply  scaleFactor %%%%%%%%%%%%%%=============== "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/android/gallery3d/filtershow/c/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x2

    if-ne p3, p2, :cond_7

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/u0;->d:I

    if-eqz v0, :cond_7

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/u0;->e:I

    if-eqz v1, :cond_7

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/u0;->b:I

    if-ne v3, v0, :cond_6

    iget v4, p0, Lcom/android/gallery3d/filtershow/filters/u0;->c:I

    if-eq v4, v1, :cond_7

    :cond_6
    int-to-float v1, v3

    int-to-float v0, v0

    div-float/2addr v1, v0

    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/u0;->f:F

    const-string v0, "lyg"

    invoke-static {v0, v2}, Lcom/android/gallery3d/filtershow/c/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getActivity()Lcom/android/gallery3d/filtershow/FilterShowActivity;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getActivity()Lcom/android/gallery3d/filtershow/FilterShowActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->V0()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getActivity()Lcom/android/gallery3d/filtershow/FilterShowActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->D0()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_8

    return-object p1

    :cond_8
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    if-ne p3, p2, :cond_9

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "final "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "final"

    invoke-static {p3, p2}, Lcom/android/gallery3d/filtershow/c/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/filters/u0;->g(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-object p2, p1

    goto :goto_0

    :cond_9
    invoke-direct {p0, p1, v3}, Lcom/android/gallery3d/filtershow/filters/u0;->d(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    :goto_0
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-object p1
.end method

.method public h()Lcom/android/gallery3d/filtershow/filters/n;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/u0;->a:Lcom/android/gallery3d/filtershow/filters/n;

    return-object v0
.end method

.method public useRepresentation(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 0

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/n;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/u0;->a:Lcom/android/gallery3d/filtershow/filters/n;

    return-void
.end method
