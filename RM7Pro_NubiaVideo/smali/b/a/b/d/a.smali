.class public Lb/a/b/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/graphics/Bitmap;)[B
    .locals 1

    const/16 v0, 0x5a

    .line 1
    invoke-static {p0, v0}, Lb/a/b/d/a;->b(Landroid/graphics/Bitmap;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/graphics/Bitmap;I)[B
    .locals 2

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/high16 v1, 0x10000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v1, p1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_0
    return-object p0
.end method

.method public static d(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 9

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 3
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 5
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 6
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 7
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 8
    new-instance v4, Landroid/graphics/RectF;

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 9
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v5, v6, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v4, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v5, 0x1

    .line 10
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 11
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const/high16 v5, -0x1000000

    .line 12
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    invoke-virtual {v1, v4, p1, p1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 14
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 15
    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 16
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {p1, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 17
    invoke-virtual {v1, p0, p1, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object p0
.end method

.method public static e(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v0, p1, :cond_0

    if-ne v1, p2, :cond_0

    return-object p0

    :cond_0
    int-to-float v2, p1

    int-to-float v0, v0

    div-float/2addr v2, v0

    int-to-float v0, p2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 3
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 4
    invoke-static {p0}, Lb/a/b/d/a;->c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 7
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sub-int/2addr p1, v2

    int-to-float p1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p1, v2

    sub-int/2addr p2, v3

    int-to-float p2, p2

    div-float/2addr p2, v2

    .line 8
    invoke-virtual {v4, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9
    invoke-virtual {v4, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 10
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x6

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    const/4 p2, 0x0

    .line 11
    invoke-virtual {v4, p0, p2, p2, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz p3, :cond_1

    .line 12
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-object v1
.end method
