.class public Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
.super Ljava/lang/Object;
.source "ReentrantLock.java"

# interfaces
.implements Ledu/emory/mathcs/backport/java/util/concurrent/locks/Lock;
.implements Ljava/io/Serializable;
.implements Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$FairSync;,
        Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;,
        Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6655a82c2cc86aebL


# instance fields
.field private final sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;

    invoke-direct {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;-><init>()V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;

    .line 453
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "fair"    # Z

    .prologue
    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    if-eqz p1, :cond_0

    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$FairSync;

    invoke-direct {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$FairSync;-><init>()V

    :goto_0
    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;

    .line 463
    return-void

    .line 462
    :cond_0
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;

    invoke-direct {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;-><init>()V

    goto :goto_0
.end method

.method private asCondVar(Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;)Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar;
    .locals 3
    .param p1, "condition"    # Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    .prologue
    .line 950
    if-nez p1, :cond_0

    .line 951
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 952
    :cond_0
    instance-of v1, p1, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar;

    if-nez v1, :cond_1

    .line 953
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "not owner"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object v0, p1

    .line 954
    check-cast v0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar;

    .line 955
    .local v0, "condVar":Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar;
    iget-object v1, v0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar;->lock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;

    if-eq v1, p0, :cond_2

    .line 956
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "not owner"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 957
    :cond_2
    return-object v0
.end method


# virtual methods
.method public getHoldCount()I
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;->getHoldCount()I

    move-result v0

    return v0
.end method

.method protected getOwner()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;->getOwner()Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method public final getQueueLength()I
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;->getQueueLength()I

    move-result v0

    return v0
.end method

.method protected getQueuedThreads()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;->getQueuedThreads()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getWaitQueueLength(Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;)I
    .locals 1
    .param p1, "condition"    # Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    .prologue
    .line 910
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->asCondVar(Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;)Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar;

    move-result-object v0

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar;->getWaitQueueLength()I

    move-result v0

    return v0
.end method

.method protected getWaitingThreads(Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;)Ljava/util/Collection;
    .locals 1
    .param p1, "condition"    # Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    .prologue
    .line 931
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->asCondVar(Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;)Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar;

    move-result-object v0

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar;->getWaitingThreads()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final hasQueuedThread(Ljava/lang/Thread;)Z
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 842
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;->isQueued(Ljava/lang/Thread;)Z

    move-result v0

    return v0
.end method

.method public final hasQueuedThreads()Z
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;->hasQueuedThreads()Z

    move-result v0

    return v0
.end method

.method public hasWaiters(Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;)Z
    .locals 1
    .param p1, "condition"    # Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;

    .prologue
    .line 891
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->asCondVar(Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;)Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar;

    move-result-object v0

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar;->hasWaiters()Z

    move-result v0

    return v0
.end method

.method public final isFair()Z
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;->isFair()Z

    move-result v0

    return v0
.end method

.method public isHeldByCurrentThread()Z
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;->isHeldByCurrentThread()Z

    move-result v0

    return v0
.end method

.method public isLocked()Z
    .locals 1

    .prologue
    .line 786
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;->isLocked()Z

    move-result v0

    return v0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;->lock()V

    .line 482
    return-void
.end method

.method public lockInterruptibly()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 531
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;->lockInterruptibly()V

    .line 532
    return-void
.end method

.method public newCondition()Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;
    .locals 1

    .prologue
    .line 693
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->isFair()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/FIFOCondVar;

    invoke-direct {v0, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/FIFOCondVar;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar;

    invoke-direct {v0, p0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/locks/CondVar$ExclusiveLock;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 943
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->getOwner()Ljava/lang/Thread;

    move-result-object v0

    .line 944
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
    .line 561
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;->tryLock()Z

    move-result v0

    return v0
.end method

.method public tryLock(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Z
    .locals 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 635
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {p3, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;->tryLock(J)Z

    move-result v0

    return v0
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->sync:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;->unlock()V

    .line 651
    return-void
.end method
