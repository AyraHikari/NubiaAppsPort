.class public Lcom/GifEncoder/h;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Ljava/io/Closeable;)V
    .locals 2

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "Util"

    const-string v1, "fail to close"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private static b(F)I
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

.method public static c(Lcom/GifEncoder/c;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/GifEncoder/c;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v3, v0, p0, v1}, Lcom/GifEncoder/h;->d(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;Lcom/GifEncoder/c;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v2}, Lcom/GifEncoder/h;->a(Ljava/io/Closeable;)V

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    move-object v2, v0

    :goto_0
    :try_start_2
    const-string v1, "Util"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v2}, Lcom/GifEncoder/h;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_1
    move-exception p0

    move-object v0, v2

    :goto_1
    invoke-static {v0}, Lcom/GifEncoder/h;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method private static d(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;Lcom/GifEncoder/c;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    :cond_0
    const/4 p3, 0x1

    iput-boolean p3, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 p3, 0x0

    invoke-static {p0, p3, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Lcom/GifEncoder/c;->e()Lcom/GifEncoder/e$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/GifEncoder/e$b;->b()I

    move-result v0

    invoke-virtual {p2}, Lcom/GifEncoder/c;->e()Lcom/GifEncoder/e$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/GifEncoder/e$b;->a()I

    move-result v1

    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    int-to-float v0, v3

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0}, Lcom/GifEncoder/h;->b(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, p3, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_1

    return-object p3

    :cond_1
    invoke-static {p0, p2}, Lcom/GifEncoder/h;->j(Landroid/graphics/Bitmap;Lcom/GifEncoder/c;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static e(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 7

    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 p0, 0x1

    new-array v4, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    aput-object p1, v4, p0

    const/4 v2, 0x0

    const-string v3, "_data= ?"

    const/4 v5, 0x0

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "_id"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    :try_start_0
    const-string v2, ".dng"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ".DNG"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {p0, p1}, Lcom/GifEncoder/h;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {p0, v0}, Lcom/android/gallery3d/filtershow/e/b;->d(Landroid/content/Context;Landroid/net/Uri;)I

    move-result p0

    goto :goto_0

    :cond_2
    new-instance p0, Landroid/media/ExifInterface;

    invoke-direct {p0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p1, "Orientation"

    invoke-virtual {p0, p1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move p0, v1

    :goto_0
    const/4 p1, 0x0

    if-eq p0, v1, :cond_6

    const/4 v0, 0x3

    if-eq p0, v0, :cond_5

    const/4 v0, 0x6

    if-eq p0, v0, :cond_4

    const/16 v0, 0x8

    if-eq p0, v0, :cond_3

    goto :goto_1

    :cond_3
    const/16 p1, 0x10e

    goto :goto_1

    :cond_4
    const/16 p1, 0x5a

    goto :goto_1

    :cond_5
    const/16 p1, 0xb4

    :cond_6
    :goto_1
    return p1
.end method

.method public static g(Ljava/lang/String;)I
    .locals 2

    const/4 v0, -0x1

    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p0, "Orientation"

    invoke-virtual {v1, p0, v0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    move p0, v0

    :goto_0
    const/4 v1, 0x0

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x10e

    goto :goto_1

    :cond_1
    const/16 v1, 0x5a

    goto :goto_1

    :cond_2
    const/16 v1, 0xb4

    :cond_3
    :goto_1
    return v1
.end method

.method public static h(Ljava/lang/String;)I
    .locals 8

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-static {p0, v2, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget p0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v2, 0x12

    const/16 v4, 0xe

    const/16 v5, 0x10

    const/16 v6, 0xc

    const/16 v7, 0xa

    if-lt v0, p0, :cond_3

    mul-int/2addr v0, v7

    div-int/2addr v0, p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-le v0, v6, :cond_0

    if-ge v0, v4, :cond_0

    invoke-static {v3}, Lcom/GifEncoder/h;->a(Ljava/io/Closeable;)V

    return v1

    :cond_0
    const/4 p0, 0x2

    if-le v0, v5, :cond_1

    if-ge v0, v2, :cond_1

    invoke-static {v3}, Lcom/GifEncoder/h;->a(Ljava/io/Closeable;)V

    return p0

    :cond_1
    if-ne v0, v7, :cond_2

    const/4 p0, 0x3

    invoke-static {v3}, Lcom/GifEncoder/h;->a(Ljava/io/Closeable;)V

    return p0

    :cond_2
    invoke-static {v3}, Lcom/GifEncoder/h;->a(Ljava/io/Closeable;)V

    return p0

    :cond_3
    mul-int/2addr p0, v7

    :try_start_2
    div-int/2addr p0, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-le p0, v6, :cond_4

    if-ge p0, v4, :cond_4

    const/4 p0, 0x4

    invoke-static {v3}, Lcom/GifEncoder/h;->a(Ljava/io/Closeable;)V

    return p0

    :cond_4
    const/4 v0, 0x5

    if-le p0, v5, :cond_5

    if-ge p0, v2, :cond_5

    invoke-static {v3}, Lcom/GifEncoder/h;->a(Ljava/io/Closeable;)V

    return v0

    :cond_5
    invoke-static {v3}, Lcom/GifEncoder/h;->a(Ljava/io/Closeable;)V

    return v0

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v2, v3

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    :goto_0
    :try_start_3
    const-string v0, "Util"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 p0, 0x0

    invoke-static {v2}, Lcom/GifEncoder/h;->a(Ljava/io/Closeable;)V

    return p0

    :goto_1
    invoke-static {v2}, Lcom/GifEncoder/h;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method private static i(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    float-to-double v0, p1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v5

    if-nez v0, :cond_0

    const p1, 0x3f666666    # 0.9f

    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, p1, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    int-to-float p1, p2

    div-int/lit8 p2, v3, 0x2

    int-to-float p2, p2

    div-int/lit8 v0, v4, 0x2

    int-to-float v0, v0

    invoke-virtual {v5, p1, p2, v0}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-object p1
.end method

.method private static j(Landroid/graphics/Bitmap;Lcom/GifEncoder/c;)Landroid/graphics/Bitmap;
    .locals 6

    invoke-virtual {p1}, Lcom/GifEncoder/c;->e()Lcom/GifEncoder/e$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/GifEncoder/e$b;->b()I

    move-result v0

    invoke-virtual {p1}, Lcom/GifEncoder/c;->e()Lcom/GifEncoder/e$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/GifEncoder/e$b;->a()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Lcom/GifEncoder/c;->c()I

    move-result v4

    rem-int/lit16 v4, v4, 0xb4

    if-eqz v4, :cond_0

    move v5, v3

    move v3, v2

    move v2, v5

    :cond_0
    int-to-float v4, v0

    int-to-float v2, v2

    div-float/2addr v4, v2

    int-to-float v2, v1

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {p1}, Lcom/GifEncoder/c;->c()I

    move-result p1

    invoke-static {p0, v2, p1}, Lcom/GifEncoder/h;->i(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object p0

    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object p1
.end method
