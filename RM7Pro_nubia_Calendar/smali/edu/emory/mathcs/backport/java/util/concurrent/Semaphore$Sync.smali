.class abstract Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;
.super Ljava/lang/Object;
.source "Semaphore.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Sync"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x108c7583c161b715L


# instance fields
.field permits_:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0
    .param p1, "permits"    # I

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;->permits_:I

    .line 151
    return-void
.end method


# virtual methods
.method abstract acquire(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method abstract acquireUninterruptibly(I)V
.end method

.method public attempt(I)Z
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 158
    monitor-enter p0

    .line 159
    :try_start_0
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;->permits_:I

    if-lt v0, p1, :cond_0

    .line 160
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;->permits_:I

    sub-int/2addr v0, p1

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;->permits_:I

    .line 161
    const/4 v0, 0x1

    monitor-exit p0

    .line 164
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method abstract attempt(IJ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public declared-synchronized drain()I
    .locals 2

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;->permits_:I

    .line 179
    .local v0, "acquired":I
    const/4 v1, 0x0

    iput v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;->permits_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    monitor-exit p0

    return v0

    .line 178
    .end local v0    # "acquired":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getPermits()I
    .locals 1

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;->permits_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method abstract getQueueLength()I
.end method

.method abstract getQueuedThreads()Ljava/util/Collection;
.end method

.method abstract hasQueuedThreads()Z
.end method

.method public declared-synchronized reduce(I)V
    .locals 1
    .param p1, "reduction"    # I

    .prologue
    .line 184
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;->permits_:I

    sub-int/2addr v0, p1

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;->permits_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    monitor-exit p0

    return-void

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method abstract release(I)V
.end method
