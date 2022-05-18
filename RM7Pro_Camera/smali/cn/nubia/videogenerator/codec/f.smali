.class public Lcn/nubia/videogenerator/codec/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/videogenerator/a/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/videogenerator/codec/f$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private b:Landroid/view/Surface;

.field private c:Lcn/nubia/videogenerator/codec/a;

.field private d:Lcn/nubia/videogenerator/codec/h;

.field private e:J

.field private f:Ljava/lang/String;

.field private g:Lcn/nubia/videogenerator/a/g;

.field private h:Landroid/media/MediaCodec;

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private m:Z

.field private n:J

.field private o:J

.field private p:J

.field private q:J

.field private r:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcn/nubia/videogenerator/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private s:J

.field private t:Lcn/nubia/videogenerator/codec/c;

.field private u:Ljava/lang/Object;

.field private v:I

.field private w:I

.field private x:I

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Lcn/nubia/videogenerator/codec/a;)V
    .locals 5

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/videogenerator/codec/f;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcn/nubia/videogenerator/codec/f;->b:Landroid/view/Surface;

    const-wide/16 v2, -0x1

    .line 28
    iput-wide v2, p0, Lcn/nubia/videogenerator/codec/f;->e:J

    const/4 v2, 0x1

    .line 37
    iput-boolean v2, p0, Lcn/nubia/videogenerator/codec/f;->l:Z

    .line 38
    iput-boolean v1, p0, Lcn/nubia/videogenerator/codec/f;->m:Z

    const-wide/16 v3, 0x0

    .line 39
    iput-wide v3, p0, Lcn/nubia/videogenerator/codec/f;->n:J

    .line 40
    iput-wide v3, p0, Lcn/nubia/videogenerator/codec/f;->o:J

    .line 41
    iput-wide v3, p0, Lcn/nubia/videogenerator/codec/f;->p:J

    .line 42
    iput-wide v3, p0, Lcn/nubia/videogenerator/codec/f;->q:J

    .line 45
    iput-wide v3, p0, Lcn/nubia/videogenerator/codec/f;->s:J

    .line 47
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcn/nubia/videogenerator/codec/f;->u:Ljava/lang/Object;

    .line 48
    iput v1, p0, Lcn/nubia/videogenerator/codec/f;->v:I

    .line 49
    iput v1, p0, Lcn/nubia/videogenerator/codec/f;->w:I

    const/16 v3, 0x8

    .line 50
    iput v3, p0, Lcn/nubia/videogenerator/codec/f;->x:I

    .line 51
    iput-boolean v2, p0, Lcn/nubia/videogenerator/codec/f;->y:Z

    .line 52
    iput-boolean v1, p0, Lcn/nubia/videogenerator/codec/f;->z:Z

    .line 72
    iput-object p1, p0, Lcn/nubia/videogenerator/codec/f;->c:Lcn/nubia/videogenerator/codec/a;

    .line 73
    invoke-virtual {p1}, Lcn/nubia/videogenerator/codec/a;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/videogenerator/codec/f;->f:Ljava/lang/String;

    .line 75
    :try_start_0
    invoke-virtual {p1}, Lcn/nubia/videogenerator/codec/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/videogenerator/codec/f;->h:Landroid/media/MediaCodec;

    .line 76
    invoke-virtual {p1}, Lcn/nubia/videogenerator/codec/a;->f()Landroid/media/MediaFormat;

    move-result-object p1

    invoke-virtual {v1, p1, v0, v0, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Encoder"

    const-string v0, "create Encoder fail"

    .line 79
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :goto_0
    invoke-direct {p0}, Lcn/nubia/videogenerator/codec/f;->g()V

    return-void
.end method

.method public constructor <init>(Lcn/nubia/videogenerator/codec/h;)V
    .locals 5

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/videogenerator/codec/f;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcn/nubia/videogenerator/codec/f;->b:Landroid/view/Surface;

    const-wide/16 v2, -0x1

    .line 28
    iput-wide v2, p0, Lcn/nubia/videogenerator/codec/f;->e:J

    const/4 v2, 0x1

    .line 37
    iput-boolean v2, p0, Lcn/nubia/videogenerator/codec/f;->l:Z

    .line 38
    iput-boolean v1, p0, Lcn/nubia/videogenerator/codec/f;->m:Z

    const-wide/16 v3, 0x0

    .line 39
    iput-wide v3, p0, Lcn/nubia/videogenerator/codec/f;->n:J

    .line 40
    iput-wide v3, p0, Lcn/nubia/videogenerator/codec/f;->o:J

    .line 41
    iput-wide v3, p0, Lcn/nubia/videogenerator/codec/f;->p:J

    .line 42
    iput-wide v3, p0, Lcn/nubia/videogenerator/codec/f;->q:J

    .line 45
    iput-wide v3, p0, Lcn/nubia/videogenerator/codec/f;->s:J

    .line 47
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcn/nubia/videogenerator/codec/f;->u:Ljava/lang/Object;

    .line 48
    iput v1, p0, Lcn/nubia/videogenerator/codec/f;->v:I

    .line 49
    iput v1, p0, Lcn/nubia/videogenerator/codec/f;->w:I

    const/16 v3, 0x8

    .line 50
    iput v3, p0, Lcn/nubia/videogenerator/codec/f;->x:I

    .line 51
    iput-boolean v2, p0, Lcn/nubia/videogenerator/codec/f;->y:Z

    .line 52
    iput-boolean v1, p0, Lcn/nubia/videogenerator/codec/f;->z:Z

    .line 55
    iput-object p1, p0, Lcn/nubia/videogenerator/codec/f;->d:Lcn/nubia/videogenerator/codec/h;

    .line 56
    invoke-virtual {p1}, Lcn/nubia/videogenerator/codec/h;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/videogenerator/codec/f;->f:Ljava/lang/String;

    .line 57
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/f;->d:Lcn/nubia/videogenerator/codec/h;

    invoke-virtual {v1}, Lcn/nubia/videogenerator/codec/h;->f()I

    move-result v1

    iget-object v3, p0, Lcn/nubia/videogenerator/codec/f;->d:Lcn/nubia/videogenerator/codec/h;

    invoke-virtual {v3}, Lcn/nubia/videogenerator/codec/h;->g()I

    move-result v3

    mul-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcn/nubia/videogenerator/codec/f;->k:I

    .line 58
    invoke-direct {p0}, Lcn/nubia/videogenerator/codec/f;->h()V

    .line 59
    invoke-virtual {p1}, Lcn/nubia/videogenerator/codec/h;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/videogenerator/codec/f;->h:Landroid/media/MediaCodec;

    .line 60
    invoke-virtual {p1}, Lcn/nubia/videogenerator/codec/h;->i()Landroid/media/MediaFormat;

    move-result-object p1

    .line 61
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/f;->d:Lcn/nubia/videogenerator/codec/h;

    invoke-virtual {v1}, Lcn/nubia/videogenerator/codec/h;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "recorder"

    .line 62
    invoke-virtual {p1, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 64
    :cond_0
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/f;->d:Lcn/nubia/videogenerator/codec/h;

    invoke-virtual {v1}, Lcn/nubia/videogenerator/codec/h;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "enc-nonRefP"

    .line 65
    invoke-virtual {p1, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 67
    :cond_1
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/f;->h:Landroid/media/MediaCodec;

    invoke-virtual {v1, p1, v0, v0, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 68
    invoke-direct {p0}, Lcn/nubia/videogenerator/codec/f;->g()V

    return-void
.end method

.method private a(Landroid/media/MediaFormat;)V
    .locals 2

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyOutputFormatChanged format changed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 371
    invoke-virtual {p1}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Encoder"

    .line 370
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/f;->g:Lcn/nubia/videogenerator/a/g;

    if-eqz v0, :cond_0

    .line 373
    invoke-interface {v0, p1}, Lcn/nubia/videogenerator/a/g;->a(Landroid/media/MediaFormat;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcn/nubia/videogenerator/codec/f;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcn/nubia/videogenerator/codec/f;->m()V

    return-void
.end method

.method private declared-synchronized b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 2

    monitor-enter p0

    .line 363
    :try_start_0
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/f;->g:Lcn/nubia/videogenerator/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/videogenerator/codec/f;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/f;->g:Lcn/nubia/videogenerator/a/g;

    iget-object v1, p0, Lcn/nubia/videogenerator/codec/f;->f:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v1}, Lcn/nubia/videogenerator/a/g;->a(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private d(Z)V
    .locals 12

    if-eqz p1, :cond_0

    const-string v0, "Encoder"

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/videogenerator/codec/f;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sending EOS to encoder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/f;->b:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/f;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 264
    :try_start_0
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/f;->h:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 265
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 270
    :cond_0
    :goto_0
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 272
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/f;->u:Ljava/lang/Object;

    monitor-enter v1

    .line 273
    :try_start_1
    iget-object v2, p0, Lcn/nubia/videogenerator/codec/f;->h:Landroid/media/MediaCodec;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    .line 274
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 275
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/f;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v1, -0x1

    if-ne v2, v1, :cond_4

    .line 278
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/f;->b:Landroid/view/Surface;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_f

    .line 279
    iget v0, p0, Lcn/nubia/videogenerator/codec/f;->v:I

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_2
    if-nez p1, :cond_3

    .line 282
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/f;->r:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_3
    iget v0, p0, Lcn/nubia/videogenerator/codec/f;->v:I

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_4
    const/4 v1, -0x2

    if-ne v2, v1, :cond_5

    .line 288
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/f;->u:Ljava/lang/Object;

    monitor-enter v1

    .line 289
    :try_start_2
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/f;->h:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 290
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 291
    iget-wide v1, p0, Lcn/nubia/videogenerator/codec/f;->n:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 292
    invoke-direct {p0, v0}, Lcn/nubia/videogenerator/codec/f;->a(Landroid/media/MediaFormat;)V

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 290
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_5
    if-gez v2, :cond_6

    const-string v0, "Encoder"

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/nubia/videogenerator/codec/f;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " unexpected result from encoder.dequeueOutputBuffer: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 297
    :cond_6
    iget v1, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v1, v1, [B

    .line 298
    iget-object v3, p0, Lcn/nubia/videogenerator/codec/f;->u:Ljava/lang/Object;

    monitor-enter v3

    .line 299
    :try_start_4
    iget-object v4, p0, Lcn/nubia/videogenerator/codec/f;->h:Landroid/media/MediaCodec;

    invoke-virtual {v4, v2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 301
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 302
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 307
    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    .line 308
    iput v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 310
    :cond_7
    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v5, 0x1

    if-eqz v3, :cond_b

    .line 311
    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 312
    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v3, v6

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 314
    iget-object v3, p0, Lcn/nubia/videogenerator/codec/f;->f:Ljava/lang/String;

    const-string v6, "video/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 315
    iget-wide v6, p0, Lcn/nubia/videogenerator/codec/f;->n:J

    iput-wide v6, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 316
    iget-wide v6, p0, Lcn/nubia/videogenerator/codec/f;->n:J

    iget-wide v8, p0, Lcn/nubia/videogenerator/codec/f;->e:J

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcn/nubia/videogenerator/codec/f;->n:J

    .line 317
    invoke-direct {p0, v1, v0}, Lcn/nubia/videogenerator/codec/f;->b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_1

    .line 318
    :cond_8
    iget-object v3, p0, Lcn/nubia/videogenerator/codec/f;->f:Ljava/lang/String;

    const-string v6, "audio/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 319
    iget-wide v6, p0, Lcn/nubia/videogenerator/codec/f;->s:J

    iput-wide v6, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 320
    invoke-direct {p0}, Lcn/nubia/videogenerator/codec/f;->k()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 321
    iget-wide v6, p0, Lcn/nubia/videogenerator/codec/f;->s:J

    const-wide/32 v8, 0x3d090000

    iget-object v3, p0, Lcn/nubia/videogenerator/codec/f;->c:Lcn/nubia/videogenerator/codec/a;

    .line 322
    invoke-virtual {v3}, Lcn/nubia/videogenerator/codec/a;->d()I

    move-result v3

    int-to-long v10, v3

    div-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcn/nubia/videogenerator/codec/f;->s:J

    .line 324
    :cond_9
    invoke-direct {p0, v1, v0}, Lcn/nubia/videogenerator/codec/f;->b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 326
    :cond_a
    :goto_1
    iget v1, p0, Lcn/nubia/videogenerator/codec/f;->w:I

    add-int/2addr v1, v5

    iput v1, p0, Lcn/nubia/videogenerator/codec/f;->w:I

    .line 330
    :cond_b
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/f;->u:Ljava/lang/Object;

    monitor-enter v1

    .line 331
    :try_start_5
    iget-object v3, p0, Lcn/nubia/videogenerator/codec/f;->h:Landroid/media/MediaCodec;

    invoke-virtual {v3, v2, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 332
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 333
    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_e

    if-nez p1, :cond_c

    const-string p1, "Encoder"

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/videogenerator/codec/f;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reached end of stream unexpectedly "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/videogenerator/codec/f;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_c
    const-string p1, "Encoder"

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/videogenerator/codec/f;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " end of stream reached "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/videogenerator/codec/f;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :goto_2
    iget-boolean p1, p0, Lcn/nubia/videogenerator/codec/f;->y:Z

    if-eqz p1, :cond_d

    .line 340
    invoke-direct {p0}, Lcn/nubia/videogenerator/codec/f;->j()V

    .line 342
    :cond_d
    iget-object p1, p0, Lcn/nubia/videogenerator/codec/f;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_3

    .line 345
    :cond_e
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/f;->b:Landroid/view/Surface;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/videogenerator/codec/f;->r:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/videogenerator/codec/f;->w:I

    iget v1, p0, Lcn/nubia/videogenerator/codec/f;->v:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcn/nubia/videogenerator/codec/f;->f:Ljava/lang/String;

    const-string v1, "video/"

    .line 347
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Encoder"

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/videogenerator/codec/f;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " encoder data is over "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_3
    return-void

    :catchall_2
    move-exception p1

    .line 332
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1

    .line 304
    :cond_10
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "encoderOutputBuffer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_3
    move-exception p1

    .line 301
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p1

    :catchall_4
    move-exception p1

    .line 274
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw p1
.end method

.method private g()V
    .locals 1

    .line 85
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcn/nubia/videogenerator/codec/f;->r:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method private h()V
    .locals 2

    .line 193
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/f;->d:Lcn/nubia/videogenerator/codec/h;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/h;->f()I

    move-result v0

    iput v0, p0, Lcn/nubia/videogenerator/codec/f;->i:I

    .line 194
    rem-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_0

    rsub-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    .line 196
    iput v0, p0, Lcn/nubia/videogenerator/codec/f;->i:I

    .line 199
    :cond_0
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/f;->d:Lcn/nubia/videogenerator/codec/h;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/h;->g()I

    move-result v0

    iput v0, p0, Lcn/nubia/videogenerator/codec/f;->j:I

    .line 200
    rem-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    rsub-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    .line 202
    iput v0, p0, Lcn/nubia/videogenerator/codec/f;->j:I

    :cond_1
    return-void
.end method

.method private i()V
    .locals 11

    .line 207
    iget-boolean v0, p0, Lcn/nubia/videogenerator/codec/f;->l:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcn/nubia/videogenerator/codec/f;->k()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/f;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_0
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/f;->h:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    if-ltz v5, :cond_5

    const/4 v1, 0x0

    .line 213
    iput-boolean v1, p0, Lcn/nubia/videogenerator/codec/f;->l:Z

    .line 214
    iget-object v2, p0, Lcn/nubia/videogenerator/codec/f;->r:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/videogenerator/a/a;

    .line 215
    iget-object v3, p0, Lcn/nubia/videogenerator/codec/f;->h:Landroid/media/MediaCodec;

    invoke-virtual {v3, v5}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 216
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 219
    iget-object v4, p0, Lcn/nubia/videogenerator/codec/f;->d:Lcn/nubia/videogenerator/codec/h;

    if-eqz v4, :cond_3

    iget-object v4, v2, Lcn/nubia/videogenerator/a/a;->b:[B

    array-length v4, v4

    iget v6, p0, Lcn/nubia/videogenerator/codec/f;->k:I

    if-le v4, v6, :cond_3

    .line 223
    iget v4, p0, Lcn/nubia/videogenerator/codec/f;->i:I

    iget-object v6, p0, Lcn/nubia/videogenerator/codec/f;->d:Lcn/nubia/videogenerator/codec/h;

    invoke-virtual {v6}, Lcn/nubia/videogenerator/codec/h;->g()I

    move-result v6

    mul-int/2addr v4, v6

    :goto_0
    if-ge v1, v4, :cond_1

    .line 225
    iget-object v6, v2, Lcn/nubia/videogenerator/a/a;->b:[B

    iget-object v7, p0, Lcn/nubia/videogenerator/codec/f;->d:Lcn/nubia/videogenerator/codec/h;

    invoke-virtual {v7}, Lcn/nubia/videogenerator/codec/h;->f()I

    move-result v7

    invoke-virtual {v3, v6, v1, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 224
    iget v6, p0, Lcn/nubia/videogenerator/codec/f;->i:I

    add-int/2addr v1, v6

    goto :goto_0

    .line 228
    :cond_1
    iget v1, p0, Lcn/nubia/videogenerator/codec/f;->j:I

    iget v4, p0, Lcn/nubia/videogenerator/codec/f;->i:I

    mul-int/2addr v1, v4

    .line 229
    iget-object v6, p0, Lcn/nubia/videogenerator/codec/f;->d:Lcn/nubia/videogenerator/codec/h;

    invoke-virtual {v6}, Lcn/nubia/videogenerator/codec/h;->g()I

    move-result v6

    mul-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    :goto_1
    if-ge v1, v4, :cond_2

    .line 231
    iget-object v6, v2, Lcn/nubia/videogenerator/a/a;->b:[B

    iget-object v7, p0, Lcn/nubia/videogenerator/codec/f;->d:Lcn/nubia/videogenerator/codec/h;

    invoke-virtual {v7}, Lcn/nubia/videogenerator/codec/h;->f()I

    move-result v7

    invoke-virtual {v3, v6, v1, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 230
    iget v6, p0, Lcn/nubia/videogenerator/codec/f;->i:I

    add-int/2addr v1, v6

    goto :goto_1

    .line 233
    :cond_2
    iget v1, p0, Lcn/nubia/videogenerator/codec/f;->k:I

    goto :goto_2

    .line 236
    :cond_3
    iget-object v1, v2, Lcn/nubia/videogenerator/a/a;->b:[B

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 237
    iget-object v1, v2, Lcn/nubia/videogenerator/a/a;->a:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    :goto_2
    move v7, v1

    .line 240
    iget-object v1, v2, Lcn/nubia/videogenerator/a/a;->a:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v1, :cond_4

    iget-object v1, v2, Lcn/nubia/videogenerator/a/a;->a:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_4

    .line 242
    iget-object v4, p0, Lcn/nubia/videogenerator/codec/f;->h:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    iget-object v1, v2, Lcn/nubia/videogenerator/a/a;->a:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v8, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_3

    :cond_4
    const-string v1, "Encoder"

    .line 246
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/nubia/videogenerator/codec/f;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " EOS received in fillInputBufferInner"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v4, p0, Lcn/nubia/videogenerator/codec/f;->h:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    iget-object v1, v2, Lcn/nubia/videogenerator/a/a;->a:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object v1, v2, Lcn/nubia/videogenerator/a/a;->a:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v8, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 v1, 0x1

    .line 252
    iput-boolean v1, p0, Lcn/nubia/videogenerator/codec/f;->m:Z

    .line 255
    :cond_5
    :goto_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private j()V
    .locals 2

    .line 356
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/f;->g:Lcn/nubia/videogenerator/a/g;

    if-eqz v0, :cond_0

    .line 357
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/f;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/nubia/videogenerator/a/g;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private k()Z
    .locals 1

    .line 378
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/f;->g:Lcn/nubia/videogenerator/a/g;

    invoke-interface {v0}, Lcn/nubia/videogenerator/a/g;->a()Z

    move-result v0

    return v0
.end method

.method private l()V
    .locals 2

    .line 383
    :try_start_0
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/f;->h:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/videogenerator/codec/f;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 384
    invoke-direct {p0}, Lcn/nubia/videogenerator/codec/f;->i()V

    .line 385
    iget-boolean v0, p0, Lcn/nubia/videogenerator/codec/f;->m:Z

    invoke-direct {p0, v0}, Lcn/nubia/videogenerator/codec/f;->d(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 388
    :catch_0
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/f;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 389
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/f;->g:Lcn/nubia/videogenerator/a/g;

    invoke-interface {v0}, Lcn/nubia/videogenerator/a/g;->b()V

    :cond_0
    :goto_0
    return-void
.end method

.method private m()V
    .locals 2

    .line 394
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/f;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 395
    :try_start_0
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/f;->h:Landroid/media/MediaCodec;

    if-eqz v1, :cond_0

    .line 396
    iget-boolean v1, p0, Lcn/nubia/videogenerator/codec/f;->m:Z

    invoke-direct {p0, v1}, Lcn/nubia/videogenerator/codec/f;->d(Z)V

    .line 398
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 399
    :goto_0
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/f;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 400
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/f;->r:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    invoke-static {}, Ljava/lang/Thread;->yield()V

    const-wide/16 v0, 0x14

    .line 402
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 405
    :cond_1
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/f;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 406
    :try_start_1
    invoke-direct {p0}, Lcn/nubia/videogenerator/codec/f;->l()V

    .line 407
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

    .line 398
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method


# virtual methods
.method public a(J)V
    .locals 0

    .line 123
    iput-wide p1, p0, Lcn/nubia/videogenerator/codec/f;->e:J

    return-void
.end method

.method public a(Lcn/nubia/videogenerator/a/g;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcn/nubia/videogenerator/codec/f;->g:Lcn/nubia/videogenerator/a/g;

    return-void
.end method

.method public a(Lcn/nubia/videogenerator/codec/c;)V
    .locals 1

    .line 93
    iput-object p1, p0, Lcn/nubia/videogenerator/codec/f;->t:Lcn/nubia/videogenerator/codec/c;

    .line 94
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/f;->h:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p1, p0}, Lcn/nubia/videogenerator/codec/c;->a(Lcn/nubia/videogenerator/a/f;)V

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/videogenerator/codec/g;)V
    .locals 3

    .line 100
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/f;->h:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {p1, p0}, Lcn/nubia/videogenerator/codec/g;->a(Lcn/nubia/videogenerator/a/f;)V

    .line 103
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/f;->b:Landroid/view/Surface;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/videogenerator/codec/f;->d:Lcn/nubia/videogenerator/codec/h;

    .line 104
    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/h;->h()I

    move-result v0

    const v1, 0x7f000789

    if-ne v0, v1, :cond_0

    .line 105
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/f;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_0
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/f;->h:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/videogenerator/codec/f;->b:Landroid/view/Surface;

    .line 107
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 109
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/videogenerator/codec/f;->c()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/videogenerator/codec/f;->b()Lcn/nubia/videogenerator/codec/h;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/videogenerator/codec/h;->f()I

    move-result v1

    .line 110
    invoke-virtual {p0}, Lcn/nubia/videogenerator/codec/f;->b()Lcn/nubia/videogenerator/codec/h;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/videogenerator/codec/h;->g()I

    move-result v2

    .line 109
    invoke-virtual {p1, v0, v1, v2}, Lcn/nubia/videogenerator/codec/g;->a(Landroid/view/Surface;II)V

    :cond_1
    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 2

    .line 152
    :goto_0
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/f;->r:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    const-wide/16 v0, 0x14

    .line 154
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 159
    :cond_0
    new-instance v0, Lcn/nubia/videogenerator/a/a;

    invoke-direct {v0}, Lcn/nubia/videogenerator/a/a;-><init>()V

    .line 160
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    iput-object p1, v0, Lcn/nubia/videogenerator/a/a;->b:[B

    .line 161
    iput-object p2, v0, Lcn/nubia/videogenerator/a/a;->a:Landroid/media/MediaCodec$BufferInfo;

    .line 162
    iget-object p1, p0, Lcn/nubia/videogenerator/codec/f;->r:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 163
    iget p1, p0, Lcn/nubia/videogenerator/codec/f;->v:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/nubia/videogenerator/codec/f;->v:I

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 119
    iput-boolean p1, p0, Lcn/nubia/videogenerator/codec/f;->y:Z

    return-void
.end method

.method public a()Z
    .locals 2

    .line 89
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/f;->r:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/videogenerator/codec/f;->w:I

    iget v1, p0, Lcn/nubia/videogenerator/codec/f;->v:I

    if-ge v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/f;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(I)Z
    .locals 2

    .line 137
    iget v0, p0, Lcn/nubia/videogenerator/codec/f;->v:I

    iget v1, p0, Lcn/nubia/videogenerator/codec/f;->w:I

    add-int/2addr v1, p1

    if-lt v0, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()Lcn/nubia/videogenerator/codec/h;
    .locals 1

    .line 115
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/f;->d:Lcn/nubia/videogenerator/codec/h;

    return-object v0
.end method

.method public b(J)V
    .locals 0

    .line 127
    iput-wide p1, p0, Lcn/nubia/videogenerator/codec/f;->n:J

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 145
    iget v0, p0, Lcn/nubia/videogenerator/codec/f;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/videogenerator/codec/f;->v:I

    .line 147
    invoke-virtual {p0, p1}, Lcn/nubia/videogenerator/codec/f;->c(Z)V

    return-void
.end method

.method public c()Landroid/view/Surface;
    .locals 1

    .line 172
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/f;->b:Landroid/view/Surface;

    return-object v0
.end method

.method public c(Z)V
    .locals 2

    .line 181
    :try_start_0
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/f;->u:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :try_start_1
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/f;->h:Landroid/media/MediaCodec;

    if-eqz v1, :cond_0

    .line 183
    invoke-direct {p0, p1}, Lcn/nubia/videogenerator/codec/f;->d(Z)V

    .line 185
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

    .line 187
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public d()V
    .locals 4

    .line 421
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/f;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 422
    :try_start_0
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/f;->h:Landroid/media/MediaCodec;

    if-eqz v1, :cond_0

    const-string v1, "Encoder"

    .line 423
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/nubia/videogenerator/codec/f;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Encoder start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    :try_start_1
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/f;->h:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v1, "Encoder"

    const-string v2, "Encoder start fail"

    .line 427
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/f;->g:Lcn/nubia/videogenerator/a/g;

    invoke-interface {v1}, Lcn/nubia/videogenerator/a/g;->b()V

    .line 431
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 432
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/f;->b:Landroid/view/Surface;

    if-nez v0, :cond_1

    .line 433
    new-instance v0, Lcn/nubia/videogenerator/codec/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/videogenerator/codec/f$a;-><init>(Lcn/nubia/videogenerator/codec/f;Lcn/nubia/videogenerator/codec/f$1;)V

    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/f$a;->start()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 431
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public e()V
    .locals 4

    .line 448
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/f;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 449
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/f;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 450
    :try_start_0
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/f;->h:Landroid/media/MediaCodec;

    if-eqz v1, :cond_0

    const-string v1, "Encoder"

    .line 451
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/nubia/videogenerator/codec/f;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " release"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    :try_start_1
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/f;->h:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->reset()V

    .line 454
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/f;->h:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 455
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/f;->h:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 457
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    const/4 v1, 0x0

    .line 459
    iput-object v1, p0, Lcn/nubia/videogenerator/codec/f;->h:Landroid/media/MediaCodec;

    .line 460
    iget-object v2, p0, Lcn/nubia/videogenerator/codec/f;->b:Landroid/view/Surface;

    if-eqz v2, :cond_0

    .line 461
    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 462
    iput-object v1, p0, Lcn/nubia/videogenerator/codec/f;->b:Landroid/view/Surface;

    .line 465
    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 466
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/f;->r:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    return-void

    :catchall_0
    move-exception v1

    .line 465
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public f()V
    .locals 1

    .line 472
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/f;->g:Lcn/nubia/videogenerator/a/g;

    invoke-interface {v0}, Lcn/nubia/videogenerator/a/g;->b()V

    return-void
.end method
