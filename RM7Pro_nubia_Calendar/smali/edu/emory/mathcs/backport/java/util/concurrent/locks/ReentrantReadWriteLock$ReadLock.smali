.class public Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
.super Ljava/lang/Object;
.source "ReentrantReadWriteLock.java"

# interfaces
.implements Ledu/emory/mathcs/backport/java/util/concurrent/locks/Lock;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReadLock"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5329744b67e697b4L


# instance fields
.field final lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;


# direct methods
.method protected constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;)V
    .locals 1
    .param p1, "lock"    # Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;

    .prologue
    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 395
    :cond_0
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;

    .line 396
    return-void
.end method


# virtual methods
.method public lock()V
    .locals 4

    .prologue
    .line 409
    monitor-enter p0

    .line 410
    :try_start_0
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;

    iget-object v2, v2, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->startReadFromNewReader()Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit p0

    .line 426
    :goto_0
    return-void

    .line 411
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 415
    .local v1, "wasInterrupted":Z
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 422
    :goto_1
    :try_start_2
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;

    iget-object v2, v2, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->startReadFromWaitingReader()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    if-eqz v2, :cond_1

    .line 426
    if-eqz v1, :cond_2

    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 428
    .end local v1    # "wasInterrupted":Z
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 417
    .restart local v1    # "wasInterrupted":Z
    :catch_0
    move-exception v0

    .line 418
    .local v0, "ex":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    goto :goto_1

    .line 426
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v2

    if-eqz v1, :cond_3

    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :cond_3
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public lockInterruptibly()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 473
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2

    .line 474
    :cond_0
    const/4 v1, 0x0

    .line 475
    .local v1, "ie":Ljava/lang/InterruptedException;
    monitor-enter p0

    .line 476
    :try_start_0
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;

    iget-object v2, v2, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->startReadFromNewReader()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 479
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 480
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;

    iget-object v2, v2, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->startReadFromWaitingReader()Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 481
    :try_start_2
    monitor-exit p0

    .line 498
    :cond_2
    return-void

    .line 483
    :catch_0
    move-exception v0

    .line 484
    .local v0, "ex":Ljava/lang/InterruptedException;
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;

    iget-object v2, v2, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->cancelledWaitingReader()V

    .line 485
    move-object v1, v0

    .line 490
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 491
    if-eqz v1, :cond_2

    .line 495
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;

    iget-object v2, v2, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;->writerLock_:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->signalWaiters()V

    .line 496
    throw v1

    .line 490
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public newCondition()Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;
    .locals 1

    .prologue
    .line 653
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method declared-synchronized signalWaiters()V
    .locals 1

    .prologue
    .line 657
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 658
    monitor-exit p0

    return-void

    .line 657
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 668
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;->getReadLockCount()I

    move-result v0

    .line 669
    .local v0, "r":I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "[Read locks = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public tryLock()Z
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->startRead()Z

    move-result v0

    return v0
.end method

.method public tryLock(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Z
    .locals 17
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v14, 0x0

    const/4 v10, 0x1

    .line 593
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v11

    if-eqz v11, :cond_0

    new-instance v10, Ljava/lang/InterruptedException;

    invoke-direct {v10}, Ljava/lang/InterruptedException;-><init>()V

    throw v10

    .line 594
    :cond_0
    const/4 v7, 0x0

    .line 595
    .local v7, "ie":Ljava/lang/InterruptedException;
    move-object/from16 v0, p3

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    .line 596
    .local v8, "nanos":J
    monitor-enter p0

    .line 597
    cmp-long v11, v8, v14

    if-gtz v11, :cond_1

    .line 598
    :try_start_0
    move-object/from16 v0, p0

    iget-object v10, v0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;

    iget-object v10, v10, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v10}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->startRead()Z

    move-result v10

    monitor-exit p0

    .line 629
    :goto_0
    return v10

    .line 599
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;

    iget-object v11, v11, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v11}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->startReadFromNewReader()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 600
    monitor-exit p0

    goto :goto_0

    .line 623
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 602
    :cond_2
    :try_start_1
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v12

    add-long v4, v12, v8

    .line 605
    .local v4, "deadline":J
    :cond_3
    :try_start_2
    sget-object v11, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v8, v9}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->timedWait(Ljava/lang/Object;J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 612
    :try_start_3
    move-object/from16 v0, p0

    iget-object v11, v0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;

    iget-object v11, v11, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v11}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->startReadFromWaitingReader()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 613
    monitor-exit p0

    goto :goto_0

    .line 607
    :catch_0
    move-exception v6

    .line 608
    .local v6, "ex":Ljava/lang/InterruptedException;
    move-object/from16 v0, p0

    iget-object v10, v0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;

    iget-object v10, v10, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v10}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->cancelledWaitingReader()V

    .line 609
    move-object v7, v6

    .line 623
    .end local v6    # "ex":Ljava/lang/InterruptedException;
    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 625
    move-object/from16 v0, p0

    iget-object v10, v0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;

    iget-object v10, v10, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;->writerLock_:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v10}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->signalWaiters()V

    .line 626
    if-eqz v7, :cond_5

    .line 627
    throw v7

    .line 615
    :cond_4
    :try_start_4
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J

    move-result-wide v12

    sub-long v8, v4, v12

    .line 616
    cmp-long v11, v8, v14

    if-gtz v11, :cond_3

    .line 617
    move-object/from16 v0, p0

    iget-object v10, v0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;

    iget-object v10, v10, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v10}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->cancelledWaitingReader()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 629
    :cond_5
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->endRead()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 644
    :goto_0
    :pswitch_0
    return-void

    .line 641
    :pswitch_1
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;->readerLock_:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->signalWaiters()V

    goto :goto_0

    .line 642
    :pswitch_2
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;->writerLock_:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->signalWaiters()V

    goto :goto_0

    .line 639
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
