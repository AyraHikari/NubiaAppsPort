.class public Lb/a/a/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private a:Landroid/media/MediaMuxer;

.field private b:I

.field private c:J

.field private d:J

.field private e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lb/a/a/c/f;

.field private h:Lb/a/a/c/h;

.field private i:I

.field private j:J

.field private k:J

.field private l:Ljava/lang/Object;

.field private m:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lb/a/a/c/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lb/a/a/f/a;->b:I

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p0, Lb/a/a/f/a;->c:J

    .line 4
    iput-wide v1, p0, Lb/a/a/f/a;->d:J

    .line 5
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lb/a/a/f/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lb/a/a/f/a;->f:Ljava/util/HashMap;

    .line 7
    iput v0, p0, Lb/a/a/f/a;->i:I

    .line 8
    iput-wide v1, p0, Lb/a/a/f/a;->j:J

    .line 9
    iput-wide v1, p0, Lb/a/a/f/a;->k:J

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lb/a/a/f/a;->l:Ljava/lang/Object;

    .line 11
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lb/a/a/f/a;->m:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 12
    new-instance v0, Landroid/media/MediaMuxer;

    invoke-direct {v0, p1, p2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lb/a/a/f/a;->a:Landroid/media/MediaMuxer;

    return-void
.end method

.method private declared-synchronized a(Landroid/media/MediaFormat;)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lb/a/a/f/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    .line 2
    iget-object v0, p0, Lb/a/a/f/a;->a:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lb/a/a/f/a;->l:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    iget-object v1, p0, Lb/a/a/f/a;->a:Landroid/media/MediaMuxer;

    invoke-virtual {v1, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v1

    .line 5
    iget-object v2, p0, Lb/a/a/f/a;->f:Ljava/util/HashMap;

    const-string v3, "mime"

    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 7
    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p1, p0, Lb/a/a/f/a;->f:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    iget v1, p0, Lb/a/a/f/a;->b:I

    if-lt p1, v1, :cond_0

    const-string p1, "MuxerWriter"

    const-string v1, "all tracks have added, start Muxer"

    .line 9
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object p1, p0, Lb/a/a/f/a;->a:Landroid/media/MediaMuxer;

    invoke-virtual {p1}, Landroid/media/MediaMuxer;->start()V

    .line 11
    iget-object p1, p0, Lb/a/a/f/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 12
    :cond_0
    :goto_0
    iget-object p1, p0, Lb/a/a/f/a;->m:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 13
    iget-object p1, p0, Lb/a/a/f/a;->m:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/a/a/c/a;

    const-string v1, "MuxerWriter"

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chenpeng1 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lb/a/a/c/a;->a:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lb/a/a/c/a;->a:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lb/a/a/c/a;->a:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v3, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-object v1, p1, Lb/a/a/c/a;->b:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 16
    iget-object v2, p1, Lb/a/a/c/a;->a:Landroid/media/MediaCodec$BufferInfo;

    iget-object p1, p1, Lb/a/a/c/a;->c:Ljava/lang/String;

    invoke-direct {p0, v1, v2, p1}, Lb/a/a/f/a;->o(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 18
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    const-string p1, "MuxerWriter"

    const-string v0, "Muxer has started , MediaFormat should not change"

    .line 19
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "MediaFormat changed after MediaMuxer started"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private c(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/f/a;->h:Lb/a/a/c/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lb/a/a/c/h;->f(J)V

    :cond_0
    return-void
.end method

.method private n(JLjava/lang/String;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lb/a/a/f/a;->j:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    const-string v0, "video/"

    .line 2
    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iput-wide p1, p0, Lb/a/a/f/a;->d:J

    goto :goto_0

    :cond_0
    const-string v0, "audio/"

    .line 4
    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 5
    iput-wide p1, p0, Lb/a/a/f/a;->c:J

    .line 6
    :cond_1
    :goto_0
    iget-wide p1, p0, Lb/a/a/f/a;->d:J

    iget-wide v0, p0, Lb/a/a/f/a;->c:J

    add-long/2addr p1, v0

    const-wide/16 v0, 0x64

    mul-long/2addr p1, v0

    iget-wide v0, p0, Lb/a/a/f/a;->j:J

    iget p3, p0, Lb/a/a/f/a;->b:I

    int-to-long v2, p3

    mul-long/2addr v0, v2

    div-long/2addr p1, v0

    iput-wide p1, p0, Lb/a/a/f/a;->k:J

    .line 7
    invoke-direct {p0, p1, p2}, Lb/a/a/f/a;->c(J)V

    :cond_2
    return-void
.end method

.method private o(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/a/a/f/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MuxerWriter"

    const-string v1, "Muxer hasn\'t started!"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v0, Lb/a/a/c/a;

    invoke-direct {v0}, Lb/a/a/c/a;-><init>()V

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    iput-object p1, v0, Lb/a/a/c/a;->b:[B

    .line 5
    iput-object p2, v0, Lb/a/a/c/a;->a:Landroid/media/MediaCodec$BufferInfo;

    .line 6
    iput-object p3, v0, Lb/a/a/c/a;->c:Ljava/lang/String;

    const-string p1, "MuxerWriter"

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "chenpeng0 = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, v0, Lb/a/a/c/a;->a:Landroid/media/MediaCodec$BufferInfo;

    iget p3, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ","

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, v0, Lb/a/a/c/a;->a:Landroid/media/MediaCodec$BufferInfo;

    iget p3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ","

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, v0, Lb/a/a/c/a;->a:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v1, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object p1, p0, Lb/a/a/f/a;->m:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    iget-wide v0, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {p0, v0, v1, p3}, Lb/a/a/f/a;->n(JLjava/lang/String;)V

    .line 10
    iget-object v0, p0, Lb/a/a/f/a;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lb/a/a/f/a;->a:Landroid/media/MediaMuxer;

    if-eqz v1, :cond_1

    .line 12
    iget-object v2, p0, Lb/a/a/f/a;->f:Ljava/util/HashMap;

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {v1, p3, p1, p2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 13
    :cond_1
    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/f/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public d(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lb/a/a/f/a;->o(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized e(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget p1, p0, Lb/a/a/f/a;->i:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lb/a/a/f/a;->i:I

    iget v0, p0, Lb/a/a/f/a;->b:I

    if-lt p1, v0, :cond_1

    const-string p1, "MuxerWriter"

    const-string v0, "onOutputComplete"

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-wide v0, p0, Lb/a/a/f/a;->j:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const-wide/16 v0, 0x64

    .line 4
    invoke-direct {p0, v0, v1}, Lb/a/a/f/a;->c(J)V

    .line 5
    :cond_0
    iget-object p1, p0, Lb/a/a/f/a;->g:Lb/a/a/c/f;

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p1}, Lb/a/a/c/f;->onComplete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public f(Landroid/media/MediaFormat;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb/a/a/f/a;->a(Landroid/media/MediaFormat;)V

    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lb/a/a/f/a;->l:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    iget-object v1, p0, Lb/a/a/f/a;->a:Landroid/media/MediaMuxer;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/media/MediaMuxer;->release()V

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 5
    :try_start_2
    iput-object v0, p0, Lb/a/a/f/a;->a:Landroid/media/MediaMuxer;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 6
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public h(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lb/a/a/f/a;->j:J

    return-void
.end method

.method public i(I)V
    .locals 0

    .line 1
    iput p1, p0, Lb/a/a/f/a;->b:I

    return-void
.end method

.method public j(Lb/a/a/c/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/f/a;->g:Lb/a/a/c/f;

    return-void
.end method

.method public k(Lb/a/a/c/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/f/a;->h:Lb/a/a/c/h;

    return-void
.end method

.method public l(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/f/a;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lb/a/a/f/a;->a:Landroid/media/MediaMuxer;

    invoke-virtual {v1, p1}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public m()V
    .locals 2

    const-string v0, "MuxerWriter"

    const-string v1, "stop"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lb/a/a/f/a;->a:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lb/a/a/f/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    iget-object v0, p0, Lb/a/a/f/a;->l:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    iget-object v1, p0, Lb/a/a/f/a;->a:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->stop()V

    .line 6
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 8
    :goto_0
    iget-object v0, p0, Lb/a/a/f/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 9
    :cond_0
    invoke-virtual {p0}, Lb/a/a/f/a;->g()V

    :cond_1
    return-void
.end method
