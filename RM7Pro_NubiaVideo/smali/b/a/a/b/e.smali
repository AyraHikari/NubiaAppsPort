.class public Lb/a/a/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/a/a/c/j;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/b/e$b;
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private b:Landroid/view/Surface;

.field private c:Lb/a/a/b/b;

.field private d:Lb/a/a/b/f;

.field private e:J

.field private f:Ljava/lang/String;

.field private g:Lb/a/a/c/k;

.field private h:Landroid/media/MediaCodec;

.field private i:Z

.field private j:Z

.field private k:J

.field private l:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lb/a/a/c/a;",
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
.method public constructor <init>(Lb/a/a/b/b;)V
    .locals 5

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lb/a/a/b/e;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lb/a/a/b/e;->b:Landroid/view/Surface;

    const-wide/16 v2, -0x1

    .line 26
    iput-wide v2, p0, Lb/a/a/b/e;->e:J

    const/4 v2, 0x1

    .line 27
    iput-boolean v2, p0, Lb/a/a/b/e;->i:Z

    .line 28
    iput-boolean v1, p0, Lb/a/a/b/e;->j:Z

    const-wide/16 v3, 0x0

    .line 29
    iput-wide v3, p0, Lb/a/a/b/e;->k:J

    .line 30
    iput-wide v3, p0, Lb/a/a/b/e;->m:J

    .line 31
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lb/a/a/b/e;->n:Ljava/lang/Object;

    .line 32
    iput v1, p0, Lb/a/a/b/e;->o:I

    .line 33
    iput v1, p0, Lb/a/a/b/e;->p:I

    .line 34
    iput-boolean v2, p0, Lb/a/a/b/e;->q:Z

    .line 35
    iput-object p1, p0, Lb/a/a/b/e;->c:Lb/a/a/b/b;

    .line 36
    invoke-virtual {p1}, Lb/a/a/b/b;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lb/a/a/b/e;->f:Ljava/lang/String;

    .line 37
    :try_start_0
    invoke-virtual {p1}, Lb/a/a/b/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lb/a/a/b/e;->h:Landroid/media/MediaCodec;

    .line 38
    invoke-virtual {p1}, Lb/a/a/b/b;->b()Landroid/media/MediaFormat;

    move-result-object p1

    invoke-virtual {v1, p1, v0, v0, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Encoder"

    const-string v0, "create Encoder fail"

    .line 39
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :goto_0
    invoke-direct {p0}, Lb/a/a/b/e;->j()V

    return-void
.end method

.method public constructor <init>(Lb/a/a/b/f;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lb/a/a/b/e;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lb/a/a/b/e;->b:Landroid/view/Surface;

    const-wide/16 v2, -0x1

    .line 4
    iput-wide v2, p0, Lb/a/a/b/e;->e:J

    const/4 v2, 0x1

    .line 5
    iput-boolean v2, p0, Lb/a/a/b/e;->i:Z

    .line 6
    iput-boolean v1, p0, Lb/a/a/b/e;->j:Z

    const-wide/16 v3, 0x0

    .line 7
    iput-wide v3, p0, Lb/a/a/b/e;->k:J

    .line 8
    iput-wide v3, p0, Lb/a/a/b/e;->m:J

    .line 9
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lb/a/a/b/e;->n:Ljava/lang/Object;

    .line 10
    iput v1, p0, Lb/a/a/b/e;->o:I

    .line 11
    iput v1, p0, Lb/a/a/b/e;->p:I

    .line 12
    iput-boolean v2, p0, Lb/a/a/b/e;->q:Z

    .line 13
    iput-object p1, p0, Lb/a/a/b/e;->d:Lb/a/a/b/f;

    .line 14
    invoke-virtual {p1}, Lb/a/a/b/f;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lb/a/a/b/e;->f:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Lb/a/a/b/f;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lb/a/a/b/e;->h:Landroid/media/MediaCodec;

    .line 16
    invoke-virtual {p1}, Lb/a/a/b/f;->c()Landroid/media/MediaFormat;

    move-result-object p1

    .line 17
    iget-object v1, p0, Lb/a/a/b/e;->d:Lb/a/a/b/f;

    invoke-virtual {v1}, Lb/a/a/b/f;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "recorder"

    .line 18
    invoke-virtual {p1, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 19
    :cond_0
    iget-object v1, p0, Lb/a/a/b/e;->d:Lb/a/a/b/f;

    invoke-virtual {v1}, Lb/a/a/b/f;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "enc-nonRefP"

    .line 20
    invoke-virtual {p1, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 21
    :cond_1
    iget-object v1, p0, Lb/a/a/b/e;->h:Landroid/media/MediaCodec;

    invoke-virtual {v1, p1, v0, v0, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 22
    invoke-direct {p0}, Lb/a/a/b/e;->j()V

    return-void
.end method

.method static synthetic a(Lb/a/a/b/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/a/a/b/e;->v()V

    return-void
.end method

.method private b(Z)V
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, "Encoder"

    if-eqz p1, :cond_0

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lb/a/a/b/e;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " sending EOS to encoder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lb/a/a/b/e;->b:Landroid/view/Surface;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lb/a/a/b/e;->h:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 4
    :cond_0
    :goto_0
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 5
    iget-object v2, p0, Lb/a/a/b/e;->h:Landroid/media/MediaCodec;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    .line 6
    iget-object v5, p0, Lb/a/a/b/e;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v5, -0x1

    if-ne v2, v5, :cond_4

    .line 7
    iget-object v1, p0, Lb/a/a/b/e;->b:Landroid/view/Surface;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_f

    .line 8
    iget v1, p0, Lb/a/a/b/e;->o:I

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_2
    if-nez p1, :cond_3

    .line 9
    iget-object v1, p0, Lb/a/a/b/e;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_3
    iget v1, p0, Lb/a/a/b/e;->o:I

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_4
    const/4 v5, -0x2

    if-ne v2, v5, :cond_5

    .line 10
    iget-object v1, p0, Lb/a/a/b/e;->h:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    .line 11
    iget-wide v5, p0, Lb/a/a/b/e;->k:J

    cmp-long v2, v5, v3

    if-nez v2, :cond_0

    .line 12
    invoke-direct {p0, v1}, Lb/a/a/b/e;->n(Landroid/media/MediaFormat;)V

    goto :goto_0

    :cond_5
    if-gez v2, :cond_6

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lb/a/a/b/e;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " unexpected result from encoder.dequeueOutputBuffer: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 14
    :cond_6
    iget v3, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v3, v3, [B

    .line 15
    iget-object v4, p0, Lb/a/a/b/e;->h:Landroid/media/MediaCodec;

    invoke-virtual {v4, v2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 16
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 17
    iget v4, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x0

    if-eqz v4, :cond_7

    .line 18
    iput v5, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 19
    :cond_7
    iget v4, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v6, 0x1

    const-string v7, "video/"

    if-eqz v4, :cond_b

    .line 20
    iget v4, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 21
    iget v4, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v8, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v4, v8

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 22
    iget-object v4, p0, Lb/a/a/b/e;->f:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 23
    iget-wide v8, p0, Lb/a/a/b/e;->k:J

    iput-wide v8, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 24
    iget-wide v10, p0, Lb/a/a/b/e;->e:J

    add-long/2addr v8, v10

    iput-wide v8, p0, Lb/a/a/b/e;->k:J

    .line 25
    invoke-direct {p0, v3, v1}, Lb/a/a/b/e;->l(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_1

    .line 26
    :cond_8
    iget-object v4, p0, Lb/a/a/b/e;->f:Ljava/lang/String;

    const-string v8, "audio/"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 27
    iget-wide v8, p0, Lb/a/a/b/e;->m:J

    iput-wide v8, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 28
    invoke-direct {p0}, Lb/a/a/b/e;->g()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 29
    iget-wide v8, p0, Lb/a/a/b/e;->m:J

    const-wide/32 v10, 0x3d090000

    iget-object v4, p0, Lb/a/a/b/e;->c:Lb/a/a/b/b;

    .line 30
    invoke-virtual {v4}, Lb/a/a/b/b;->d()I

    move-result v4

    int-to-long v12, v4

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    iput-wide v8, p0, Lb/a/a/b/e;->m:J

    .line 31
    :cond_9
    invoke-direct {p0, v3, v1}, Lb/a/a/b/e;->l(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 32
    :cond_a
    :goto_1
    iget v3, p0, Lb/a/a/b/e;->p:I

    add-int/2addr v3, v6

    iput v3, p0, Lb/a/a/b/e;->p:I

    .line 33
    :cond_b
    iget-object v3, p0, Lb/a/a/b/e;->h:Landroid/media/MediaCodec;

    invoke-virtual {v3, v2, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 34
    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_e

    if-nez p1, :cond_c

    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lb/a/a/b/e;->f:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " reached end of stream unexpectedly "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/a/b/e;->f:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 36
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lb/a/a/b/e;->f:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " end of stream reached "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/a/b/e;->f:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :goto_2
    iget-boolean p1, p0, Lb/a/a/b/e;->q:Z

    if-eqz p1, :cond_d

    .line 38
    invoke-direct {p0}, Lb/a/a/b/e;->m()V

    .line 39
    :cond_d
    iget-object p1, p0, Lb/a/a/b/e;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_3

    .line 40
    :cond_e
    iget-object v1, p0, Lb/a/a/b/e;->b:Landroid/view/Surface;

    if-nez v1, :cond_0

    iget-object v1, p0, Lb/a/a/b/e;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lb/a/a/b/e;->p:I

    iget v2, p0, Lb/a/a/b/e;->o:I

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lb/a/a/b/e;->f:Ljava/lang/String;

    .line 41
    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lb/a/a/b/e;->f:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " encoder data is over "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_3
    return-void

    .line 43
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
.end method

.method private c()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lb/a/a/b/e;->h:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/b/e;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lb/a/a/b/e;->o()V

    .line 3
    iget-boolean v0, p0, Lb/a/a/b/e;->j:Z

    invoke-direct {p0, v0}, Lb/a/a/b/e;->b(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    iget-object v0, p0, Lb/a/a/b/e;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    iget-object v0, p0, Lb/a/a/b/e;->g:Lb/a/a/c/k;

    invoke-interface {v0}, Lb/a/a/c/k;->a()V

    :cond_0
    :goto_0
    return-void
.end method

.method private g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/b/e;->g:Lb/a/a/c/k;

    invoke-interface {v0}, Lb/a/a/c/k;->d()Z

    move-result v0

    return v0
.end method

.method private j()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lb/a/a/b/e;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method private declared-synchronized l(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lb/a/a/b/e;->g:Lb/a/a/c/k;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lb/a/a/b/e;->f:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v1}, Lb/a/a/c/k;->h(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/b/e;->g:Lb/a/a/c/k;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lb/a/a/b/e;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Lb/a/a/c/k;->f(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private n(Landroid/media/MediaFormat;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyOutputFormatChanged format changed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p1}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Encoder"

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lb/a/a/b/e;->g:Lb/a/a/c/k;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1}, Lb/a/a/c/k;->c(Landroid/media/MediaFormat;)V

    :cond_0
    return-void
.end method

.method private o()V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lb/a/a/b/e;->i:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lb/a/a/b/e;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lb/a/a/b/e;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lb/a/a/b/e;->h:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    if-ltz v5, :cond_2

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lb/a/a/b/e;->i:Z

    .line 5
    iget-object v1, p0, Lb/a/a/b/e;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/a/a/c/a;

    .line 6
    iget-object v2, p0, Lb/a/a/b/e;->h:Landroid/media/MediaCodec;

    invoke-virtual {v2, v5}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 8
    iget-object v3, v1, Lb/a/a/c/a;->b:[B

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 9
    iget-object v2, v1, Lb/a/a/c/a;->a:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v7, :cond_1

    iget v3, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_1

    .line 10
    iget-object v4, p0, Lb/a/a/b/e;->h:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    iget-wide v8, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0

    :cond_1
    const-string v2, "Encoder"

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lb/a/a/b/e;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " EOS received in fillInputBufferInner"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object v4, p0, Lb/a/a/b/e;->h:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    iget-object v1, v1, Lb/a/a/c/a;->a:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v8, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Lb/a/a/b/e;->j:Z

    .line 14
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

.method private v()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/b/e;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lb/a/a/b/e;->h:Landroid/media/MediaCodec;

    if-eqz v1, :cond_0

    .line 3
    iget-boolean v1, p0, Lb/a/a/b/e;->j:Z

    invoke-direct {p0, v1}, Lb/a/a/b/e;->b(Z)V

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :goto_0
    iget-object v0, p0, Lb/a/a/b/e;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lb/a/a/b/e;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Ljava/lang/Thread;->yield()V

    const-wide/16 v0, 0x14

    .line 8
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lb/a/a/b/e;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 10
    :try_start_1
    invoke-direct {p0}, Lb/a/a/b/e;->c()V

    .line 11
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

    .line 12
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method


# virtual methods
.method public d(Z)V
    .locals 1

    .line 1
    iget v0, p0, Lb/a/a/b/e;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/a/a/b/e;->o:I

    .line 2
    invoke-virtual {p0, p1}, Lb/a/a/b/e;->f(Z)V

    return-void
.end method

.method public e(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    .line 1
    new-instance v0, Lb/a/a/c/a;

    invoke-direct {v0}, Lb/a/a/c/a;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    iput-object p1, v0, Lb/a/a/c/a;->b:[B

    .line 3
    iput-object p2, v0, Lb/a/a/c/a;->a:Landroid/media/MediaCodec$BufferInfo;

    .line 4
    iget-object p1, p0, Lb/a/a/b/e;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 5
    iget p1, p0, Lb/a/a/b/e;->o:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lb/a/a/b/e;->o:I

    return-void
.end method

.method public f(Z)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lb/a/a/b/e;->n:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    iget-object v1, p0, Lb/a/a/b/e;->h:Landroid/media/MediaCodec;

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lb/a/a/b/e;->b(Z)V

    .line 4
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

    .line 5
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public h()Lb/a/a/b/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/b/e;->d:Lb/a/a/b/f;

    return-object v0
.end method

.method public i()Landroid/view/Surface;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/b/e;->b:Landroid/view/Surface;

    return-object v0
.end method

.method public k(I)Z
    .locals 2

    .line 1
    iget v0, p0, Lb/a/a/b/e;->o:I

    iget v1, p0, Lb/a/a/b/e;->p:I

    add-int/2addr v1, p1

    if-lt v0, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public p()V
    .locals 4

    .line 1
    iget-object v0, p0, Lb/a/a/b/e;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object v0, p0, Lb/a/a/b/e;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lb/a/a/b/e;->h:Landroid/media/MediaCodec;

    if-eqz v1, :cond_0

    const-string v1, "Encoder"

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lb/a/a/b/e;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " release"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    iget-object v1, p0, Lb/a/a/b/e;->h:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->reset()V

    .line 6
    iget-object v1, p0, Lb/a/a/b/e;->h:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 7
    iget-object v1, p0, Lb/a/a/b/e;->h:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 8
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lb/a/a/b/e;->h:Landroid/media/MediaCodec;

    .line 10
    iget-object v2, p0, Lb/a/a/b/e;->b:Landroid/view/Surface;

    if-eqz v2, :cond_0

    .line 11
    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 12
    iput-object v1, p0, Lb/a/a/b/e;->b:Landroid/view/Surface;

    .line 13
    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14
    iget-object v0, p0, Lb/a/a/b/e;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    return-void

    :catchall_0
    move-exception v1

    .line 15
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public q(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lb/a/a/b/e;->e:J

    return-void
.end method

.method public r(Lb/a/a/c/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/b/e;->g:Lb/a/a/c/k;

    return-void
.end method

.method public s(Lb/a/a/c/e;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/a/a/b/e;->h:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p1, p0}, Lb/a/a/c/e;->e(Lb/a/a/c/j;)V

    .line 3
    iget-object v0, p0, Lb/a/a/b/e;->b:Landroid/view/Surface;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/a/a/b/e;->d:Lb/a/a/b/f;

    .line 4
    invoke-virtual {v0}, Lb/a/a/b/f;->a()I

    move-result v0

    const v1, 0x7f000789

    if-ne v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Lb/a/a/b/e;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lb/a/a/b/e;->h:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, p0, Lb/a/a/b/e;->b:Landroid/view/Surface;

    .line 7
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 8
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lb/a/a/b/e;->i()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/a/b/e;->h()Lb/a/a/b/f;

    move-result-object v1

    invoke-virtual {v1}, Lb/a/a/b/f;->g()I

    move-result v1

    .line 9
    invoke-virtual {p0}, Lb/a/a/b/e;->h()Lb/a/a/b/f;

    move-result-object v2

    invoke-virtual {v2}, Lb/a/a/b/f;->b()I

    move-result v2

    .line 10
    invoke-interface {p1, v0, v1, v2}, Lb/a/a/c/e;->g(Landroid/view/Surface;II)V

    :cond_1
    return-void
.end method

.method public t(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lb/a/a/b/e;->k:J

    return-void
.end method

.method public u()V
    .locals 4

    .line 1
    iget-object v0, p0, Lb/a/a/b/e;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lb/a/a/b/e;->h:Landroid/media/MediaCodec;

    if-eqz v1, :cond_0

    const-string v1, "Encoder"

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lb/a/a/b/e;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Encoder start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    iget-object v1, p0, Lb/a/a/b/e;->h:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v1, "Encoder"

    const-string v2, "Encoder start fail"

    .line 5
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v1, p0, Lb/a/a/b/e;->g:Lb/a/a/c/k;

    invoke-interface {v1}, Lb/a/a/c/k;->a()V

    .line 7
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    iget-object v0, p0, Lb/a/a/b/e;->b:Landroid/view/Surface;

    if-nez v0, :cond_1

    .line 9
    new-instance v0, Lb/a/a/b/e$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lb/a/a/b/e$b;-><init>(Lb/a/a/b/e;Lb/a/a/b/e$a;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 10
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
