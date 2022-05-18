.class public Lcom/zte/camera/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "a"


# instance fields
.field private A:Landroid/os/HandlerThread;

.field private B:Lcom/zte/camera/a/a/c;

.field private C:Landroid/media/MediaCodec$Callback;

.field private D:Landroid/media/MediaCodec$Callback;

.field private b:Lcom/zte/camera/a/a/f;

.field private c:Landroid/media/MediaCodec$BufferInfo;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Lcom/zte/camera/a/a/e;

.field private j:J

.field private k:J

.field private l:J

.field private m:I

.field private n:I

.field private o:J

.field private p:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/media/MediaCodec$BufferInfo;",
            ">;"
        }
    .end annotation
.end field

.field private r:Landroid/media/MediaCodec;

.field private s:Landroid/media/MediaCodec;

.field private t:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/media/MediaCodec$BufferInfo;",
            ">;"
        }
    .end annotation
.end field

.field private w:Landroid/media/MediaFormat;

.field private x:Landroid/media/MediaFormat;

.field private y:J

.field private z:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/zte/camera/a/a/f;ZLcom/zte/camera/a/a/c;)V
    .locals 4

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/zte/camera/a/a/a;->c:Landroid/media/MediaCodec$BufferInfo;

    const/4 v1, 0x0

    .line 30
    iput-boolean v1, p0, Lcom/zte/camera/a/a/a;->d:Z

    .line 31
    iput-boolean v1, p0, Lcom/zte/camera/a/a/a;->e:Z

    .line 32
    iput-boolean v1, p0, Lcom/zte/camera/a/a/a;->f:Z

    .line 33
    iput-boolean v1, p0, Lcom/zte/camera/a/a/a;->g:Z

    .line 35
    iput-boolean v1, p0, Lcom/zte/camera/a/a/a;->h:Z

    .line 36
    iput-object v0, p0, Lcom/zte/camera/a/a/a;->i:Lcom/zte/camera/a/a/e;

    const-wide/16 v2, 0x0

    .line 37
    iput-wide v2, p0, Lcom/zte/camera/a/a/a;->j:J

    .line 38
    iput-wide v2, p0, Lcom/zte/camera/a/a/a;->k:J

    .line 39
    iput-wide v2, p0, Lcom/zte/camera/a/a/a;->l:J

    .line 40
    iput v1, p0, Lcom/zte/camera/a/a/a;->m:I

    .line 41
    iput v1, p0, Lcom/zte/camera/a/a/a;->n:I

    .line 42
    iput-wide v2, p0, Lcom/zte/camera/a/a/a;->o:J

    .line 45
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/zte/camera/a/a/a;->p:Ljava/util/LinkedList;

    .line 46
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/zte/camera/a/a/a;->q:Ljava/util/LinkedList;

    .line 47
    iput-object v0, p0, Lcom/zte/camera/a/a/a;->r:Landroid/media/MediaCodec;

    .line 48
    iput-object v0, p0, Lcom/zte/camera/a/a/a;->s:Landroid/media/MediaCodec;

    .line 49
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/zte/camera/a/a/a;->t:Ljava/util/LinkedList;

    .line 50
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/zte/camera/a/a/a;->u:Ljava/util/LinkedList;

    .line 51
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/zte/camera/a/a/a;->v:Ljava/util/LinkedList;

    .line 52
    iput-object v0, p0, Lcom/zte/camera/a/a/a;->w:Landroid/media/MediaFormat;

    .line 53
    iput-object v0, p0, Lcom/zte/camera/a/a/a;->x:Landroid/media/MediaFormat;

    .line 54
    iput-wide v2, p0, Lcom/zte/camera/a/a/a;->y:J

    .line 56
    iput-object v0, p0, Lcom/zte/camera/a/a/a;->z:Landroid/os/Handler;

    .line 57
    iput-object v0, p0, Lcom/zte/camera/a/a/a;->A:Landroid/os/HandlerThread;

    .line 59
    iput-object v0, p0, Lcom/zte/camera/a/a/a;->B:Lcom/zte/camera/a/a/c;

    .line 115
    new-instance v0, Lcom/zte/camera/a/a/a$1;

    invoke-direct {v0, p0}, Lcom/zte/camera/a/a/a$1;-><init>(Lcom/zte/camera/a/a/a;)V

    iput-object v0, p0, Lcom/zte/camera/a/a/a;->C:Landroid/media/MediaCodec$Callback;

    .line 285
    new-instance v0, Lcom/zte/camera/a/a/a$2;

    invoke-direct {v0, p0}, Lcom/zte/camera/a/a/a$2;-><init>(Lcom/zte/camera/a/a/a;)V

    iput-object v0, p0, Lcom/zte/camera/a/a/a;->D:Landroid/media/MediaCodec$Callback;

    .line 64
    sget-object v0, Lcom/zte/camera/a/a/a;->a:Ljava/lang/String;

    const-string v1, "create VlogAudioProcess"

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iput-object p1, p0, Lcom/zte/camera/a/a/a;->b:Lcom/zte/camera/a/a/f;

    .line 66
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Lcom/zte/camera/a/a/a;->c:Landroid/media/MediaCodec$BufferInfo;

    .line 67
    iget-object p1, p0, Lcom/zte/camera/a/a/a;->A:Landroid/os/HandlerThread;

    if-nez p1, :cond_0

    .line 68
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "audio"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/zte/camera/a/a/a;->A:Landroid/os/HandlerThread;

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/zte/camera/a/a/a;->A:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 71
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/zte/camera/a/a/a;->A:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/zte/camera/a/a/a;->z:Landroid/os/Handler;

    .line 73
    invoke-direct {p0, p2}, Lcom/zte/camera/a/a/a;->b(Z)V

    .line 74
    iput-object p3, p0, Lcom/zte/camera/a/a/a;->B:Lcom/zte/camera/a/a/c;

    return-void
