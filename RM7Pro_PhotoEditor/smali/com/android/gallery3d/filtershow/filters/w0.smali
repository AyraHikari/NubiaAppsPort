.class public Lcom/android/gallery3d/filtershow/filters/w0;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilter;
.source ""


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:F

.field private f:F

.field private g:Landroid/graphics/Matrix;

.field private h:Lcom/android/gallery3d/filtershow/filters/t;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/w0;->a:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/w0;->b:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/w0;->c:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/w0;->d:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/w0;->e:F

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/w0;->f:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/w0;->h:Lcom/android/gallery3d/filtershow/filters/t;

    return-void
.end method

.method private d(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/w0;->g()Lcom/android/gallery3d/filtershow/filters/t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/t;->n0()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    if-eqz p2, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0

    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    :goto_0
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/filtershow/mosaic/c;

    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    const/4 v10, 0x0

    invoke-virtual {v6, v5, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    sget-object v12, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v12, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v12}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object v12, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v12}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    new-instance v12, Landroid/graphics/CornerPathEffect;

    const/high16 v13, 0x41200000    # 10.0f

    invoke-direct {v12, v13}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v3, v12}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v8}, Lcom/android/gallery3d/filtershow/mosaic/c;->e()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v8}, Lcom/android/gallery3d/filtershow/mosaic/c;->d()Ljava/util/List;

    move-result-object v14

    invoke-direct {v0, v12, v3, v13}, Lcom/android/gallery3d/filtershow/filters/w0;->e(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;)V

    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v15, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v15, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v15}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-direct {v0, v12, v3, v14}, Lcom/android/gallery3d/filtershow/filters/w0;->e(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;)V

    invoke-virtual {v12, v11}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v12, v13, v13, v13, v13}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    invoke-virtual {v8, v1}, Lcom/android/gallery3d/filtershow/mosaic/c;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v12, v4, v8, v8, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v3}, Landroid/graphics/Paint;->reset()V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v13, Landroid/graphics/PorterDuffXfermode;

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v13, v14}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v13}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v12, v9, v8, v8, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v8, v11, v10, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_1

    :cond_3
    :goto_2
    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/mosaic/c;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/mosaic/c;->a()V

    goto :goto_3

    :cond_5
    return-object v5

    :cond_6
    :goto_4
    return-object v1
.end method

.method private e(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;)V
    .locals 2
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

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/w0;->h:Lcom/android/gallery3d/filtershow/filters/t;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/t;->p0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/w0;->g:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/mosaic/f;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/mosaic/f;->d()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/mosaic/f;->a()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private f(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/w0;->e:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/gallery3d/filtershow/filters/w0;->f:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/filters/w0;->d(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v2, v2, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    return-object p1
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/w0;->g()Lcom/android/gallery3d/filtershow/filters/t;

    move-result-object p2

    if-eqz p2, :cond_9

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 p2, 0x0

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->K()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/imageshow/x;->K()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->s()Ljava/util/Collection;

    move-result-object p2

    invoke-static {p2}, Lcom/android/gallery3d/filtershow/imageshow/h;->C(Ljava/util/Collection;)Lcom/android/gallery3d/filtershow/imageshow/h$b;

    move-result-object p2

    :cond_1
    if-eqz p2, :cond_3

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->t()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->g0()V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {v1, v0, p2}, Lcom/android/gallery3d/filtershow/imageshow/h;->l(IILcom/android/gallery3d/filtershow/imageshow/h$b;)Landroid/graphics/Matrix;

    move-result-object p2

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/filters/w0;->g:Landroid/graphics/Matrix;

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    iput p2, p0, Lcom/android/gallery3d/filtershow/filters/w0;->a:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    iput p2, p0, Lcom/android/gallery3d/filtershow/filters/w0;->b:I

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/imageshow/x;->u()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/w0;->c:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    iput p2, p0, Lcom/android/gallery3d/filtershow/filters/w0;->d:I

    :cond_4
    const/4 p2, 0x2

    if-ne p3, p2, :cond_6

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/w0;->c:I

    if-eqz v0, :cond_6

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/w0;->d:I

    if-eqz v1, :cond_6

    iget v2, p0, Lcom/android/gallery3d/filtershow/filters/w0;->a:I

    if-ne v2, v0, :cond_5

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/w0;->b:I

    if-eq v3, v1, :cond_6

    :cond_5
    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    iput v2, p0, Lcom/android/gallery3d/filtershow/filters/w0;->e:F

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/w0;->b:I

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/w0;->f:F

    :cond_6
    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getActivity()Lcom/android/gallery3d/filtershow/FilterShowActivity;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getActivity()Lcom/android/gallery3d/filtershow/FilterShowActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->V0()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getActivity()Lcom/android/gallery3d/filtershow/FilterShowActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->D0()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_7

    return-object p1

    :cond_7
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    if-ne p3, p2, :cond_8

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/filters/w0;->f(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-object p2, p1

    goto :goto_0

    :cond_8
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/filters/w0;->d(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    :goto_0
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, p2, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_9
    :goto_1
    return-object p1
.end method

.method public g()Lcom/android/gallery3d/filtershow/filters/t;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/w0;->h:Lcom/android/gallery3d/filtershow/filters/t;

    return-object v0
.end method

.method public useRepresentation(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 0

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/t;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/w0;->h:Lcom/android/gallery3d/filtershow/filters/t;

    return-void
.end method
