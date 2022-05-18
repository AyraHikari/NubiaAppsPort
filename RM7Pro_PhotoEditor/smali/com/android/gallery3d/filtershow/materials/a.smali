.class public Lcom/android/gallery3d/filtershow/materials/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private static a(F)I
    .locals 1

    float-to-int p0, p0

    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x8

    if-gt p0, v0, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    goto :goto_0

    :cond_1
    div-int/2addr p0, v0

    mul-int/2addr p0, v0

    :goto_0
    return p0
.end method

.method private static b(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;
    .locals 3

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    :cond_0
    const/4 p2, 0x1

    iput-boolean p2, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 p2, 0x0

    invoke-static {p0, p2, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v0, v0

    int-to-float v2, p3

    div-float/2addr v0, v2

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/materials/a;->a(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, p2, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_1

    return-object p2

    :cond_1
    invoke-static {p0, p3, v0}, Lcom/android/gallery3d/filtershow/materials/a;->e(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-static {p0, v0, p1, p2}, Lcom/android/gallery3d/filtershow/materials/a;->b(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object p0

    :catch_1
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    move-object v1, v0

    :goto_1
    :try_start_3
    const-string p1, "BitmapUtil"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_2
    return-object v0

    :catchall_1
    move-exception p0

    move-object v0, v1

    :goto_3
    if-eqz v0, :cond_1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_4
    throw p0
.end method

.method private static d(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_0
    return-object p0
.end method

.method public static e(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v0, p1, :cond_0

    if-ne v1, p1, :cond_0

    return-object p0

    :cond_0
    int-to-float v2, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v2, v0

    invoke-static {p0}, Lcom/android/gallery3d/filtershow/materials/a;->d(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {p1, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sub-int v1, p1, v1

    int-to-float v1, v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    sub-int/2addr p1, v3

    int-to-float p1, p1

    div-float/2addr p1, v5

    invoke-virtual {v4, v1, p1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v4, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v1, 0x6

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v4, p0, v1, v1, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-object v0
.end method

.method public static f(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 8

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v6, p1, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
