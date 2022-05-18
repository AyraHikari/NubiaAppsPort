.class public Lcn/nubia/camera/k/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/s;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Ljava/lang/Object;

.field private c:Lcn/nubia/camera/k/ah;

.field private d:Z


# direct methods
.method public constructor <init>(Lcn/nubia/camera/k/ah;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/k/ag;->b:Ljava/lang/Object;

    const-string v0, "SoftwareCompressComponent"

    .line 42
    invoke-static {v0}, Lcn/nubia/b/j;->a(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/k/ag;->a:Landroid/os/Handler;

    .line 43
    iput-object p1, p0, Lcn/nubia/camera/k/ag;->c:Lcn/nubia/camera/k/ah;

    return-void
.end method

.method private a(III)Landroid/util/Size;
    .locals 1

    if-eqz p3, :cond_3

    const/16 v0, 0xb4

    if-ne p3, v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x5a

    if-eq p3, v0, :cond_2

    const/16 v0, 0x10e

    if-ne p3, v0, :cond_1

    goto :goto_0

    .line 229
    :cond_1
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "Orientation not supported."

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 227
    :cond_2
    :goto_0
    new-instance p3, Landroid/util/Size;

    invoke-direct {p3, p2, p1}, Landroid/util/Size;-><init>(II)V

    return-object p3

    .line 225
    :cond_3
    :goto_1
    new-instance p3, Landroid/util/Size;

    invoke-direct {p3, p1, p2}, Landroid/util/Size;-><init>(II)V

    return-object p3
.end method

.method private a(Lcn/nubia/b/a/f;)Lcn/nubia/algorithm/utils/a;
    .locals 14

    .line 160
    invoke-interface {p1}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/b/a/f$a;

    .line 161
    invoke-interface {p1}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/b/a/f$a;

    .line 162
    invoke-interface {p1}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/b/a/f$a;

    .line 163
    invoke-interface {v0}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {v0}, Lcn/nubia/b/a/f$a;->b()I

    move-result v4

    invoke-interface {v0}, Lcn/nubia/b/a/f$a;->a()I

    move-result v5

    .line 164
    invoke-interface {v1}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-interface {v1}, Lcn/nubia/b/a/f$a;->b()I

    move-result v7

    invoke-interface {v1}, Lcn/nubia/b/a/f$a;->a()I

    move-result v8

    .line 165
    invoke-interface {v2}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-interface {v2}, Lcn/nubia/b/a/f$a;->b()I

    move-result v10

    invoke-interface {v2}, Lcn/nubia/b/a/f$a;->a()I

    move-result v11

    invoke-interface {p1}, Lcn/nubia/b/a/f;->f()I

    move-result v12

    invoke-interface {p1}, Lcn/nubia/b/a/f;->c()I

    move-result v13

    .line 163
    invoke-static/range {v3 .. v13}, Lcn/nubia/algorithm/utils/YUVAlgorithm;->a(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIII)Lcn/nubia/algorithm/utils/a;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcn/nubia/b/a/f;Landroid/hardware/camera2/TotalCaptureResult;Lcn/nubia/camera/k/d;IZZI)V
    .locals 13

    move-object v10, p0

    .line 68
    iget-object v11, v10, Lcn/nubia/camera/k/ag;->b:Ljava/lang/Object;

    monitor-enter v11

    .line 69
    :try_start_0
    iget-boolean v0, v10, Lcn/nubia/camera/k/ag;->d:Z

    if-nez v0, :cond_0

    .line 70
    iget-object v0, v10, Lcn/nubia/camera/k/ag;->a:Landroid/os/Handler;

    new-instance v12, Lcn/nubia/camera/k/ag$1;

    move-object v1, v12

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p3

    move-object v5, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcn/nubia/camera/k/ag$1;-><init>(Lcn/nubia/camera/k/ag;Lcn/nubia/b/a/f;Lcn/nubia/camera/k/d;Landroid/hardware/camera2/TotalCaptureResult;IZZI)V

    invoke-virtual {v0, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 79
    :cond_0
    invoke-interface {p1}, Lcn/nubia/b/a/f;->close()V

    .line 81
    :goto_0
    monitor-exit v11

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Lcn/nubia/b/a/f;Lcn/nubia/camera/k/d;Landroid/hardware/camera2/TotalCaptureResult;IZZI)V
    .locals 7

    const-string v0, "SoftwareCompressComponent"

    const-string v1, "run compress X"

    .line 86
    invoke-static {v0, v1}, Lcn/nubia/camera/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-boolean v1, p0, Lcn/nubia/camera/k/ag;->d:Z

    if-nez v1, :cond_1

    const-string v1, "notify onPictureTaken"

    .line 88
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p5, :cond_0

    move p5, p4

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    .line 90
    :goto_0
    invoke-direct {p0, p1, p5, p6, p7}, Lcn/nubia/camera/k/ag;->a(Lcn/nubia/b/a/f;IZI)[B

    move-result-object p6

    .line 92
    invoke-interface {p1}, Lcn/nubia/b/a/f;->f()I

    move-result p7

    invoke-interface {p1}, Lcn/nubia/b/a/f;->c()I

    move-result v0

    invoke-direct {p0, p7, v0, p5}, Lcn/nubia/camera/k/ag;->a(III)Landroid/util/Size;

    move-result-object p7

    .line 93
    new-instance v6, Lcn/nubia/camera/k/e;

    sub-int/2addr p4, p5

    add-int/lit16 p4, p4, 0x168

    rem-int/lit16 p4, p4, 0x168

    .line 94
    invoke-direct {p0, p6, p3, p7, p4}, Lcn/nubia/camera/k/ag;->a([BLandroid/hardware/camera2/CaptureResult;Landroid/util/Size;I)[B

    move-result-object v1

    .line 95
    invoke-interface {p1}, Lcn/nubia/b/a/f;->f()I

    move-result v2

    invoke-interface {p1}, Lcn/nubia/b/a/f;->c()I

    move-result v3

    invoke-interface {p1}, Lcn/nubia/b/a/f;->e()J

    move-result-wide v4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcn/nubia/camera/k/e;-><init>([BIIJ)V

    const/4 p3, 0x0

    .line 93
    invoke-interface {p2, v6, p3}, Lcn/nubia/camera/k/d;->a(Ljava/lang/Object;Lcn/nubia/b/d;)V

    .line 98
    :cond_1
    invoke-interface {p1}, Lcn/nubia/b/a/f;->close()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/k/ag;Lcn/nubia/b/a/f;Lcn/nubia/camera/k/d;Landroid/hardware/camera2/TotalCaptureResult;IZZI)V
    .locals 0

    .line 34
    invoke-direct/range {p0 .. p7}, Lcn/nubia/camera/k/ag;->a(Lcn/nubia/b/a/f;Lcn/nubia/camera/k/d;Landroid/hardware/camera2/TotalCaptureResult;IZZI)V

    return-void
.end method

.method private a(Lcn/nubia/b/a/f;IZI)[B
    .locals 17

    move/from16 v0, p2

    .line 102
    invoke-direct/range {p0 .. p1}, Lcn/nubia/camera/k/ag;->a(Lcn/nubia/b/a/f;)Lcn/nubia/algorithm/utils/a;

    move-result-object v7

    .line 104
    invoke-interface/range {p1 .. p1}, Lcn/nubia/b/a/f;->f()I

    move-result v1

    .line 105
    invoke-interface/range {p1 .. p1}, Lcn/nubia/b/a/f;->c()I

    move-result v2

    const/16 v3, 0x10e

    const/16 v4, 0x5a

    if-eqz p3, :cond_2

    if-eq v0, v4, :cond_1

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    sget-object v5, Lcn/nubia/algorithm/utils/YUVAlgorithm$a;->c:Lcn/nubia/algorithm/utils/YUVAlgorithm$a;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v5, Lcn/nubia/algorithm/utils/YUVAlgorithm$a;->b:Lcn/nubia/algorithm/utils/YUVAlgorithm$a;

    .line 108
    :goto_1
    invoke-static {v7, v1, v2, v5}, Lcn/nubia/algorithm/utils/YUVAlgorithm;->a(Lcn/nubia/algorithm/utils/a;IILcn/nubia/algorithm/utils/YUVAlgorithm$a;)Z

    :cond_2
    if-eqz v0, :cond_5

    .line 111
    new-instance v5, Lcn/nubia/algorithm/utils/a;

    mul-int v6, v1, v2

    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v6, v6, 0x2

    invoke-direct {v5, v6}, Lcn/nubia/algorithm/utils/a;-><init>(I)V

    if-eq v0, v4, :cond_3

    if-ne v0, v3, :cond_4

    .line 113
    :cond_3
    invoke-interface/range {p1 .. p1}, Lcn/nubia/b/a/f;->c()I

    move-result v1

    .line 114
    invoke-interface/range {p1 .. p1}, Lcn/nubia/b/a/f;->f()I

    move-result v2

    :cond_4
    rsub-int v3, v0, 0x168

    .line 117
    invoke-static {v7, v5, v1, v2, v3}, Lcn/nubia/algorithm/utils/YUVAlgorithm;->a(Lcn/nubia/algorithm/utils/a;Lcn/nubia/algorithm/utils/a;III)V

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    move v14, v1

    move v15, v2

    move-object/from16 v16, v5

    if-eqz p4, :cond_7

    if-nez v0, :cond_6

    const/4 v5, 0x0

    .line 121
    invoke-static {}, Lcn/nubia/camera/ba/a;->E()Z

    move-result v6

    move-object v1, v7

    move v2, v14

    move v3, v15

    move/from16 v4, p4

    invoke-static/range {v1 .. v6}, Lcn/nubia/algorithm/camera/NubiaWaterMark;->a(Lcn/nubia/algorithm/utils/a;IIIIZ)V

    goto :goto_3

    :cond_6
    const/4 v12, 0x0

    .line 123
    invoke-static {}, Lcn/nubia/camera/ba/a;->E()Z

    move-result v13

    move-object/from16 v8, v16

    move v9, v14

    move v10, v15

    move/from16 v11, p4

    invoke-static/range {v8 .. v13}, Lcn/nubia/algorithm/camera/NubiaWaterMark;->a(Lcn/nubia/algorithm/utils/a;IIIIZ)V

    :cond_7
    :goto_3
    if-nez v0, :cond_8

    .line 127
    invoke-virtual {v7}, Lcn/nubia/algorithm/utils/a;->b()[B

    move-result-object v0

    goto :goto_4

    :cond_8
    invoke-virtual/range {v16 .. v16}, Lcn/nubia/algorithm/utils/a;->b()[B

    move-result-object v0

    :goto_4
    if-eqz v7, :cond_9

    .line 129
    invoke-virtual {v7}, Lcn/nubia/algorithm/utils/a;->a()V

    :cond_9
    if-eqz v16, :cond_a

    .line 132
    invoke-virtual/range {v16 .. v16}, Lcn/nubia/algorithm/utils/a;->a()V

    :cond_a
    const/16 v1, 0x64

    move-object/from16 v2, p0

    .line 135
    invoke-direct {v2, v0, v14, v15, v1}, Lcn/nubia/camera/k/ag;->a([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method private a([BIII)[B
    .locals 7

    .line 139
    new-instance v6, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    const/4 p1, 0x0

    .line 149
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 150
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v6, v1, p4, v0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 151
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 152
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 154
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object p1
.end method

.method private a([BLandroid/hardware/camera2/CaptureResult;Landroid/util/Size;I)[B
    .locals 4

    .line 194
    new-instance v0, Lcn/nubia/d/a;

    invoke-direct {v0}, Lcn/nubia/d/a;-><init>()V

    .line 196
    sget v1, Lcn/nubia/d/a;->am:I

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/d/a;->a(ILjava/lang/Object;)Lcn/nubia/d/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/d/a;->a(Lcn/nubia/d/h;)Lcn/nubia/d/h;

    .line 197
    sget v1, Lcn/nubia/d/a;->an:I

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/d/a;->a(ILjava/lang/Object;)Lcn/nubia/d/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/d/a;->a(Lcn/nubia/d/h;)Lcn/nubia/d/h;

    .line 200
    new-instance v1, Lcn/nubia/camera/k/i;

    invoke-direct {v1, v0}, Lcn/nubia/camera/k/i;-><init>(Lcn/nubia/d/a;)V

    new-instance v2, Lcn/nubia/camera/k/i$a;

    .line 201
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p3

    invoke-direct {v2, v3, p3, p4}, Lcn/nubia/camera/k/i$a;-><init>(III)V

    .line 200
    invoke-virtual {v1, v2, p2}, Lcn/nubia/camera/k/i;->a(Lcn/nubia/camera/k/i$a;Landroid/hardware/camera2/CaptureResult;)V

    .line 204
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 206
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcn/nubia/d/a;->a([BLjava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p3, "SoftwareCompressComponent"

    const-string p4, "Could not write EXIF"

    .line 208
    invoke-static {p3, p4, p1}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    :goto_0
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 238
    iget-object v0, p0, Lcn/nubia/camera/k/ag;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 239
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/camera/k/ag;->d:Z

    .line 240
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    iget-object v0, p0, Lcn/nubia/camera/k/ag;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 240
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public a(Lcn/nubia/b/a/f;Landroid/hardware/camera2/TotalCaptureResult;Lcn/nubia/camera/k/d;Lcn/nubia/camera/k/ad;Lcn/nubia/b/m;Landroid/os/Handler;)Z
    .locals 12

    .line 55
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    move-object v3, p2

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    .line 56
    invoke-virtual/range {v1 .. v11}, Lcn/nubia/camera/k/ag;->a(Lcn/nubia/b/a/f;Landroid/hardware/camera2/TotalCaptureResult;Lcn/nubia/camera/k/d;Lcn/nubia/camera/k/ad;Lcn/nubia/b/m;Landroid/os/Handler;ZIZI)Z

    move-result v0

    return v0
.end method

.method public a(Lcn/nubia/b/a/f;Landroid/hardware/camera2/TotalCaptureResult;Lcn/nubia/camera/k/d;Lcn/nubia/camera/k/ad;Lcn/nubia/b/m;Landroid/os/Handler;ZIZI)Z
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p8

    move/from16 v5, p9

    move v6, p7

    move/from16 v7, p10

    .line 62
    invoke-direct/range {v0 .. v7}, Lcn/nubia/camera/k/ag;->a(Lcn/nubia/b/a/f;Landroid/hardware/camera2/TotalCaptureResult;Lcn/nubia/camera/k/d;IZZI)V

    const/4 v0, 0x1

    return v0
.end method
