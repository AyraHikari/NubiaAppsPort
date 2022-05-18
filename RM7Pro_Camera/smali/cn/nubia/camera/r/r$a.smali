.class Lcn/nubia/camera/r/r$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/r/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/r/r;


# direct methods
.method private constructor <init>(Lcn/nubia/camera/r/r;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcn/nubia/camera/r/r$a;->a:Lcn/nubia/camera/r/r;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/r/r;Lcn/nubia/camera/r/r$1;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcn/nubia/camera/r/r$a;-><init>(Lcn/nubia/camera/r/r;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "VideoDecoder"

    .line 63
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/r/r$a;->a:Lcn/nubia/camera/r/r;

    new-instance v2, Landroid/media/MediaExtractor;

    invoke-direct {v2}, Landroid/media/MediaExtractor;-><init>()V

    invoke-static {v1, v2}, Lcn/nubia/camera/r/r;->a(Lcn/nubia/camera/r/r;Landroid/media/MediaExtractor;)Landroid/media/MediaExtractor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 66
    :try_start_1
    iget-object v1, p0, Lcn/nubia/camera/r/r$a;->a:Lcn/nubia/camera/r/r;

    invoke-static {v1}, Lcn/nubia/camera/r/r;->b(Lcn/nubia/camera/r/r;)Landroid/media/MediaExtractor;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/r/r$a;->a:Lcn/nubia/camera/r/r;

    invoke-static {v2}, Lcn/nubia/camera/r/r;->a(Lcn/nubia/camera/r/r;)Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "MediaExtractor setDataSource fail"

    .line 68
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/r/r$a;->a:Lcn/nubia/camera/r/r;

    invoke-static {v1}, Lcn/nubia/camera/r/r;->b(Lcn/nubia/camera/r/r;)Landroid/media/MediaExtractor;

    move-result-object v1

    const-string v2, "video/"

    invoke-static {v1, v2}, Lcn/nubia/camera/r/a;->a(Landroid/media/MediaExtractor;Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    const-string v1, "can\'t find video track"

    .line 73
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 77
    :cond_0
    iget-object v2, p0, Lcn/nubia/camera/r/r$a;->a:Lcn/nubia/camera/r/r;

    invoke-static {v2}, Lcn/nubia/camera/r/r;->b(Lcn/nubia/camera/r/r;)Landroid/media/MediaExtractor;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 79
    iget-object v2, p0, Lcn/nubia/camera/r/r$a;->a:Lcn/nubia/camera/r/r;

    invoke-static {v2}, Lcn/nubia/camera/r/r;->b(Lcn/nubia/camera/r/r;)Landroid/media/MediaExtractor;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    const-string v2, "color-format"

    const v3, 0x7f420888

    .line 81
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "mime"

    .line 82
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decoder mime "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v3, p0, Lcn/nubia/camera/r/r$a;->a:Lcn/nubia/camera/r/r;

    invoke-static {v2}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    invoke-static {v3, v2}, Lcn/nubia/camera/r/r;->a(Lcn/nubia/camera/r/r;Landroid/media/MediaCodec;)Landroid/media/MediaCodec;

    .line 87
    iget-object v2, p0, Lcn/nubia/camera/r/r$a;->a:Lcn/nubia/camera/r/r;

    invoke-static {v2}, Lcn/nubia/camera/r/r;->d(Lcn/nubia/camera/r/r;)Landroid/media/MediaCodec;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/r/r$a;->a:Lcn/nubia/camera/r/r;

    invoke-static {v3}, Lcn/nubia/camera/r/r;->c(Lcn/nubia/camera/r/r;)Landroid/view/Surface;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 89
    iget-object v1, p0, Lcn/nubia/camera/r/r$a;->a:Lcn/nubia/camera/r/r;

    invoke-static {v1}, Lcn/nubia/camera/r/r;->d(Lcn/nubia/camera/r/r;)Landroid/media/MediaCodec;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 95
    iget-object v1, p0, Lcn/nubia/camera/r/r$a;->a:Lcn/nubia/camera/r/r;

    invoke-static {v1, v5}, Lcn/nubia/camera/r/r;->a(Lcn/nubia/camera/r/r;I)I

    .line 98
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 102
    :cond_1
    iget-object v2, p0, Lcn/nubia/camera/r/r$a;->a:Lcn/nubia/camera/r/r;

    invoke-static {v2}, Lcn/nubia/camera/r/r;->e(Lcn/nubia/camera/r/r;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez v5, :cond_2

    .line 105
    iget-object v2, p0, Lcn/nubia/camera/r/r$a;->a:Lcn/nubia/camera/r/r;

    invoke-static {v2}, Lcn/nubia/camera/r/r;->b(Lcn/nubia/camera/r/r;)Landroid/media/MediaExtractor;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/camera/r/r$a;->a:Lcn/nubia/camera/r/r;

    invoke-static {v4}, Lcn/nubia/camera/r/r;->d(Lcn/nubia/camera/r/r;)Landroid/media/MediaCodec;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcn/nubia/camera/r/r;->a(Lcn/nubia/camera/r/r;Landroid/media/MediaExtractor;Landroid/media/MediaCodec;)Z

    move-result v2

    move v5, v2

    .line 110
    :cond_2
    :try_start_3
    iget-object v2, p0, Lcn/nubia/camera/r/r$a;->a:Lcn/nubia/camera/r/r;

    invoke-static {v2}, Lcn/nubia/camera/r/r;->d(Lcn/nubia/camera/r/r;)Landroid/media/MediaCodec;

    move-result-object v2

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v1, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    const/4 v3, -0x3

    if-eq v2, v3, :cond_5

    const/4 v3, -0x2

    if-eq v2, v3, :cond_4

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 128
    iget-object v3, p0, Lcn/nubia/camera/r/r$a;->a:Lcn/nubia/camera/r/r;

    invoke-static {v3}, Lcn/nubia/camera/r/r;->d(Lcn/nubia/camera/r/r;)Landroid/media/MediaCodec;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 133
    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_6

    .line 135
    iget-object v2, p0, Lcn/nubia/camera/r/r$a;->a:Lcn/nubia/camera/r/r;

    invoke-static {v2}, Lcn/nubia/camera/r/r;->f(Lcn/nubia/camera/r/r;)I

    .line 136
    iget-object v2, p0, Lcn/nubia/camera/r/r$a;->a:Lcn/nubia/camera/r/r;

    invoke-static {v2}, Lcn/nubia/camera/r/r;->g(Lcn/nubia/camera/r/r;)Lcn/nubia/camera/r/r$b;

    move-result-object v2

    invoke-interface {v2}, Lcn/nubia/camera/r/r$b;->b()V

    goto :goto_1

    :cond_3
    const-string v2, "\u8d85\u65f6"

    .line 116
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string v2, "format changed"

    .line 113
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const-string v2, "output buffers changed"

    .line 120
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    const-string v2, "dequeueOutputbuffer error"

    .line 141
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_6
    :goto_1
    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    const-string v1, "buffer stream end"

    .line 145
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v1, p0, Lcn/nubia/camera/r/r$a;->a:Lcn/nubia/camera/r/r;

    invoke-static {v1}, Lcn/nubia/camera/r/r;->d(Lcn/nubia/camera/r/r;)Landroid/media/MediaCodec;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 150
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/r/r$a;->a:Lcn/nubia/camera/r/r;

    invoke-static {v2}, Lcn/nubia/camera/r/r;->h(Lcn/nubia/camera/r/r;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " frame in all"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcn/nubia/camera/r/r$a;->a:Lcn/nubia/camera/r/r;

    invoke-static {v0}, Lcn/nubia/camera/r/r;->d(Lcn/nubia/camera/r/r;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 153
    iget-object v0, p0, Lcn/nubia/camera/r/r$a;->a:Lcn/nubia/camera/r/r;

    invoke-static {v0}, Lcn/nubia/camera/r/r;->b(Lcn/nubia/camera/r/r;)Landroid/media/MediaExtractor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 155
    iget-object v0, p0, Lcn/nubia/camera/r/r$a;->a:Lcn/nubia/camera/r/r;

    invoke-static {v0}, Lcn/nubia/camera/r/r;->g(Lcn/nubia/camera/r/r;)Lcn/nubia/camera/r/r$b;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/camera/r/r$b;->a()V

    return-void

    :catch_2
    move-exception v1

    const-string v2, "create decoder fail"

    .line 91
    invoke-static {v0, v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
