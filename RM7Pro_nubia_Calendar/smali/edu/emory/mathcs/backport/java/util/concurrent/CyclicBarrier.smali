.class public Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier;
.super Ljava/lang/Object;
.source "CyclicBarrier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier$1;,
        Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier$Generation;
    }
.end annotation


# instance fields
.field private final barrierCommand:Ljava/lang/Runnable;

.field private count:I

.field private generation:Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier$Generation;

.field private final lock:Ljava/lang/Object;

.field private final parties:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "parties"    # I

    .prologue
    .line 255
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier;-><init>(ILjava/lang/Runnable;)V

    .line 256
    return-void
.end method

.method public constructor <init>(ILjava/lang/Runnable;)V
    .locals 2
    .param p1, "parties"    # I
    .param p2, "barrierAction"    # Ljava/lang/Runnable;

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier;->lock:Ljava/lang/Object;

    .line 127
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier$Generation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier$Generation;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier$1;)V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier;->generation:Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier$Generation;

    .line 239
    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 240
    :cond_0
    iput p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier;->parties:I

    .line 241
    iput p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier;->count:I

    .line 242
    iput-object p2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier;->barrierCommand:Ljava/lang/Runnable;

    .line 243
    return-void
.end method

.method private breakBarrier()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier;->generation:Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier$Generation;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier$Generation;->broken:Z

    .line 154
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier;->parties:I

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier;->count:I

    .line 155
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 156
    return-void
.end method

.method private dowait(ZJ)I
    .locals 12
    .param p1, "timed"    # Z
    .param p2, "nanos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ledu/emory/mathcs/backport/java/util/concurrent/BrokenBarrierException;,
            Ledu/emory/mathcs/backport/java/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 164
    iget-object v8, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier;->lock:Ljava/lang/Object;

    monitor-enter v8

    .line 165
    :try_start_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier;->generation:Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier$Generation;

    .line 167
    .local v1, "g":Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier$Generation;
    iget-boolean v7, v1, Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier$Generation;->broken:Z

    if-eqz v7, :cond_0

    .line 168
    new-instance v7, Ledu/emory/mathcs/backport/java/util/concurrent/BrokenBarrierException;

    invoke-direct {v7}, Ledu/emory/mathcs/backport/java/util/concurrent/BrokenBarrierException;-><init>()V

    throw v7

    .line 223
    .end local v1    # "g":Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier$Generation;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 170
    .restart local v1    # "g":Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier$Generation;
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 171
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier;->breakBarrier()V

    .line 172
    new-instance v7, Ljava/lang/InterruptedException;

    invoke-direct {v7}, Ljava/lang/InterruptedException;-><init>()V

    throw v7

    .line 175
    :cond_1
    iget v7, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier;->count:I

    add-int/lit8 v5, v7, -0x1

    iput v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    .local v5, "index":I
    if-nez v5, :cond_5

    .line 177
    const/4 v6, 0x0

    .line 179
    .local v6, "ranAction":Z
    :try_start_2
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier;->barrierCommand:Ljava/lang/Runnable;

    .line 180
    .local v0, "command":Ljava/lang/Runnable;
    if-eqz v0, :cond_2

    .line 181
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 182
    :cond_2
    const/4 v6, 0x1

    .line 183
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier;->nextGeneration()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 184
    const/4 v5, 0x0

    .line 186
    .end local v5    # "index":I
    if-nez v6, :cond_3

    .line 187
    :try_start_3
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier;->breakBarrier()V

    :cond_3
    monitor-exit v8

    .line 215
    .end local v0    # "command":Ljava/lang/Runnable;
    .end local v6    # "ranAction":Z
    :goto_0
    return v5

    .line 186
    .restart local v5    # "index":I
    .restart local v6    # "ranAction":Z
    :catchall_1
    move-exception v7

    if-nez v6, :cond_4

    .line 187
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier;->breakBarrier()V

    :cond_4
    throw v7

    .line 192
    .end local v6    # "ranAction":Z
    :cond_5
    if-eqz p1, :cond_7

    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v10

    add-long v2, v10, p2

    .line 195
    .local v2, "deadline":J
    :goto_1
    if-nez p1, :cond_8

    .line 196
    :try_start_4
    iget-object v7, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier;->lock:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 211
    :cond_6
    :goto_2
    :try_start_5
    iget-boolean v7, v1, Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier$Generation;->broken:Z

    if-eqz v7, :cond_a

    .line 212
    new-instance v7, Ledu/emory/mathcs/backport/java/util/concurrent/BrokenBarrierException;

    invoke-direct {v7}, Ledu/emory/mathcs/backport/java/util/concurrent/BrokenBarrierException;-><init>()V

    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 192
    .end local v2    # "deadline":J
    :cond_7
    const-wide/16 v2, 0x0

    goto :goto_1

    .line 197
    .restart local v2    # "deadline":J
    :cond_8
    const-wide/16 v10, 0x0

    cmp-long v7, p2, v10

    if-lez v7, :cond_6

    .line 198
    :try_start_6
    sget-object v7, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    iget-object v9, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier;->lock:Ljava/lang/Object;

    invoke-virtual {v7, v9, p2, p3}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->timedWait(Ljava/lang/Object;J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 199
    :catch_0
    move-exception v4

    .line 200
    .local v4, "ie":Ljava/lang/InterruptedException;
    :try_start_7
    iget-object v7, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier;->generation:Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier$Generation;

    if-ne v1, v7, :cond_9

    iget-boolean v7, v1, Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier$Generation;->broken:Z

    if-nez v7, :cond_9

    .line 201
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier;->breakBarrier()V

    .line 202
    throw v4

    .line 207
    :cond_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    .line 214
    .end local v4    # "ie":Ljava/lang/InterruptedException;
    :cond_a
    iget-object v7, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier;->generation:Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier$Generation;

    if-eq v1, v7, :cond_b

    .line 215
    monitor-exit v8

    goto :goto_0

    .line 217
    :cond_b
    if-eqz p1, :cond_c

    const-wide/16 v10, 0x0

    cmp-long v7, p2, v10

    if-gtz v7, :cond_c

    .line 218
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier;->breakBarrier()V

    .line 219
    new-instance v7, Ledu/emory/mathcs/backport/java/util/concurrent/TimeoutException;

    invoke-direct {v7}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeoutException;-><init>()V

    throw v7

    .line 221
    :cond_c
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-wide v10

    sub-long p2, v2, v10

    goto :goto_1
.end method

.method private nextGeneration()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 144
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier;->parties:I

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier;->count:I

    .line 145
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier$Generation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier$Generation;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier$1;)V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier;->generation:Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier$Generation;

    .line 146
    return-void
