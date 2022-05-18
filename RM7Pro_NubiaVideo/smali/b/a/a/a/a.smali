.class public Lb/a/a/a/a;
.super Lb/a/a/b/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/a/a$a;
    }
.end annotation


# static fields
.field public static B:I = 0xac44


# instance fields
.field private A:I

.field private a:Ljava/lang/String;

.field private b:Landroid/media/AudioTrack;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:F

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Lb/a/a/b/a;

.field private l:Lb/a/a/b/b;

.field private m:Lb/a/a/b/b;

.field private n:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "[B>;"
        }
    .end annotation
.end field

.field private o:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "[B>;"
        }
    .end annotation
.end field

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Lb/a/a/c/k;

.field private u:Lb/a/a/a/a$a;

.field private v:J

.field private w:Ljava/lang/Object;

.field private x:Ljava/lang/Object;

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lb/a/a/b/c;-><init>()V

    const-string v0, "MediaAudioMixingRenderer"

    .line 2
    iput-object v0, p0, Lb/a/a/a/a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lb/a/a/a/a;->e:I

    const/4 v1, 0x1

    .line 4
    iput v1, p0, Lb/a/a/a/a;->f:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    iput v1, p0, Lb/a/a/a/a;->g:F

    .line 6
    iput-boolean v0, p0, Lb/a/a/a/a;->h:Z

    .line 7
    iput-boolean v0, p0, Lb/a/a/a/a;->i:Z

    .line 8
    iput-boolean v0, p0, Lb/a/a/a/a;->j:Z

    .line 9
    new-instance v1, Ljava/util/concurrent/LinkedBlockingDeque;

    const/16 v2, 0xc8

    invoke-direct {v1, v2}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object v1, p0, Lb/a/a/a/a;->n:Ljava/util/concurrent/BlockingQueue;

    .line 10
    new-instance v1, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v1, v2}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object v1, p0, Lb/a/a/a/a;->o:Ljava/util/concurrent/BlockingQueue;

    .line 11
    iput-boolean v0, p0, Lb/a/a/a/a;->p:Z

    .line 12
    iput-boolean v0, p0, Lb/a/a/a/a;->q:Z

    .line 13
    iput-boolean v0, p0, Lb/a/a/a/a;->r:Z

    .line 14
    iput-boolean v0, p0, Lb/a/a/a/a;->s:Z

    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, Lb/a/a/a/a;->u:Lb/a/a/a/a$a;

    const-wide/16 v1, 0x0

    .line 16
    iput-wide v1, p0, Lb/a/a/a/a;->v:J

    .line 17
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lb/a/a/a/a;->w:Ljava/lang/Object;

    .line 18
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lb/a/a/a/a;->x:Ljava/lang/Object;

    const/16 v1, 0x64

    .line 19
    iput v1, p0, Lb/a/a/a/a;->y:I

    .line 20
    iput v1, p0, Lb/a/a/a/a;->z:I

    .line 21
    iput v0, p0, Lb/a/a/a/a;->A:I

    .line 22
    new-instance v0, Lb/a/a/b/a;

    invoke-direct {v0}, Lb/a/a/b/a;-><init>()V

    iput-object v0, p0, Lb/a/a/a/a;->k:Lb/a/a/b/a;

    .line 23
    invoke-virtual {p0}, Lb/a/a/a/a;->H()V

    return-void
.end method

