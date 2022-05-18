.class final Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync;
.super Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;
.source "Semaphore.java"

# interfaces
.implements Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$QueuedSync;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FairSync"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync$Node;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1bf45e7bb79d96b0L


# instance fields
.field private transient wq_:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue;


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "initialPermits"    # I

    .prologue
    .line 324
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;-><init>(I)V

    .line 321
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/FIFOWaitQueue;

    invoke-direct {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/FIFOWaitQueue;-><init>()V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync;->wq_:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue;

    .line 325
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 406
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 407
    monitor-enter p0

    .line 408
    :try_start_0
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/FIFOWaitQueue;

    invoke-direct {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/FIFOWaitQueue;-><init>()V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync;->wq_:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue;

    .line 409
    monitor-exit p0

    .line 410
    return-void

    .line 409
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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
    .line 334
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 335
    :cond_0
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync;->precheck(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 338
    :goto_0
    return-void

    .line 336
    :cond_1
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync$Node;

    invoke-direct {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync$Node;-><init>(I)V

    .line 337
    .local v0, "w":Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;
    invoke-virtual {v0, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;->doWait(Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$QueuedSync;)V

    goto :goto_0
.end method

.method public acquireUninterruptibly(I)V
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 328
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync;->precheck(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    :goto_0
    return-void

    .line 329
    :cond_0
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync$Node;

    invoke-direct {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync$Node;-><init>(I)V

    .line 330
    .local v0, "w":Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;
    invoke-virtual {v0, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;->doWaitUninterruptibly(Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$QueuedSync;)V

    goto :goto_0
.end method

.method public attempt(IJ)Z
    .locals 4
    .param p1, "n"    # I
    .param p2, "nanos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 341
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 342
    :cond_0
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync;->precheck(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 346
    :goto_0
    return v1

    .line 343
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-gtz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    .line 345
    :cond_2
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync$Node;

    invoke-direct {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync$Node;-><init>(I)V

    .line 346
    .local v0, "w":Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;
    invoke-virtual {v0, p0, p2, p3}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;->doTimedWait(Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$QueuedSync;J)Z

    move-result v1

    goto :goto_0
.end method

.method public declared-synchronized getQueueLength()I
    .locals 1

    .prologue
    .line 397
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync;->wq_:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue;->getLength()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getQueuedThreads()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 401
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync;->wq_:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue;->getWaitingThreads()Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized getSignallee(I)Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync$Node;
    .locals 4
    .param p1, "n"    # I

    .prologue
    const/4 v1, 0x0

    .line 366
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync;->wq_:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue;

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue;->extract()Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;

    move-result-object v0

    check-cast v0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync$Node;

    .line 367
    .local v0, "w":Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync$Node;
    iget v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync;->permits_:I

    add-int/2addr v2, p1

    iput v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync;->permits_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    if-nez v0, :cond_0

    move-object v0, v1

    .line 378
    .end local v0    # "w":Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync$Node;
    :goto_0
    monitor-exit p0

    return-object v0

    .line 371
    .restart local v0    # "w":Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync$Node;
    :cond_0
    :try_start_1
    iget v2, v0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync$Node;->requests:I

    iget v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync;->permits_:I

    if-le v2, v3, :cond_1

    .line 373
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync;->wq_:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue;

    invoke-virtual {v2, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue;->putBack(Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;)V

    move-object v0, v1

    .line 374
    goto :goto_0

    .line 377
    :cond_1
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync;->permits_:I

    iget v2, v0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync$Node;->requests:I

    sub-int/2addr v1, v2

    iput v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync;->permits_:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 366
    .end local v0    # "w":Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync$Node;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized hasQueuedThreads()Z
    .locals 1

    .prologue
    .line 393
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync;->wq_:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue;->hasNodes()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized precheck(I)Z
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 350
    monitor-enter p0

    :try_start_0
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync;->permits_:I

    if-lt v1, p1, :cond_1

    const/4 v0, 0x1

    .line 351
    .local v0, "pass":Z
    :goto_0
    if-eqz v0, :cond_0

    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync;->permits_:I

    sub-int/2addr v1, p1

    iput v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync;->permits_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    :cond_0
    monitor-exit p0

    return v0

    .line 350
    .end local v0    # "pass":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized recheck(Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;)Z
    .locals 5
    .param p1, "w"    # Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;

    .prologue
    .line 356
    monitor-enter p0

    :try_start_0
    move-object v0, p1

    check-cast v0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync$Node;

    move-object v1, v0

    .line 357
    .local v1, "node":Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync$Node;
    iget v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync;->permits_:I

    iget v4, v1, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync$Node;->requests:I

    if-lt v3, v4, :cond_0

    const/4 v2, 0x1

    .line 358
    .local v2, "pass":Z
    :goto_0
    if-eqz v2, :cond_1

    iget v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync;->permits_:I

    iget v4, v1, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync$Node;->requests:I

    sub-int/2addr v3, v4

    iput v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync;->permits_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    :goto_1
    monitor-exit p0

    return v2

    .line 357
    .end local v2    # "pass":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 359
    .restart local v2    # "pass":Z
    :cond_1
    :try_start_1
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync;->wq_:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue;

    invoke-virtual {v3, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue;->insert(Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 356
    .end local v1    # "node":Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync$Node;
    .end local v2    # "pass":Z
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public release(I)V
    .locals 3
    .param p1, "n"    # I

    .prologue
    .line 383
    if-gez p1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Negative argument"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 388
    .local v0, "w":Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync$Node;
    :cond_0
    iget p1, v0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync$Node;->requests:I

    .line 385
    .end local v0    # "w":Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync$Node;
    :cond_1
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync;->getSignallee(I)Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync$Node;

    move-result-object v0

    .line 386
    .restart local v0    # "w":Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync$Node;
    if-nez v0, :cond_2

    .line 387
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync$Node;->signal(Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$QueuedSync;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public takeOver(Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;)V
    .locals 0
    .param p1, "n"    # Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;

    .prologue
    .line 363
    return-void
.end method
