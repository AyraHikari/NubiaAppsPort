.class public Lb/a/a/b/d;
.super Lb/a/a/b/c;
.source "SourceFile"

# interfaces
.implements Lb/a/a/c/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/b/d$b;
    }
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:J

.field private F:J

.field private G:I

.field private H:Z

.field private I:J

.field private J:I

.field private K:Landroid/view/Surface;

.field private L:Lb/a/a/c/n;

.field private M:Lb/a/a/b/d$b;

.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Landroid/media/MediaFormat;

.field private e:Ljava/lang/String;

.field private f:Landroid/media/MediaCodec;

.field private g:Lb/a/a/c/k;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lb/a/a/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/Object;

.field private o:I

.field private p:I

.field private q:J

.field private r:Lb/a/a/c/o;

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/media/MediaFormat;Landroid/view/Surface;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lb/a/a/b/c;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lb/a/a/b/d;->a:Z

    .line 3
    iput-boolean v0, p0, Lb/a/a/b/d;->b:Z

    .line 4
    iput-boolean v0, p0, Lb/a/a/b/d;->c:Z

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lb/a/a/b/d;->d:Landroid/media/MediaFormat;

    .line 6
    iput-object v1, p0, Lb/a/a/b/d;->f:Landroid/media/MediaCodec;

    .line 7
    iput-boolean v0, p0, Lb/a/a/b/d;->h:Z

    const/4 v2, 0x1

    .line 8
    iput-boolean v2, p0, Lb/a/a/b/d;->i:Z

    .line 9
    iput-boolean v0, p0, Lb/a/a/b/d;->j:Z

    .line 10
    iput-boolean v0, p0, Lb/a/a/b/d;->k:Z

    .line 11
    iput-boolean v0, p0, Lb/a/a/b/d;->l:Z

    .line 12
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lb/a/a/b/d;->n:Ljava/lang/Object;

    .line 13
    iput v0, p0, Lb/a/a/b/d;->o:I

    .line 14
    iput v0, p0, Lb/a/a/b/d;->p:I

    const-wide/16 v2, -0x1

    .line 15
    iput-wide v2, p0, Lb/a/a/b/d;->q:J

    .line 16
    iput v0, p0, Lb/a/a/b/d;->s:I

    .line 17
    iput v0, p0, Lb/a/a/b/d;->t:I

    .line 18
    iput v0, p0, Lb/a/a/b/d;->u:I

    .line 19
    iput v0, p0, Lb/a/a/b/d;->v:I

    .line 20
    iput v0, p0, Lb/a/a/b/d;->w:I

    .line 21
    iput v0, p0, Lb/a/a/b/d;->x:I

    .line 22
    iput v0, p0, Lb/a/a/b/d;->y:I

    .line 23
    iput v0, p0, Lb/a/a/b/d;->z:I

    .line 24
    iput v0, p0, Lb/a/a/b/d;->A:I

    .line 25
    iput v0, p0, Lb/a/a/b/d;->B:I

    .line 26
    iput v0, p0, Lb/a/a/b/d;->C:I

    .line 27
    iput v0, p0, Lb/a/a/b/d;->D:I

    const-wide/16 v4, 0x0

    .line 28
    iput-wide v4, p0, Lb/a/a/b/d;->E:J

    .line 29
    iput-wide v4, p0, Lb/a/a/b/d;->F:J

    const/16 v4, 0x8

    .line 30
    iput v4, p0, Lb/a/a/b/d;->G:I

    .line 31
    iput-boolean v0, p0, Lb/a/a/b/d;->H:Z

    .line 32
    iput-wide v2, p0, Lb/a/a/b/d;->I:J

    const/4 v0, -0x1

    .line 33
    iput v0, p0, Lb/a/a/b/d;->J:I

    .line 34
    iput-object v1, p0, Lb/a/a/b/d;->K:Landroid/view/Surface;

    .line 35
    iput-object v1, p0, Lb/a/a/b/d;->L:Lb/a/a/c/n;

    .line 36
    iput-object v1, p0, Lb/a/a/b/d;->M:Lb/a/a/b/d$b;

    .line 37
    iput-object p1, p0, Lb/a/a/b/d;->d:Landroid/media/MediaFormat;

    .line 38
    iput-object p2, p0, Lb/a/a/b/d;->K:Landroid/view/Surface;

    if-eqz p2, :cond_0

    .line 39
    new-instance p2, Lb/a/a/c/n;

    invoke-direct {p2}, Lb/a/a/c/n;-><init>()V

    iput-object p2, p0, Lb/a/a/b/d;->L:Lb/a/a/c/n;

    :cond_0
    const-string p2, "mime"

    .line 40
    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lb/a/a/b/d;->e:Ljava/lang/String;

    .line 41
    iget-object p1, p0, Lb/a/a/b/d;->d:Landroid/media/MediaFormat;

    invoke-direct {p0, p1}, Lb/a/a/b/d;->q(Landroid/media/MediaFormat;)V

    .line 42
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lb/a/a/b/d;->m:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 43
    iget-object p1, p0, Lb/a/a/b/d;->e:Ljava/lang/String;

    const-string p2, "video/"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 44
    iget-object p1, p0, Lb/a/a/b/d;->d:Landroid/media/MediaFormat;

    const-string p2, "width"

    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lb/a/a/b/d;->v:I

    .line 45
    iget-object p1, p0, Lb/a/a/b/d;->d:Landroid/media/MediaFormat;

    const-string p2, "height"

    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lb/a/a/b/d;->w:I

    .line 46
    iget p2, p0, Lb/a/a/b/d;->v:I

    mul-int/2addr p2, p1

    iput p2, p0, Lb/a/a/b/d;->A:I

    :cond_1
    return-void
