.class public Lcn/nubia/nubiaimage3d/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/nubiaimage3d/d$a;,
        Lcn/nubia/nubiaimage3d/d$b;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Lcn/nubia/nubiaimage3d/d$a;

.field private d:Lcn/nubia/nubiaimage3d/d$b;

.field private e:Landroid/media/MediaCodec;

.field private f:Ljava/util/concurrent/ExecutorService;

.field private g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 47
    iput v0, p0, Lcn/nubia/nubiaimage3d/d;->a:I

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcn/nubia/nubiaimage3d/d;->b:I

    .line 49
    new-instance v0, Lcn/nubia/nubiaimage3d/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/nubiaimage3d/d$a;-><init>(Lcn/nubia/nubiaimage3d/d;Lcn/nubia/nubiaimage3d/d$1;)V

    iput-object v0, p0, Lcn/nubia/nubiaimage3d/d;->c:Lcn/nubia/nubiaimage3d/d$a;

    .line 50
    iput-object v1, p0, Lcn/nubia/nubiaimage3d/d;->d:Lcn/nubia/nubiaimage3d/d$b;

    .line 51
    iput-object v1, p0, Lcn/nubia/nubiaimage3d/d;->e:Landroid/media/MediaCodec;

    .line 53
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/nubiaimage3d/d;->f:Ljava/util/concurrent/ExecutorService;

    .line 172
    new-instance v0, Lcn/nubia/nubiaimage3d/d$1;

    invoke-direct {v0, p0}, Lcn/nubia/nubiaimage3d/d$1;-><init>(Lcn/nubia/nubiaimage3d/d;)V

    iput-object v0, p0, Lcn/nubia/nubiaimage3d/d;->g:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcn/nubia/nubiaimage3d/d;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcn/nubia/nubiaimage3d/d;->e()V

    return-void
.end method

