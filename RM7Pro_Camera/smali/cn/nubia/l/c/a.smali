.class public Lcn/nubia/l/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 35
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    .line 36
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    .line 37
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    .line 36
    invoke-virtual {v5, p1, v0, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 41
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    .line 40
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    const-string v0, "BitmapUtils"

    const-string v1, "Failed to rotate thumbnail"

    .line 45
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-object p0
.end method

.method public static a([BIII)Landroid/graphics/Bitmap;
    .locals 4

    if-eqz p0, :cond_3

    .line 52
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    :try_start_0
    new-instance v0, Lcn/nubia/algorithm/utils/a;

    invoke-direct {v0, p0}, Lcn/nubia/algorithm/utils/a;-><init>([B)V

    .line 59
    rem-int/lit16 p0, p3, 0x168

    if-eqz p0, :cond_2

    rem-int/lit8 p0, p3, 0x5a

    if-nez p0, :cond_2

    .line 60
    new-instance p0, Lcn/nubia/algorithm/utils/a;

    mul-int v1, p1, p2

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v1}, Lcn/nubia/algorithm/utils/a;-><init>(I)V

    .line 61
    rem-int/lit16 v1, p3, 0xb4

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_1

    move v3, p2

    move p2, p1

    move p1, v3

    .line 66
    :cond_1
    rem-int/lit16 p3, p3, 0x168

    rsub-int p3, p3, 0x168

    rem-int/lit16 p3, p3, 0x168

    invoke-static {v0, p0, p1, p2, p3}, Lcn/nubia/algorithm/utils/YUVAlgorithm;->a(Lcn/nubia/algorithm/utils/a;Lcn/nubia/algorithm/utils/a;III)V

    .line 67
    invoke-virtual {v0}, Lcn/nubia/algorithm/utils/a;->a()V

    move-object v0, p0

    .line 71
    :cond_2
    invoke-static {v0, p1, p2}, Lcn/nubia/algorithm/utils/YUVAlgorithm;->a(Lcn/nubia/algorithm/utils/a;II)Lcn/nubia/algorithm/utils/a;

    move-result-object p0

    .line 72
    invoke-virtual {v0}, Lcn/nubia/algorithm/utils/a;->a()V

    .line 74
    invoke-virtual {p0}, Lcn/nubia/algorithm/utils/a;->c()[I

    move-result-object p3

    .line 75
    invoke-virtual {p0}, Lcn/nubia/algorithm/utils/a;->a()V

    .line 76
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p1, p2, p0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 78
    invoke-static {}, Lcn/nubia/l/c/a;->a()V

    .line 79
    throw p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a()V
    .locals 4

    const-string v0, "BitmapUtils"

    :try_start_0
    const-string v1, "dump hprof E"

    .line 109
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "/sdcard/nubialog/"

    .line 111
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 113
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 115
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "camera_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".hprof"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V

    const-string v1, "dump hprof X"

    .line 116
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dump hprof fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8

    if-eqz p0, :cond_3

    .line 85
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 89
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float p1, p1

    .line 91
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v0, p1, v0

    .line 92
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    return-object p0

    .line 96
    :cond_1
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 97
    invoke-virtual {v6, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    .line 99
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p1, p0, :cond_2

    .line 101
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    return-object p1

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
