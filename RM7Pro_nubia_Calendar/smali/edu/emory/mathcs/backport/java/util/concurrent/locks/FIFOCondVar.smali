.class Ledu/emory/mathcs/backport/java/util/concurrent/locks/FIFOCondVar;
.super Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar;
.source "FIFOCondVar.java"

# interfaces
.implements Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;
.implements Ljava/io/Serializable;


# static fields
.field private static final sync:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$QueuedSync;


# instance fields
.field private final wq:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/FIFOCondVar$1;

    invoke-direct {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/FIFOCondVar$1;-><init>()V

    sput-object v0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/FIFOCondVar;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$QueuedSync;

    return-void
.end method

.method constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;)V
    .locals 1
    .param p1, "lock"    # Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;)V

    .line 27
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/FIFOWaitQueue;

    invoke-direct {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/FIFOWaitQueue;-><init>()V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/FIFOCondVar;->wq:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue;

    .line 35
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
    .line 54
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/FIFOCondVar;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;

    invoke-interface {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;->getHoldCount()I

    move-result v0

    .line 55
    .local v0, "holdCount":I
    if-nez v0, :cond_0

    .line 56
    new-instance v3, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v3}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v3

    .line 58
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    .line 59
    :cond_1
    new-instance v2, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;

    invoke-direct {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;-><init>()V

    .line 60
    .local v2, "n":Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/FIFOCondVar;->wq:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue;

    invoke-virtual {v3, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue;->insert(Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;)V

    .line 61
    move v1, v0

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_2

    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/FIFOCondVar;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;

    invoke-interface {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;->unlock()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 63
    :cond_2
    :try_start_0
    sget-object v3, Ledu/emory/mathcs/backport/java/util/concurrent/locks/FIFOCondVar;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$QueuedSync;

    invoke-virtual {v2, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;->doWait(Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$QueuedSync;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    move v1, v0

    :goto_1
    if-lez v1, :cond_4

    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/FIFOCondVar;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;

    invoke-interface {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;->lock()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    throw v3

    .line 68
    :cond_4
    return-void

    .line 66
    :catchall_0
    move-exception v3

    move v1, v0

    :goto_2
    if-lez v1, :cond_3

    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/FIFOCondVar;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;

    invoke-interface {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;->lock()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_2
.end method

.method public await(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Z
    .locals 9
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/FIFOCondVar;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;

    invoke-interface {v6}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;->getHoldCount()I

    move-result v0

    .line 72
    .local v0, "holdCount":I
    if-nez v0, :cond_0

    .line 73
    new-instance v6, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v6}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v6

    .line 75
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/InterruptedException;

    invoke-direct {v6}, Ljava/lang/InterruptedException;-><init>()V

    throw v6

    .line 76
    :cond_1
    invoke-virtual {p3, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 77
    .local v4, "nanos":J
    new-instance v2, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;

    invoke-direct {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;-><init>()V

    .line 78
    .local v2, "n":Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;
    iget-object v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/FIFOCondVar;->wq:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue;

    invoke-virtual {v6, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue;->insert(Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;)V

    .line 79
    const/4 v3, 0x0

    .line 80
    .local v3, "success":Z
    move v1, v0

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_2

    iget-object v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/FIFOCondVar;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;

    invoke-interface {v6}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;->unlock()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 82
    :cond_2
    :try_start_0
    sget-object v6, Ledu/emory/mathcs/backport/java/util/concurrent/locks/FIFOCondVar;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$QueuedSync;

    invoke-virtual {v2, v6, v4, v5}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;->doTimedWait(Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$QueuedSync;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 85
    move v1, v0

    :goto_1
    if-lez v1, :cond_4

    iget-object v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/FIFOCondVar;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;

    invoke-interface {v6}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;->lock()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    throw v6

    .line 87
    :cond_4
    return v3

    .line 85
    :catchall_0
    move-exception v6

    move v1, v0

    :goto_2
    if-lez v1, :cond_3

    iget-object v7, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/FIFOCondVar;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;

    invoke-interface {v7}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;->lock()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_2
.end method

.method public awaitUninterruptibly()V
    .locals 5

    .prologue
    .line 38
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/FIFOCondVar;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;

    invoke-interface {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;->getHoldCount()I

    move-result v0

    .line 39
    .local v0, "holdCount":I
    if-nez v0, :cond_0

    .line 40
    new-instance v3, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v3}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v3

    .line 42
    :cond_0
    new-instance v2, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;

    invoke-direct {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;-><init>()V

    .line 43
    .local v2, "n":Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/FIFOCondVar;->wq:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue;

    invoke-virtual {v3, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue;->insert(Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;)V

    .line 44
    move v1, v0

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_1

    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/FIFOCondVar;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;

    invoke-interface {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;->unlock()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 46
    :cond_1
    :try_start_0
    sget-object v3, Ledu/emory/mathcs/backport/java/util/concurrent/locks/FIFOCondVar;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$QueuedSync;

    invoke-virtual {v2, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;->doWaitUninterruptibly(Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$QueuedSync;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    move v1, v0

    :goto_1
    if-lez v1, :cond_3

    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/FIFOCondVar;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;

    invoke-interface {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;->lock()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    throw v3

    .line 51
    :cond_3
    return-void

    .line 49
    :catchall_0
    move-exception v3

    move v1, v0

    :goto_2
    if-lez v1, :cond_2

    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/FIFOCondVar;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;

    invoke-interface {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;->lock()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_2
.end method

.method public awaitUntil(Ljava/util/Date;)Z
    .locals 7
    .param p1, "deadline"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 95
    if-nez p1, :cond_0

    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    .line 96
    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 97
    .local v0, "abstime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 98
    .local v4, "start":J
    sub-long v2, v0, v4

    .line 99
    .local v2, "msecs":J
    sget-object v6, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->MILLISECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    invoke-virtual {p0, v2, v3, v6}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/FIFOCondVar;->await(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Z

    move-result v6

    return v6
.end method

.method protected getWaitQueueLength()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/FIFOCondVar;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0

    .line 135
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/FIFOCondVar;->wq:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue;->getLength()I

    move-result v0

    return v0
.end method

.method protected getWaitingThreads()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/FIFOCondVar;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0

    .line 142
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/FIFOCondVar;->wq:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue;->getWaitingThreads()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected hasWaiters()Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/FIFOCondVar;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0

    .line 128
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/FIFOCondVar;->wq:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue;->hasNodes()Z

    move-result v0

    return v0
.end method

.method public signal()V
    .locals 2

    .prologue
    .line 103
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/FIFOCondVar;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;

    invoke-interface {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    new-instance v1, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v1

    .line 107
    :cond_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/FIFOCondVar;->wq:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue;->extract()Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;

    move-result-object v0

    .line 108
    .local v0, "w":Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;
    if-nez v0, :cond_1

    .line 109
    :goto_0
    return-void

    :cond_1
    sget-object v1, Ledu/emory/mathcs/backport/java/util/concurrent/locks/FIFOCondVar;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$QueuedSync;

    invoke-virtual {v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;->signal(Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$QueuedSync;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public signalAll()V
    .locals 2

    .prologue
    .line 114
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/FIFOCondVar;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;

    invoke-interface {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_1

    .line 115
    new-instance v1, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v1

    .line 120
    .local v0, "w":Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;
    :cond_0
    sget-object v1, Ledu/emory/mathcs/backport/java/util/concurrent/locks/FIFOCondVar;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$QueuedSync;

    invoke-virtual {v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;->signal(Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$QueuedSync;)Z

    .line 118
    .end local v0    # "w":Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;
    :cond_1
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/FIFOCondVar;->wq:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue;->extract()Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;

    move-result-object v0

    .line 119
    .restart local v0    # "w":Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;
    if-nez v0, :cond_0

    return-void
.end method
