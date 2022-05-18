.class Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar;
.super Ljava/lang/Object;
.source "CondVar.java"

# interfaces
.implements Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;
    }
.end annotation


# instance fields
.field protected final lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;)V
    .locals 0
    .param p1, "lock"    # Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;

    .line 32
    return-void
.end method


# virtual methods
.method public await()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;

    invoke-interface {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;->getHoldCount()I

    move-result v1

    .line 64
    .local v1, "holdCount":I
    if-nez v1, :cond_0

    .line 65
    new-instance v3, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v3}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v3

    .line 67
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    .line 69
    :cond_1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 70
    move v2, v1

    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_2

    :try_start_1
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;

    invoke-interface {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;->unlock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 72
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 81
    move v2, v1

    :goto_1
    if-lez v2, :cond_4

    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;

    invoke-interface {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;->lock()V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 76
    throw v0

    .line 78
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 81
    .end local v2    # "i":I
    :catchall_1
    move-exception v3

    move v2, v1

    .restart local v2    # "i":I
    :goto_2
    if-lez v2, :cond_3

    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;

    invoke-interface {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;->lock()V

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_3
    throw v3

    .line 83
    :cond_4
    return-void
.end method

.method public await(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Z
    .locals 11
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v8, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;

    invoke-interface {v8}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;->getHoldCount()I

    move-result v1

    .line 87
    .local v1, "holdCount":I
    if-nez v1, :cond_0

    .line 88
    new-instance v8, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v8}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v8

    .line 90
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v8, Ljava/lang/InterruptedException;

    invoke-direct {v8}, Ljava/lang/InterruptedException;-><init>()V

    throw v8

    .line 91
    :cond_1
    invoke-virtual {p3, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 92
    .local v4, "nanos":J
    const/4 v3, 0x0

    .line 94
    .local v3, "success":Z
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 95
    move v2, v1

    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_2

    :try_start_1
    iget-object v8, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;

    invoke-interface {v8}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;->unlock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 97
    :cond_2
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_3

    .line 98
    :try_start_2
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J

    move-result-wide v6

    .line 99
    .local v6, "start":J
    sget-object v8, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    invoke-virtual {v8, p0, v4, v5}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->timedWait(Ljava/lang/Object;J)V

    .line 103
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v8

    sub-long/2addr v8, v6

    cmp-long v8, v8, v4

    if-gez v8, :cond_4

    const/4 v3, 0x1

    .line 110
    .end local v6    # "start":J
    :cond_3
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 113
    move v2, v1

    :goto_2
    if-lez v2, :cond_6

    iget-object v8, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;

    invoke-interface {v8}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;->lock()V

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 103
    .restart local v6    # "start":J
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 106
    .end local v6    # "start":J
    :catch_0
    move-exception v0

    .line 107
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 108
    throw v0

    .line 110
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 113
    .end local v2    # "i":I
    :catchall_1
    move-exception v8

    move v2, v1

    .restart local v2    # "i":I
    :goto_3
    if-lez v2, :cond_5

    iget-object v9, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;

    invoke-interface {v9}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;->lock()V

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_5
    throw v8

    .line 115
    :cond_6
    return v3
.end method

.method public awaitUninterruptibly()V
    .locals 6

    .prologue
    .line 35
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;

    invoke-interface {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;->getHoldCount()I

    move-result v1

    .line 36
    .local v1, "holdCount":I
    if-nez v1, :cond_0

    .line 37
    new-instance v4, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v4}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v4

    .line 40
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    .line 42
    .local v3, "wasInterrupted":Z
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 43
    move v2, v1

    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_1

    :try_start_1
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;

    invoke-interface {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;->unlock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 45
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 55
    move v2, v1

    :goto_2
    if-lez v2, :cond_4

    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;

    invoke-interface {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;->lock()V

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "ex":Ljava/lang/InterruptedException;
    const/4 v3, 0x1

    goto :goto_1

    .line 52
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 55
    .end local v2    # "i":I
    :catchall_1
    move-exception v4

    move v2, v1

    .restart local v2    # "i":I
    :goto_3
    if-lez v2, :cond_2

    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;

    invoke-interface {v5}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;->lock()V

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 56
    :cond_2
    if-eqz v3, :cond_3

    .line 57
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 55
    :cond_3
    throw v4

    .line 56
    :cond_4
    if-eqz v3, :cond_5

    .line 57
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 60
    :cond_5
    return-void
.end method

.method public awaitUntil(Ljava/util/Date;)Z
    .locals 12
    .param p1, "deadline"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 123
    if-nez p1, :cond_0

    new-instance v10, Ljava/lang/NullPointerException;

    invoke-direct {v10}, Ljava/lang/NullPointerException;-><init>()V

    throw v10

    .line 124
    :cond_0
    iget-object v10, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;

    invoke-interface {v10}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;->getHoldCount()I

    move-result v3

    .line 125
    .local v3, "holdCount":I
    if-nez v3, :cond_1

    .line 126
    new-instance v10, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v10}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v10

    .line 128
    :cond_1
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 129
    .local v0, "abstime":J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v10

    if-eqz v10, :cond_2

    new-instance v10, Ljava/lang/InterruptedException;

    invoke-direct {v10}, Ljava/lang/InterruptedException;-><init>()V

    throw v10

    .line 131
    :cond_2
    const/4 v5, 0x0

    .line 133
    .local v5, "success":Z
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 134
    move v4, v3

    .local v4, "i":I
    :goto_0
    if-lez v4, :cond_3

    :try_start_1
    iget-object v10, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;

    invoke-interface {v10}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;->unlock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 136
    :cond_3
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 137
    .local v8, "start":J
    sub-long v6, v0, v8

    .line 138
    .local v6, "msecs":J
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-lez v10, :cond_4

    .line 139
    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v10

    sub-long/2addr v10, v8

    cmp-long v10, v10, v6

    if-gez v10, :cond_5

    const/4 v5, 0x1

    .line 150
    :cond_4
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 153
    move v4, v3

    :goto_2
    if-lez v4, :cond_7

    iget-object v10, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;

    invoke-interface {v10}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;->lock()V

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 143
    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    .line 146
    .end local v6    # "msecs":J
    .end local v8    # "start":J
    :catch_0
    move-exception v2

    .line 147
    .local v2, "ex":Ljava/lang/InterruptedException;
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 148
    throw v2

    .line 150
    .end local v2    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 153
    .end local v4    # "i":I
    :catchall_1
    move-exception v10

    move v4, v3

    .restart local v4    # "i":I
    :goto_3
    if-lez v4, :cond_6

    iget-object v11, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;

    invoke-interface {v11}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;->lock()V

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_6
    throw v10

    .line 155
    .restart local v6    # "msecs":J
    .restart local v8    # "start":J
    :cond_7
    return v5
.end method

.method protected getLock()Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;

    return-object v0
.end method

.method protected getWaitQueueLength()I
    .locals 2

    .prologue
    .line 179
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use FAIR version"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getWaitingThreads()Ljava/util/Collection;
    .locals 2

    .prologue
    .line 183
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use FAIR version"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected hasWaiters()Z
    .locals 2

    .prologue
    .line 175
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use FAIR version"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized signal()V
    .locals 1

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 162
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized signalAll()V
    .locals 1

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 169
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    monitor-exit p0

    return-void
.end method
