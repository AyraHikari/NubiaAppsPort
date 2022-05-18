.class Lcn/nubia/camera/pretty/b/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/ac$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/pretty/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/pretty/b/c;


# direct methods
.method private constructor <init>(Lcn/nubia/camera/pretty/b/c;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcn/nubia/camera/pretty/b/c$a;->a:Lcn/nubia/camera/pretty/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/pretty/b/c;Lcn/nubia/camera/pretty/b/c$1;)V
    .locals 0

    .line 190
    invoke-direct {p0, p1}, Lcn/nubia/camera/pretty/b/c$a;-><init>(Lcn/nubia/camera/pretty/b/c;)V

    return-void
.end method

.method private a(Lcn/nubia/b/a/f;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 206
    iget-object v0, p0, Lcn/nubia/camera/pretty/b/c$a;->a:Lcn/nubia/camera/pretty/b/c;

    invoke-static {v0}, Lcn/nubia/camera/pretty/b/c;->f(Lcn/nubia/camera/pretty/b/c;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 209
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/camera/pretty/b/c$a;->a(Lcn/nubia/b/a/f;)[B

    move-result-object p1

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcn/nubia/camera/av/c;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 211
    new-instance v0, Ljava/io/File;

    const-string v2, "/sdcard/FacePlusDebugYuv/"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 213
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 217
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".yuv"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 218
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 219
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v1, v0

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v1, v0

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    .line 223
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_2

    .line 227
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    :catch_3
    move-exception p1

    .line 221
    :goto_1
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_2

    .line 227
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    :catch_4
    move-exception p1

    .line 229
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_2
    return-object p2

    :goto_3
    if-eqz v1, :cond_3

    .line 227
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_4

    :catch_5
    move-exception p2

    .line 229
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 233
    :cond_3
    :goto_4
    throw p1
.end method

.method private a(Lcn/nubia/b/a/f;)[B
    .locals 14

    .line 238
    invoke-interface {p1}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/b/a/f$a;

    .line 239
    invoke-interface {p1}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/b/a/f$a;

    .line 240
    invoke-interface {p1}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/b/a/f$a;

    .line 241
    invoke-interface {v0}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {v0}, Lcn/nubia/b/a/f$a;->b()I

    move-result v4

    invoke-interface {v0}, Lcn/nubia/b/a/f$a;->a()I

    move-result v5

    .line 242
    invoke-interface {v1}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-interface {v1}, Lcn/nubia/b/a/f$a;->b()I

    move-result v7

    invoke-interface {v1}, Lcn/nubia/b/a/f$a;->a()I

    move-result v8

    .line 243
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

    .line 241
    invoke-static/range {v3 .. v13}, Lcn/nubia/algorithm/utils/YUVAlgorithm;->a(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIII)Lcn/nubia/algorithm/utils/a;

    move-result-object p1

    .line 244
    invoke-virtual {p1}, Lcn/nubia/algorithm/utils/a;->b()[B

    move-result-object v0

    .line 245
    invoke-virtual {p1}, Lcn/nubia/algorithm/utils/a;->a()V

    return-object v0
.end method


# virtual methods
.method public a(Lcn/nubia/b/a/f;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/pretty/b/c$a;->a:Lcn/nubia/camera/pretty/b/c;

    const-string v1, "_ori_tmp"

    invoke-direct {p0, p1, v1}, Lcn/nubia/camera/pretty/b/c$a;->a(Lcn/nubia/b/a/f;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/pretty/b/c;->a(Lcn/nubia/camera/pretty/b/c;Ljava/lang/String;)Ljava/lang/String;

    .line 198
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    rsub-int p2, p2, 0x168

    .line 199
    rem-int/lit16 p2, p2, 0x168

    .line 200
    iget-object v0, p0, Lcn/nubia/camera/pretty/b/c$a;->a:Lcn/nubia/camera/pretty/b/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/camera/pretty/b/c;->a(Lcn/nubia/camera/pretty/b/c;Z)F

    move-result v0

    .line 201
    invoke-interface {p1}, Lcn/nubia/b/a/f;->g()Landroid/media/Image;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lcn/nubia/algorithm/camera/SingleBokeh;->a(Landroid/media/Image;FI)V

    .line 202
    iget-object p2, p0, Lcn/nubia/camera/pretty/b/c$a;->a:Lcn/nubia/camera/pretty/b/c;

    const-string v0, "_bokeh_tmp"

    invoke-direct {p0, p1, v0}, Lcn/nubia/camera/pretty/b/c$a;->a(Lcn/nubia/b/a/f;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcn/nubia/camera/pretty/b/c;->b(Lcn/nubia/camera/pretty/b/c;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
