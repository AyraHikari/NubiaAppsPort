.class Lcn/nubia/camera/r/l$d;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/r/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
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

.field final synthetic b:Lcn/nubia/camera/r/l;


# direct methods
.method constructor <init>(Lcn/nubia/camera/r/l;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lcn/nubia/camera/r/l$d;->b:Lcn/nubia/camera/r/l;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 425
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/r/l$d;->a:Ljava/util/ArrayList;

    return-void
.end method

.method private declared-synchronized a(ZLandroid/media/MediaCodec;I)V
    .locals 9

    monitor-enter p0

    .line 450
    :try_start_0
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    :cond_0
    :goto_0
    const-wide/16 v1, 0x2710

    .line 452
    invoke-virtual {p2, v0, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    if-nez p1, :cond_1

    goto/16 :goto_4

    :cond_1
    const-string v1, "MyMediaRecorder"

    const-string v2, "no output available, spinning to await EOS"

    .line 459
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v3, -0x3

    if-ne v1, v3, :cond_3

    const-string v1, "MyMediaRecorder"

    const-string v2, "OUTPUT_BUFFERS_CHANGED"

    .line 463
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v3, -0x2

    const/4 v4, 0x1

    if-ne v1, v3, :cond_6

    .line 466
    iget-object p3, p0, Lcn/nubia/camera/r/l$d;->b:Lcn/nubia/camera/r/l;

    invoke-static {p3}, Lcn/nubia/camera/r/l;->k(Lcn/nubia/camera/r/l;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 469
    invoke-virtual {p2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object p3

    .line 470
    iget-object v1, p0, Lcn/nubia/camera/r/l$d;->b:Lcn/nubia/camera/r/l;

    invoke-static {v1}, Lcn/nubia/camera/r/l;->l(Lcn/nubia/camera/r/l;)Landroid/media/MediaMuxer;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v1

    const-string v3, "MyMediaRecorder"

    .line 471
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addVideoTrack "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v3, p0, Lcn/nubia/camera/r/l$d;->b:Lcn/nubia/camera/r/l;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 473
    :try_start_1
    iget-object v5, p0, Lcn/nubia/camera/r/l$d;->b:Lcn/nubia/camera/r/l;

    invoke-static {v5, v1}, Lcn/nubia/camera/r/l;->c(Lcn/nubia/camera/r/l;I)I

    const-string v5, "MyMediaRecorder"

    .line 474
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "video encoder output format changed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v5, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object p3, p0, Lcn/nubia/camera/r/l$d;->b:Lcn/nubia/camera/r/l;

    invoke-static {p3}, Lcn/nubia/camera/r/l;->m(Lcn/nubia/camera/r/l;)I

    move-result p3

    if-eq p3, v2, :cond_4

    iget-object p3, p0, Lcn/nubia/camera/r/l$d;->b:Lcn/nubia/camera/r/l;

    invoke-static {p3}, Lcn/nubia/camera/r/l;->b(Lcn/nubia/camera/r/l;)I

    move-result p3

    if-eq p3, v2, :cond_4

    const-string p3, "MyMediaRecorder"

    const-string v2, "start Muxer"

    .line 476
    invoke-static {p3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object p3, p0, Lcn/nubia/camera/r/l$d;->b:Lcn/nubia/camera/r/l;

    invoke-static {p3}, Lcn/nubia/camera/r/l;->l(Lcn/nubia/camera/r/l;)Landroid/media/MediaMuxer;

    move-result-object p3

    invoke-virtual {p3}, Landroid/media/MediaMuxer;->start()V

    .line 478
    iget-object p3, p0, Lcn/nubia/camera/r/l$d;->b:Lcn/nubia/camera/r/l;

    invoke-static {p3, v4}, Lcn/nubia/camera/r/l;->c(Lcn/nubia/camera/r/l;Z)Z

    .line 480
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

    .line 467
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "format changed twice"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    if-gez v1, :cond_7

    const-string v2, "MyMediaRecorder"

    .line 482
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

    .line 486
    :cond_7
    invoke-virtual {p2, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 492
    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    const/4 v5, 0x0

    if-eqz v3, :cond_8

    const-string v3, "MyMediaRecorder"

    const-string v6, "ignoring BUFFER_FLAG_CODEC_CONFIG"

    .line 495
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iput v5, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 499
    :cond_8
    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v3, :cond_b

    .line 501
    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 502
    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v3, v6

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 504
    iget-object v3, p0, Lcn/nubia/camera/r/l$d;->b:Lcn/nubia/camera/r/l;

    invoke-static {v3}, Lcn/nubia/camera/r/l;->k(Lcn/nubia/camera/r/l;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 506
    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v3, v3, [B

    .line 507
    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v7, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v2, v3, v6, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 509
    iget-object v2, p0, Lcn/nubia/camera/r/l$d;->a:Ljava/util/ArrayList;

    new-instance v6, Lcn/nubia/camera/r/l$b;

    iget-object v7, p0, Lcn/nubia/camera/r/l$d;->b:Lcn/nubia/camera/r/l;

    invoke-direct {v6, v7, v3, v0}, Lcn/nubia/camera/r/l$b;-><init>(Lcn/nubia/camera/r/l;[BLandroid/media/MediaCodec$BufferInfo;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    goto :goto_2

    .line 515
    :cond_9
    iget-object v3, p0, Lcn/nubia/camera/r/l$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/camera/r/l$b;

    .line 516
    iget-object v7, v6, Lcn/nubia/camera/r/l$b;->a:[B

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 517
    iget-object v8, p0, Lcn/nubia/camera/r/l$d;->b:Lcn/nubia/camera/r/l;

    invoke-static {v8}, Lcn/nubia/camera/r/l;->l(Lcn/nubia/camera/r/l;)Landroid/media/MediaMuxer;

    move-result-object v8

    iget-object v6, v6, Lcn/nubia/camera/r/l$b;->b:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v8, p3, v7, v6}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 518
    iget-object v6, p0, Lcn/nubia/camera/r/l$d;->b:Lcn/nubia/camera/r/l;

    invoke-static {v6}, Lcn/nubia/camera/r/l;->o(Lcn/nubia/camera/r/l;)I

    goto :goto_1

    .line 520
    :cond_a
    iget-object v3, p0, Lcn/nubia/camera/r/l$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 522
    iget-object v3, p0, Lcn/nubia/camera/r/l$d;->b:Lcn/nubia/camera/r/l;

    invoke-static {v3}, Lcn/nubia/camera/r/l;->l(Lcn/nubia/camera/r/l;)Landroid/media/MediaMuxer;

    move-result-object v3

    invoke-virtual {v3, p3, v2, v0}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 523
    iget-object v2, p0, Lcn/nubia/camera/r/l$d;->b:Lcn/nubia/camera/r/l;

    invoke-static {v2}, Lcn/nubia/camera/r/l;->o(Lcn/nubia/camera/r/l;)I

    .line 527
    :cond_b
    :goto_2
    invoke-virtual {p2, v1, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 530
    iget v1, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    if-nez p1, :cond_c

    const-string p1, "MyMediaRecorder"

    const-string p2, "reached end of video stream unexpectedly"

    .line 532
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_c
    const-string p1, "MyMediaRecorder"

    const-string p2, "end of video stream reached"

    .line 534
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :goto_3
    iget-object p1, p0, Lcn/nubia/camera/r/l$d;->b:Lcn/nubia/camera/r/l;

    monitor-enter p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 537
    :try_start_3
    iget-object p2, p0, Lcn/nubia/camera/r/l$d;->b:Lcn/nubia/camera/r/l;

    invoke-static {p2, v4}, Lcn/nubia/camera/r/l;->d(Lcn/nubia/camera/r/l;Z)Z

    .line 538
    iget-object p2, p0, Lcn/nubia/camera/r/l$d;->b:Lcn/nubia/camera/r/l;

    invoke-static {p2}, Lcn/nubia/camera/r/l;->h(Lcn/nubia/camera/r/l;)Z

    move-result p2

    if-eqz p2, :cond_d

    iget-object p2, p0, Lcn/nubia/camera/r/l$d;->b:Lcn/nubia/camera/r/l;

    invoke-static {p2}, Lcn/nubia/camera/r/l;->i(Lcn/nubia/camera/r/l;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 539
    iget-object p2, p0, Lcn/nubia/camera/r/l$d;->b:Lcn/nubia/camera/r/l;

    invoke-static {p2}, Lcn/nubia/camera/r/l;->j(Lcn/nubia/camera/r/l;)V

    .line 541
    :cond_d
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 546
    :goto_4
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p2

    .line 541
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p2

    .line 488
    :cond_e
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
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "MyMediaRecorder"

    const-string v1, "VideoThread start"

    .line 429
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v1, p0, Lcn/nubia/camera/r/l$d;->b:Lcn/nubia/camera/r/l;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/nubia/camera/r/l;->b(Lcn/nubia/camera/r/l;I)I

    .line 432
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/r/l$d;->b:Lcn/nubia/camera/r/l;

    invoke-static {v1}, Lcn/nubia/camera/r/l;->e(Lcn/nubia/camera/r/l;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 433
    iget-object v1, p0, Lcn/nubia/camera/r/l$d;->b:Lcn/nubia/camera/r/l;

    invoke-static {v1}, Lcn/nubia/camera/r/l;->n(Lcn/nubia/camera/r/l;)Landroid/media/MediaCodec;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/camera/r/l$d;->b:Lcn/nubia/camera/r/l;

    invoke-static {v3}, Lcn/nubia/camera/r/l;->m(Lcn/nubia/camera/r/l;)I

    move-result v3

    invoke-direct {p0, v2, v1, v3}, Lcn/nubia/camera/r/l$d;->a(ZLandroid/media/MediaCodec;I)V

    goto :goto_0

    :cond_0
    const-string v1, "sending EOS to video encoder"

    .line 435
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v1, p0, Lcn/nubia/camera/r/l$d;->b:Lcn/nubia/camera/r/l;

    invoke-static {v1}, Lcn/nubia/camera/r/l;->n(Lcn/nubia/camera/r/l;)Landroid/media/MediaCodec;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    const/4 v1, 0x1

    .line 437
    iget-object v3, p0, Lcn/nubia/camera/r/l$d;->b:Lcn/nubia/camera/r/l;

    invoke-static {v3}, Lcn/nubia/camera/r/l;->n(Lcn/nubia/camera/r/l;)Landroid/media/MediaCodec;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/camera/r/l$d;->b:Lcn/nubia/camera/r/l;

    invoke-static {v4}, Lcn/nubia/camera/r/l;->m(Lcn/nubia/camera/r/l;)I

    move-result v4

    invoke-direct {p0, v1, v3, v4}, Lcn/nubia/camera/r/l$d;->a(ZLandroid/media/MediaCodec;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 439
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v3, p0, Lcn/nubia/camera/r/l$d;->b:Lcn/nubia/camera/r/l;

    invoke-static {v3, v2}, Lcn/nubia/camera/r/l;->a(Lcn/nubia/camera/r/l;Z)Z

    .line 441
    iget-object v2, p0, Lcn/nubia/camera/r/l$d;->b:Lcn/nubia/camera/r/l;

    invoke-static {v2, v1}, Lcn/nubia/camera/r/l;->a(Lcn/nubia/camera/r/l;Ljava/lang/Exception;)V

    .line 443
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoThread end with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/r/l$d;->b:Lcn/nubia/camera/r/l;

    invoke-static {v2}, Lcn/nubia/camera/r/l;->g(Lcn/nubia/camera/r/l;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " frame"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
