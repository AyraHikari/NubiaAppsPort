.class public Lcom/hpplay/sdk/source/mirror/a/b;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field public static final e:I = 0x5

.field private static final f:Ljava/lang/String; = "VideoDataSender"

.field private static final g:I = 0x5

.field private static final h:I = 0xbb8

.field private static final i:I = 0x5


# instance fields
.field private j:Lcom/hpplay/sdk/source/protocol/m;

.field private k:Z

.field private l:Z

.field private m:I

.field private n:J

.field private o:[B

.field private p:Z

.field private q:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<[",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/hpplay/sdk/source/mirror/a/a;

.field private volatile s:Ljava/util/concurrent/atomic/AtomicLong;

.field private t:I

.field private u:J


# direct methods
.method public constructor <init>(Lcom/hpplay/sdk/source/protocol/m;Z)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hpplay/sdk/source/mirror/a/b;->n:J

    .line 36
    const/high16 v0, 0x300000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/a/b;->o:[B

    .line 39
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/a/b;->q:Ljava/util/concurrent/BlockingQueue;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/a/b;->s:Ljava/util/concurrent/atomic/AtomicLong;

    .line 82
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hpplay/sdk/source/mirror/a/b;->u:J

    .line 44
    iput-object p1, p0, Lcom/hpplay/sdk/source/mirror/a/b;->j:Lcom/hpplay/sdk/source/protocol/m;

    .line 45
    iput-boolean p2, p0, Lcom/hpplay/sdk/source/mirror/a/b;->p:Z

    .line 46
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 149
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/a/b;->q:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 150
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/a/b;->r:Lcom/hpplay/sdk/source/mirror/a/a;

    if-eqz v0, :cond_0

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/a/b;->l:Z

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hpplay/sdk/source/mirror/a/b;->n:J

    .line 153
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/a/b;->r:Lcom/hpplay/sdk/source/mirror/a/a;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/mirror/a/a;->blockCodec()V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/a/b;->q:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    if-ge v0, v1, :cond_2

    .line 157
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/a/b;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/a/b;->m:I

    .line 162
    :goto_1
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/a/b;->m:I

    const/16 v1, 0xbb8

    if-le v0, v1, :cond_0

    .line 163
    iput v2, p0, Lcom/hpplay/sdk/source/mirror/a/b;->m:I

    .line 164
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/a/b;->p:Z

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/a/b;->r:Lcom/hpplay/sdk/source/mirror/a/a;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/mirror/a/a;->onBandwidthRise()V

    goto :goto_0

    .line 159
    :cond_2
    iput v2, p0, Lcom/hpplay/sdk/source/mirror/a/b;->m:I

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/hpplay/sdk/source/mirror/a/a;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/hpplay/sdk/source/mirror/a/b;->r:Lcom/hpplay/sdk/source/mirror/a/a;

    .line 50
    return-void
.end method

.method public varargs declared-synchronized a([Ljava/nio/ByteBuffer;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 61
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/hpplay/sdk/source/mirror/a/b;->k:Z

    if-nez v1, :cond_1

    .line 62
    array-length v1, p1

    new-array v1, v1, [Ljava/nio/ByteBuffer;

    .line 63
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 64
    aget-object v2, p1, v0

    .line 65
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 66
    iget-object v4, p0, Lcom/hpplay/sdk/source/mirror/a/b;->o:[B

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 67
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v4, p0, Lcom/hpplay/sdk/source/mirror/a/b;->o:[B

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 68
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/a/b;->q:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 71
    array-length v0, v1

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 72
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mirror/a/b;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    :try_start_1
    const-string v1, "VideoDataSender"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()Z
    .locals 7

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/a/b;->s:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 55
    const-string v4, "VideoDataSender"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " isWriteTimeout === >> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    const-wide/16 v0, 0x2710

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 173
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/a/b;->interrupt()V

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/a/b;->k:Z

    .line 175
    const-string v0, "VideoDataSender"

    const-string v1, "  send data  ------------>  stopTask "

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iput-object v2, p0, Lcom/hpplay/sdk/source/mirror/a/b;->r:Lcom/hpplay/sdk/source/mirror/a/a;

    .line 177
    iput-object v2, p0, Lcom/hpplay/sdk/source/mirror/a/b;->j:Lcom/hpplay/sdk/source/protocol/m;

    .line 178
    iput-object v2, p0, Lcom/hpplay/sdk/source/mirror/a/b;->o:[B

    .line 179
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/a/b;->q:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 180
    return-void
.end method

.method public run()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x5

    const/4 v2, 0x2

    .line 86
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/a/b;->k:Z

    if-nez v0, :cond_4

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/a/b;->q:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/ByteBuffer;

    .line 89
    iget-object v4, p0, Lcom/hpplay/sdk/source/mirror/a/b;->s:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 90
    iget-object v4, p0, Lcom/hpplay/sdk/source/mirror/a/b;->j:Lcom/hpplay/sdk/source/protocol/m;

    invoke-virtual {v4}, Lcom/hpplay/sdk/source/protocol/m;->l()Ljava/io/FileOutputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/nio/channels/FileChannel;->write([Ljava/nio/ByteBuffer;)J

    .line 91
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/a/b;->j:Lcom/hpplay/sdk/source/protocol/m;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/m;->l()Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 92
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/a/b;->s:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 94
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/a/b;->q:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/a/b;->r:Lcom/hpplay/sdk/source/mirror/a/a;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/a/b;->l:Z

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mirror/a/b;->l:Z

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/hpplay/sdk/source/mirror/a/b;->n:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    sub-long/2addr v4, v6

    .line 99
    const-wide/16 v6, 0x12c

    cmp-long v0, v4, v6

    if-gtz v0, :cond_7

    .line 101
    :try_start_1
    iget-wide v6, p0, Lcom/hpplay/sdk/source/mirror/a/b;->u:J

    cmp-long v0, v6, v10

    if-lez v0, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/hpplay/sdk/source/mirror/a/b;->u:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x2710

    cmp-long v0, v6, v8

    if-lez v0, :cond_6

    iget v0, p0, Lcom/hpplay/sdk/source/mirror/a/b;->t:I

    if-lez v0, :cond_6

    .line 102
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/a/b;->t:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/a/b;->t:I

    .line 106
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/hpplay/sdk/source/mirror/a/b;->u:J

    move v0, v2

    .line 117
    :goto_2
    const-string v6, "VideoDataSender"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "---------------> remain send time --- > "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  level  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " lowDelayCount  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/hpplay/sdk/source/mirror/a/b;->t:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    if-gt v0, v2, :cond_1

    if-ne v0, v2, :cond_3

    iget v4, p0, Lcom/hpplay/sdk/source/mirror/a/b;->t:I

    if-le v4, v3, :cond_3

    .line 119
    :cond_1
    iget v4, p0, Lcom/hpplay/sdk/source/mirror/a/b;->t:I

    if-le v4, v3, :cond_2

    move v0, v1

    .line 122
    :cond_2
    const/4 v4, 0x0

    iput v4, p0, Lcom/hpplay/sdk/source/mirror/a/b;->t:I

    .line 123
    iget-boolean v4, p0, Lcom/hpplay/sdk/source/mirror/a/b;->p:Z

    if-eqz v4, :cond_3

    .line 124
    iget-object v4, p0, Lcom/hpplay/sdk/source/mirror/a/b;->r:Lcom/hpplay/sdk/source/mirror/a/a;

    invoke-interface {v4, v0}, Lcom/hpplay/sdk/source/mirror/a/a;->onBandwidthReduce(I)V

    .line 127
    :cond_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/a/b;->r:Lcom/hpplay/sdk/source/mirror/a/a;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/mirror/a/a;->unlockCodec()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    :try_start_2
    const-string v4, "VideoDataSender"

    invoke-static {v4, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 133
    :catch_1
    move-exception v0

    .line 134
    const-string v1, "VideoDataSender"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/common/store/Session;->getSocketExceptionsListener()Lcom/hpplay/sdk/source/api/ISocketExceptionsListener;

    move-result-object v1

    .line 136
    if-eqz v1, :cond_4

    .line 137
    iget-object v2, p0, Lcom/hpplay/sdk/source/mirror/a/b;->j:Lcom/hpplay/sdk/source/protocol/m;

    iget-object v2, v2, Lcom/hpplay/sdk/source/protocol/m;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/hpplay/sdk/source/mirror/a/b;->j:Lcom/hpplay/sdk/source/protocol/m;

    iget v3, v3, Lcom/hpplay/sdk/source/protocol/m;->h:I

    invoke-interface {v1, v2, v3, v0}, Lcom/hpplay/sdk/source/api/ISocketExceptionsListener;->onMirrorCheckException(Ljava/lang/String;ILjava/lang/Exception;)V

    .line 142
    :cond_4
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/a/b;->r:Lcom/hpplay/sdk/source/mirror/a/a;

    if-eqz v0, :cond_5

    .line 143
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/a/b;->r:Lcom/hpplay/sdk/source/mirror/a/a;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/mirror/a/a;->onBroken()V

    .line 145
    :cond_5
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mirror/a/b;->b()V

    .line 146
    return-void

    .line 104
    :cond_6
    :try_start_3
    iget v0, p0, Lcom/hpplay/sdk/source/mirror/a/b;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/a/b;->t:I

    goto/16 :goto_1

    .line 107
    :cond_7
    const-wide/16 v6, 0x12c

    cmp-long v0, v4, v6

    if-lez v0, :cond_8

    const-wide/16 v6, 0x320

    cmp-long v0, v4, v6

    if-gtz v0, :cond_8

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/a/b;->t:I

    .line 109
    const/4 v0, 0x3

    goto/16 :goto_2

    .line 110
    :cond_8
    const-wide/16 v6, 0x320

    cmp-long v0, v4, v6

    if-lez v0, :cond_9

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-gtz v0, :cond_9

    .line 111
    const/4 v0, 0x4

    .line 112
    const/4 v6, 0x0

    iput v6, p0, Lcom/hpplay/sdk/source/mirror/a/b;->t:I

    goto/16 :goto_2

    .line 113
    :cond_9
    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-lez v0, :cond_a

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/hpplay/sdk/source/mirror/a/b;->t:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move v0, v3

    goto/16 :goto_2

    :cond_a
    move v0, v1

    goto/16 :goto_2
.end method
