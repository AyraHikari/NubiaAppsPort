.class public Lcn/nubia/camera/pretty/a/a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/pretty/a/a$a;
    }
.end annotation


# instance fields
.field a:[B

.field b:[B

.field c:Lcn/nubia/camera/pretty/a/b;

.field d:Lcn/nubia/camera/pretty/a/a$a;

.field e:Landroid/content/Context;

.field private f:Lcn/nubia/camera/ad/a;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;)V
    .locals 1

    const-string v0, "ArcsoftBokehThread"

    .line 46
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lcn/nubia/camera/pretty/a/a;->f:Lcn/nubia/camera/ad/a;

    .line 48
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/pretty/a/a;->e:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/String;)[B
    .locals 2

    .line 133
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result p1

    new-array p1, p1, [B

    .line 135
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    .line 136
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "ArcsoftBokehThread"

    const-string v1, "readFile fail"

    .line 139
    invoke-static {v0, v1, p1}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 53
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/a;->a:[B

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcn/nubia/camera/pretty/a/a;->b:[B

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 63
    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 65
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 66
    invoke-static {v0, v10, v11}, Lcn/nubia/algorithm/utils/YUVAlgorithm;->a(Landroid/graphics/Bitmap;II)Lcn/nubia/algorithm/utils/a;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcn/nubia/algorithm/utils/a;->b()[B

    move-result-object v12

    .line 69
    invoke-virtual {v0}, Lcn/nubia/algorithm/utils/a;->a()V

    .line 70
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/a;->c:Lcn/nubia/camera/pretty/a/b;

    iget v0, v0, Lcn/nubia/camera/pretty/a/b;->m:I

    if-ltz v0, :cond_1

    .line 72
    invoke-static {}, Lcn/nubia/algorithm/camera/ArcsoftSkinSoften;->init()J

    move-result-wide v8

    .line 74
    invoke-static {}, Lcn/nubia/camera/k/ai;->a()Lcn/nubia/camera/k/ai;

    move-result-object v0

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcn/nubia/camera/pretty/a/a;->c:Lcn/nubia/camera/pretty/a/b;

    iget v2, v2, Lcn/nubia/camera/pretty/a/b;->m:I

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/k/ai;->a(II)I

    move-result v6

    iget-object v0, p0, Lcn/nubia/camera/pretty/a/a;->a:[B

    .line 75
    invoke-static {v0}, Lcn/nubia/camera/av/a;->a([B)I

    move-result v7

    move-wide v1, v8

    move-object v3, v12

    move v4, v10

    move v5, v11

    .line 73
    invoke-static/range {v1 .. v7}, Lcn/nubia/algorithm/camera/ArcsoftSkinSoften;->process(J[BIIII)V

    .line 76
    invoke-static {v8, v9}, Lcn/nubia/algorithm/camera/ArcsoftSkinSoften;->unInit(J)V

    const-string v0, "/vendor/etc/camera/VfbTuningInterface.xml"

    .line 78
    invoke-direct {p0, v0}, Lcn/nubia/camera/pretty/a/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v10, v11}, Lcn/nubia/algorithm/camera/VfbBeauty;->init([BII)J

    move-result-wide v8

    .line 80
    invoke-static {}, Lcn/nubia/camera/k/ai;->a()Lcn/nubia/camera/k/ai;

    move-result-object v0

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcn/nubia/camera/pretty/a/a;->c:Lcn/nubia/camera/pretty/a/b;

    iget v2, v2, Lcn/nubia/camera/pretty/a/b;->m:I

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/k/ai;->b(II)[I

    move-result-object v6

    iget-object v0, p0, Lcn/nubia/camera/pretty/a/a;->a:[B

    .line 81
    invoke-static {v0}, Lcn/nubia/camera/av/a;->a([B)I

    move-result v7

    move-wide v1, v8

    .line 79
    invoke-static/range {v1 .. v7}, Lcn/nubia/algorithm/camera/VfbBeauty;->process(J[BII[II)V

    .line 82
    invoke-static {v8, v9}, Lcn/nubia/algorithm/camera/VfbBeauty;->unInit(J)V

    .line 85
    :cond_1
    invoke-static {}, Lcn/nubia/algorithm/camera/ArcsoftBokeh;->init()J

    move-result-wide v13

    .line 86
    iget-object v4, p0, Lcn/nubia/camera/pretty/a/a;->b:[B

    iget-object v0, p0, Lcn/nubia/camera/pretty/a/a;->c:Lcn/nubia/camera/pretty/a/b;

    iget v0, v0, Lcn/nubia/camera/pretty/a/b;->e:F

    int-to-float v1, v10

    mul-float/2addr v0, v1

    float-to-int v7, v0

    iget-object v0, p0, Lcn/nubia/camera/pretty/a/a;->c:Lcn/nubia/camera/pretty/a/b;

    iget v0, v0, Lcn/nubia/camera/pretty/a/b;->f:F

    int-to-float v1, v11

    mul-float/2addr v0, v1

    float-to-int v8, v0

    iget-object v0, p0, Lcn/nubia/camera/pretty/a/a;->c:Lcn/nubia/camera/pretty/a/b;

    iget v9, v0, Lcn/nubia/camera/pretty/a/b;->d:I

    move-wide v1, v13

    move-object v3, v12

    move v5, v10

    move v6, v11

    invoke-static/range {v1 .. v9}, Lcn/nubia/algorithm/camera/ArcsoftBokeh;->process(J[B[BIIIII)V

    .line 87
    invoke-static {v13, v14}, Lcn/nubia/algorithm/camera/ArcsoftBokeh;->unInit(J)V

    .line 89
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/a;->c:Lcn/nubia/camera/pretty/a/b;

    iget-object v0, v0, Lcn/nubia/camera/pretty/a/b;->o:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, ""

    iget-object v1, p0, Lcn/nubia/camera/pretty/a/a;->c:Lcn/nubia/camera/pretty/a/b;

    iget-object v1, v1, Lcn/nubia/camera/pretty/a/b;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "none"

    iget-object v1, p0, Lcn/nubia/camera/pretty/a/a;->c:Lcn/nubia/camera/pretty/a/b;

    iget-object v1, v1, Lcn/nubia/camera/pretty/a/b;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 90
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/a;->c:Lcn/nubia/camera/pretty/a/b;

    iget-object v0, v0, Lcn/nubia/camera/pretty/a/b;->o:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/camera/pretty/a/a;->a:[B

    invoke-static {v1}, Lcn/nubia/camera/av/a;->a([B)I

    move-result v1

    invoke-static {v12, v10, v11, v0, v1}, Lcn/nubia/algorithm/camera/EffectAlgorithm;->Effect([BIILjava/lang/String;I)V

    .line 93
    :cond_2
    new-instance v0, Lcn/nubia/algorithm/utils/a;

    invoke-direct {v0, v12}, Lcn/nubia/algorithm/utils/a;-><init>([B)V

    .line 95
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 96
    invoke-static {v0, v1, v10, v11}, Lcn/nubia/algorithm/utils/YUVAlgorithm;->a(Lcn/nubia/algorithm/utils/a;Landroid/graphics/Bitmap;II)V

    .line 97
    invoke-virtual {v0}, Lcn/nubia/algorithm/utils/a;->a()V

    .line 99
    invoke-static {}, Lcn/nubia/m/c;->a()Lcn/nubia/m/c;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/pretty/a/a;->a:[B

    invoke-static {v2}, Lcn/nubia/camera/av/a;->a([B)I

    move-result v2

    iget-object v3, p0, Lcn/nubia/camera/pretty/a/a;->f:Lcn/nubia/camera/ad/a;

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/camera/pretty/a/a;->e:Landroid/content/Context;

    invoke-static {v3, v4}, Lcn/nubia/camera/ba/a;->a(Lcom/android/preference/c;Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v2, v3, v1}, Lcn/nubia/m/c;->a(IILandroid/graphics/Bitmap;)V

    .line 101
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 102
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5f

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 103
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 104
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 107
    :try_start_0
    new-instance v2, Lcn/nubia/d/a;

    invoke-direct {v2}, Lcn/nubia/d/a;-><init>()V

    .line 108
    iget-object v3, p0, Lcn/nubia/camera/pretty/a/a;->a:[B

    invoke-virtual {v2, v3}, Lcn/nubia/d/a;->a([B)V

    .line 109
    invoke-virtual {v2}, Lcn/nubia/d/a;->a()V

    .line 110
    invoke-virtual {v2, v1, v0}, Lcn/nubia/d/a;->a([BLjava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 112
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 114
    :goto_1
    iget-object v1, p0, Lcn/nubia/camera/pretty/a/a;->d:Lcn/nubia/camera/pretty/a/a$a;

    if-eqz v1, :cond_3

    .line 115
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {v1, v0}, Lcn/nubia/camera/pretty/a/a$a;->a([B)V

    :cond_3
    return-void

    .line 55
    :cond_4
    :goto_2
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 56
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 57
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0
.end method
