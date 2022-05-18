.class public Lb/a/e/a/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/a/e/b/d;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/e/a/c$b;
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private b:Landroid/view/Surface;

.field private c:Lb/a/e/a/a;

.field private d:Lb/a/e/a/e;

.field private e:J

.field private f:Ljava/lang/String;

.field private g:Lb/a/e/b/e;

.field private h:Landroid/media/MediaCodec;

.field private i:Z

.field private j:Z

.field private k:J

.field private l:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lb/a/e/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private m:J

.field private n:Ljava/lang/Object;

.field private o:I

.field private p:I

.field private q:Z


# direct methods
.method public constructor <init>(Lb/a/e/a/e;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lb/a/e/a/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/e/a/c;->b:Landroid/view/Surface;

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lb/a/e/a/c;->e:J

    const/4 v2, 0x1

    iput-boolean v2, p0, Lb/a/e/a/c;->i:Z

    iput-boolean v1, p0, Lb/a/e/a/c;->j:Z

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lb/a/e/a/c;->k:J

    iput-wide v3, p0, Lb/a/e/a/c;->m:J

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lb/a/e/a/c;->n:Ljava/lang/Object;

    iput v1, p0, Lb/a/e/a/c;->o:I

    iput v1, p0, Lb/a/e/a/c;->p:I

    iput-boolean v2, p0, Lb/a/e/a/c;->q:Z

    iput-object p1, p0, Lb/a/e/a/c;->d:Lb/a/e/a/e;

    invoke-virtual {p1}, Lb/a/e/a/e;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lb/a/e/a/c;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lb/a/e/a/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lb/a/e/a/c;->h:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Lb/a/e/a/e;->d()Landroid/media/MediaFormat;

    move-result-object p1

    iget-object v1, p0, Lb/a/e/a/c;->d:Lb/a/e/a/e;

    invoke-virtual {v1}, Lb/a/e/a/e;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "recorder"

    invoke-virtual {p1, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_0
    iget-object v1, p0, Lb/a/e/a/c;->d:Lb/a/e/a/e;

    invoke-virtual {v1}, Lb/a/e/a/e;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "enc-nonRefP"

    invoke-virtual {p1, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_1
    iget-object v1, p0, Lb/a/e/a/c;->h:Landroid/media/MediaCodec;

    invoke-virtual {v1, p1, v0, v0, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-direct {p0}, Lb/a/e/a/c;->j()V

    return-void
.end method

.method static synthetic b(Lb/a/e/a/c;)V
    .locals 0

    invoke-direct {p0}, Lb/a/e/a/c;->t()V

    return-void
.end method

.method private d(Z)V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "Encoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lb/a/e/a/c;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " sending EOS to encoder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lb/a/e/a/c;->b:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/e/a/c;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lb/a/e/a/c;->h:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iget-object v1, p0, Lb/a/e/a/c;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lb/a/e/a/c;->h:Landroid/media/MediaCodec;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    iget-object v1, p0, Lb/a/e/a/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 v1, -0x1

    if-ne v2, v1, :cond_4

    iget-object v0, p0, Lb/a/e/a/c;->b:Landroid/view/Surface;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_f

    iget v0, p0, Lb/a/e/a/c;->o:I

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_2
    if-nez p1, :cond_3

    iget-object v0, p0, Lb/a/e/a/c;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_3
    iget v0, p0, Lb/a/e/a/c;->o:I

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_4
    const/4 v1, -0x2

    if-ne v2, v1, :cond_5

    iget-object v1, p0, Lb/a/e/a/c;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lb/a/e/a/c;->h:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-wide v1, p0, Lb/a/e/a/c;->k:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lb/a/e/a/c;->m(Landroid/media/MediaFormat;)V

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_5
    if-gez v2, :cond_6

    const-string v0, "Encoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lb/a/e/a/c;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " unexpected result from encoder.dequeueOutputBuffer: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    iget v1, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v1, v1, [B

    iget-object v3, p0, Lb/a/e/a/c;->n:Ljava/lang/Object;

    monitor-enter v3

    :try_start_4
    iget-object v4, p0, Lb/a/e/a/c;->h:Landroid/media/MediaCodec;

    invoke-virtual {v4, v2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_10

    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    iput v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    :cond_7
    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v5, 0x1

    if-eqz v3, :cond_b

    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v3, v6

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v3, p0, Lb/a/e/a/c;->f:Ljava/lang/String;

    const-string v6, "video/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-wide v6, p0, Lb/a/e/a/c;->k:J

    iput-wide v6, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v8, p0, Lb/a/e/a/c;->e:J

    add-long/2addr v6, v8

    iput-wide v6, p0, Lb/a/e/a/c;->k:J

    :goto_1
    invoke-direct {p0, v1, v0}, Lb/a/e/a/c;->k(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_2

    :cond_8
    iget-object v3, p0, Lb/a/e/a/c;->f:Ljava/lang/String;

    const-string v6, "audio/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-wide v6, p0, Lb/a/e/a/c;->m:J

    iput-wide v6, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {p0}, Lb/a/e/a/c;->g()Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_1

    :cond_9
    iget-object p1, p0, Lb/a/e/a/c;->c:Lb/a/e/a/a;

    invoke-virtual {p1}, Lb/a/e/a/a;->a()I

    const/4 p1, 0x0

    throw p1

    :cond_a
    :goto_2
    iget v1, p0, Lb/a/e/a/c;->p:I

    add-int/2addr v1, v5

    iput v1, p0, Lb/a/e/a/c;->p:I

    :cond_b
    iget-object v1, p0, Lb/a/e/a/c;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object v3, p0, Lb/a/e/a/c;->h:Landroid/media/MediaCodec;

    invoke-virtual {v3, v2, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_e

    if-nez p1, :cond_c

    const-string p1, "Encoder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lb/a/e/a/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " reached end of stream unexpectedly "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/e/a/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_c
    const-string p1, "Encoder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lb/a/e/a/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " end of stream reached "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/e/a/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget-boolean p1, p0, Lb/a/e/a/c;->q:Z

    if-eqz p1, :cond_d

    invoke-direct {p0}, Lb/a/e/a/c;->l()V

    :cond_d
    iget-object p1, p0, Lb/a/e/a/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_4

    :cond_e
    iget-object v0, p0, Lb/a/e/a/c;->b:Landroid/view/Surface;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/a/e/a/c;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lb/a/e/a/c;->p:I

    iget v1, p0, Lb/a/e/a/c;->o:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lb/a/e/a/c;->f:Ljava/lang/String;

    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Encoder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lb/a/e/a/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " encoder data is over "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_4
    return-void

    :catchall_2
    move-exception p1

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1

    :cond_10
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "encoderOutputBuffer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " was null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_3
    move-exception p1

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p1

    :catchall_4
    move-exception p1

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw p1
.end method

.method private e()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lb/a/e/a/c;->h:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/e/a/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lb/a/e/a/c;->n()V

    iget-boolean v0, p0, Lb/a/e/a/c;->j:Z

    invoke-direct {p0, v0}, Lb/a/e/a/c;->d(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lb/a/e/a/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lb/a/e/a/c;->g:Lb/a/e/b/e;

    invoke-interface {v0}, Lb/a/e/b/e;->a()V

    :cond_0
    :goto_0
    return-void
.end method

.method private g()Z
    .locals 1

    iget-object v0, p0, Lb/a/e/a/c;->g:Lb/a/e/b/e;

    invoke-interface {v0}, Lb/a/e/b/e;->c()Z

    move-result v0

    return v0
.end method

.method private j()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lb/a/e/a/c;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method private declared-synchronized k(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a/e/a/c;->g:Lb/a/e/b/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/e/a/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/a/e/a/c;->g:Lb/a/e/b/e;

    iget-object v1, p0, Lb/a/e/a/c;->f:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v1}, Lb/a/e/b/e;->e(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private l()V
    .locals 2

    iget-object v0, p0, Lb/a/e/a/c;->g:Lb/a/e/b/e;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lb/a/e/a/c;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Lb/a/e/b/e;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private m(Landroid/media/MediaFormat;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyOutputFormatChanged format changed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Encoder"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lb/a/e/a/c;->g:Lb/a/e/b/e;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lb/a/e/b/e;->b(Landroid/media/MediaFormat;)V

    :cond_0
    return-void
.end method

.method private n()V
    .locals 11

    iget-boolean v0, p0, Lb/a/e/a/c;->i:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lb/a/e/a/c;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lb/a/e/a/c;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lb/a/e/a/c;->h:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    if-ltz v5, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lb/a/e/a/c;->i:Z

    iget-object v1, p0, Lb/a/e/a/c;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/a/e/b/a;

    iget-object v2, p0, Lb/a/e/a/c;->h:Landroid/media/MediaCodec;

    invoke-virtual {v2, v5}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v3, v1, Lb/a/e/b/a;->b:[B

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v2, v1, Lb/a/e/b/a;->a:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v7, :cond_1

    iget v3, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_1

    iget-object v4, p0, Lb/a/e/a/c;->h:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    iget-wide v8, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0

    :cond_1
    const-string v2, "Encoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lb/a/e/a/c;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " EOS received in fillInputBufferInner"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lb/a/e/a/c;->h:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    iget-object v1, v1, Lb/a/e/b/a;->a:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v8, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lb/a/e/a/c;->j:Z

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private t()V
    .locals 2

    iget-object v0, p0, Lb/a/e/a/c;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lb/a/e/a/c;->h:Landroid/media/MediaCodec;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lb/a/e/a/c;->j:Z

    invoke-direct {p0, v1}, Lb/a/e/a/c;->d(Z)V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    iget-object v0, p0, Lb/a/e/a/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lb/a/e/a/c;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->yield()V

    const-wide/16 v0, 0x14

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lb/a/e/a/c;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    invoke-direct {p0}, Lb/a/e/a/c;->e()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_2
    return-void

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    iget v0, p0, Lb/a/e/a/c;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/a/e/a/c;->o:I

    invoke-virtual {p0, p1}, Lb/a/e/a/c;->f(Z)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lb/a/e/a/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lb/a/e/a/c;->h:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/e/a/c;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lb/a/e/a/c;->h:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    iget-object v0, p0, Lb/a/e/a/c;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    return-void
.end method

.method public f(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lb/a/e/a/c;->n:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lb/a/e/a/c;->h:Landroid/media/MediaCodec;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lb/a/e/a/c;->d(Z)V

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public h()Lb/a/e/a/e;
    .locals 1

    iget-object v0, p0, Lb/a/e/a/c;->d:Lb/a/e/a/e;

    return-object v0
.end method

.method public i()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lb/a/e/a/c;->b:Landroid/view/Surface;

    return-object v0
.end method

.method public o()V
    .locals 4

    iget-object v0, p0, Lb/a/e/a/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lb/a/e/a/c;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lb/a/e/a/c;->h:Landroid/media/MediaCodec;

    if-eqz v1, :cond_0

    const-string v1, "Encoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lb/a/e/a/c;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " release"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lb/a/e/a/c;->h:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->reset()V

    iget-object v1, p0, Lb/a/e/a/c;->h:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    iget-object v1, p0, Lb/a/e/a/c;->h:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lb/a/e/a/c;->h:Landroid/media/MediaCodec;

    iget-object v2, p0, Lb/a/e/a/c;->b:Landroid/view/Surface;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lb/a/e/a/c;->b:Landroid/view/Surface;

    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lb/a/e/a/c;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public p(J)V
    .locals 0

    iput-wide p1, p0, Lb/a/e/a/c;->e:J

    return-void
.end method

.method public q(Lb/a/e/b/e;)V
    .locals 0

    iput-object p1, p0, Lb/a/e/a/c;->g:Lb/a/e/b/e;

    return-void
.end method

.method public r(Lb/a/e/a/d;)V
    .locals 3

    iget-object v0, p0, Lb/a/e/a/c;->h:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    invoke-virtual {p1, p0}, Lb/a/e/a/d;->i(Lb/a/e/b/d;)V

    iget-object v0, p0, Lb/a/e/a/c;->b:Landroid/view/Surface;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/a/e/a/c;->d:Lb/a/e/a/e;

    invoke-virtual {v0}, Lb/a/e/a/e;->a()I

    move-result v0

    const v1, 0x7f000789

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lb/a/e/a/c;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lb/a/e/a/c;->h:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, p0, Lb/a/e/a/c;->b:Landroid/view/Surface;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lb/a/e/a/c;->i()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/e/a/c;->h()Lb/a/e/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lb/a/e/a/e;->h()I

    move-result v1

    invoke-virtual {p0}, Lb/a/e/a/c;->h()Lb/a/e/a/e;

    move-result-object v2

    invoke-virtual {v2}, Lb/a/e/a/e;->c()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lb/a/e/a/d;->e(Landroid/view/Surface;II)V

    :cond_1
    return-void
.end method

.method public s()V
    .locals 4

    iget-object v0, p0, Lb/a/e/a/c;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lb/a/e/a/c;->h:Landroid/media/MediaCodec;

    if-eqz v1, :cond_0

    const-string v1, "Encoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lb/a/e/a/c;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Encoder start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lb/a/e/a/c;->h:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v1, "Encoder"

    const-string v2, "Encoder start fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lb/a/e/a/c;->g:Lb/a/e/b/e;

    invoke-interface {v1}, Lb/a/e/b/e;->a()V

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lb/a/e/a/c;->b:Landroid/view/Surface;

    if-nez v0, :cond_1

    new-instance v0, Lb/a/e/a/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lb/a/e/a/c$b;-><init>(Lb/a/e/a/c;Lb/a/e/a/c$a;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