.method private a([BIIILjava/nio/ByteBuffer;II)V
    .locals 5

    add-int/lit8 v0, p7, -0x1

    mul-int/2addr p7, p3

    sub-int/2addr p6, p7

    const/4 p7, 0x0

    move v1, p7

    :goto_0
    if-ge v1, p4, :cond_3

    move v2, p7

    :goto_1
    if-ge v2, p3, :cond_1

    .line 152
    aget-byte v3, p1, p2

    invoke-virtual {p5, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 p2, p2, 0x1

    .line 154
    invoke-virtual {p5}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v0

    .line 155
    invoke-virtual {p5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    if-gt v3, v4, :cond_0

    .line 156
    invoke-virtual {p5, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 159
    :cond_1
    invoke-virtual {p5}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, p6

    .line 160
    invoke-virtual {p5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    if-gt v2, v3, :cond_2

    .line 161
    invoke-virtual {p5, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private d()V
    .locals 10

    .line 167
    iget-object v0, p0, Lcn/nubia/nubiaimage3d/d;->e:Landroid/media/MediaCodec;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v4

    .line 168
    iget-object v3, p0, Lcn/nubia/nubiaimage3d/d;->e:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    return-void
.end method

.method private e()V
    .locals 11

    .line 182
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-nez v2, :cond_6

    .line 184
    iget-object v3, p0, Lcn/nubia/nubiaimage3d/d;->e:Landroid/media/MediaCodec;

    const-wide/16 v4, -0x1

    invoke-virtual {v3, v0, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3

    const/4 v4, -0x1

    const-string v5, "H264Encoder"

    if-ne v3, v4, :cond_0

    const-string v3, "Encoder INFO_TRY_AGAIN_LATER."

    .line 186
    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v4, -0x2

    if-ne v3, v4, :cond_1

    .line 188
    iget-object v3, p0, Lcn/nubia/nubiaimage3d/d;->e:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v3

    .line 189
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Encoder output format changed: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-gez v3, :cond_2

    .line 191
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Encoder unexpected result from encoder.dequeueOutputBuffer: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 193
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "info.flags"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v6, 0x4

    const/4 v7, 0x1

    if-ne v4, v6, :cond_3

    const-string v2, "BUFFER_FLAG_END_OF_STREAM"

    .line 195
    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v7

    goto/16 :goto_1

    .line 197
    :cond_3
    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v6, 0x2

    const-string v8, "frameNum:"

    const-string v9, "size:"

    const-string v10, "offset:"

    if-ne v4, v6, :cond_4

    const-string v4, "BUFFER_FLAG_CODEC_CONFIG"

    .line 198
    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v4, p0, Lcn/nubia/nubiaimage3d/d;->e:Landroid/media/MediaCodec;

    invoke-virtual {v4, v3}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 200
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v10, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lcn/nubia/nubiaimage3d/d;->b:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget v5, p0, Lcn/nubia/nubiaimage3d/d;->b:I

    add-int/2addr v5, v7

    iput v5, p0, Lcn/nubia/nubiaimage3d/d;->b:I

    .line 202
    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v5, :cond_5

    .line 203
    iget-object v5, p0, Lcn/nubia/nubiaimage3d/d;->d:Lcn/nubia/nubiaimage3d/d$b;

    if-eqz v5, :cond_5

    .line 204
    invoke-interface {v5, v4, v0}, Lcn/nubia/nubiaimage3d/d$b;->a(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_1

    .line 208
    :cond_4
    iget-object v4, p0, Lcn/nubia/nubiaimage3d/d;->e:Landroid/media/MediaCodec;

    invoke-virtual {v4, v3}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 209
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v10, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lcn/nubia/nubiaimage3d/d;->b:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget v5, p0, Lcn/nubia/nubiaimage3d/d;->b:I

    add-int/2addr v5, v7

    iput v5, p0, Lcn/nubia/nubiaimage3d/d;->b:I

    .line 211
    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v5, :cond_5

    .line 212
    iget-object v5, p0, Lcn/nubia/nubiaimage3d/d;->d:Lcn/nubia/nubiaimage3d/d$b;

    if-eqz v5, :cond_5

    .line 213
    invoke-interface {v5, v4, v0}, Lcn/nubia/nubiaimage3d/d$b;->a(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 217
    :cond_5
    :goto_1
    iget-object v4, p0, Lcn/nubia/nubiaimage3d/d;->e:Landroid/media/MediaCodec;

    invoke-virtual {v4, v3, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 3

    monitor-enter p0

    .line 86
    :try_start_0
    iget v0, p0, Lcn/nubia/nubiaimage3d/d;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "H264Encoder"

    const-string v1, "start"

    .line 87
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcn/nubia/nubiaimage3d/d;->e:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcn/nubia/nubiaimage3d/d;->b:I

    const/4 v0, 0x4

    .line 90
    iput v0, p0, Lcn/nubia/nubiaimage3d/d;->a:I

    .line 91
    iget-object v0, p0, Lcn/nubia/nubiaimage3d/d;->f:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcn/nubia/nubiaimage3d/d;->g:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    :cond_0
    const-string v0, "H264Encoder"

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call start in error status["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/nubiaimage3d/d;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(II)V
    .locals 2

    monitor-enter p0

    .line 59
    :try_start_0
    iget-object v0, p0, Lcn/nubia/nubiaimage3d/d;->c:Lcn/nubia/nubiaimage3d/d$a;

    iput p1, v0, Lcn/nubia/nubiaimage3d/d$a;->a:I

    .line 60
    iget-object p1, p0, Lcn/nubia/nubiaimage3d/d;->c:Lcn/nubia/nubiaimage3d/d$a;

    iput p2, p1, Lcn/nubia/nubiaimage3d/d$a;->b:I

    .line 61
    iget p1, p0, Lcn/nubia/nubiaimage3d/d;->a:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const-string p1, "H264Encoder"

    const-string v0, "create"

    .line 62
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string p1, "video/avc"

    .line 64
    invoke-static {p1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/nubiaimage3d/d;->e:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string p1, "H264Encoder"

    const-string v0, "IOException"

    .line 66
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string p1, "video/avc"

    .line 68
    iget-object v0, p0, Lcn/nubia/nubiaimage3d/d;->c:Lcn/nubia/nubiaimage3d/d$a;

    iget v0, v0, Lcn/nubia/nubiaimage3d/d$a;->a:I

    iget-object v1, p0, Lcn/nubia/nubiaimage3d/d;->c:Lcn/nubia/nubiaimage3d/d$a;

    iget v1, v1, Lcn/nubia/nubiaimage3d/d$a;->b:I

    .line 69
    invoke-static {p1, v0, v1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p1

    const-string v0, "bitrate"

    .line 70
    iget-object v1, p0, Lcn/nubia/nubiaimage3d/d;->c:Lcn/nubia/nubiaimage3d/d$a;

    iget v1, v1, Lcn/nubia/nubiaimage3d/d$a;->c:I

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "frame-rate"

    .line 71
    iget-object v1, p0, Lcn/nubia/nubiaimage3d/d;->c:Lcn/nubia/nubiaimage3d/d$a;

    iget v1, v1, Lcn/nubia/nubiaimage3d/d$a;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "color-format"

    .line 72
    iget-object v1, p0, Lcn/nubia/nubiaimage3d/d;->c:Lcn/nubia/nubiaimage3d/d$a;

    iget v1, v1, Lcn/nubia/nubiaimage3d/d$a;->d:I

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "i-frame-interval"

    .line 73
    iget-object v1, p0, Lcn/nubia/nubiaimage3d/d;->c:Lcn/nubia/nubiaimage3d/d$a;

    iget v1, v1, Lcn/nubia/nubiaimage3d/d$a;->f:I

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 74
    iget-object v0, p0, Lcn/nubia/nubiaimage3d/d;->e:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, p2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    const/4 p1, 0x2

    .line 75
    iput p1, p0, Lcn/nubia/nubiaimage3d/d;->a:I

    goto :goto_1

    :cond_0
    const-string p1, "H264Encoder"

    .line 77
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "call create in error status["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcn/nubia/nubiaimage3d/d;->a:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Landroid/media/MediaCodec$BufferInfo;[BI)V
    .locals 18

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    monitor-enter p0

    .line 126
    :try_start_0
    iget v1, v9, Lcn/nubia/nubiaimage3d/d;->a:I

    const/4 v10, 0x4

    if-ne v1, v10, :cond_1

    .line 127
    iget-object v1, v9, Lcn/nubia/nubiaimage3d/d;->e:Landroid/media/MediaCodec;

    move/from16 v2, p3

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v12

    if-gez v12, :cond_0

    const-string v0, "H264Encoder"

    const-string v1, "dequeueInputBuffer TimeOut."

    .line 129
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 131
    :cond_0
    iget-object v1, v9, Lcn/nubia/nubiaimage3d/d;->e:Landroid/media/MediaCodec;

    invoke-virtual {v1, v12}, Landroid/media/MediaCodec;->getInputImage(I)Landroid/media/Image;

    move-result-object v1

    .line 132
    invoke-virtual {v1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v11

    const/4 v3, 0x0

    .line 134
    iget-object v1, v9, Lcn/nubia/nubiaimage3d/d;->c:Lcn/nubia/nubiaimage3d/d$a;

    iget v4, v1, Lcn/nubia/nubiaimage3d/d$a;->a:I

    iget-object v1, v9, Lcn/nubia/nubiaimage3d/d;->c:Lcn/nubia/nubiaimage3d/d$a;

    iget v5, v1, Lcn/nubia/nubiaimage3d/d$a;->b:I

    const/4 v1, 0x0

    aget-object v2, v11, v1

    .line 135
    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    aget-object v2, v11, v1

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v7

    aget-object v1, v11, v1

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v8

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 134
    invoke-direct/range {v1 .. v8}, Lcn/nubia/nubiaimage3d/d;->a([BIIILjava/nio/ByteBuffer;II)V

    .line 136
    iget-object v1, v9, Lcn/nubia/nubiaimage3d/d;->c:Lcn/nubia/nubiaimage3d/d$a;

    iget v1, v1, Lcn/nubia/nubiaimage3d/d$a;->a:I

    iget-object v2, v9, Lcn/nubia/nubiaimage3d/d;->c:Lcn/nubia/nubiaimage3d/d$a;

    iget v2, v2, Lcn/nubia/nubiaimage3d/d$a;->b:I

    mul-int v3, v1, v2

    iget-object v1, v9, Lcn/nubia/nubiaimage3d/d;->c:Lcn/nubia/nubiaimage3d/d$a;

    iget v1, v1, Lcn/nubia/nubiaimage3d/d$a;->a:I

    const/4 v13, 0x2

    div-int/lit8 v4, v1, 0x2

    iget-object v1, v9, Lcn/nubia/nubiaimage3d/d;->c:Lcn/nubia/nubiaimage3d/d$a;

    iget v1, v1, Lcn/nubia/nubiaimage3d/d$a;->b:I

    div-int/lit8 v5, v1, 0x2

    const/4 v1, 0x1

    aget-object v2, v11, v1

    .line 137
    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    aget-object v2, v11, v1

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v7

    aget-object v1, v11, v1

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v8

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 136
    invoke-direct/range {v1 .. v8}, Lcn/nubia/nubiaimage3d/d;->a([BIIILjava/nio/ByteBuffer;II)V

    .line 138
    iget-object v1, v9, Lcn/nubia/nubiaimage3d/d;->c:Lcn/nubia/nubiaimage3d/d$a;

    iget v1, v1, Lcn/nubia/nubiaimage3d/d$a;->a:I

    iget-object v2, v9, Lcn/nubia/nubiaimage3d/d;->c:Lcn/nubia/nubiaimage3d/d$a;

    iget v2, v2, Lcn/nubia/nubiaimage3d/d$a;->b:I

    mul-int/2addr v1, v2

    iget-object v2, v9, Lcn/nubia/nubiaimage3d/d;->c:Lcn/nubia/nubiaimage3d/d$a;

    iget v2, v2, Lcn/nubia/nubiaimage3d/d$a;->a:I

    iget-object v3, v9, Lcn/nubia/nubiaimage3d/d;->c:Lcn/nubia/nubiaimage3d/d$a;

    iget v3, v3, Lcn/nubia/nubiaimage3d/d$a;->b:I

    mul-int/2addr v2, v3

    div-int/2addr v2, v10

    add-int v3, v1, v2

    iget-object v1, v9, Lcn/nubia/nubiaimage3d/d;->c:Lcn/nubia/nubiaimage3d/d$a;

    iget v1, v1, Lcn/nubia/nubiaimage3d/d$a;->a:I

    div-int/lit8 v4, v1, 0x2

    iget-object v1, v9, Lcn/nubia/nubiaimage3d/d;->c:Lcn/nubia/nubiaimage3d/d$a;

    iget v1, v1, Lcn/nubia/nubiaimage3d/d$a;->b:I

    div-int/lit8 v5, v1, 0x2

    aget-object v1, v11, v13

    .line 139
    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    aget-object v1, v11, v13

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v7

    aget-object v1, v11, v13

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v8

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 138
    invoke-direct/range {v1 .. v8}, Lcn/nubia/nubiaimage3d/d;->a([BIIILjava/nio/ByteBuffer;II)V

    .line 141
    iget-object v11, v9, Lcn/nubia/nubiaimage3d/d;->e:Landroid/media/MediaCodec;

    const/4 v13, 0x0

    iget v14, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v1, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-wide v15, v1

    move/from16 v17, v0

    invoke-virtual/range {v11 .. v17}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcn/nubia/nubiaimage3d/d$b;)V
    .locals 0

    monitor-enter p0

    .line 82
    :try_start_0
    iput-object p1, p0, Lcn/nubia/nubiaimage3d/d;->d:Lcn/nubia/nubiaimage3d/d$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()V
    .locals 4

    monitor-enter p0

    .line 98
    :try_start_0
    iget v0, p0, Lcn/nubia/nubiaimage3d/d;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    :try_start_1
    const-string v0, "H264Encoder"

    const-string v1, "stop"

    .line 100
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    .line 101
    iput v0, p0, Lcn/nubia/nubiaimage3d/d;->a:I

    .line 102
    invoke-direct {p0}, Lcn/nubia/nubiaimage3d/d;->d()V

    .line 103
    iget-object v0, p0, Lcn/nubia/nubiaimage3d/d;->f:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 104
    iget-object v0, p0, Lcn/nubia/nubiaimage3d/d;->f:Ljava/util/concurrent/ExecutorService;

    const-wide v1, 0x7fffffffffffffffL

    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 107
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v0, "H264Encoder"

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call stop in error status["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/nubiaimage3d/d;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 3

    monitor-enter p0

    .line 115
    :try_start_0
    iget v0, p0, Lcn/nubia/nubiaimage3d/d;->a:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const-string v0, "H264Encoder"

    const-string v2, "release"

    .line 116
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcn/nubia/nubiaimage3d/d;->e:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 118
    iget-object v0, p0, Lcn/nubia/nubiaimage3d/d;->e:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcn/nubia/nubiaimage3d/d;->e:Landroid/media/MediaCodec;

    .line 120
    iput v1, p0, Lcn/nubia/nubiaimage3d/d;->a:I

    const/4 v0, 0x0

    .line 121
    iput v0, p0, Lcn/nubia/nubiaimage3d/d;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
