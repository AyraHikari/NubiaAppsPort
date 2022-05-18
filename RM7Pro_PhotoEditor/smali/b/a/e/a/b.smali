.class public Lb/a/e/a/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Landroid/view/Surface;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/view/Surface;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/e/a/b;->a:Landroid/view/Surface;

    iput p2, p0, Lb/a/e/a/b;->b:I

    iput p3, p0, Lb/a/e/a/b;->c:I

    return-void
.end method

.method private a(I)I
    .locals 1

    div-int/lit8 p1, p1, 0x5a

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method


# virtual methods
.method public b(Landroid/graphics/Bitmap;I)V
    .locals 12

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lb/a/e/a/b;->a:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    const/high16 v2, -0x1000000

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-float v9, v1

    int-to-float v10, v8

    move-object v2, v0

    move v5, v9

    move v6, v10

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    rem-int/lit16 v4, p2, 0xb4

    if-eqz v4, :cond_0

    move v11, v3

    move v3, v2

    move v2, v11

    :cond_0
    int-to-float v2, v2

    div-float v4, v9, v2

    int-to-float v3, v3

    div-float v5, v10, v3

    div-float/2addr v9, v10

    div-float v6, v2, v3

    cmpl-float v6, v6, v9

    if-lez v6, :cond_1

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v6, p2

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preRotate(F)Z

    invoke-virtual {v5, v4, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    add-int/lit8 v4, p2, 0x5a

    rem-int/lit16 v4, v4, 0x168

    invoke-direct {p0, v4}, Lb/a/e/a/b;->a(I)I

    move-result v4

    invoke-direct {p0, p2}, Lb/a/e/a/b;->a(I)I

    move-result p2

    mul-int/2addr v4, v2

    add-int/2addr v1, v4

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    mul-int/2addr p2, v3

    add-int/2addr v8, p2

    shr-int/lit8 p2, v8, 0x1

    int-to-float p2, p2

    invoke-virtual {v5, v1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    new-instance p2, Landroid/graphics/Paint;

    const/4 v1, 0x6

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v0, p1, v5, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    if-eqz v0, :cond_3

    :try_start_1
    iget-object p1, p0, Lb/a/e/a/b;->a:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception p2

    :try_start_2
    invoke-virtual {p2}, Landroid/view/Surface$OutOfResourcesException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    if-eqz v0, :cond_3

    :try_start_3
    iget-object p1, p0, Lb/a/e/a/b;->a:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_1
    move-exception p2

    :try_start_4
    invoke-virtual {p2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    if-eqz v0, :cond_3

    :try_start_5
    iget-object p1, p0, Lb/a/e/a/b;->a:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_3
    :goto_1
    return-void

    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    if-eqz v0, :cond_4

    :try_start_6
    iget-object p1, p0, Lb/a/e/a/b;->a:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_4
    :goto_3
    throw p2
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lb/a/e/a/b;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lb/a/e/a/b;->b:I

    return v0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lb/a/e/a/b;->a:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/e/a/b;->a:Landroid/view/Surface;

    return-void
.end method