.method private D(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/a/a;->b:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/media/AudioTrack;->setPlaybackRate(I)I

    :cond_0
    return-void
.end method

.method static synthetic c(Lb/a/a/a/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/a/a/a/a;->f()V

    return-void
.end method

.method private e(Ljava/lang/String;[B)V
    .locals 3

    const-string v0, "exteraudio"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const v0, 0xac44

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Lb/a/a/a/a;->m:Lb/a/a/b/b;

    invoke-virtual {p1}, Lb/a/a/b/b;->a()I

    move-result p1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    .line 3
    iget-object p1, p0, Lb/a/a/a/a;->k:Lb/a/a/b/a;

    invoke-virtual {p1, p2}, Lb/a/a/b/a;->d([B)[B

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lb/a/a/b/a;->m([BZ)[B

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lb/a/a/a/a;->m:Lb/a/a/b/b;

    invoke-virtual {p1}, Lb/a/a/b/b;->d()I

    move-result p1

    if-le p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Lb/a/a/a/a;->k:Lb/a/a/b/a;

    iget-object v0, p0, Lb/a/a/a/a;->n:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {p1, p2, v0, v2}, Lb/a/a/b/a;->e([BLjava/util/concurrent/BlockingQueue;Z)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lb/a/a/a/a;->k:Lb/a/a/b/a;

    iget-object v0, p0, Lb/a/a/a/a;->n:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {p1, p2, v0, v2}, Lb/a/a/b/a;->n([BLjava/util/concurrent/BlockingQueue;Z)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lb/a/a/a/a;->l:Lb/a/a/b/b;

    invoke-virtual {p1}, Lb/a/a/b/b;->a()I

    move-result p1

    if-ne p1, v1, :cond_3

    .line 8
    iget-object p1, p0, Lb/a/a/a/a;->k:Lb/a/a/b/a;

    invoke-virtual {p1, p2}, Lb/a/a/b/a;->d([B)[B

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lb/a/a/b/a;->m([BZ)[B

    move-result-object p2

    if-nez p2, :cond_3

    return-void

    .line 9
    :cond_3
    iget-object p1, p0, Lb/a/a/a/a;->l:Lb/a/a/b/b;

    invoke-virtual {p1}, Lb/a/a/b/b;->d()I

    move-result p1

    if-le p1, v0, :cond_4

    .line 10
    iget-object p1, p0, Lb/a/a/a/a;->k:Lb/a/a/b/a;

    iget-object v0, p0, Lb/a/a/a/a;->o:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {p1, p2, v0, v1}, Lb/a/a/b/a;->e([BLjava/util/concurrent/BlockingQueue;Z)V

    goto :goto_0

    .line 11
    :cond_4
    iget-object p1, p0, Lb/a/a/a/a;->k:Lb/a/a/b/a;

    iget-object v0, p0, Lb/a/a/a/a;->o:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {p1, p2, v0, v1}, Lb/a/a/b/a;->n([BLjava/util/concurrent/BlockingQueue;Z)V

    :goto_0
    return-void
.end method

.method private f()V
    .locals 12

    .line 1
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 3
    iput v1, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v2, 0x0

    move v3, v1

    move v5, v3

    move-object v4, v2

    .line 4
    :cond_0
    :goto_0
    iget-boolean v6, p0, Lb/a/a/a/a;->q:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lb/a/a/a/a;->t:Lb/a/a/c/k;

    if-nez v6, :cond_1

    .line 5
    invoke-direct {p0}, Lb/a/a/a/a;->p()V

    .line 6
    :cond_1
    iget-boolean v6, p0, Lb/a/a/a/a;->p:Z

    if-eqz v6, :cond_2

    return-void

    .line 7
    :cond_2
    iget-object v6, p0, Lb/a/a/a/a;->t:Lb/a/a/c/k;

    const/4 v7, 0x5

    if-eqz v6, :cond_3

    const-string v8, "audio/"

    invoke-interface {v6, v8, v7}, Lb/a/a/c/k;->i(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 8
    invoke-static {}, Ljava/lang/Thread;->yield()V

    const-wide/16 v6, 0xa

    .line 9
    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 10
    :cond_3
    iget-object v6, p0, Lb/a/a/a/a;->b:Landroid/media/AudioTrack;

    const-string v8, "mixaudio/raw"

    if-eqz v6, :cond_9

    .line 11
    iget-object v6, p0, Lb/a/a/a/a;->o:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lb/a/a/a/a;->n:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    if-ge v3, v7, :cond_4

    .line 12
    invoke-static {}, Ljava/lang/Thread;->yield()V

    const-wide/16 v6, 0xf

    .line 13
    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 14
    :cond_4
    :try_start_0
    iget-boolean v3, p0, Lb/a/a/a/a;->j:Z

    const/high16 v6, 0x42c80000    # 100.0f

    if-eqz v3, :cond_5

    .line 15
    iget-object v3, p0, Lb/a/a/a/a;->o:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    .line 16
    iget-object v3, p0, Lb/a/a/a/a;->k:Lb/a/a/b/a;

    iget-object v7, p0, Lb/a/a/a/a;->n:Ljava/util/concurrent/BlockingQueue;

    .line 17
    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    iget v9, p0, Lb/a/a/a/a;->z:I

    int-to-float v9, v9

    div-float/2addr v9, v6

    invoke-virtual {v3, v7, v9}, Lb/a/a/b/a;->a([BF)[B

    move-result-object v6

    .line 18
    invoke-virtual {v3, v2, v6}, Lb/a/a/b/a;->j([B[B)[B

    move-result-object v3

    :goto_1
    move-object v4, v3

    goto :goto_2

    .line 19
    :cond_5
    iget-object v3, p0, Lb/a/a/a/a;->k:Lb/a/a/b/a;

    iget-object v7, p0, Lb/a/a/a/a;->o:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    iget v9, p0, Lb/a/a/a/a;->y:I

    int-to-float v9, v9

    div-float/2addr v9, v6

    invoke-virtual {v3, v7, v9}, Lb/a/a/b/a;->a([BF)[B

    move-result-object v7

    iget-object v9, p0, Lb/a/a/a/a;->k:Lb/a/a/b/a;

    iget-object v10, p0, Lb/a/a/a/a;->n:Ljava/util/concurrent/BlockingQueue;

    .line 20
    invoke-interface {v10}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    iget v11, p0, Lb/a/a/a/a;->z:I

    int-to-float v11, v11

    div-float/2addr v11, v6

    invoke-virtual {v9, v10, v11}, Lb/a/a/b/a;->a([BF)[B

    move-result-object v6

    .line 21
    invoke-virtual {v3, v7, v6}, Lb/a/a/b/a;->j([B[B)[B

    move-result-object v3

    goto :goto_1

    :goto_2
    if-eqz v4, :cond_8

    .line 22
    array-length v3, v4

    if-lez v3, :cond_8

    .line 23
    iget-object v3, p0, Lb/a/a/a/a;->t:Lb/a/a/c/k;

    if-eqz v3, :cond_7

    .line 24
    array-length v6, v4

    iput v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    int-to-long v6, v5

    .line 25
    iget-wide v9, p0, Lb/a/a/a/a;->v:J

    mul-long/2addr v6, v9

    iput-wide v6, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 26
    iput v1, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    add-int/lit8 v5, v5, 0x1

    if-eqz v3, :cond_6

    .line 27
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-interface {v3, v6, v0, v8}, Lb/a/a/c/k;->h(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    .line 28
    :cond_6
    iget v3, p0, Lb/a/a/a/a;->A:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lb/a/a/a/a;->A:I

    goto :goto_3

    .line 29
    :cond_7
    iget v3, p0, Lb/a/a/a/a;->A:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lb/a/a/a/a;->A:I

    .line 30
    iget-object v3, p0, Lb/a/a/a/a;->b:Landroid/media/AudioTrack;

    array-length v6, v4

    invoke-virtual {v3, v4, v1, v6}, Landroid/media/AudioTrack;->write([BII)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    .line 31
    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_8
    :goto_3
    move v3, v1

    .line 32
    :cond_9
    iget v6, p0, Lb/a/a/a/a;->A:I

    const/16 v7, 0x50

    if-le v6, v7, :cond_0

    iget-boolean v6, p0, Lb/a/a/a/a;->h:Z

    if-eqz v6, :cond_a

    iget-object v6, p0, Lb/a/a/a/a;->o:Ljava/util/concurrent/BlockingQueue;

    .line 33
    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v6

    if-gtz v6, :cond_0

    iget-boolean v6, p0, Lb/a/a/a/a;->s:Z

    if-eqz v6, :cond_0

    :cond_a
    iget-boolean v6, p0, Lb/a/a/a/a;->i:Z

    if-eqz v6, :cond_b

    iget-object v6, p0, Lb/a/a/a/a;->n:Ljava/util/concurrent/BlockingQueue;

    .line 34
    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v6

    if-gtz v6, :cond_0

    .line 35
    :cond_b
    iget-object v6, p0, Lb/a/a/a/a;->t:Lb/a/a/c/k;

    if-eqz v6, :cond_c

    .line 36
    iget-object v6, p0, Lb/a/a/a/a;->a:Ljava/lang/String;

    const-string v7, "last audio"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iput v1, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v6, 0x4

    .line 38
    iput v6, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 39
    iget-object v6, p0, Lb/a/a/a/a;->t:Lb/a/a/c/k;

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-interface {v6, v7, v0, v8}, Lb/a/a/c/k;->h(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    .line 40
    :cond_c
    invoke-direct {p0}, Lb/a/a/a/a;->p()V

    goto/16 :goto_0
.end method

.method private k()V
    .locals 5

    .line 1
    iget v0, p0, Lb/a/a/a/a;->f:I

    const-string v1, " | mSampleRate = "

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 2
    iput-boolean v2, p0, Lb/a/a/a/a;->s:Z

    .line 3
    iput-boolean v3, p0, Lb/a/a/a/a;->h:Z

    .line 4
    new-instance v0, Lb/a/a/b/b;

    invoke-direct {v0}, Lb/a/a/b/b;-><init>()V

    iput-object v0, p0, Lb/a/a/a/a;->l:Lb/a/a/b/b;

    .line 5
    iget v3, p0, Lb/a/a/a/a;->d:I

    invoke-virtual {v0, v3}, Lb/a/a/b/b;->g(I)V

    .line 6
    iget-object v0, p0, Lb/a/a/a/a;->l:Lb/a/a/b/b;

    iget v3, p0, Lb/a/a/a/a;->c:I

    invoke-virtual {v0, v3}, Lb/a/a/b/b;->f(I)V

    .line 7
    iget-object v0, p0, Lb/a/a/a/a;->k:Lb/a/a/b/a;

    iget-object v3, p0, Lb/a/a/a/a;->l:Lb/a/a/b/b;

    invoke-virtual {v0, v3}, Lb/a/a/b/a;->l(Lb/a/a/b/b;)V

    .line 8
    iget-object v0, p0, Lb/a/a/a/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Local mChannelCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lb/a/a/a/a;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/a/a/a/a;->c:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    .line 9
    iput-boolean v3, p0, Lb/a/a/a/a;->i:Z

    .line 10
    new-instance v0, Lb/a/a/b/b;

    invoke-direct {v0}, Lb/a/a/b/b;-><init>()V

    iput-object v0, p0, Lb/a/a/a/a;->m:Lb/a/a/b/b;

    .line 11
    iget v3, p0, Lb/a/a/a/a;->d:I

    invoke-virtual {v0, v3}, Lb/a/a/b/b;->g(I)V

    .line 12
    iget-object v0, p0, Lb/a/a/a/a;->m:Lb/a/a/b/b;

    iget v3, p0, Lb/a/a/a/a;->c:I

    invoke-virtual {v0, v3}, Lb/a/a/b/b;->f(I)V

    .line 13
    iget-object v0, p0, Lb/a/a/a/a;->k:Lb/a/a/b/a;

    iget-object v3, p0, Lb/a/a/a/a;->m:Lb/a/a/b/b;

    invoke-virtual {v0, v3}, Lb/a/a/b/a;->k(Lb/a/a/b/b;)V

    .line 14
    iget-object v0, p0, Lb/a/a/a/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "External mChannelCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lb/a/a/a/a;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/a/a/a/a;->c:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :cond_1
    :goto_0
    iput-boolean v2, p0, Lb/a/a/a/a;->q:Z

    return-void
.end method

.method private m()V
    .locals 10

    .line 1
    iget-object v0, p0, Lb/a/a/a/a;->b:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    .line 2
    sget v0, Lb/a/a/a/a;->B:I

    const/16 v1, 0xc

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v8

    .line 3
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v4, 0x3

    sget v5, Lb/a/a/a/a;->B:I

    const/16 v6, 0xc

    const/4 v7, 0x2

    const/4 v9, 0x1

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lb/a/a/a/a;->b:Landroid/media/AudioTrack;

    :cond_0
    const-wide v0, 0x412e848000000000L    # 1000000.0

    .line 4
    sget v2, Lb/a/a/a/a;->B:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    div-double/2addr v2, v4

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-long v0, v0

    iput-wide v0, p0, Lb/a/a/a/a;->v:J

    return-void
.end method

.method private n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/a/a;->a:Ljava/lang/String;

    const-string v1, "initStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lb/a/a/a/a;->q:Z

    .line 3
    invoke-direct {p0}, Lb/a/a/a/a;->o()V

    return-void
.end method

.method private o()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lb/a/a/a/a;->r:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/a/a/a/a;->w:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lb/a/a/a/a;->a:Ljava/lang/String;

    const-string v2, "notifyThreadStart "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v1, p0, Lb/a/a/a/a;->w:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 5
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
    return-void
.end method

.method private p()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/a/a/a/a;->w:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lb/a/a/a/a;->r:Z

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lb/a/a/a/a;->a:Ljava/lang/String;

    const-string v2, "notifyThreadWait"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lb/a/a/a/a;->r:Z

    .line 5
    iget-object v1, p0, Lb/a/a/a/a;->w:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    :cond_0
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lb/a/a/a/a;->r:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 7
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 8
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private t()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/a/a;->b:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    :cond_0
    return-void
.end method


# virtual methods
.method public A(I)V
    .locals 0

    .line 1
    iput p1, p0, Lb/a/a/a/a;->f:I

    return-void
.end method

.method public B(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lb/a/a/a/a;->i:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lb/a/a/a/a;->i:Z

    :goto_0
    return-void
.end method

.method public C(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lb/a/a/a/a;->j:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lb/a/a/a/a;->h:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lb/a/a/a/a;->h:Z

    :goto_0
    return-void
.end method

.method public E(Lb/a/a/c/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/a/a;->t:Lb/a/a/c/k;

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lb/a/a/a/a;->n()V

    :cond_0
    return-void
.end method

.method public F(II)V
    .locals 1

    if-gez p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1
    iput p2, p0, Lb/a/a/a/a;->y:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 2
    iput p2, p0, Lb/a/a/a/a;->z:I

    :cond_2
    :goto_0
    return-void
.end method

.method public G()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/a/a;->a:Ljava/lang/String;

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lb/a/a/a/a;->b:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_0
    return-void
.end method

.method public H()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/a/a;->u:Lb/a/a/a/a$a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lb/a/a/a/a$a;

    invoke-direct {v0, p0}, Lb/a/a/a/a$a;-><init>(Lb/a/a/a/a;)V

    iput-object v0, p0, Lb/a/a/a/a;->u:Lb/a/a/a/a$a;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public I(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/a/a/a/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopPlay isPlay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lb/a/a/a/a;->u()V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lb/a/a/a/a;->q:Z

    .line 4
    invoke-virtual {p0}, Lb/a/a/a/a;->G()V

    .line 5
    invoke-direct {p0}, Lb/a/a/a/a;->o()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lb/a/a/a/a;->q:Z

    .line 7
    invoke-virtual {p0}, Lb/a/a/a/a;->q()V

    :goto_0
    return-void
.end method

.method public b(I)Z
    .locals 3

    const/16 v0, 0x50

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1
    iget-object p1, p0, Lb/a/a/a/a;->o:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result p1

    if-lt p1, v0, :cond_1

    return v1

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 2
    iget-object p1, p0, Lb/a/a/a/a;->n:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result p1

    if-lt p1, v0, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget p1, p0, Lb/a/a/a/a;->e:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lb/a/a/a/a;->e:I

    .line 2
    iget-boolean v1, p0, Lb/a/a/a/a;->h:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lb/a/a/a/a;->i:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    .line 3
    iput v2, p0, Lb/a/a/a/a;->e:I

    goto :goto_0

    :cond_0
    if-lt p1, v0, :cond_1

    .line 4
    iput v2, p0, Lb/a/a/a/a;->e:I

    :cond_1
    :goto_0
    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/a/a;->n:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 3
    :cond_0
    iget-object v0, p0, Lb/a/a/a/a;->b:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    :cond_1
    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/a/a;->a:Ljava/lang/String;

    const-string v1, "clearQueue"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lb/a/a/a/a;->o:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 4
    :cond_0
    iget-object v0, p0, Lb/a/a/a/a;->n:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 6
    :cond_1
    iget-object v0, p0, Lb/a/a/a/a;->b:Landroid/media/AudioTrack;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    :cond_2
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lb/a/a/a/a;->s:Z

    .line 9
    iput v0, p0, Lb/a/a/a/a;->A:I

    return-void
.end method

.method public i()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public j()I
    .locals 1

    .line 1
    sget v0, Lb/a/a/a/a;->B:I

    return v0
.end method

.method public l()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lb/a/a/a/a;->k()V

    .line 2
    invoke-direct {p0}, Lb/a/a/a/a;->m()V

    .line 3
    invoke-direct {p0}, Lb/a/a/a/a;->n()V

    .line 4
    iget-object v0, p0, Lb/a/a/a/a;->b:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    return-void
.end method

.method public q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/a/a;->a:Ljava/lang/String;

    const-string v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lb/a/a/a/a;->b:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_0
    return-void
.end method

.method public r(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/a/a;->x:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget p2, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_1

    const-string p2, "exteraudio"

    .line 3
    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lb/a/a/a/a;->a:Ljava/lang/String;

    const-string v1, "local complete"

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :cond_0
    iget-object p2, p0, Lb/a/a/a/a;->a:Ljava/lang/String;

    const-string v1, "external complete"

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    .line 6
    iput-boolean p2, p0, Lb/a/a/a/a;->s:Z

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    new-array p2, p2, [B

    .line 8
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 10
    invoke-direct {p0, p3, p2}, Lb/a/a/a/a;->e(Ljava/lang/String;[B)V

    .line 11
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/a/a;->a:Ljava/lang/String;

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lb/a/a/a/a;->t()V

    .line 3
    invoke-virtual {p0}, Lb/a/a/a/a;->h()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lb/a/a/a/a;->p:Z

    return-void
.end method

.method public u()V
    .locals 0

    return-void
.end method

.method public v(I)V
    .locals 0

    return-void
.end method

.method public w(I)V
    .locals 0

    .line 1
    iput p1, p0, Lb/a/a/a/a;->d:I

    return-void
.end method

.method public x(I)V
    .locals 0

    return-void
.end method

.method public y(I)V
    .locals 0

    .line 1
    iput p1, p0, Lb/a/a/a/a;->c:I

    return-void
.end method

.method public z(FF)V
    .locals 0

    .line 1
    iput p2, p0, Lb/a/a/a/a;->g:F

    .line 2
    sget p1, Lb/a/a/a/a;->B:I

    int-to-float p1, p1

    mul-float/2addr p1, p2

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lb/a/a/a/a;->D(I)V

    return-void
.end method
