.class public Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;
.super Ljava/lang/Object;
.source "WaitQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WaitNode"
.end annotation


# instance fields
.field next:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;

.field final owner:Ljava/lang/Thread;

.field waiting:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;->waiting:Z

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;->next:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;

    .line 49
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;->owner:Ljava/lang/Thread;

    .line 50
    return-void
.end method


# virtual methods
.method public declared-synchronized doTimedWait(Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$QueuedSync;J)Z
    .locals 10
    .param p1, "sync"    # Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$QueuedSync;
    .param p2, "nanos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 69
    monitor-enter p0

    :try_start_0
    invoke-interface {p1, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$QueuedSync;->recheck(Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;->waiting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    :cond_0
    move v3, v4

    .line 98
    :goto_0
    monitor-exit p0

    return v3

    .line 71
    :cond_1
    cmp-long v5, p2, v8

    if-gtz v5, :cond_2

    .line 72
    const/4 v4, 0x0

    :try_start_1
    iput-boolean v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;->waiting:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 76
    :cond_2
    :try_start_2
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v6

    add-long v0, v6, p2

    .line 79
    .local v0, "deadline":J
    :cond_3
    :try_start_3
    sget-object v5, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    invoke-virtual {v5, p0, p2, p3}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->timedWait(Ljava/lang/Object;J)V

    .line 80
    iget-boolean v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;->waiting:Z

    if-nez v5, :cond_4

    move v3, v4

    .line 81
    goto :goto_0

    .line 83
    :cond_4
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J

    move-result-wide v6

    sub-long p2, v0, v6

    .line 84
    cmp-long v5, p2, v8

    if-gtz v5, :cond_3

    .line 85
    const/4 v5, 0x0

    iput-boolean v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;->waiting:Z
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v2

    .line 92
    .local v2, "ex":Ljava/lang/InterruptedException;
    :try_start_4
    iget-boolean v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;->waiting:Z

    if-eqz v3, :cond_5

    .line 93
    const/4 v3, 0x0

    iput-boolean v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;->waiting:Z

    .line 94
    throw v2

    .line 97
    :cond_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v3, v4

    .line 98
    goto :goto_0
.end method

.method public declared-synchronized doWait(Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$QueuedSync;)V
    .locals 2
    .param p1, "sync"    # Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$QueuedSync;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    invoke-interface {p1, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$QueuedSync;->recheck(Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 109
    :goto_0
    :try_start_1
    iget-boolean v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;->waiting:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    iget-boolean v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;->waiting:Z

    if-eqz v1, :cond_0

    .line 113
    const/4 v1, 0x0

    iput-boolean v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;->waiting:Z

    .line 114
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 117
    .restart local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_0
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 122
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized doWaitUninterruptibly(Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$QueuedSync;)V
    .locals 4
    .param p1, "sync"    # Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$QueuedSync;

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    invoke-interface {p1, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$QueuedSync;->recheck(Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 126
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    .line 128
    .local v1, "wasInterrupted":Z
    :goto_0
    :try_start_1
    iget-boolean v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;->waiting:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    .line 130
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "ex":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .line 136
    goto :goto_0

    .line 140
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_0
    if-eqz v1, :cond_1

    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 143
    .end local v1    # "wasInterrupted":Z
    :cond_1
    monitor-exit p0

    return-void

    .line 140
    .restart local v1    # "wasInterrupted":Z
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 125
    .end local v1    # "wasInterrupted":Z
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getOwner()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;->owner:Ljava/lang/Thread;

    return-object v0
.end method

.method public declared-synchronized signal(Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$QueuedSync;)Z
    .locals 2
    .param p1, "sync"    # Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$QueuedSync;

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;->waiting:Z

    .line 58
    .local v0, "signalled":Z
    if-eqz v0, :cond_0

    .line 59
    const/4 v1, 0x0

    iput-boolean v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;->waiting:Z

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 61
    invoke-interface {p1, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$QueuedSync;->takeOver(Ledu/emory/mathcs/backport/java/util/concurrent/helpers/WaitQueue$WaitNode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_0
    monitor-exit p0

    return v0

    .line 57
    .end local v0    # "signalled":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
