.class final Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$FairSync;
.super Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;
.source "ReentrantLock.java"

# interfaces
.implements Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$QueuedSync;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FairSync"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x29a554bceb4b42ecL


# instance fields
.field private transient wq_:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 317
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;-><init>()V

    .line 315
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/FIFOWaitQueue;

    invoke-direct {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/FIFOWaitQueue;-><init>()V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$FairSync;->wq_:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue;

    .line 317
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
    .line 440
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 441
    monitor-enter p0

    .line 442
    :try_start_0
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/FIFOWaitQueue;

    invoke-direct {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/FIFOWaitQueue;-><init>()V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$FairSync;->wq_:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue;

    .line 443
    monitor-exit p0

    .line 444
    return-void

    .line 443
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized getQueueLength()I
    .locals 1

    .prologue
    .line 427
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$FairSync;->wq_:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue;

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
    .line 431
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$FairSync;->wq_:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue;

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

.method protected declared-synchronized getSignallee(Ljava/lang/Thread;)Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;
    .locals 3
    .param p1, "caller"    # Ljava/lang/Thread;

    .prologue
    const/4 v0, 0x0

    .line 393
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$FairSync;->owner_:Ljava/lang/Thread;

    if-eq p1, v1, :cond_0

    .line 394
    new-instance v1, Ljava/lang/IllegalMonitorStateException;

    const-string v2, "Not owner"

    invoke-direct {v1, v2}, Ljava/lang/IllegalMonitorStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 396
    :cond_0
    :try_start_1
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$FairSync;->holds_:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    .line 397
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$FairSync;->holds_:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$FairSync;->holds_:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 406
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    .line 401
    :cond_2
    :try_start_2
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$FairSync;->wq_:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue;->extract()Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;

    move-result-object v0

    .line 402
    .local v0, "w":Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;
    if-nez v0, :cond_1

    .line 403
    const/4 v1, 0x0

    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$FairSync;->owner_:Ljava/lang/Thread;

    .line 404
    const/4 v1, 0x0

    iput v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$FairSync;->holds_:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized hasQueuedThreads()Z
    .locals 1

    .prologue
    .line 423
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$FairSync;->wq_:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue;

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

.method public final isFair()Z
    .locals 1

    .prologue
    .line 419
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized isQueued(Ljava/lang/Thread;)Z
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 435
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$FairSync;->wq_:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue;

    invoke-virtual {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue;->isWaiting(Ljava/lang/Thread;)Z
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

.method public lock()V
    .locals 3

    .prologue
    .line 340
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 341
    .local v0, "caller":Ljava/lang/Thread;
    monitor-enter p0

    .line 342
    :try_start_0
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$FairSync;->owner_:Ljava/lang/Thread;

    if-nez v2, :cond_0

    .line 343
    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$FairSync;->owner_:Ljava/lang/Thread;

    .line 344
    const/4 v2, 0x1

    iput v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$FairSync;->holds_:I

    .line 345
    monitor-exit p0

    .line 354
    :goto_0
    return-void

    .line 347
    :cond_0
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$FairSync;->owner_:Ljava/lang/Thread;

    if-ne v0, v2, :cond_1

    .line 348
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$FairSync;->incHolds()V

    .line 349
    monitor-exit p0

    goto :goto_0

    .line 351
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 352
    new-instance v1, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;

    invoke-direct {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;-><init>()V

    .line 353
    .local v1, "n":Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;
    invoke-virtual {v1, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;->doWaitUninterruptibly(Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$QueuedSync;)V

    goto :goto_0
.end method

.method public lockInterruptibly()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 357
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2

    .line 358
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 359
    .local v0, "caller":Ljava/lang/Thread;
    monitor-enter p0

    .line 360
    :try_start_0
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$FairSync;->owner_:Ljava/lang/Thread;

    if-nez v2, :cond_1

    .line 361
    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$FairSync;->owner_:Ljava/lang/Thread;

    .line 362
    const/4 v2, 0x1

    iput v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$FairSync;->holds_:I

    .line 363
    monitor-exit p0

    .line 372
    :goto_0
    return-void

    .line 365
    :cond_1
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$FairSync;->owner_:Ljava/lang/Thread;

    if-ne v0, v2, :cond_2

    .line 366
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$FairSync;->incHolds()V

    .line 367
    monitor-exit p0

    goto :goto_0

    .line 369
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 370
    new-instance v1, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;

    invoke-direct {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;-><init>()V

    .line 371
    .local v1, "n":Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;
    invoke-virtual {v1, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;->doWait(Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$QueuedSync;)V

    goto :goto_0
.end method

.method public declared-synchronized recheck(Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;)Z
    .locals 3
    .param p1, "node"    # Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;

    .prologue
    const/4 v1, 0x1

    .line 320
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 321
    .local v0, "caller":Ljava/lang/Thread;
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$FairSync;->owner_:Ljava/lang/Thread;

    if-nez v2, :cond_0

    .line 322
    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$FairSync;->owner_:Ljava/lang/Thread;

    .line 323
    const/4 v2, 0x1

    iput v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$FairSync;->holds_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    :goto_0
    monitor-exit p0

    return v1

    .line 326
    :cond_0
    :try_start_1
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$FairSync;->owner_:Ljava/lang/Thread;

    if-ne v0, v2, :cond_1

    .line 327
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$FairSync;->incHolds()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 320
    .end local v0    # "caller":Ljava/lang/Thread;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 330
    .restart local v0    # "caller":Ljava/lang/Thread;
    :cond_1
    :try_start_2
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$FairSync;->wq_:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue;

    invoke-virtual {v1, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue;->insert(Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 331
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized takeOver(Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;)V
    .locals 1
    .param p1, "node"    # Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;

    .prologue
    .line 336
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;->getOwner()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$FairSync;->owner_:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    monitor-exit p0

    return-void

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tryLock(J)Z
    .locals 5
    .param p1, "nanos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 375
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2

    .line 376
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 377
    .local v0, "caller":Ljava/lang/Thread;
    monitor-enter p0

    .line 378
    :try_start_0
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$FairSync;->owner_:Ljava/lang/Thread;

    if-nez v3, :cond_1

    .line 379
    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$FairSync;->owner_:Ljava/lang/Thread;

    .line 380
    const/4 v3, 0x1

    iput v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$FairSync;->holds_:I

    .line 381
    monitor-exit p0

    .line 389
    :goto_0
    return v2

    .line 383
    :cond_1
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$FairSync;->owner_:Ljava/lang/Thread;

    if-ne v0, v3, :cond_2

    .line 384
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$FairSync;->incHolds()V

    .line 385
    monitor-exit p0

    goto :goto_0

    .line 387
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 388
    new-instance v1, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;

    invoke-direct {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;-><init>()V

    .line 389
    .local v1, "n":Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;
    invoke-virtual {v1, p0, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;->doTimedWait(Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$QueuedSync;J)Z

    move-result v2

    goto :goto_0
.end method

.method public unlock()V
    .locals 3

    .prologue
    .line 410
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 412
    .local v0, "caller":Ljava/lang/Thread;
    :cond_0
    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$FairSync;->getSignallee(Ljava/lang/Thread;)Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;

    move-result-object v1

    .line 413
    .local v1, "w":Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;
    if-nez v1, :cond_1

    .line 414
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;->signal(Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$QueuedSync;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method
