.class Lcn/nubia/camera/r/l$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/r/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/r/l$b;",
            ">;"
        }
    .end annotation
.end field

.field b:[B

.field c:J

.field d:J

.field e:J

.field f:J

.field final synthetic g:Lcn/nubia/camera/r/l;

.field private h:I


# direct methods
.method constructor <init>(Lcn/nubia/camera/r/l;)V
    .locals 2

    .line 248
    iput-object p1, p0, Lcn/nubia/camera/r/l$a;->g:Lcn/nubia/camera/r/l;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/r/l$a;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 250
    iput v0, p0, Lcn/nubia/camera/r/l$a;->h:I

    .line 251
    invoke-static {p1}, Lcn/nubia/camera/r/l;->a(Lcn/nubia/camera/r/l;)I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcn/nubia/camera/r/l$a;->b:[B

    const-wide/16 v0, 0x0

    .line 252
    iput-wide v0, p0, Lcn/nubia/camera/r/l$a;->c:J

    .line 253
    iput-wide v0, p0, Lcn/nubia/camera/r/l$a;->d:J

    .line 254
    iput-wide v0, p0, Lcn/nubia/camera/r/l$a;->e:J

    .line 256
    invoke-static {p1}, Lcn/nubia/camera/r/l;->a(Lcn/nubia/camera/r/l;)I

    move-result v0

    const v1, 0xf4240

    mul-int/2addr v0, v1

    invoke-static {p1}, Lcn/nubia/camera/r/l;->b(Lcn/nubia/camera/r/l;)I

    move-result v1

    div-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-static {p1}, Lcn/nubia/camera/r/l;->c(Lcn/nubia/camera/r/l;)I

    move-result p1

    div-int/2addr v0, p1

    int-to-long v0, v0

    iput-wide v0, p0, Lcn/nubia/camera/r/l$a;->f:J

    return-void
.end method

.method private a()V
    .locals 3

    .line 310
    iget-object v0, p0, Lcn/nubia/camera/r/l$a;->g:Lcn/nubia/camera/r/l;

    monitor-enter v0

    .line 311
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/r/l$a;->g:Lcn/nubia/camera/r/l;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcn/nubia/camera/r/l;->b(Lcn/nubia/camera/r/l;Z)Z

    .line 312
    iget-object v1, p0, Lcn/nubia/camera/r/l$a;->g:Lcn/nubia/camera/r/l;

    invoke-static {v1}, Lcn/nubia/camera/r/l;->h(Lcn/nubia/camera/r/l;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/camera/r/l$a;->g:Lcn/nubia/camera/r/l;

    invoke-static {v1}, Lcn/nubia/camera/r/l;->i(Lcn/nubia/camera/r/l;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    iget-object v1, p0, Lcn/nubia/camera/r/l$a;->g:Lcn/nubia/camera/r/l;

    invoke-static {v1}, Lcn/nubia/camera/r/l;->j(Lcn/nubia/camera/r/l;)V

    .line 315
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private declared-synchronized a(ZLandroid/media/MediaCodec;I)V
    .locals 11

    monitor-enter p0

    .line 322
    :try_start_0
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    :cond_0
    :goto_0
    const-wide/16 v1, 0x2710

    .line 324
    invoke-virtual {p2, v0, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    if-nez p1, :cond_1

    goto/16 :goto_4

    :cond_1
    const-string v1, "MyMediaRecorder"

    const-string v2, "no output available, spinning to await EOS"

    .line 331
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v3, -0x3

    if-ne v1, v3, :cond_3

    const-string v1, "MyMediaRecorder"

    const-string v2, "OUTPUT_BUFFERS_CHANGED"

    .line 335
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v3, -0x2

    const/4 v4, 0x1

    if-ne v1, v3, :cond_6

    .line 338
    iget-object p3, p0, Lcn/nubia/camera/r/l$a;->g:Lcn/nubia/camera/r/l;

    invoke-static {p3}, Lcn/nubia/camera/r/l;->k(Lcn/nubia/camera/r/l;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 341
    invoke-virtual {p2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object p3

    .line 342
    iget-object v1, p0, Lcn/nubia/camera/r/l$a;->g:Lcn/nubia/camera/r/l;

    invoke-static {v1}, Lcn/nubia/camera/r/l;->l(Lcn/nubia/camera/r/l;)Landroid/media/MediaMuxer;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v1

    const-string v3, "MyMediaRecorder"

    .line 343
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addAudioTrack "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v3, p0, Lcn/nubia/camera/r/l$a;->g:Lcn/nubia/camera/r/l;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 345
    :try_start_1
    iget-object v5, p0, Lcn/nubia/camera/r/l$a;->g:Lcn/nubia/camera/r/l;

    invoke-static {v5, v1}, Lcn/nubia/camera/r/l;->a(Lcn/nubia/camera/r/l;I)I

    const-string v5, "MyMediaRecorder"

    .line 346
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "audio encoder output format changed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v5, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object p3, p0, Lcn/nubia/camera/r/l$a;->g:Lcn/nubia/camera/r/l;

    invoke-static {p3}, Lcn/nubia/camera/r/l;->m(Lcn/nubia/camera/r/l;)I

    move-result p3

    if-eq p3, v2, :cond_4

    iget-object p3, p0, Lcn/nubia/camera/r/l$a;->g:Lcn/nubia/camera/r/l;

    invoke-static {p3}, Lcn/nubia/camera/r/l;->b(Lcn/nubia/camera/r/l;)I

    move-result p3

    if-eq p3, v2, :cond_4

    const-string p3, "MyMediaRecorder"

    const-string v2, "start Muxer"

    .line 348
    invoke-static {p3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object p3, p0, Lcn/nubia/camera/r/l$a;->g:Lcn/nubia/camera/r/l;

    invoke-static {p3}, Lcn/nubia/camera/r/l;->l(Lcn/nubia/camera/r/l;)Landroid/media/MediaMuxer;

    move-result-object p3

    invoke-virtual {p3}, Landroid/media/MediaMuxer;->start()V

    .line 350
    iget-object p3, p0, Lcn/nubia/camera/r/l$a;->g:Lcn/nubia/camera/r/l;

    invoke-static {p3, v4}, Lcn/nubia/camera/r/l;->c(Lcn/nubia/camera/r/l;Z)Z

    .line 352
    :cond_4
    monitor-exit v3

    move p3, v1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    .line 339
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "format changed twice"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    if-gez v1, :cond_7

    const-string v2, "MyMediaRecorder"

    .line 354
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected result from encoder.dequeueOutputBuffer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 358
    :cond_7
    invoke-virtual {p2, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 364
    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    const/4 v5, 0x0

    if-eqz v3, :cond_8

    const-string v3, "MyMediaRecorder"

    const-string v6, "ignoring BUFFER_FLAG_CODEC_CONFIG"

    .line 367
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iput v5, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 371
    :cond_8
    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v3, :cond_b

    .line 373
    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 374
    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v3, v6

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 376
    iget-object v3, p0, Lcn/nubia/camera/r/l$a;->g:Lcn/nubia/camera/r/l;

    invoke-static {v3}, Lcn/nubia/camera/r/l;->k(Lcn/nubia/camera/r/l;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 378
    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v3, v3, [B

    .line 379
    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v2, v3, v4, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 381
    iget-object v2, p0, Lcn/nubia/camera/r/l$a;->a:Ljava/util/ArrayList;

    new-instance v4, Lcn/nubia/camera/r/l$b;

    iget-object v6, p0, Lcn/nubia/camera/r/l$a;->g:Lcn/nubia/camera/r/l;

    invoke-direct {v4, v6, v3, v0}, Lcn/nubia/camera/r/l$b;-><init>(Lcn/nubia/camera/r/l;[BLandroid/media/MediaCodec$BufferInfo;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    goto :goto_2

    .line 387
    :cond_9
    iget-object v3, p0, Lcn/nubia/camera/r/l$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/camera/r/l$b;

    .line 388
    iget-object v7, v6, Lcn/nubia/camera/r/l$b;->a:[B

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 389
    iget-object v8, v6, Lcn/nubia/camera/r/l$b;->b:Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p0}, Lcn/nubia/camera/r/l$a;->b()J

    move-result-wide v9

    iput-wide v9, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 390
    iget-object v8, p0, Lcn/nubia/camera/r/l$a;->g:Lcn/nubia/camera/r/l;

    invoke-static {v8}, Lcn/nubia/camera/r/l;->l(Lcn/nubia/camera/r/l;)Landroid/media/MediaMuxer;

    move-result-object v8

    iget-object v6, v6, Lcn/nubia/camera/r/l$b;->b:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v8, p3, v7, v6}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 391
    iget v6, p0, Lcn/nubia/camera/r/l$a;->h:I

    add-int/2addr v6, v4

    iput v6, p0, Lcn/nubia/camera/r/l$a;->h:I

    goto :goto_1

    .line 393
    :cond_a
    iget-object v3, p0, Lcn/nubia/camera/r/l$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 395
    invoke-direct {p0}, Lcn/nubia/camera/r/l$a;->b()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 396
    iget-object v3, p0, Lcn/nubia/camera/r/l$a;->g:Lcn/nubia/camera/r/l;

    invoke-static {v3}, Lcn/nubia/camera/r/l;->l(Lcn/nubia/camera/r/l;)Landroid/media/MediaMuxer;

    move-result-object v3

    invoke-virtual {v3, p3, v2, v0}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 397
    iget v2, p0, Lcn/nubia/camera/r/l$a;->h:I

    add-int/2addr v2, v4

    iput v2, p0, Lcn/nubia/camera/r/l$a;->h:I

    .line 401
    :cond_b
    :goto_2
    invoke-virtual {p2, v1, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 404
    iget v1, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    if-nez p1, :cond_c

    const-string p1, "MyMediaRecorder"

    const-string p2, "reached end of audio stream unexpectedly"

    .line 406
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_c
    const-string p1, "MyMediaRecorder"

    const-string p2, "end of audio stream reached"

    .line 408
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :goto_3
    invoke-direct {p0}, Lcn/nubia/camera/r/l$a;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 415
    :goto_4
    monitor-exit p0

    return-void

    .line 360
    :cond_d
    :try_start_3
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "encoderOutputBuffer "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " was null"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private b()J
    .locals 6

    .line 419
    iget-wide v0, p0, Lcn/nubia/camera/r/l$a;->c:J

    iget v2, p0, Lcn/nubia/camera/r/l$a;->h:I

    mul-int/lit16 v2, v2, 0x400

    int-to-long v2, v2

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    iget-object v4, p0, Lcn/nubia/camera/r/l$a;->g:Lcn/nubia/camera/r/l;

    invoke-static {v4}, Lcn/nubia/camera/r/l;->c(Lcn/nubia/camera/r/l;)I

    move-result v4

    int-to-long v4, v4

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v1, p0

    const-string v2, "MyMediaRecorder"

    const-string v0, "AudioThread start"

    .line 260
    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 262
    :try_start_0
    iget-object v0, v1, Lcn/nubia/camera/r/l$a;->g:Lcn/nubia/camera/r/l;

    invoke-static {v0}, Lcn/nubia/camera/r/l;->d(Lcn/nubia/camera/r/l;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 263
    :goto_0
    iget-object v0, v1, Lcn/nubia/camera/r/l$a;->g:Lcn/nubia/camera/r/l;

    invoke-static {v0}, Lcn/nubia/camera/r/l;->e(Lcn/nubia/camera/r/l;)Z

    move-result v0

    const-wide/16 v4, -0x1

    const-wide/16 v6, 0x3e8

    if-eqz v0, :cond_4

    .line 264
    iget-object v0, v1, Lcn/nubia/camera/r/l$a;->g:Lcn/nubia/camera/r/l;

    invoke-static {v0}, Lcn/nubia/camera/r/l;->d(Lcn/nubia/camera/r/l;)Landroid/media/AudioRecord;

    move-result-object v0

    iget-object v8, v1, Lcn/nubia/camera/r/l$a;->b:[B

    iget-object v9, v1, Lcn/nubia/camera/r/l$a;->g:Lcn/nubia/camera/r/l;

    invoke-static {v9}, Lcn/nubia/camera/r/l;->a(Lcn/nubia/camera/r/l;)I

    move-result v9

    invoke-virtual {v0, v8, v3, v9}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    iget-wide v8, v1, Lcn/nubia/camera/r/l$a;->d:J

    int-to-long v10, v0

    add-long/2addr v8, v10

    iput-wide v8, v1, Lcn/nubia/camera/r/l$a;->d:J

    .line 270
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    div-long/2addr v8, v6

    .line 271
    iget-wide v10, v1, Lcn/nubia/camera/r/l$a;->c:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_1

    .line 272
    iput-wide v8, v1, Lcn/nubia/camera/r/l$a;->c:J

    :cond_1
    move v10, v3

    .line 276
    :goto_1
    iget-object v11, v1, Lcn/nubia/camera/r/l$a;->g:Lcn/nubia/camera/r/l;

    invoke-static {v11}, Lcn/nubia/camera/r/l;->e(Lcn/nubia/camera/r/l;)Z

    move-result v11

    if-eqz v11, :cond_3

    if-ge v10, v0, :cond_3

    .line 277
    iget-object v11, v1, Lcn/nubia/camera/r/l$a;->g:Lcn/nubia/camera/r/l;

    invoke-static {v11}, Lcn/nubia/camera/r/l;->f(Lcn/nubia/camera/r/l;)Landroid/media/MediaCodec;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v13

    if-ltz v13, :cond_2

    .line 279
    iget-object v11, v1, Lcn/nubia/camera/r/l$a;->g:Lcn/nubia/camera/r/l;

    invoke-static {v11}, Lcn/nubia/camera/r/l;->f(Lcn/nubia/camera/r/l;)Landroid/media/MediaCodec;

    move-result-object v11

    invoke-virtual {v11, v13}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 280
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 281
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v12

    sub-int v14, v0, v10

    invoke-static {v12, v14}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 282
    iget-object v12, v1, Lcn/nubia/camera/r/l$a;->b:[B

    invoke-virtual {v11, v12, v3, v15}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 283
    iget-object v11, v1, Lcn/nubia/camera/r/l$a;->g:Lcn/nubia/camera/r/l;

    invoke-static {v11}, Lcn/nubia/camera/r/l;->f(Lcn/nubia/camera/r/l;)Landroid/media/MediaCodec;

    move-result-object v12

    const/4 v14, 0x0

    int-to-long v4, v10

    mul-long/2addr v4, v6

    mul-long/2addr v4, v6

    iget-object v11, v1, Lcn/nubia/camera/r/l$a;->g:Lcn/nubia/camera/r/l;

    invoke-static {v11}, Lcn/nubia/camera/r/l;->c(Lcn/nubia/camera/r/l;)I

    move-result v11

    int-to-long v6, v11

    div-long/2addr v4, v6

    add-long v16, v8, v4

    const/16 v18, 0x0

    move v4, v15

    invoke-virtual/range {v12 .. v18}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    add-int/2addr v10, v4

    :cond_2
    const-wide/16 v4, -0x1

    const-wide/16 v6, 0x3e8

    goto :goto_1

    .line 287
    :cond_3
    iget-wide v4, v1, Lcn/nubia/camera/r/l$a;->e:J

    int-to-long v6, v10

    add-long/2addr v4, v6

    iput-wide v4, v1, Lcn/nubia/camera/r/l$a;->e:J

    .line 288
    iget-object v0, v1, Lcn/nubia/camera/r/l$a;->g:Lcn/nubia/camera/r/l;

    invoke-static {v0}, Lcn/nubia/camera/r/l;->f(Lcn/nubia/camera/r/l;)Landroid/media/MediaCodec;

    move-result-object v0

    iget-object v4, v1, Lcn/nubia/camera/r/l$a;->g:Lcn/nubia/camera/r/l;

    invoke-static {v4}, Lcn/nubia/camera/r/l;->b(Lcn/nubia/camera/r/l;)I

    move-result v4

    invoke-direct {v1, v3, v0, v4}, Lcn/nubia/camera/r/l$a;->a(ZLandroid/media/MediaCodec;I)V

    goto/16 :goto_0

    .line 290
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read audio data:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, v1, Lcn/nubia/camera/r/l$a;->d:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", write audio data:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, v1, Lcn/nubia/camera/r/l$a;->e:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, v1, Lcn/nubia/camera/r/l$a;->g:Lcn/nubia/camera/r/l;

    invoke-static {v0}, Lcn/nubia/camera/r/l;->g(Lcn/nubia/camera/r/l;)I

    move-result v0

    if-lez v0, :cond_5

    .line 294
    iget-object v0, v1, Lcn/nubia/camera/r/l$a;->g:Lcn/nubia/camera/r/l;

    invoke-static {v0}, Lcn/nubia/camera/r/l;->f(Lcn/nubia/camera/r/l;)Landroid/media/MediaCodec;

    move-result-object v0

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    .line 295
    iget-object v4, v1, Lcn/nubia/camera/r/l$a;->g:Lcn/nubia/camera/r/l;

    invoke-static {v4}, Lcn/nubia/camera/r/l;->f(Lcn/nubia/camera/r/l;)Landroid/media/MediaCodec;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/16 v10, 0x3e8

    div-long v10, v4, v10

    const/4 v12, 0x4

    move v7, v0

    invoke-virtual/range {v6 .. v12}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 296
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send EOS to audio encoder. use bufferIndex:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 297
    iget-object v4, v1, Lcn/nubia/camera/r/l$a;->g:Lcn/nubia/camera/r/l;

    invoke-static {v4}, Lcn/nubia/camera/r/l;->f(Lcn/nubia/camera/r/l;)Landroid/media/MediaCodec;

    move-result-object v4

    iget-object v5, v1, Lcn/nubia/camera/r/l$a;->g:Lcn/nubia/camera/r/l;

    invoke-static {v5}, Lcn/nubia/camera/r/l;->b(Lcn/nubia/camera/r/l;)I

    move-result v5

    invoke-direct {v1, v0, v4, v5}, Lcn/nubia/camera/r/l$a;->a(ZLandroid/media/MediaCodec;I)V

    goto :goto_2

    .line 299
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcn/nubia/camera/r/l$a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 302
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v4, v1, Lcn/nubia/camera/r/l$a;->g:Lcn/nubia/camera/r/l;

    invoke-static {v4, v3}, Lcn/nubia/camera/r/l;->a(Lcn/nubia/camera/r/l;Z)Z

    .line 304
    iget-object v3, v1, Lcn/nubia/camera/r/l$a;->g:Lcn/nubia/camera/r/l;

    invoke-static {v3, v0}, Lcn/nubia/camera/r/l;->a(Lcn/nubia/camera/r/l;Ljava/lang/Exception;)V

    .line 306
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioThread end. aac frame number:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v1, Lcn/nubia/camera/r/l$a;->h:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
