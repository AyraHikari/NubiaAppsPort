.class public Lcom/zte/camera/a/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zte/camera/a/a/g$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/camera/a/a/i$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "i"


# instance fields
.field private A:Lcom/zte/camera/a/a/i$a;

.field public a:Lcom/zte/camera/a/a/f;

.field private c:Landroid/media/MediaCodec;

.field private d:Landroid/view/Surface;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:I

.field private k:Ljava/lang/String;

.field private l:J

.field private m:J

.field private n:Lcom/zte/camera/a/a/a;

.field private o:Lcom/zte/camera/a/a/e;

.field private p:Ljava/lang/String;

.field private q:Landroid/content/Context;

.field private r:Landroid/opengl/EGLContext;

.field private s:Landroid/os/Handler;

.field private t:Landroid/os/HandlerThread;

.field private u:Lcom/zte/camera/a/a/d;

.field private v:Ljava/lang/String;

.field private w:I

.field private x:I

.field private y:Lcom/zte/camera/ui/b/b/a;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/zte/camera/a/a/i;->f:I

    .line 38
    iput v0, p0, Lcom/zte/camera/a/a/i;->g:I

    .line 39
    iput v0, p0, Lcom/zte/camera/a/a/i;->h:I

    .line 40
    iput-boolean v0, p0, Lcom/zte/camera/a/a/i;->i:Z

    .line 41
    iput v0, p0, Lcom/zte/camera/a/a/i;->j:I

    const/4 v1, 0x0

    .line 42
    iput-object v1, p0, Lcom/zte/camera/a/a/i;->k:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 43
    iput-wide v2, p0, Lcom/zte/camera/a/a/i;->l:J

    .line 44
    iput-wide v2, p0, Lcom/zte/camera/a/a/i;->m:J

    .line 48
    iput-object v1, p0, Lcom/zte/camera/a/a/i;->n:Lcom/zte/camera/a/a/a;

    .line 49
    iput-object v1, p0, Lcom/zte/camera/a/a/i;->o:Lcom/zte/camera/a/a/e;

    .line 50
    iput-object v1, p0, Lcom/zte/camera/a/a/i;->p:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/zte/camera/a/a/i;->s:Landroid/os/Handler;

    .line 60
    iput-object v1, p0, Lcom/zte/camera/a/a/i;->t:Landroid/os/HandlerThread;

    .line 62
    iput-object v1, p0, Lcom/zte/camera/a/a/i;->u:Lcom/zte/camera/a/a/d;

    .line 63
    iput-object v1, p0, Lcom/zte/camera/a/a/i;->v:Ljava/lang/String;

    const/4 v1, -0x1

    .line 64
    iput v1, p0, Lcom/zte/camera/a/a/i;->w:I

    .line 65
    iput v0, p0, Lcom/zte/camera/a/a/i;->x:I

    .line 67
    iput v1, p0, Lcom/zte/camera/a/a/i;->z:I

    .line 90
    sget-object v0, Lcom/zte/camera/a/a/i;->b:Ljava/lang/String;

    const-string v1, "create VlogVideoEncoder"

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/zte/camera/a/a/i;->t:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "video"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zte/camera/a/a/i;->t:Landroid/os/HandlerThread;

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/zte/camera/a/a/i;->t:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 95
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/zte/camera/a/a/i;->t:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zte/camera/a/a/i;->s:Landroid/os/Handler;

    .line 96
    iput-object p1, p0, Lcom/zte/camera/a/a/i;->q:Landroid/content/Context;

    .line 98
    iget-object p1, p0, Lcom/zte/camera/a/a/i;->u:Lcom/zte/camera/a/a/d;

    if-nez p1, :cond_1

    .line 99
    new-instance p1, Lcom/zte/camera/a/a/d;

    iget-object v0, p0, Lcom/zte/camera/a/a/i;->q:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/zte/camera/a/a/d;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/zte/camera/a/a/i;->u:Lcom/zte/camera/a/a/d;

    :cond_1
    const-string p1, "video/avc"

    .line 102
    iput-object p1, p0, Lcom/zte/camera/a/a/i;->e:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;II)Landroid/media/MediaFormat;
    .locals 2

    .line 305
    invoke-static {p1, p2, p3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p1

    if-nez p1, :cond_0

    .line 307
    sget-object p1, Lcom/zte/camera/a/a/i;->b:Ljava/lang/String;

    const-string p2, "mediaFormat null"

    invoke-static {p1, p2}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const v0, 0x7f000789

    const-string v1, "color-format"

    .line 311
    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    mul-int/2addr p2, p3

    mul-int/lit8 p2, p2, 0x2

    const-string p3, "bitrate"

    .line 312
    invoke-virtual {p1, p3, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 p2, 0x1e

    const-string p3, "frame-rate"

    .line 313
    invoke-virtual {p1, p3, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 p2, 0x1

    const-string p3, "i-frame-interval"

    .line 314
    invoke-virtual {p1, p3, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-object p1
.end method

.method static synthetic a(Lcom/zte/camera/a/a/i;)Lcom/zte/camera/ui/b/b/a;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/zte/camera/a/a/i;->y:Lcom/zte/camera/ui/b/b/a;

    return-object p0
.end method

.method private a(Landroid/content/Context;IIIJ)V
    .locals 0

    const/4 p1, 0x1

    .line 474
    :try_start_0
    new-instance p2, Lcom/zte/camera/a/a/a;

    iget-object p3, p0, Lcom/zte/camera/a/a/i;->a:Lcom/zte/camera/a/a/f;

    const/4 p4, 0x0

    invoke-direct {p2, p3, p1, p4}, Lcom/zte/camera/a/a/a;-><init>(Lcom/zte/camera/a/a/f;ZLcom/zte/camera/a/a/c;)V

    iput-object p2, p0, Lcom/zte/camera/a/a/i;->n:Lcom/zte/camera/a/a/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 479
    sget-object p2, Lcom/zte/camera/a/a/i;->b:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "prepareBackgroundAudio error:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/zte/camera/a/a/i;Z)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/zte/camera/a/a/i;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 13

    .line 342
    iget-object v0, p0, Lcom/zte/camera/a/a/i;->c:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    .line 343
    sget-object v0, Lcom/zte/camera/a/a/i;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drainEncoder mediacode is null end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 348
    sget-object v1, Lcom/zte/camera/a/a/i;->b:Ljava/lang/String;

    const-string v2, "enter endOfStream"

    invoke-static {v1, v2}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v1, p0, Lcom/zte/camera/a/a/i;->c:Landroid/media/MediaCodec;

    if-eqz v1, :cond_1

    .line 351
    :try_start_0
    invoke-virtual {v1}, Landroid/media/MediaCodec;->signalEndOfInputStream()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 353
    sget-object v2, Lcom/zte/camera/a/a/i;->b:Ljava/lang/String;

    const-string v3, "enter signalEndOfInputStream error:"

    invoke-static {v2, v3}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 357
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/zte/camera/a/a/i;->n:Lcom/zte/camera/a/a/a;

    if-eqz v1, :cond_2

    .line 358
    invoke-virtual {v1, v0}, Lcom/zte/camera/a/a/a;->a(Z)V

    .line 363
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/zte/camera/a/a/i;->c:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 364
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 365
    iget-object v3, p0, Lcom/zte/camera/a/a/i;->c:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v2, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3

    .line 366
    sget-object v6, Lcom/zte/camera/a/a/i;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "outputBufferIndex = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v6, -0x1

    if-ne v3, v6, :cond_4

    .line 369
    sget-object v3, Lcom/zte/camera/a/a/i;->b:Ljava/lang/String;

    const-string v6, "INFO_TRY_AGAIN_LATER"

    invoke-static {v3, v6}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_a

    goto/16 :goto_2

    :cond_4
    const/4 v6, -0x3

    if-ne v3, v6, :cond_5

    .line 374
    iget-object v1, p0, Lcom/zte/camera/a/a/i;->c:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    goto/16 :goto_1

    :cond_5
    const/4 v6, -0x2

    if-ne v3, v6, :cond_6

    .line 376
    sget-object v3, Lcom/zte/camera/a/a/i;->b:Ljava/lang/String;

    const-string v6, "INFO_OUTPUT_FORMAT_CHANGED"

    invoke-static {v3, v6}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v3, p0, Lcom/zte/camera/a/a/i;->c:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v3

    .line 378
    iget-object v6, p0, Lcom/zte/camera/a/a/i;->n:Lcom/zte/camera/a/a/a;

    invoke-virtual {v6, v3}, Lcom/zte/camera/a/a/a;->a(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;

    .line 379
    iget-object v3, p0, Lcom/zte/camera/a/a/i;->n:Lcom/zte/camera/a/a/a;

    invoke-virtual {v3}, Lcom/zte/camera/a/a/a;->c()V

    goto/16 :goto_1

    :cond_6
    if-gez v3, :cond_7

    .line 381
    sget-object v3, Lcom/zte/camera/a/a/i;->b:Ljava/lang/String;

    const-string v6, "outputBufferIndex < 0"

    invoke-static {v3, v6}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 383
    :cond_7
    aget-object v6, v1, v3

    .line 400
    iget v7, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v7, v7, 0x2

    const/4 v8, 0x0

    if-eqz v7, :cond_8

    .line 401
    sget-object v7, Lcom/zte/camera/a/a/i;->b:Ljava/lang/String;

    const-string v9, "BUFFER_FLAG_CODEC_CONFIG"

    invoke-static {v7, v9}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iput v8, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 405
    :cond_8
    iget v7, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v7, :cond_9

    .line 406
    sget-object v7, Lcom/zte/camera/a/a/i;->b:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bufferInfo.size = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object v9, p0, Lcom/zte/camera/a/a/i;->a:Lcom/zte/camera/a/a/f;

    if-eqz v9, :cond_9

    .line 408
    invoke-virtual {v9}, Lcom/zte/camera/a/a/f;->c()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 409
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "write video data: bufferInfo.presentationTimeUs = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", bufferInfo.size = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " bufferInfo.flag = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " outputBufferIndex = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget v7, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 414
    iget v7, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v10, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v7, v10

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 415
    invoke-virtual {v9, v6, v2}, Lcom/zte/camera/a/a/f;->b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 418
    :cond_9
    iget-object v6, p0, Lcom/zte/camera/a/a/i;->c:Landroid/media/MediaCodec;

    invoke-virtual {v6, v3, v8}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 420
    iget v3, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_a

    .line 421
    sget-object p1, Lcom/zte/camera/a/a/i;->b:Ljava/lang/String;

    const-string v1, "BUFFER_FLAG_END_OF_STREAM"

    invoke-static {p1, v1}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object p1, p0, Lcom/zte/camera/a/a/i;->n:Lcom/zte/camera/a/a/a;

    invoke-virtual {p1, v0}, Lcom/zte/camera/a/a/a;->a(Z)V

    goto :goto_2

    .line 426
    :cond_a
    :goto_1
    iget-object v3, p0, Lcom/zte/camera/a/a/i;->c:Landroid/media/MediaCodec;

    invoke-virtual {v3, v2, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gez v3, :cond_3

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 430
    sget-object v0, Lcom/zte/camera/a/a/i;->b:Ljava/lang/String;

    const-string v1, "getOutputBufferCache fail"

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private b(Ljava/lang/String;)Lcom/zte/camera/a/a/f;
    .locals 2

    .line 230
    new-instance v0, Lcom/zte/camera/a/a/f;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/zte/camera/a/a/f;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/zte/camera/a/a/i;->a:Lcom/zte/camera/a/a/f;

    const/4 p1, 0x0

    .line 231
    invoke-virtual {v0, p1}, Lcom/zte/camera/a/a/f;->a(Z)V

    .line 232
    iget-object p1, p0, Lcom/zte/camera/a/a/i;->a:Lcom/zte/camera/a/a/f;

    invoke-virtual {p1}, Lcom/zte/camera/a/a/f;->d()I

    move-result p1

    iput p1, p0, Lcom/zte/camera/a/a/i;->h:I

    .line 233
    iget-object p1, p0, Lcom/zte/camera/a/a/i;->a:Lcom/zte/camera/a/a/f;

    return-object p1
.end method

.method private synthetic b(IILjava/lang/String;I)V
    .locals 3

    .line 246
    sget-object v0, Lcom/zte/camera/a/a/i;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startVideoEncoder width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,heigh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/zte/camera/a/a/i;->a(IILjava/lang/String;I)V

    return-void
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/zte/camera/a/a/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method private synthetic c(Landroid/net/Uri;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 524
    iget-object v1, p0, Lcom/zte/camera/a/a/i;->q:Landroid/content/Context;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 525
    iget-object v1, p0, Lcom/zte/camera/a/a/i;->q:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    move v0, p1

    .line 528
    :cond_0
    sget-object p1, Lcom/zte/camera/a/a/i;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteFinalVideoFile delete uri reuslt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic c(Ljava/lang/String;I)V
    .locals 3

    .line 263
    sget-object v0, Lcom/zte/camera/a/a/i;->b:Ljava/lang/String;

    const-string v1, "stopVideoEncoder"

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 264
    invoke-direct {p0, v1}, Lcom/zte/camera/a/a/i;->a(Z)V

    .line 265
    invoke-direct {p0}, Lcom/zte/camera/a/a/i;->d()V

    .line 266
    iget-object v1, p0, Lcom/zte/camera/a/a/i;->y:Lcom/zte/camera/ui/b/b/a;

    if-eqz v1, :cond_0

    .line 267
    invoke-virtual {v1}, Lcom/zte/camera/ui/b/b/a;->a()V

    :cond_0
    const-string v1, "stop all resources"

    .line 269
    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v1, p0, Lcom/zte/camera/a/a/i;->A:Lcom/zte/camera/a/a/i$a;

    if-eqz v1, :cond_1

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "segment filepath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/zte/camera/a/a/i;->A:Lcom/zte/camera/a/a/i$a;

    invoke-interface {v0, p1, p2}, Lcom/zte/camera/a/a/i$a;->a(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method private d()V
    .locals 3

    .line 438
    :try_start_0
    iget-object v0, p0, Lcom/zte/camera/a/a/i;->c:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 440
    iget-object v0, p0, Lcom/zte/camera/a/a/i;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    .line 441
    iput-object v0, p0, Lcom/zte/camera/a/a/i;->c:Landroid/media/MediaCodec;

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/zte/camera/a/a/i;->n:Lcom/zte/camera/a/a/a;

    if-eqz v0, :cond_1

    .line 444
    invoke-virtual {v0}, Lcom/zte/camera/a/a/a;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 447
    sget-object v1, Lcom/zte/camera/a/a/i;->b:Ljava/lang/String;

    const-string v2, "releaseVlogVideoEncoder fail"

    invoke-static {v1, v2}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic lambda$Oct6WDS5MyZm5OCB-tTF_3h6l7g(Lcom/zte/camera/a/a/i;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zte/camera/a/a/i;->c(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic lambda$bPMojijZITPTc7ZrI6mj9hT50XE(Lcom/zte/camera/a/a/i;IILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zte/camera/a/a/i;->b(IILjava/lang/String;I)V

    return-void
.end method

.method public static synthetic lambda$mVSw8ReDXOvJUmBFruJSlTRzi88(Lcom/zte/camera/a/a/i;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/camera/a/a/i;->c(Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 255
    iget-boolean v0, p0, Lcom/zte/camera/a/a/i;->i:Z

    if-nez v0, :cond_0

    return-void

    .line 258
    :cond_0
    iget v0, p0, Lcom/zte/camera/a/a/i;->w:I

    .line 259
    iget-object v1, p0, Lcom/zte/camera/a/a/i;->k:Ljava/lang/String;

    const/4 v2, 0x0

    .line 260
    iput-boolean v2, p0, Lcom/zte/camera/a/a/i;->i:Z

    .line 261
    iget-object v2, p0, Lcom/zte/camera/a/a/i;->s:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 262
    new-instance v3, Lcom/zte/camera/a/a/-$$Lambda$i$Oct6WDS5MyZm5OCB-tTF_3h6l7g;

    invoke-direct {v3, p0, v1, v0}, Lcom/zte/camera/a/a/-$$Lambda$i$Oct6WDS5MyZm5OCB-tTF_3h6l7g;-><init>(Lcom/zte/camera/a/a/i;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 156
    iput p1, p0, Lcom/zte/camera/a/a/i;->z:I

    return-void
.end method

.method public a(IILjava/lang/String;I)V
    .locals 7

    .line 107
    iput p1, p0, Lcom/zte/camera/a/a/i;->f:I

    .line 108
    iput p2, p0, Lcom/zte/camera/a/a/i;->g:I

    .line 109
    iput-object p3, p0, Lcom/zte/camera/a/a/i;->v:Ljava/lang/String;

    .line 110
    iput p4, p0, Lcom/zte/camera/a/a/i;->w:I

    .line 111
    sget-object p1, Lcom/zte/camera/a/a/i;->b:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "encoder video="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/zte/camera/a/a/i;->e:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ",module = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "index = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object p2, p0, Lcom/zte/camera/a/a/i;->u:Lcom/zte/camera/a/a/d;

    if-eqz p2, :cond_0

    .line 115
    iget-object p4, p0, Lcom/zte/camera/a/a/i;->v:Ljava/lang/String;

    iget v0, p0, Lcom/zte/camera/a/a/i;->w:I

    invoke-virtual {p2, p4, v0}, Lcom/zte/camera/a/a/d;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/zte/camera/a/a/i;->k:Ljava/lang/String;

    .line 116
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "outputFilename = "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p4, p0, Lcom/zte/camera/a/a/i;->k:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_0
    new-instance p2, Ljava/io/File;

    iget-object p4, p0, Lcom/zte/camera/a/a/i;->k:Ljava/lang/String;

    invoke-direct {p2, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 120
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result p2

    .line 121
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "file exist delete: ret = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_1
    iget-object p2, p0, Lcom/zte/camera/a/a/i;->e:Ljava/lang/String;

    iget p4, p0, Lcom/zte/camera/a/a/i;->f:I

    iget v0, p0, Lcom/zte/camera/a/a/i;->g:I

    invoke-direct {p0, p2, p4, v0}, Lcom/zte/camera/a/a/i;->a(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p2

    const/4 p4, 0x0

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/zte/camera/a/a/i;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/camera/a/a/i;->c:Landroid/media/MediaCodec;

    const/4 v1, 0x1

    .line 130
    invoke-virtual {v0, p2, p4, p4, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 132
    iget-object p2, p0, Lcom/zte/camera/a/a/i;->c:Landroid/media/MediaCodec;

    invoke-virtual {p2}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object p2

    iput-object p2, p0, Lcom/zte/camera/a/a/i;->d:Landroid/view/Surface;

    .line 134
    invoke-static {p3}, Lcom/zte/camera/ui/b/c/d;->a(Ljava/lang/String;)I

    move-result p2

    .line 135
    new-instance v0, Lcom/zte/camera/ui/b/b/a;

    iget-object p3, p0, Lcom/zte/camera/a/a/i;->q:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/camera/a/a/i;->r:Landroid/opengl/EGLContext;

    iget-object v2, p0, Lcom/zte/camera/a/a/i;->d:Landroid/view/Surface;

    invoke-direct {v0, p3, v1, v2}, Lcom/zte/camera/ui/b/b/a;-><init>(Landroid/content/Context;Landroid/opengl/EGLContext;Landroid/view/Surface;)V

    iput-object v0, p0, Lcom/zte/camera/a/a/i;->y:Lcom/zte/camera/ui/b/b/a;

    .line 136
    iget v1, p0, Lcom/zte/camera/a/a/i;->f:I

    iget v2, p0, Lcom/zte/camera/a/a/i;->g:I

    iget v3, p0, Lcom/zte/camera/a/a/i;->z:I

    iget v5, p0, Lcom/zte/camera/a/a/i;->w:I

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/zte/camera/ui/b/b/a;->a(IIIII)V

    .line 137
    iget-object p3, p0, Lcom/zte/camera/a/a/i;->c:Landroid/media/MediaCodec;

    invoke-virtual {p3}, Landroid/media/MediaCodec;->start()V

    .line 138
    iget-object p3, p0, Lcom/zte/camera/a/a/i;->k:Ljava/lang/String;

    invoke-direct {p0, p3}, Lcom/zte/camera/a/a/i;->b(Ljava/lang/String;)Lcom/zte/camera/a/a/f;

    move-result-object p3

    iput-object p3, p0, Lcom/zte/camera/a/a/i;->a:Lcom/zte/camera/a/a/f;

    .line 140
    iget p3, p0, Lcom/zte/camera/a/a/i;->w:I

    invoke-static {p2, p3}, Lcom/zte/camera/ui/b/c/d;->a(II)I

    move-result p3

    iput p3, p0, Lcom/zte/camera/a/a/i;->x:I

    .line 141
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initVlogVideoEncoder templateindex="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ",segId="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget v0, p0, Lcom/zte/camera/a/a/i;->w:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ",duration="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget v0, p0, Lcom/zte/camera/a/a/i;->x:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/zte/camera/a/a/i;->q:Landroid/content/Context;

    iget v3, p0, Lcom/zte/camera/a/a/i;->w:I

    iget v4, p0, Lcom/zte/camera/a/a/i;->x:I

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/zte/camera/a/a/i;->a(Landroid/content/Context;IIIJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 144
    sget-object p2, Lcom/zte/camera/a/a/i;->b:Ljava/lang/String;

    const-string p3, "initVlogVideoEncoder fail"

    invoke-static {p2, p3}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    iput-object p4, p0, Lcom/zte/camera/a/a/i;->k:Ljava/lang/String;

    .line 147
    invoke-virtual {p0}, Lcom/zte/camera/a/a/i;->a()V

    :goto_0
    return-void
.end method

.method public a(IJ)V
    .locals 2

    .line 160
    iget-boolean v0, p0, Lcom/zte/camera/a/a/i;->i:Z

    if-nez v0, :cond_0

    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/zte/camera/a/a/i;->s:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 165
    new-instance v1, Lcom/zte/camera/a/a/i$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/zte/camera/a/a/i$1;-><init>(Lcom/zte/camera/a/a/i;IJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .locals 3

    .line 83
    sget-object v0, Lcom/zte/camera/a/a/i;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCombineFinshed uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/zte/camera/a/a/i;->A:Lcom/zte/camera/a/a/i$a;

    if-eqz v0, :cond_0

    .line 85
    invoke-interface {v0, p1}, Lcom/zte/camera/a/a/i$a;->a(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/opengl/EGLContext;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/zte/camera/a/a/i;->r:Landroid/opengl/EGLContext;

    return-void
.end method

.method public a(Lcom/zte/camera/a/a/i$a;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/zte/camera/a/a/i;->A:Lcom/zte/camera/a/a/i$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 9

    .line 506
    iget-object v0, p0, Lcom/zte/camera/a/a/i;->u:Lcom/zte/camera/a/a/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 507
    new-instance v4, Lcom/zte/camera/a/a/g;

    invoke-direct {v4}, Lcom/zte/camera/a/a/g;-><init>()V

    .line 508
    invoke-virtual {v4, p0}, Lcom/zte/camera/a/a/g;->a(Lcom/zte/camera/a/a/g$b;)V

    .line 509
    iget-object v2, p0, Lcom/zte/camera/a/a/i;->u:Lcom/zte/camera/a/a/d;

    iget v5, p0, Lcom/zte/camera/a/a/i;->f:I

    iget v6, p0, Lcom/zte/camera/a/a/i;->g:I

    iget v7, p0, Lcom/zte/camera/a/a/i;->h:I

    move-object v3, p1

    move-object v8, p0

    invoke-virtual/range {v2 .. v8}, Lcom/zte/camera/a/a/d;->a(Ljava/lang/String;Lcom/zte/camera/a/a/g;IIILcom/zte/camera/a/a/g$b;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 511
    invoke-virtual {p0, v1}, Lcom/zte/camera/a/a/i;->a(Landroid/net/Uri;)V

    :cond_0
    return-void

    .line 517
    :cond_1
    invoke-virtual {p0, v1}, Lcom/zte/camera/a/a/i;->a(Landroid/net/Uri;)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/zte/camera/a/a/i;->u:Lcom/zte/camera/a/a/d;

    if-eqz v0, :cond_0

    .line 494
    invoke-virtual {v0, p1, p2}, Lcom/zte/camera/a/a/d;->b(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;III)Z
    .locals 9

    .line 238
    iget-boolean v0, p0, Lcom/zte/camera/a/a/i;->i:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    .line 243
    iput-boolean v0, p0, Lcom/zte/camera/a/a/i;->i:Z

    .line 244
    iget-object v1, p0, Lcom/zte/camera/a/a/i;->s:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 245
    new-instance v8, Lcom/zte/camera/a/a/-$$Lambda$i$bPMojijZITPTc7ZrI6mj9hT50XE;

    move-object v2, v8

    move-object v3, p0

    move v4, p3

    move v5, p4

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/zte/camera/a/a/-$$Lambda$i$bPMojijZITPTc7ZrI6mj9hT50XE;-><init>(Lcom/zte/camera/a/a/i;IILjava/lang/String;I)V

    invoke-virtual {v1, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return v0
.end method

.method public b(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/zte/camera/a/a/i;->u:Lcom/zte/camera/a/a/d;

    if-eqz v0, :cond_0

    .line 500
    invoke-virtual {v0, p1, p2}, Lcom/zte/camera/a/a/d;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public b()V
    .locals 1

    .line 534
    iget-object v0, p0, Lcom/zte/camera/a/a/i;->u:Lcom/zte/camera/a/a/d;

    if-eqz v0, :cond_0

    .line 535
    invoke-virtual {v0}, Lcom/zte/camera/a/a/d;->a()V

    :cond_0
    return-void
.end method

.method public b(Landroid/net/Uri;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 521
    iget-object v0, p0, Lcom/zte/camera/a/a/i;->q:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/zte/camera/a/a/i;->s:Landroid/os/Handler;

    new-instance v1, Lcom/zte/camera/a/a/-$$Lambda$i$mVSw8ReDXOvJUmBFruJSlTRzi88;

    invoke-direct {v1, p0, p1}, Lcom/zte/camera/a/a/-$$Lambda$i$mVSw8ReDXOvJUmBFruJSlTRzi88;-><init>(Lcom/zte/camera/a/a/i;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