.end method

.method private B()V
    .locals 5

    .line 1
    :goto_0
    iget-boolean v0, p0, Lb/a/a/b/d;->a:Z

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lb/a/a/b/d;->m:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x14

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 4
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lb/a/a/b/d;->g:Lb/a/a/c/k;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lb/a/a/b/d;->e:Ljava/lang/String;

    const/16 v4, 0x14

    invoke-interface {v0, v3, v4}, Lb/a/a/c/k;->i(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 7
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lb/a/a/b/d;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 9
    :try_start_0
    invoke-direct {p0}, Lb/a/a/b/d;->f()V

    .line 10
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    return-void
.end method

.method static synthetic c(Lb/a/a/b/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/a/a/b/d;->B()V

    return-void
.end method

.method private d(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/b/d;->L:Lb/a/a/c/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/a/c/n;->b()I

    move-result v0

    sub-int/2addr p1, v0

    if-lez p1, :cond_0

    return p1

    :cond_0
    return v1
.end method

.method private e([B[B)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lb/a/a/b/d;->i:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lb/a/a/b/d;->C:I

    .line 3
    iget v1, p0, Lb/a/a/b/d;->x:I

    .line 4
    iget v2, p0, Lb/a/a/b/d;->y:I

    goto :goto_0

    .line 5
    :cond_0
    iget v0, p0, Lb/a/a/b/d;->A:I

    .line 6
    iget v1, p0, Lb/a/a/b/d;->v:I

    .line 7
    iget v2, p0, Lb/a/a/b/d;->w:I

    :goto_0
    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_2

    move v5, v3

    :goto_2
    if-ge v5, v1, :cond_1

    mul-int v6, v4, v1

    add-int/2addr v6, v5

    .line 8
    iget v7, p0, Lb/a/a/b/d;->z:I

    mul-int/2addr v7, v4

    add-int/2addr v7, v5

    aget-byte v7, p1, v7

    aput-byte v7, p2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move v4, v3

    .line 9
    :goto_3
    div-int/lit8 v5, v2, 0x2

    if-ge v4, v5, :cond_4

    move v5, v3

    :goto_4
    if-ge v5, v1, :cond_3

    mul-int v6, v4, v1

    add-int/2addr v6, v0

    add-int/2addr v6, v5

    .line 10
    iget v7, p0, Lb/a/a/b/d;->D:I

    iget v8, p0, Lb/a/a/b/d;->z:I

    mul-int/2addr v8, v4

    add-int/2addr v7, v8

    add-int/2addr v7, v5

    aget-byte v7, p1, v7

    aput-byte v7, p2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method private f()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lb/a/a/b/d;->f:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lb/a/a/b/d;->a:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lb/a/a/b/d;->k:Z

    if-nez v0, :cond_0

    iget v0, p0, Lb/a/a/b/d;->J:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2
    :cond_0
    invoke-direct {p0}, Lb/a/a/b/d;->r()V

    .line 3
    iget-object v0, p0, Lb/a/a/b/d;->f:Landroid/media/MediaCodec;

    iget-boolean v1, p0, Lb/a/a/b/d;->h:Z

    invoke-direct {p0, v0, v1}, Lb/a/a/b/d;->h(Landroid/media/MediaCodec;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    invoke-direct {p0}, Lb/a/a/b/d;->g()V

    :cond_1
    :goto_0
    return-void
.end method

.method private g()V
    .locals 2

    const-string v0, "Decoder"

    const-string v1, "decoder exception "

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lb/a/a/b/d;->g:Lb/a/a/c/k;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lb/a/a/c/k;->a()V

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lb/a/a/b/d;->a:Z

    .line 5
    iget-object v0, p0, Lb/a/a/b/d;->m:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    return-void
.end method

.method private h(Landroid/media/MediaCodec;Z)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    :cond_0
    :goto_0
    iget-boolean v2, v0, Lb/a/a/b/d;->a:Z

    if-eqz v2, :cond_1

    goto/16 :goto_c

    .line 2
    :cond_1
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const-wide/16 v3, 0x0

    .line 3
    invoke-virtual {v1, v2, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    if-nez p2, :cond_2

    .line 4
    iget v2, v0, Lb/a/a/b/d;->o:I

    if-lez v2, :cond_2

    iget-object v2, v0, Lb/a/a/b/d;->m:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_22

    :cond_2
    iget v2, v0, Lb/a/a/b/d;->o:I

    if-nez v2, :cond_0

    goto/16 :goto_c

    :cond_3
    const/4 v6, -0x2

    if-ne v5, v6, :cond_4

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    const-string v3, "mime"

    .line 6
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lb/a/a/b/d;->e:Ljava/lang/String;

    .line 7
    invoke-direct {v0, v2}, Lb/a/a/b/d;->o(Landroid/media/MediaFormat;)V

    goto :goto_0

    :cond_4
    const-string v6, "Decoder"

    if-gez v5, :cond_5

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected result from decoder.dequeueOutputBuffer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 9
    :cond_5
    iget-boolean v7, v0, Lb/a/a/b/d;->c:Z

    const/4 v8, 0x7

    const-string v9, "video/"

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v7, :cond_e

    iget-object v7, v0, Lb/a/a/b/d;->e:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 10
    iget v7, v0, Lb/a/a/b/d;->p:I

    add-int/2addr v7, v12

    iput v7, v0, Lb/a/a/b/d;->p:I

    .line 11
    iget-boolean v7, v0, Lb/a/a/b/d;->k:Z

    if-eqz v7, :cond_7

    iget-wide v14, v0, Lb/a/a/b/d;->I:J

    cmp-long v7, v14, v3

    if-gez v7, :cond_7

    .line 12
    iget-boolean v7, v0, Lb/a/a/b/d;->l:Z

    if-eqz v7, :cond_6

    const/16 v7, 0xc

    goto :goto_1

    .line 13
    :cond_6
    iget-wide v14, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    long-to-int v7, v14

    div-int/lit16 v7, v7, 0x3e8

    invoke-direct {v0, v7}, Lb/a/a/b/d;->d(I)I

    move-result v7

    :goto_1
    if-lez v7, :cond_7

    const/16 v9, 0xfa0

    if-ge v7, v9, :cond_7

    .line 14
    invoke-static {}, Ljava/lang/Thread;->yield()V

    int-to-long v14, v7

    .line 15
    invoke-static {v14, v15}, Landroid/os/SystemClock;->sleep(J)V

    .line 16
    :cond_7
    iget-wide v14, v0, Lb/a/a/b/d;->I:J

    cmp-long v3, v14, v3

    if-ltz v3, :cond_b

    .line 17
    iget v3, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v3, v12

    if-eqz v3, :cond_8

    .line 18
    iput-boolean v12, v0, Lb/a/a/b/d;->b:Z

    .line 19
    :cond_8
    iget-boolean v3, v0, Lb/a/a/b/d;->b:Z

    if-nez v3, :cond_9

    .line 20
    invoke-virtual {v1, v5, v12}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 21
    iget-object v3, v0, Lb/a/a/b/d;->L:Lb/a/a/c/n;

    if-eqz v3, :cond_c

    .line 22
    invoke-virtual {v3}, Lb/a/a/c/n;->g()V

    goto :goto_2

    .line 23
    :cond_9
    iput-boolean v13, v0, Lb/a/a/b/d;->b:Z

    const-wide/16 v3, -0x1

    .line 24
    iput-wide v3, v0, Lb/a/a/b/d;->I:J

    .line 25
    invoke-direct {v0, v10, v2}, Lb/a/a/b/d;->m(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 26
    invoke-virtual {v1, v5, v12}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 27
    iget-object v1, v0, Lb/a/a/b/d;->L:Lb/a/a/c/n;

    if-eqz v1, :cond_a

    .line 28
    invoke-virtual {v1}, Lb/a/a/c/n;->g()V

    .line 29
    :cond_a
    iput v11, v0, Lb/a/a/b/d;->J:I

    .line 30
    iget-object v1, v0, Lb/a/a/b/d;->g:Lb/a/a/c/k;

    iget-object v2, v0, Lb/a/a/b/d;->e:Ljava/lang/String;

    invoke-interface {v1, v2}, Lb/a/a/c/k;->b(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 31
    :cond_b
    invoke-direct {v0, v10, v2}, Lb/a/a/b/d;->m(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 32
    invoke-virtual {v1, v5, v12}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 33
    :cond_c
    :goto_2
    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v2, v11

    if-eqz v2, :cond_0

    if-nez p2, :cond_d

    const-string v1, "reached end of stream unexpectedly"

    .line 34
    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_d
    const-string v1, "end of stream reached"

    .line 35
    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :goto_3
    iput-boolean v13, v0, Lb/a/a/b/d;->k:Z

    .line 37
    iput v13, v0, Lb/a/a/b/d;->p:I

    .line 38
    iput v13, v0, Lb/a/a/b/d;->o:I

    .line 39
    invoke-direct/range {p0 .. p0}, Lb/a/a/b/d;->n()V

    .line 40
    iput v8, v0, Lb/a/a/b/d;->J:I

    .line 41
    iget-object v1, v0, Lb/a/a/b/d;->m:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    if-lez v1, :cond_22

    .line 42
    iget-object v1, v0, Lb/a/a/b/d;->m:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    goto/16 :goto_c

    .line 43
    :cond_e
    iget-wide v3, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v14, v0, Lb/a/a/b/d;->q:J

    cmp-long v7, v3, v14

    if-gez v7, :cond_f

    iget v7, v0, Lb/a/a/b/d;->p:I

    iget v14, v0, Lb/a/a/b/d;->o:I

    if-ge v7, v14, :cond_f

    add-int/lit8 v7, v7, 0x1

    .line 44
    iput v7, v0, Lb/a/a/b/d;->p:I

    .line 45
    invoke-virtual {v1, v5}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    .line 46
    invoke-virtual {v1, v5, v13}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_0

    .line 47
    :cond_f
    iget-boolean v7, v0, Lb/a/a/b/d;->H:Z

    if-eqz v7, :cond_11

    iget v7, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v7, v11

    if-nez v7, :cond_11

    .line 48
    iget-wide v14, v0, Lb/a/a/b/d;->E:J

    cmp-long v7, v3, v14

    if-gtz v7, :cond_10

    .line 49
    iget v3, v0, Lb/a/a/b/d;->p:I

    iget v4, v0, Lb/a/a/b/d;->G:I

    rem-int v4, v3, v4

    if-eqz v4, :cond_11

    add-int/lit8 v3, v3, 0x1

    .line 50
    iput v3, v0, Lb/a/a/b/d;->p:I

    .line 51
    invoke-virtual {v1, v5}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    .line 52
    invoke-virtual {v1, v5, v13}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_0

    .line 53
    :cond_10
    iget-wide v14, v0, Lb/a/a/b/d;->F:J

    cmp-long v3, v3, v14

    if-lez v3, :cond_11

    .line 54
    iget v3, v0, Lb/a/a/b/d;->p:I

    iget v4, v0, Lb/a/a/b/d;->G:I

    rem-int v4, v3, v4

    if-eqz v4, :cond_11

    add-int/lit8 v3, v3, 0x1

    .line 55
    iput v3, v0, Lb/a/a/b/d;->p:I

    .line 56
    invoke-virtual {v1, v5}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    .line 57
    invoke-virtual {v1, v5, v13}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_0

    .line 58
    :cond_11
    iget-object v3, v0, Lb/a/a/b/d;->r:Lb/a/a/c/o;

    if-nez v3, :cond_24

    .line 59
    iget v3, v0, Lb/a/a/b/d;->s:I

    const-string v4, "video/hevc"

    if-eqz v3, :cond_19

    iget-object v3, v0, Lb/a/a/b/d;->e:Ljava/lang/String;

    const-string v7, "audio/"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    goto/16 :goto_7

    .line 60
    :cond_12
    iget v3, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget v7, v0, Lb/a/a/b/d;->B:I

    if-lt v3, v7, :cond_16

    iget-boolean v10, v0, Lb/a/a/b/d;->i:Z

    if-nez v10, :cond_13

    goto :goto_5

    .line 61
    :cond_13
    new-array v10, v7, [B

    .line 62
    new-array v15, v7, [B

    if-lez v3, :cond_15

    .line 63
    iget-object v3, v0, Lb/a/a/b/d;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 64
    iget v3, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v3, v3, [B

    .line 65
    invoke-virtual {v1, v5}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 66
    invoke-direct {v0, v3, v15}, Lb/a/a/b/d;->e([B[B)V

    goto :goto_4

    .line 67
    :cond_14
    invoke-virtual {v1, v5}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 68
    :goto_4
    iget v3, v0, Lb/a/a/b/d;->x:I

    iget v4, v0, Lb/a/a/b/d;->y:I

    iget v7, v0, Lb/a/a/b/d;->u:I

    iget v14, v0, Lb/a/a/b/d;->s:I

    move/from16 v19, v14

    move-object v14, v10

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v7

    invoke-static/range {v14 .. v19}, Lb/a/a/c/i;->a([B[BIIII)V

    .line 69
    :cond_15
    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    goto :goto_9

    .line 70
    :cond_16
    :goto_5
    new-array v7, v3, [B

    .line 71
    new-array v15, v3, [B

    if-lez v3, :cond_18

    .line 72
    iget-object v3, v0, Lb/a/a/b/d;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 73
    invoke-virtual {v1, v5}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 74
    invoke-direct {v0, v7, v15}, Lb/a/a/b/d;->e([B[B)V

    goto :goto_6

    .line 75
    :cond_17
    invoke-virtual {v1, v5}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 76
    :goto_6
    iget v3, v0, Lb/a/a/b/d;->v:I

    iget v4, v0, Lb/a/a/b/d;->w:I

    iget v10, v0, Lb/a/a/b/d;->u:I

    iget v14, v0, Lb/a/a/b/d;->s:I

    move/from16 v19, v14

    move-object v14, v7

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v10

    invoke-static/range {v14 .. v19}, Lb/a/a/c/i;->a([B[BIIII)V

    .line 77
    :cond_18
    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    goto :goto_9

    .line 78
    :cond_19
    :goto_7
    iget v3, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v7, v3, [B

    .line 79
    new-array v10, v3, [B

    if-lez v3, :cond_1b

    .line 80
    iget-object v3, v0, Lb/a/a/b/d;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 81
    invoke-virtual {v1, v5}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 82
    invoke-direct {v0, v10, v7}, Lb/a/a/b/d;->e([B[B)V

    goto :goto_8

    .line 83
    :cond_1a
    invoke-virtual {v1, v5}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 84
    :cond_1b
    :goto_8
    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    :goto_9
    if-eqz v3, :cond_23

    .line 85
    iget v4, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v7, v4, 0x2

    if-eqz v7, :cond_1c

    .line 86
    iput v13, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 87
    :cond_1c
    iget-boolean v7, v0, Lb/a/a/b/d;->j:Z

    if-eqz v7, :cond_1d

    iget-boolean v7, v0, Lb/a/a/b/d;->H:Z

    if-eqz v7, :cond_1d

    iget-wide v14, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object v7, v9

    iget-wide v8, v0, Lb/a/a/b/d;->E:J

    cmp-long v8, v14, v8

    if-lez v8, :cond_1e

    iget-wide v8, v0, Lb/a/a/b/d;->F:J

    cmp-long v8, v14, v8

    if-gtz v8, :cond_1e

    and-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_1e

    .line 88
    invoke-direct {v0, v3, v2}, Lb/a/a/b/d;->m(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 89
    invoke-direct {v0, v3, v2}, Lb/a/a/b/d;->m(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 90
    invoke-direct {v0, v3, v2}, Lb/a/a/b/d;->m(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_a

    :cond_1d
    move-object v7, v9

    .line 91
    :cond_1e
    :goto_a
    invoke-direct {v0, v3, v2}, Lb/a/a/b/d;->m(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 92
    iget v3, v0, Lb/a/a/b/d;->p:I

    add-int/2addr v3, v12

    iput v3, v0, Lb/a/a/b/d;->p:I

    .line 93
    invoke-virtual {v1, v5, v13}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 94
    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v2, v11

    if-eqz v2, :cond_21

    if-nez p2, :cond_1f

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lb/a/a/b/d;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " reached end of stream unexpectedly"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 96
    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lb/a/a/b/d;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " end of stream reached"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :goto_b
    iget-boolean v1, v0, Lb/a/a/b/d;->c:Z

    if-eqz v1, :cond_20

    .line 98
    iput-boolean v13, v0, Lb/a/a/b/d;->k:Z

    .line 99
    iput v13, v0, Lb/a/a/b/d;->p:I

    .line 100
    iput v13, v0, Lb/a/a/b/d;->o:I

    .line 101
    invoke-direct/range {p0 .. p0}, Lb/a/a/b/d;->n()V

    const/4 v1, 0x7

    .line 102
    iput v1, v0, Lb/a/a/b/d;->J:I

    .line 103
    iget-object v1, v0, Lb/a/a/b/d;->m:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    if-lez v1, :cond_22

    .line 104
    iget-object v1, v0, Lb/a/a/b/d;->m:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    goto :goto_c

    .line 105
    :cond_20
    iput-boolean v12, v0, Lb/a/a/b/d;->a:Z

    .line 106
    invoke-direct/range {p0 .. p0}, Lb/a/a/b/d;->n()V

    goto :goto_c

    .line 107
    :cond_21
    iget-object v2, v0, Lb/a/a/b/d;->m:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Lb/a/a/b/d;->p:I

    iget v3, v0, Lb/a/a/b/d;->o:I

    if-lt v2, v3, :cond_0

    iget-object v2, v0, Lb/a/a/b/d;->e:Ljava/lang/String;

    .line 108
    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_22
    :goto_c
    return-void

    :cond_23
    const-string v1, "decodedData is null "

    .line 109
    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encoderOutputBuffer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " was null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    :cond_24
    iget v1, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v2, v1, [B

    .line 112
    new-array v1, v1, [B

    .line 113
    invoke-virtual {v3}, Lb/a/a/c/o;->a()I

    throw v10
.end method

.method private i(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

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
    iget-object p1, p0, Lb/a/a/b/d;->m:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 5
    iget p1, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz p1, :cond_0

    .line 6
    iget p1, p0, Lb/a/a/b/d;->o:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lb/a/a/b/d;->o:I

    :cond_0
    return-void
.end method

.method private declared-synchronized m(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lb/a/a/b/d;->g:Lb/a/a/c/k;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lb/a/a/b/d;->e:Ljava/lang/String;

    const-string v1, "audio/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lb/a/a/b/d;->t:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lb/a/a/b/d;->g:Lb/a/a/c/k;

    const-string v1, "exteraudio/"

    invoke-interface {v0, p1, p2, v1}, Lb/a/a/c/k;->h(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lb/a/a/b/d;->g:Lb/a/a/c/k;

    iget-object v1, p0, Lb/a/a/b/d;->e:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v1}, Lb/a/a/c/k;->h(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/b/d;->g:Lb/a/a/c/k;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lb/a/a/b/d;->e:Ljava/lang/String;

    const-string v1, "audio/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lb/a/a/b/d;->t:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lb/a/a/b/d;->g:Lb/a/a/c/k;

    const-string v1, "exteraudio/"

    invoke-interface {v0, v1}, Lb/a/a/c/k;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lb/a/a/b/d;->g:Lb/a/a/c/k;

    iget-object v1, p0, Lb/a/a/b/d;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Lb/a/a/c/k;->f(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private o(Landroid/media/MediaFormat;)V
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

    const-string v1, "Decoder"

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lb/a/a/b/d;->g:Lb/a/a/c/k;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1}, Lb/a/a/c/k;->c(Landroid/media/MediaFormat;)V

    :cond_0
    return-void
.end method

.method private q(Landroid/media/MediaFormat;)V
    .locals 8

    const-string v0, "max-input-size"

    const/16 v1, 0x4000

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 3
    invoke-virtual {v0, p1}, Landroid/media/MediaCodecList;->findDecoderForFormat(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "mime"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "Decoder"

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "decoderName :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/b/d;->f:Landroid/media/MediaCodec;

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KEY_MIME :"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lb/a/a/b/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 7
    :try_start_1
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/b/d;->f:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v3, v1

    .line 9
    :goto_0
    :try_start_2
    iget-object v0, p0, Lb/a/a/b/d;->f:Landroid/media/MediaCodec;

    iget-object v6, p0, Lb/a/a/b/d;->K:Landroid/view/Surface;

    invoke-virtual {v0, p1, v6, v4, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_0
    move v3, v1

    :catch_1
    const-string v0, "create decoder fail"

    if-eqz v3, :cond_1

    .line 10
    :try_start_3
    invoke-virtual {p0}, Lb/a/a/b/d;->s()V

    .line 11
    iput-boolean v1, p0, Lb/a/a/b/d;->a:Z

    const-string v3, "create decoder too"

    .line 12
    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-static {v2}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lb/a/a/b/d;->f:Landroid/media/MediaCodec;

    if-eqz v2, :cond_2

    .line 15
    iget-object v3, p0, Lb/a/a/b/d;->K:Landroid/view/Surface;

    invoke-virtual {v2, p1, v3, v4, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    goto :goto_1

    .line 16
    :cond_1
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 17
    :catch_2
    iput-object v4, p0, Lb/a/a/b/d;->f:Landroid/media/MediaCodec;

    .line 18
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method private r()V
    .locals 10

    .line 1
    iget-object v0, p0, Lb/a/a/b/d;->m:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lb/a/a/b/d;->f:Landroid/media/MediaCodec;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v4

    if-ltz v4, :cond_2

    .line 3
    iget-object v0, p0, Lb/a/a/b/d;->m:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/c/a;

    .line 4
    iget-object v1, p0, Lb/a/a/b/d;->f:Landroid/media/MediaCodec;

    invoke-virtual {v1, v4}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 6
    iget-object v2, v0, Lb/a/a/c/a;->b:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 7
    iget-object v1, v0, Lb/a/a/c/a;->a:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v6, :cond_1

    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_1

    .line 8
    iget-object v3, p0, Lb/a/a/b/d;->f:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    iget-wide v7, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lb/a/a/b/d;->h:Z

    goto :goto_0

    :cond_1
    const-string v1, "Decoder"

    const-string v2, "EOS recevied in fillInputBufferInner"

    .line 10
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object v3, p0, Lb/a/a/b/d;->f:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    iget-object v0, v0, Lb/a/a/c/a;->a:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v7, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/4 v9, 0x4

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lb/a/a/b/d;->h:Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public A()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/a/a/b/d;->f:Landroid/media/MediaCodec;

    const-string v1, "Decoder"

    if-eqz v0, :cond_2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lb/a/a/b/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Decoder start"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lb/a/a/b/d;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v2, "mp4v-es"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v2, "lahaina"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0}, Lb/a/a/b/d;->g()V

    return-void

    .line 5
    :cond_0
    :try_start_0
    iget-object v0, p0, Lb/a/a/b/d;->f:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lb/a/a/b/d;->J:I

    .line 7
    iput-boolean v0, p0, Lb/a/a/b/d;->k:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "decoder start fail"

    .line 8
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-direct {p0}, Lb/a/a/b/d;->g()V

    .line 10
    :goto_0
    iget-object v0, p0, Lb/a/a/b/d;->L:Lb/a/a/c/n;

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0}, Lb/a/a/c/n;->f()V

    .line 12
    :cond_1
    new-instance v0, Lb/a/a/b/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lb/a/a/b/d$b;-><init>(Lb/a/a/b/d;Lb/a/a/b/d$a;)V

    iput-object v0, p0, Lb/a/a/b/d;->M:Lb/a/a/b/d$b;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :cond_2
    const-string v0, "decoder is null,do not start"

    .line 14
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-direct {p0}, Lb/a/a/b/d;->g()V

    :goto_1
    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    .line 1
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v0, v0, [B

    .line 2
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 3
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1, p2}, Lb/a/a/b/d;->i(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method public b(I)Z
    .locals 2

    .line 1
    iget v0, p0, Lb/a/a/b/d;->o:I

    iget v1, p0, Lb/a/a/b/d;->p:I

    add-int/2addr v1, p1

    if-lt v0, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public j()V
    .locals 4

    .line 1
    iget-object v0, p0, Lb/a/a/b/d;->m:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/a/a/b/d;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lb/a/a/b/d;->m:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 4
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
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lb/a/a/b/d;->p:I

    .line 6
    iput v0, p0, Lb/a/a/b/d;->o:I

    .line 7
    :try_start_1
    iget-object v0, p0, Lb/a/a/b/d;->n:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 8
    :try_start_2
    iget-object v1, p0, Lb/a/a/b/d;->f:Landroid/media/MediaCodec;

    if-eqz v1, :cond_1

    iget v2, p0, Lb/a/a/b/d;->J:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_1

    const/4 v3, 0x7

    if-gt v2, v3, :cond_1

    .line 9
    invoke-virtual {v1}, Landroid/media/MediaCodec;->flush()V

    .line 10
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    .line 11
    :catch_0
    invoke-direct {p0}, Lb/a/a/b/d;->g()V

    :goto_1
    return-void
.end method

.method public k(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lb/a/a/b/d;->c:Z

    return-void
.end method

.method public l(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lb/a/a/b/d;->l:Z

    return-void
.end method

.method public p()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lb/a/a/b/d;->k:Z

    .line 2
    iget-object v0, p0, Lb/a/a/b/d;->L:Lb/a/a/c/n;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lb/a/a/c/n;->c()V

    :cond_0
    const/4 v0, 0x5

    .line 4
    iput v0, p0, Lb/a/a/b/d;->J:I

    return-void
.end method

.method public s()V
    .locals 3

    const-string v0, "Decoder"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseDecoder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lb/a/a/b/d;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lb/a/a/b/d;->a:Z

    .line 3
    iget-object v0, p0, Lb/a/a/b/d;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lb/a/a/b/d;->f:Landroid/media/MediaCodec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 5
    :try_start_1
    invoke-virtual {v1}, Landroid/media/MediaCodec;->reset()V

    .line 6
    iget-object v1, p0, Lb/a/a/b/d;->f:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 7
    iget-object v1, p0, Lb/a/a/b/d;->f:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    const/4 v1, 0x0

    .line 8
    :try_start_2
    iput-object v1, p0, Lb/a/a/b/d;->f:Landroid/media/MediaCodec;

    .line 9
    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lb/a/a/b/d;->J:I

    .line 11
    iget-object v0, p0, Lb/a/a/b/d;->L:Lb/a/a/c/n;

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, Lb/a/a/c/n;->c()V

    .line 13
    :cond_1
    iget-object v0, p0, Lb/a/a/b/d;->m:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    :cond_2
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

.method public t()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lb/a/a/b/d;->k:Z

    .line 2
    iget-object v0, p0, Lb/a/a/b/d;->L:Lb/a/a/c/n;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lb/a/a/c/n;->f()V

    :cond_0
    const/4 v0, 0x6

    .line 4
    iput v0, p0, Lb/a/a/b/d;->J:I

    return-void
.end method

.method public u(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lb/a/a/b/d;->e:Ljava/lang/String;

    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lb/a/a/b/d;->b:Z

    .line 3
    iput-boolean v0, p0, Lb/a/a/b/d;->h:Z

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 4
    iput-wide v0, p0, Lb/a/a/b/d;->I:J

    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lb/a/a/b/d;->J:I

    .line 6
    iget-object v0, p0, Lb/a/a/b/d;->L:Lb/a/a/c/n;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p1}, Lb/a/a/c/n;->e(I)V

    :cond_0
    return-void
.end method

.method public v(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lb/a/a/b/d;->i:Z

    return-void
.end method

.method public w(I)V
    .locals 0

    .line 1
    iput p1, p0, Lb/a/a/b/d;->t:I

    return-void
.end method

.method public x(Lb/a/a/c/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/b/d;->g:Lb/a/a/c/k;

    return-void
.end method

.method public y(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/b/d;->L:Lb/a/a/c/n;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lb/a/a/c/n;->d(F)V

    :cond_0
    return-void
.end method

.method public z(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lb/a/a/b/d;->e:Ljava/lang/String;

    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 2
    iput-wide v0, p0, Lb/a/a/b/d;->I:J

    :cond_0
    return-void
.end method
