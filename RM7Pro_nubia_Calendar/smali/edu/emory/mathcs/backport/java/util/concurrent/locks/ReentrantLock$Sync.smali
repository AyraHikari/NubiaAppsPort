.class abstract Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;
.super Ljava/lang/Object;
.source "ReentrantLock.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Sync"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x47e15d6b55bba584L


# instance fields
.field protected transient holds_:I

.field protected transient owner_:Ljava/lang/Thread;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;->owner_:Ljava/lang/Thread;

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;->holds_:I

    .line 98
    return-void
.end method


# virtual methods
.method public declared-synchronized getHoldCount()I
    .locals 1

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;->holds_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized getOwner()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;->owner_:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getQueueLength()I
    .locals 2

    .prologue
    .line 158
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use FAIR version"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getQueuedThreads()Ljava/util/Collection;
    .locals 2

    .prologue
    .line 162
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use FAIR version"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasQueuedThreads()Z
    .locals 2

    .prologue
    .line 154
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use FAIR version"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final incHolds()V
    .locals 3

    .prologue
    .line 109
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;->holds_:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;->holds_:I

    .line 110
    .local v0, "nextHolds":I
    if-gez v0, :cond_0

    .line 111
    new-instance v1, Ljava/lang/Error;

    const-string v2, "Maximum lock count exceeded"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    :cond_0
    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;->holds_:I

    .line 113
    return-void
.end method

.method public abstract isFair()Z
.end method

.method public declared-synchronized isHeldByCurrentThread()Z
    .locals 2

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;->holds_:I

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;->owner_:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isLocked()Z
    .locals 1

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;->owner_:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isQueued(Ljava/lang/Thread;)Z
    .locals 2
    .param p1, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 166
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use FAIR version"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract lock()V
.end method

.method public abstract lockInterruptibly()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public tryLock()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 116
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 117
    .local v0, "caller":Ljava/lang/Thread;
    monitor-enter p0

    .line 118
    :try_start_0
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;->owner_:Ljava/lang/Thread;

    if-nez v2, :cond_0

    .line 119
    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;->owner_:Ljava/lang/Thread;

    .line 120
    const/4 v2, 0x1

    iput v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;->holds_:I

    .line 121
    monitor-exit p0

    .line 128
    :goto_0
    return v1

    .line 123
    :cond_0
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;->owner_:Ljava/lang/Thread;

    if-ne v0, v2, :cond_1

    .line 124
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;->incHolds()V

    .line 125
    monitor-exit p0

    goto :goto_0

    .line 127
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract tryLock(J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract unlock()V
.end method
