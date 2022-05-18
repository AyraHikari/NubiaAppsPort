.class public Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore;
.super Ljava/lang/Object;
.source "Semaphore.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync;,
        Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$NonfairSync;,
        Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2cb8e63801765912L


# instance fields
.field private final sync:Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "permits"    # I

    .prologue
    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$NonfairSync;

    invoke-direct {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$NonfairSync;-><init>(I)V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;

    .line 428
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1
    .param p1, "permits"    # I
    .param p2, "fair"    # Z

    .prologue
    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    if-eqz p2, :cond_0

    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync;

    invoke-direct {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync;-><init>(I)V

    :goto_0
    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;

    .line 443
    return-void

    .line 442
    :cond_0
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$NonfairSync;

    invoke-direct {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$NonfairSync;-><init>(I)V

    goto :goto_0
.end method


# virtual methods
.method public acquire()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 474
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;->acquire(I)V

    .line 475
    return-void
.end method

.method public acquire(I)V
    .locals 1
    .param p1, "permits"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 628
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 629
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;

    invoke-virtual {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;->acquire(I)V

    .line 630
    return-void
.end method

.method public acquireUninterruptibly()V
    .locals 2

    .prologue
    .line 497
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;->acquireUninterruptibly(I)V

    .line 498
    return-void
.end method

.method public acquireUninterruptibly(I)V
    .locals 1
    .param p1, "permits"    # I

    .prologue
    .line 656
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;

    invoke-virtual {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;->acquireUninterruptibly(I)V

    .line 657
    return-void
.end method

.method public availablePermits()I
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;->getPermits()I

    move-result v0

    return v0
.end method

.method public drainPermits()I
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;->drain()I

    move-result v0

    return v0
.end method

.method public final getQueueLength()I
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;->getQueueLength()I

    move-result v0

    return v0
.end method

.method protected getQueuedThreads()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;->getQueuedThreads()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final hasQueuedThreads()Z
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;->hasQueuedThreads()Z

    move-result v0

    return v0
.end method

.method public isFair()Z
    .locals 1

    .prologue
    .line 815
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;

    instance-of v0, v0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$FairSync;

    return v0
.end method

.method protected reducePermits(I)V
    .locals 1
    .param p1, "reduction"    # I

    .prologue
    .line 805
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 806
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;

    invoke-virtual {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;->reduce(I)V

    .line 807
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 588
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;->release(I)V

    .line 589
    return-void
.end method

.method public release(I)V
    .locals 1
    .param p1, "permits"    # I

    .prologue
    .line 770
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 771
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;

    invoke-virtual {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;->release(I)V

    .line 772
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 867
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "[Permits = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;->getPermits()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryAcquire()Z
    .locals 2

    .prologue
    .line 525
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;->attempt(I)Z

    move-result v0

    return v0
.end method

.method public tryAcquire(I)Z
    .locals 1
    .param p1, "permits"    # I

    .prologue
    .line 687
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 688
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;

    invoke-virtual {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;->attempt(I)Z

    move-result v0

    return v0
.end method

.method public tryAcquire(IJLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Z
    .locals 4
    .param p1, "permits"    # I
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 743
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 744
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;

    invoke-virtual {p4, p2, p3}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;->attempt(IJ)Z

    move-result v0

    return v0
.end method

.method public tryAcquire(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Z
    .locals 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 571
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;

    const/4 v1, 0x1

    invoke-virtual {p3, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/Semaphore$Sync;->attempt(IJ)Z

    move-result v0

    return v0
.end method