.end method


# virtual methods
.method public await()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ledu/emory/mathcs/backport/java/util/concurrent/BrokenBarrierException;
        }
    .end annotation

    .prologue
    .line 323
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v1, v2, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier;->dowait(ZJ)I
    :try_end_0
    .catch Ledu/emory/mathcs/backport/java/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "toe":Ledu/emory/mathcs/backport/java/util/concurrent/TimeoutException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public await(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)I
    .locals 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ledu/emory/mathcs/backport/java/util/concurrent/BrokenBarrierException;,
            Ledu/emory/mathcs/backport/java/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 395
    const/4 v0, 0x1

    invoke-virtual {p3, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier;->dowait(ZJ)I

    move-result v0

    return v0
.end method

.method public getNumberWaiting()I
    .locals 3

    .prologue
    .line 435
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 436
    :try_start_0
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier;->parties:I

    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier;->count:I

    sub-int/2addr v0, v2

    monitor-exit v1

    return v0

    .line 437
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getParties()I
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier;->parties:I

    return v0
.end method

.method public isBroken()Z
    .locals 2

    .prologue
    .line 407
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 408
    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier;->generation:Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier$Generation;

    iget-boolean v0, v0, Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier$Generation;->broken:Z

    monitor-exit v1

    return v0

    .line 409
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 422
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 423
    :try_start_0
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier;->breakBarrier()V

    .line 424
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/CyclicBarrier;->nextGeneration()V

    .line 425
    monitor-exit v1

    .line 426
    return-void

    .line 425
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
