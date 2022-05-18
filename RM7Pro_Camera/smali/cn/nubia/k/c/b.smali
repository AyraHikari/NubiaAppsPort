.class public Lcn/nubia/k/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/graphics/Bitmap;I)Lcn/nubia/k/c/a;
    .locals 6

    const-string v0, "CompressUtils"

    if-eqz p0, :cond_1

    .line 63
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 68
    :cond_0
    new-instance v1, Lcn/nubia/k/c/a;

    invoke-direct {v1}, Lcn/nubia/k/c/a;-><init>()V

    .line 70
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 71
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 72
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v5, p1, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p0

    iput-boolean p0, v1, Lcn/nubia/k/c/a;->a:Z

    .line 73
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    iput-object p0, v1, Lcn/nubia/k/c/a;->b:[B

    .line 74
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 75
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "bitmap2jpeg compress time:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 77
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const-string p0, "compress bitmap to jpg fail!"

    .line 78
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 79
    iput-boolean p0, v1, Lcn/nubia/k/c/a;->a:Z

    :goto_0
    return-object v1

    .line 64
    :cond_1
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a([BIII)Lcn/nubia/k/c/a;
    .locals 9

    const-string v0, "CompressUtils"

    if-eqz p0, :cond_1

    .line 30
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    .line 33
    :cond_0
    new-instance v1, Lcn/nubia/k/c/a;

    invoke-direct {v1}, Lcn/nubia/k/c/a;-><init>()V

    .line 34
    new-instance v8, Landroid/graphics/YuvImage;

    const/16 v4, 0x11

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v2 .. v7}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    const/4 p0, 0x0

    .line 42
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 43
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 44
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, p0, p0, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v8, v5, p3, v4}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    move-result p1

    iput-boolean p1, v1, Lcn/nubia/k/c/a;->a:Z

    .line 45
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, v1, Lcn/nubia/k/c/a;->b:[B

    .line 46
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "yuv2jpeg compress time:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, v2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 49
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const-string p1, "compress yuv to jpg fail!"

    .line 50
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iput-boolean p0, v1, Lcn/nubia/k/c/a;->a:Z

    :goto_0
    return-object v1

    :cond_1
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method
