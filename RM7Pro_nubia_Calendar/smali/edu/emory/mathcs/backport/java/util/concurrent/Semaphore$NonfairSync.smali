.class final Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$NonfairSync;
.super Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;
.source "Semaphore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NonfairSync"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2563a9c95ee9771aL


# direct methods
.method protected constructor <init>(I)V
    .locals 0
    .param p1, "initialPermits"    # I

    .prologue
    .line 199
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;-><init>(I)V

    .line 200
    return-void
.end method

.method private static checkAgainstMultiacquire(I)V
    .locals 2
    .param p0, "n"    # I

    .prologue
    .line 203
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 204
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Atomic multi-acquire supported only in FAIR semaphores"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_0
    return-void
.end method


# virtual methods
.method public acquire(I)V
    .locals 2
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 242
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 243
    :cond_0
    if-nez p1, :cond_1

    .line 257
    :goto_0
    return-void

    .line 244
    :cond_1
    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$NonfairSync;->checkAgainstMultiacquire(I)V

    .line 245
    monitor-enter p0

    .line 246
    :goto_1
    :try_start_0
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$NonfairSync;->permits_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v1, :cond_2

    .line 248
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 252
    throw v0

    .line 256
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 255
    :cond_2
    :try_start_3
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$NonfairSync;->permits_:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$NonfairSync;->permits_:I

    .line 256
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public acquireUninterruptibly(I)V
    .locals 4
    .param p1, "n"    # I

    .prologue
    .line 210
    if-nez p1, :cond_0

    .line 236
    :goto_0
    return-void

    .line 211
    :cond_0
    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$NonfairSync;->checkAgainstMultiacquire(I)V

    .line 212
    monitor-enter p0

    .line 213
    :try_start_0
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$NonfairSync;->permits_:I

    if-lez v2, :cond_1

    .line 214
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$NonfairSync;->permits_:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$NonfairSync;->permits_:I

    .line 215
    monitor-exit p0

    goto :goto_0

    .line 238
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 218
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 222
    .local v1, "wasInterrupted":Z
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 229
    :goto_1
    :try_start_3
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$NonfairSync;->permits_:I

    if-lez v2, :cond_2

    .line 230
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$NonfairSync;->permits_:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$NonfairSync;->permits_:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 236
    if-eqz v1, :cond_3

    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_3
    monitor-exit p0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    goto :goto_1

    .line 236
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v2

    if-eqz v1, :cond_4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :cond_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public attempt(IJ)Z
    .locals 10
    .param p1, "n"    # I
    .param p2, "nanos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 260
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    .line 261
    :cond_0
    if-nez p1, :cond_1

    .line 283
    :goto_0
    return v3

    .line 262
    :cond_1
    invoke-static {p1}, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$NonfairSync;->checkAgainstMultiacquire(I)V

    .line 264
    monitor-enter p0

    .line 265
    :try_start_0
    iget v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$NonfairSync;->permits_:I

    if-lez v5, :cond_2

    .line 266
    iget v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$NonfairSync;->permits_:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$NonfairSync;->permits_:I

    .line 267
    monitor-exit p0

    goto :goto_0

    .line 292
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 269
    :cond_2
    cmp-long v5, p2, v8

    if-gtz v5, :cond_3

    .line 270
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v4

    goto :goto_0

    .line 273
    :cond_3
    :try_start_2
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J

    move-result-wide v6

    add-long v0, v6, p2

    .line 275
    .local v0, "deadline":J
    :cond_4
    sget-object v5, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    invoke-virtual {v5, p0, p2, p3}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->timedWait(Ljava/lang/Object;J)V

    .line 276
    iget v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$NonfairSync;->permits_:I

    if-lez v5, :cond_5

    .line 277
    iget v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$NonfairSync;->permits_:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$NonfairSync;->permits_:I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 278
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 281
    :cond_5
    :try_start_4
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v6

    sub-long p2, v0, v6

    .line 282
    cmp-long v5, p2, v8

    if-gtz v5, :cond_4

    .line 283
    :try_start_5
    monitor-exit p0

    move v3, v4

    goto :goto_0

    .line 287
    .end local v0    # "deadline":J
    :catch_0
    move-exception v2

    .line 288
    .local v2, "ex":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 289
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public getQueueLength()I
    .locals 2

    .prologue
    .line 307
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use FAIR version"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getQueuedThreads()Ljava/util/Collection;
    .locals 2

    .prologue
    .line 311
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use FAIR version"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasQueuedThreads()Z
    .locals 2

    .prologue
    .line 303
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use FAIR version"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized release(I)V
    .locals 3
    .param p1, "n"    # I

    .prologue
    .line 296
    monitor-enter p0

    if-gez p1, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Negative argument"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 298
    :cond_0
    :try_start_1
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$NonfairSync;->permits_:I

    add-int/2addr v1, p1

    iput v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$NonfairSync;->permits_:I

    .line 299
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 300
    :cond_1
    monitor-exit p0

    return-void
.end method