.end method

.method static synthetic a(Lcom/zte/camera/a/a/a;J)J
    .locals 0

    .line 18
    iput-wide p1, p0, Lcom/zte/camera/a/a/a;->k:J

    return-wide p1
.end method

.method static synthetic a(Lcom/zte/camera/a/a/a;Landroid/media/MediaCodec;)Landroid/media/MediaCodec;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/zte/camera/a/a/a;->r:Landroid/media/MediaCodec;

    return-object p1
.end method

.method private static a(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 7

    .line 138
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 140
    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 142
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 146
    :cond_0
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    move v5, v1

    .line 147
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_2

    .line 148
    aget-object v6, v4, v5

    invoke-virtual {v6, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic a(Lcom/zte/camera/a/a/a;Landroid/media/MediaFormat;)Landroid/media/MediaFormat;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/zte/camera/a/a/a;->w:Landroid/media/MediaFormat;

    return-object p1
.end method

.method static synthetic a(Lcom/zte/camera/a/a/a;Lcom/zte/camera/a/a/e;)Lcom/zte/camera/a/a/e;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/zte/camera/a/a/a;->i:Lcom/zte/camera/a/a/e;

    return-object p1
.end method

.method static synthetic a(Lcom/zte/camera/a/a/a;)Ljava/util/LinkedList;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/zte/camera/a/a/a;->t:Ljava/util/LinkedList;

    return-object p0
.end method

.method private a(ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 6

    .line 375
    iget-object v0, p0, Lcom/zte/camera/a/a/a;->b:Lcom/zte/camera/a/a/f;

    invoke-virtual {v0}, Lcom/zte/camera/a/a/f;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/zte/camera/a/a/a;->u:Ljava/util/LinkedList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 377
    iget-object v0, p0, Lcom/zte/camera/a/a/a;->v:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 378
    sget-object v0, Lcom/zte/camera/a/a/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doAudioMux: not ready info.presentationTimeUs = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ",index:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/zte/camera/a/a/a;->s:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 382
    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 383
    sget-object p2, Lcom/zte/camera/a/a/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doAudioMux: BUFFER_FLAG_CODEC_CONFIG  index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object p2, p0, Lcom/zte/camera/a/a/a;->s:Landroid/media/MediaCodec;

    invoke-virtual {p2, p1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void

    .line 387
    :cond_1
    invoke-direct {p0, p2}, Lcom/zte/camera/a/a/a;->a(Landroid/media/MediaCodec$BufferInfo;)V

    .line 388
    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v1, :cond_2

    .line 389
    sget-object v1, Lcom/zte/camera/a/a/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "write audio data: info.presentationTimeUs = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", info.size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " info.flag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object v1, p0, Lcom/zte/camera/a/a/a;->b:Lcom/zte/camera/a/a/f;

    invoke-virtual {v1, v0, p2}, Lcom/zte/camera/a/a/f;->a(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 393
    :cond_2
    iget-object v0, p0, Lcom/zte/camera/a/a/a;->s:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 395
    iget p1, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_4

    .line 396
    sget-object p1, Lcom/zte/camera/a/a/a;->a:Ljava/lang/String;

    const-string p2, "doAudioMux: BUFFER_FLAG_END_OF_STREAM"

    invoke-static {p1, p2}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    monitor-enter p0

    const/4 p1, 0x1

    .line 398
    :try_start_0
    invoke-direct {p0, p1}, Lcom/zte/camera/a/a/a;->b(Z)V

    .line 399
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 400
    iget-object p1, p0, Lcom/zte/camera/a/a/a;->B:Lcom/zte/camera/a/a/c;

    if-eqz p1, :cond_3

    const-wide/16 v0, 0x0

    .line 401
    invoke-virtual {p1, v0, v1}, Lcom/zte/camera/a/a/c;->a(J)V

    .line 403
    :cond_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    :goto_0
    return-void
.end method

.method private a(Landroid/media/MediaCodec$BufferInfo;)V
    .locals 4

    .line 408
    iget-wide v0, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v2, p0, Lcom/zte/camera/a/a/a;->l:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 409
    iput-wide v2, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 411
    :cond_0
    iget-wide v0, p0, Lcom/zte/camera/a/a/a;->y:J

    iget-wide v2, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 412
    iget-wide v0, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v0, p0, Lcom/zte/camera/a/a/a;->y:J

    goto :goto_0

    .line 414
    :cond_1
    iget-wide v0, p0, Lcom/zte/camera/a/a/a;->y:J

    iput-wide v0, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/zte/camera/a/a/a;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/zte/camera/a/a/a;->a(ILandroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method private a(J)Z
    .locals 3

    .line 206
    sget-object v0, Lcom/zte/camera/a/a/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkIsStatusWrong: mAudioNeedDecodeCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zte/camera/a/a/a;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAudioDecodedCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zte/camera/a/a/a;->n:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-boolean v0, p0, Lcom/zte/camera/a/a/a;->d:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/zte/camera/a/a/a;->l:J

    cmp-long p1, v0, p1

    if-lez p1, :cond_1

    .line 208
    iget p1, p0, Lcom/zte/camera/a/a/a;->m:I

    iget p2, p0, Lcom/zte/camera/a/a/a;->n:I

    const/4 v0, 0x1

    if-gt p1, p2, :cond_0

    .line 209
    iput-boolean v0, p0, Lcom/zte/camera/a/a/a;->h:Z

    return v0

    :cond_0
    add-int/2addr p2, v0

    .line 212
    iput p2, p0, Lcom/zte/camera/a/a/a;->n:I

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic a(Lcom/zte/camera/a/a/a;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/zte/camera/a/a/a;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/zte/camera/a/a/a;Landroid/media/MediaCodec;)Landroid/media/MediaCodec;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/zte/camera/a/a/a;->s:Landroid/media/MediaCodec;

    return-object p1
.end method

.method static synthetic b(Lcom/zte/camera/a/a/a;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/zte/camera/a/a/a;->i()V

    return-void
.end method

.method private b(Z)V
    .locals 0

    .line 472
    iput-boolean p1, p0, Lcom/zte/camera/a/a/a;->f:Z

    return-void
.end method

.method static synthetic b(Lcom/zte/camera/a/a/a;J)Z
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/zte/camera/a/a/a;->a(J)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/zte/camera/a/a/a;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/zte/camera/a/a/a;->d:Z

    return p1
.end method

.method static synthetic c(Lcom/zte/camera/a/a/a;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/zte/camera/a/a/a;->d:Z

    return p0
.end method

.method static synthetic d(Lcom/zte/camera/a/a/a;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/zte/camera/a/a/a;->e:Z

    return p0
.end method

.method static synthetic e(Lcom/zte/camera/a/a/a;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/zte/camera/a/a/a;->h:Z

    return p0
.end method

.method static synthetic f(Lcom/zte/camera/a/a/a;)Lcom/zte/camera/a/a/e;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/zte/camera/a/a/a;->i:Lcom/zte/camera/a/a/e;

    return-object p0
.end method

.method static synthetic g(Lcom/zte/camera/a/a/a;)J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/zte/camera/a/a/a;->o:J

    return-wide v0
.end method

.method static synthetic h(Lcom/zte/camera/a/a/a;)J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/zte/camera/a/a/a;->k:J

    return-wide v0
.end method

.method static synthetic h()Ljava/lang/String;
    .locals 1

    .line 18
    sget-object v0, Lcom/zte/camera/a/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/zte/camera/a/a/a;)J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/zte/camera/a/a/a;->l:J

    return-wide v0
.end method

.method private i()V
    .locals 12

    .line 219
    iget-object v0, p0, Lcom/zte/camera/a/a/a;->t:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/zte/camera/a/a/a;->p:Ljava/util/LinkedList;

    .line 220
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 223
    :cond_0
    sget-object v0, Lcom/zte/camera/a/a/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startEncodeAudioAfterFinished, input buffer size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/camera/a/a/a;->t:Ljava/util/LinkedList;

    .line 224
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", output buffer size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/camera/a/a/a;->p:Ljava/util/LinkedList;

    .line 225
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/zte/camera/a/a/a;->p:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_1

    const-string v1, "startEncodeAudioAfterFinished, outInter is null"

    .line 230
    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 233
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 234
    iget-object v2, p0, Lcom/zte/camera/a/a/a;->q:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaCodec$BufferInfo;

    if-nez v2, :cond_2

    const-string v1, "startEncodeAudioAfterFinished, info is null"

    .line 236
    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 239
    :cond_2
    iget v3, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 240
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "audio decoder output: EOS, presentationTimeUs:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v5, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-boolean v3, p0, Lcom/zte/camera/a/a/a;->e:Z

    if-nez v3, :cond_3

    const-string v2, "audio decoder output: audio decode loop"

    .line 242
    invoke-static {v0, v2}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/zte/camera/a/a/a;->r:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 244
    iput-boolean v4, p0, Lcom/zte/camera/a/a/a;->d:Z

    .line 245
    iget-wide v0, p0, Lcom/zte/camera/a/a/a;->o:J

    iget-wide v2, p0, Lcom/zte/camera/a/a/a;->j:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/zte/camera/a/a/a;->o:J

    .line 246
    iget-object v0, p0, Lcom/zte/camera/a/a/a;->i:Lcom/zte/camera/a/a/e;

    invoke-virtual {v0}, Lcom/zte/camera/a/a/e;->k()V

    .line 247
    iget-object v0, p0, Lcom/zte/camera/a/a/a;->r:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 248
    iget-object v0, p0, Lcom/zte/camera/a/a/a;->r:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    return-void

    .line 253
    :cond_3
    iget-object v3, p0, Lcom/zte/camera/a/a/a;->t:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_4

    const-string v1, "startEncodeAudioAfterFinished, inputInter is null."

    .line 255
    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 258
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 259
    iget v8, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 260
    iget-wide v9, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 261
    iget-object v3, p0, Lcom/zte/camera/a/a/a;->s:Landroid/media/MediaCodec;

    if-nez v3, :cond_5

    const-string v1, "startEncodeAudioAfterFinished, mAudioEncoder is null."

    .line 262
    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 265
    :cond_5
    invoke-virtual {v3, v6}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 266
    iget v3, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v3, :cond_6

    .line 267
    iget-object v3, p0, Lcom/zte/camera/a/a/a;->r:Landroid/media/MediaCodec;

    invoke-virtual {v3, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 269
    iget v5, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 270
    iget v5, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v5, v8

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 272
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 273
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 274
    iget-object v5, p0, Lcom/zte/camera/a/a/a;->s:Landroid/media/MediaCodec;

    const/4 v7, 0x0

    iget v11, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 282
    :cond_6
    iget-object v0, p0, Lcom/zte/camera/a/a/a;->r:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :cond_7
    :goto_0
    return-void
.end method

.method static synthetic j(Lcom/zte/camera/a/a/a;)Ljava/util/LinkedList;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/zte/camera/a/a/a;->p:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic k(Lcom/zte/camera/a/a/a;)Ljava/util/LinkedList;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/zte/camera/a/a/a;->q:Ljava/util/LinkedList;

    return-object p0
.end method


# virtual methods
.method public a()Landroid/media/MediaCodec;
    .locals 7

    const-string v0, "audio/mp4a-latm"

    .line 80
    :try_start_0
    invoke-static {v0}, Lcom/zte/camera/a/a/a;->a(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 82
    sget-object v0, Lcom/zte/camera/a/a/a;->a:Ljava/lang/String;

    const-string v1, "find audio codec fail!"

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 85
    :cond_0
    sget-object v3, Lcom/zte/camera/a/a/a;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "audio codec found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v4, p0, Lcom/zte/camera/a/a/a;->i:Lcom/zte/camera/a/a/e;

    if-nez v4, :cond_1

    const-string v0, "mAudioExtractor is null error"

    .line 88
    invoke-static {v3, v0}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 92
    :cond_1
    invoke-virtual {v4}, Lcom/zte/camera/a/a/e;->g()I

    move-result v3

    .line 93
    iget-object v4, p0, Lcom/zte/camera/a/a/a;->i:Lcom/zte/camera/a/a/e;

    invoke-virtual {v4}, Lcom/zte/camera/a/a/e;->f()I

    move-result v4

    .line 94
    iget-object v5, p0, Lcom/zte/camera/a/a/a;->i:Lcom/zte/camera/a/a/e;

    invoke-virtual {v5}, Lcom/zte/camera/a/a/e;->e()I

    move-result v5

    if-nez v3, :cond_2

    const v3, 0xac44

    :cond_2
    const/4 v6, 0x2

    if-nez v4, :cond_3

    move v4, v6

    .line 96
    :cond_3
    invoke-static {v0, v3, v4}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v3, "aac-profile"

    .line 97
    invoke-virtual {v0, v3, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "channel-mask"

    const/16 v4, 0xc

    .line 98
    invoke-virtual {v0, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "bitrate"

    if-nez v5, :cond_4

    const v5, 0xfa00

    .line 99
    :cond_4
    invoke-virtual {v0, v3, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "max-input-size"

    const/16 v4, 0x2800

    .line 100
    invoke-virtual {v0, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 103
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/camera/a/a/a;->s:Landroid/media/MediaCodec;

    .line 104
    iget-object v3, p0, Lcom/zte/camera/a/a/a;->C:Landroid/media/MediaCodec$Callback;

    invoke-virtual {v1, v3}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    .line 105
    iget-object v1, p0, Lcom/zte/camera/a/a/a;->s:Landroid/media/MediaCodec;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v2, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 106
    iget-object v0, p0, Lcom/zte/camera/a/a/a;->s:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 108
    sget-object v1, Lcom/zte/camera/a/a/a;->a:Ljava/lang/String;

    const-string v2, "initVlogAudioEncoder fail"

    invoke-static {v1, v2}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/zte/camera/a/a/a;->s:Landroid/media/MediaCodec;

    return-object v0
.end method

.method public a(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/zte/camera/a/a/a;->x:Landroid/media/MediaFormat;

    return-object p1
.end method

.method public a(Landroid/content/Context;IIIJ)Lcom/zte/camera/a/a/e;
    .locals 4

    .line 180
    new-instance p3, Lcom/zte/camera/a/a/e;

    invoke-direct {p3, p1, p2}, Lcom/zte/camera/a/a/e;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lcom/zte/camera/a/a/a;->i:Lcom/zte/camera/a/a/e;

    .line 182
    invoke-virtual {p3}, Lcom/zte/camera/a/a/e;->a()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, -0x1

    if-ne p1, p3, :cond_0

    .line 184
    sget-object p1, Lcom/zte/camera/a/a/a;->a:Ljava/lang/String;

    const-string p3, "background music audio track fail"

    invoke-static {p1, p3}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 187
    :cond_0
    iget-object p3, p0, Lcom/zte/camera/a/a/a;->i:Lcom/zte/camera/a/a/e;

    invoke-virtual {p3, p1}, Lcom/zte/camera/a/a/e;->b(I)V

    const-wide/16 v0, 0x0

    cmp-long p1, p5, v0

    const-wide/16 v2, 0x3e8

    if-nez p1, :cond_1

    int-to-long p3, p4

    mul-long/2addr p3, v2

    .line 190
    iput-wide p3, p0, Lcom/zte/camera/a/a/a;->l:J

    goto :goto_0

    :cond_1
    mul-long/2addr p5, v2

    .line 192
    iput-wide p5, p0, Lcom/zte/camera/a/a/a;->l:J

    .line 195
    :goto_0
    iget-object p1, p0, Lcom/zte/camera/a/a/a;->i:Lcom/zte/camera/a/a/e;

    invoke-virtual {p1}, Lcom/zte/camera/a/a/e;->d()J

    move-result-wide p3

    iput-wide p3, p0, Lcom/zte/camera/a/a/a;->j:J

    cmp-long p1, p3, v0

    if-gtz p1, :cond_2

    .line 197
    sget-object p1, Lcom/zte/camera/a/a/a;->a:Ljava/lang/String;

    const-string p3, "find audio codec duration fail"

    invoke-static {p1, p3}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 200
    :cond_2
    iget-wide p1, p0, Lcom/zte/camera/a/a/a;->l:J

    div-long/2addr p1, p3

    long-to-int p1, p1

    iput p1, p0, Lcom/zte/camera/a/a/a;->m:I

    .line 202
    iget-object p1, p0, Lcom/zte/camera/a/a/a;->i:Lcom/zte/camera/a/a/e;

    return-object p1
.end method

.method public a(Z)V
    .locals 0

    .line 476
    iput-boolean p1, p0, Lcom/zte/camera/a/a/a;->g:Z

    return-void
.end method

.method public b()Landroid/media/MediaCodec;
    .locals 4

    .line 157
    iget-object v0, p0, Lcom/zte/camera/a/a/a;->i:Lcom/zte/camera/a/a/e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 162
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/zte/camera/a/a/e;->c()Landroid/media/MediaFormat;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const-string v2, "mime"

    .line 166
    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 167
    invoke-static {v2}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/camera/a/a/a;->r:Landroid/media/MediaCodec;

    .line 168
    iget-object v3, p0, Lcom/zte/camera/a/a/a;->D:Landroid/media/MediaCodec$Callback;

    invoke-virtual {v2, v3}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    .line 169
    iget-object v2, p0, Lcom/zte/camera/a/a/a;->r:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v1, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 170
    iget-object v0, p0, Lcom/zte/camera/a/a/a;->r:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 172
    sget-object v1, Lcom/zte/camera/a/a/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createVlogAudioDecoder fail: e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 175
    :goto_0
    iget-object v0, p0, Lcom/zte/camera/a/a/a;->r:Landroid/media/MediaCodec;

    return-object v0
.end method

.method public b(Landroid/content/Context;IIIJ)V
    .locals 11

    move-object v8, p0

    .line 458
    iget-object v9, v8, Lcom/zte/camera/a/a/a;->z:Landroid/os/Handler;

    if-nez v9, :cond_0

    return-void

    .line 461
    :cond_0
    new-instance v10, Lcom/zte/camera/a/a/a$3;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-wide/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/zte/camera/a/a/a$3;-><init>(Lcom/zte/camera/a/a/a;Landroid/content/Context;IIIJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c()V
    .locals 3

    .line 357
    iget-object v0, p0, Lcom/zte/camera/a/a/a;->b:Lcom/zte/camera/a/a/f;

    invoke-virtual {v0}, Lcom/zte/camera/a/a/f;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 358
    iget-object v0, p0, Lcom/zte/camera/a/a/a;->w:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    .line 359
    iget-object v1, p0, Lcom/zte/camera/a/a/a;->b:Lcom/zte/camera/a/a/f;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/zte/camera/a/a/f;->a(ILandroid/media/MediaFormat;)V

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/zte/camera/a/a/a;->x:Landroid/media/MediaFormat;

    if-eqz v0, :cond_1

    .line 362
    iget-object v1, p0, Lcom/zte/camera/a/a/a;->b:Lcom/zte/camera/a/a/f;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/zte/camera/a/a/f;->a(ILandroid/media/MediaFormat;)V

    .line 367
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/zte/camera/a/a/a;->v:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodec$BufferInfo;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/zte/camera/a/a/a;->u:Ljava/util/LinkedList;

    .line 368
    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 369
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/zte/camera/a/a/a;->a(ILandroid/media/MediaCodec$BufferInfo;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public d()V
    .locals 4

    .line 419
    sget-object v0, Lcom/zte/camera/a/a/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseAllCodecs mAudioEncoderDone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/zte/camera/a/a/a;->f:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mVideoEncoderDone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/zte/camera/a/a/a;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-boolean v0, p0, Lcom/zte/camera/a/a/a;->f:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/zte/camera/a/a/a;->g:Z

    if-eqz v0, :cond_4

    .line 422
    :try_start_0
    iget-object v0, p0, Lcom/zte/camera/a/a/a;->z:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 424
    iget-object v0, p0, Lcom/zte/camera/a/a/a;->z:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 425
    iput-object v1, p0, Lcom/zte/camera/a/a/a;->z:Landroid/os/Handler;

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/zte/camera/a/a/a;->i:Lcom/zte/camera/a/a/e;

    if-eqz v0, :cond_1

    .line 428
    invoke-virtual {v0}, Lcom/zte/camera/a/a/e;->b()V

    .line 429
    iput-object v1, p0, Lcom/zte/camera/a/a/a;->i:Lcom/zte/camera/a/a/e;

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/zte/camera/a/a/a;->r:Landroid/media/MediaCodec;

    if-eqz v0, :cond_2

    .line 432
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 433
    iget-object v0, p0, Lcom/zte/camera/a/a/a;->r:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 434
    iput-object v1, p0, Lcom/zte/camera/a/a/a;->r:Landroid/media/MediaCodec;

    .line 436
    :cond_2
    iget-object v0, p0, Lcom/zte/camera/a/a/a;->s:Landroid/media/MediaCodec;

    if-eqz v0, :cond_3

    .line 437
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 438
    iget-object v0, p0, Lcom/zte/camera/a/a/a;->s:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 439
    iput-object v1, p0, Lcom/zte/camera/a/a/a;->s:Landroid/media/MediaCodec;

    .line 441
    :cond_3
    iget-object v0, p0, Lcom/zte/camera/a/a/a;->b:Lcom/zte/camera/a/a/f;

    if-eqz v0, :cond_4

    .line 442
    invoke-virtual {v0}, Lcom/zte/camera/a/a/f;->a()V

    .line 443
    iput-object v1, p0, Lcom/zte/camera/a/a/a;->b:Lcom/zte/camera/a/a/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 446
    sget-object v1, Lcom/zte/camera/a/a/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseAllCodecs, e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method public e()Z
    .locals 1

    .line 480
    iget-boolean v0, p0, Lcom/zte/camera/a/a/a;->g:Z

    return v0
.end method

.method public f()Z
    .locals 1

    .line 484
    iget-boolean v0, p0, Lcom/zte/camera/a/a/a;->f:Z

    return v0
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x1

    .line 488
    iput-boolean v0, p0, Lcom/zte/camera/a/a/a;->f:Z

    return-void
.end method
