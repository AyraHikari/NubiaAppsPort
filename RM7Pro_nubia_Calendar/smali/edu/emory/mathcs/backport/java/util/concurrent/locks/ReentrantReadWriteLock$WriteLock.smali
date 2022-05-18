.class public Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
.super Ljava/lang/Object;
.source "ReentrantReadWriteLock.java"

# interfaces
.implements Ledu/emory/mathcs/backport/java/util/concurrent/locks/Lock;
.implements Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WriteLock"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4548bd97c08297b4L


# instance fields
.field final lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;


# direct methods
.method protected constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;)V
    .locals 1
    .param p1, "lock"    # Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;

    .prologue
    .line 690
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 691
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 692
    :cond_0
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;

    .line 693
    return-void
.end method


# virtual methods
.method public getHoldCount()I
    .locals 1

    .prologue
    .line 1078
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getWriteHoldCount()I

    move-result v0

    return v0
.end method

.method public isHeldByCurrentThread()Z
    .locals 1

    .prologue
    .line 1064
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->isWriteLockedByCurrentThread()Z

    move-result v0

    return v0
.end method

.method public lock()V
    .locals 4

    .prologue
    .line 713
    monitor-enter p0

    .line 714
    :try_start_0
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;

    iget-object v2, v2, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->startWriteFromNewWriter()Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit p0

    .line 731
    :goto_0
    return-void

    .line 715
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 719
    .local v1, "wasInterrupted":Z
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 727
    :goto_1
    :try_start_2
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;

    iget-object v2, v2, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->startWriteFromWaitingWriter()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    if-eqz v2, :cond_1

    .line 731
    if-eqz v1, :cond_2

    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 733
    .end local v1    # "wasInterrupted":Z
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 721
    .restart local v1    # "wasInterrupted":Z
    :catch_0
    move-exception v0

    .line 722
    .local v0, "ex":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    goto :goto_1

    .line 731
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
    .line 788
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2

    .line 789
    :cond_0
    const/4 v1, 0x0

    .line 790
    .local v1, "ie":Ljava/lang/InterruptedException;
    monitor-enter p0

    .line 791
    :try_start_0
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;

    iget-object v2, v2, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->startWriteFromNewWriter()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 794
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 795
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;

    iget-object v2, v2, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->startWriteFromWaitingWriter()Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 796
    :try_start_2
    monitor-exit p0

    .line 814
    :cond_2
    return-void

    .line 798
    :catch_0
    move-exception v0

    .line 799
    .local v0, "ex":Ljava/lang/InterruptedException;
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;

    iget-object v2, v2, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->cancelledWaitingWriter()V

    .line 800
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 801
    move-object v1, v0

    .line 806
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 807
    if-eqz v1, :cond_2

    .line 811
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;

    iget-object v2, v2, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;->readerLock_:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->signalWaiters()V

    .line 812
    throw v1

    .line 806
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
    .line 1032
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar;

    invoke-direct {v0, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;)V

    return-object v0
.end method

.method declared-synchronized signalWaiters()V
    .locals 1

    .prologue
    .line 1036
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1037
    monitor-exit p0

    return-void

    .line 1036
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1048
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;->getOwner()Ljava/lang/Thread;

    move-result-object v0

    .line 1049
    .local v0, "o":Ljava/lang/Thread;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    if-nez v0, :cond_0

    const-string v1, "[Unlocked]"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "[Locked by thread "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public tryLock()Z
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->startWrite()Z

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

    .line 927
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v11

    if-eqz v11, :cond_0

    new-instance v10, Ljava/lang/InterruptedException;

    invoke-direct {v10}, Ljava/lang/InterruptedException;-><init>()V

    throw v10

    .line 928
    :cond_0
    const/4 v7, 0x0

    .line 929
    .local v7, "ie":Ljava/lang/InterruptedException;
    move-object/from16 v0, p3

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    .line 930
    .local v8, "nanos":J
    monitor-enter p0

    .line 931
    cmp-long v11, v8, v14

    if-gtz v11, :cond_1

    .line 932
    :try_start_0
    move-object/from16 v0, p0

    iget-object v10, v0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;

    iget-object v10, v10, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v10}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->startWrite()Z

    move-result v10

    monitor-exit p0

    .line 965
    :goto_0
    return v10

    .line 933
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;

    iget-object v11, v11, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v11}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->startWriteFromNewWriter()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 934
    monitor-exit p0

    goto :goto_0

    .line 959
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 936
    :cond_2
    :try_start_1
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v12

    add-long v4, v12, v8

    .line 939
    .local v4, "deadline":J
    :cond_3
    :try_start_2
    sget-object v11, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v8, v9}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->timedWait(Ljava/lang/Object;J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 947
    :try_start_3
    move-object/from16 v0, p0

    iget-object v11, v0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;

    iget-object v11, v11, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v11}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->startWriteFromWaitingWriter()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 948
    monitor-exit p0

    goto :goto_0

    .line 941
    :catch_0
    move-exception v6

    .line 942
    .local v6, "ex":Ljava/lang/InterruptedException;
    move-object/from16 v0, p0

    iget-object v10, v0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;

    iget-object v10, v10, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v10}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->cancelledWaitingWriter()V

    .line 943
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    .line 944
    move-object v7, v6

    .line 959
    .end local v6    # "ex":Ljava/lang/InterruptedException;
    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 961
    move-object/from16 v0, p0

    iget-object v10, v0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;

    iget-object v10, v10, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;->readerLock_:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v10}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->signalWaiters()V

    .line 962
    if-eqz v7, :cond_5

    .line 963
    throw v7

    .line 950
    :cond_4
    :try_start_4
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J

    move-result-wide v12

    sub-long v8, v4, v12

    .line 951
    cmp-long v11, v8, v14

    if-gtz v11, :cond_3

    .line 952
    move-object/from16 v0, p0

    iget-object v10, v0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;

    iget-object v10, v10, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v10}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->cancelledWaitingWriter()V

    .line 953
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 965
    :cond_5
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 981
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$Sync;->endWrite()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 986
    :goto_0
    :pswitch_0
    return-void

    .line 983
    :pswitch_1
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;->readerLock_:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->signalWaiters()V

    goto :goto_0

    .line 984
    :pswitch_2
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;

    iget-object v0, v0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock;->writerLock_:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->signalWaiters()V

    goto :goto_0

    .line 981
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
