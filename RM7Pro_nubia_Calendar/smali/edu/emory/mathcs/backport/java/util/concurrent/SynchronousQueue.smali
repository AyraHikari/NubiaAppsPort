.class public Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue;
.super Ledu/emory/mathcs/backport/java/util/AbstractQueue;
.source "SynchronousQueue.java"

# interfaces
.implements Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$EmptyIterator;,
        Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;,
        Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$LifoWaitQueue;,
        Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$FifoWaitQueue;,
        Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$WaitQueue;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2cbacc91e0a3c166L


# instance fields
.field private final qlock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

.field private final waitingConsumers:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$WaitQueue;

.field private final waitingProducers:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$WaitQueue;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue;-><init>(Z)V

    .line 97
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "fair"    # Z

    .prologue
    .line 104
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/AbstractQueue;-><init>()V

    .line 105
    if-eqz p1, :cond_0

    .line 106
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue;->qlock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 107
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$FifoWaitQueue;

    invoke-direct {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$FifoWaitQueue;-><init>()V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue;->waitingProducers:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$WaitQueue;

    .line 108
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$FifoWaitQueue;

    invoke-direct {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$FifoWaitQueue;-><init>()V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue;->waitingConsumers:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$WaitQueue;

    .line 115
    :goto_0
    return-void

    .line 111
    :cond_0
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue;->qlock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 112
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$LifoWaitQueue;

    invoke-direct {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$LifoWaitQueue;-><init>()V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue;->waitingProducers:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$WaitQueue;

    .line 113
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$LifoWaitQueue;

    invoke-direct {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$LifoWaitQueue;-><init>()V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue;->waitingConsumers:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$WaitQueue;

    goto :goto_0
.end method

.method private unlinkCancelledConsumer(Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;)V
    .locals 2
    .param p1, "node"    # Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;

    .prologue
    .line 237
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue;->waitingConsumers:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$WaitQueue;

    invoke-virtual {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$WaitQueue;->shouldUnlink(Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue;->qlock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 240
    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue;->waitingConsumers:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$WaitQueue;

    invoke-virtual {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$WaitQueue;->shouldUnlink(Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue;->waitingConsumers:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$WaitQueue;

    invoke-virtual {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$WaitQueue;->unlink(Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue;->qlock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 246
    :cond_1
    return-void

    .line 243
    :catchall_0
    move-exception v0

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue;->qlock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private unlinkCancelledProducer(Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;)V
    .locals 2
    .param p1, "node"    # Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;

    .prologue
    .line 253
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue;->waitingProducers:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$WaitQueue;

    invoke-virtual {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$WaitQueue;->shouldUnlink(Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue;->qlock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 256
    :try_start_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue;->waitingProducers:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$WaitQueue;

    invoke-virtual {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$WaitQueue;->shouldUnlink(Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue;->waitingProducers:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$WaitQueue;

    invoke-virtual {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$WaitQueue;->unlink(Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue;->qlock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 262
    :cond_1
    return-void

    .line 259
    :catchall_0
    move-exception v0

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue;->qlock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 679
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 689
    const/4 v0, 0x0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 712
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 3
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 801
    if-nez p1, :cond_0

    .line 802
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 803
    :cond_0
    if-ne p1, p0, :cond_1

    .line 804
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 805
    :cond_1
    const/4 v1, 0x0

    .line 807
    .local v1, "n":I
    :goto_0
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .local v0, "e":Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 808
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 809
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 811
    :cond_2
    return v1
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 3
    .param p1, "c"    # Ljava/util/Collection;
    .param p2, "maxElements"    # I

    .prologue
    .line 821
    if-nez p1, :cond_0

    .line 822
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 823
    :cond_0
    if-ne p1, p0, :cond_1

    .line 824
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 825
    :cond_1
    const/4 v1, 0x0

    .line 827
    .local v1, "n":I
    :goto_0
    if-ge v1, p2, :cond_2

    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .local v0, "e":Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 828
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 829
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 831
    .end local v0    # "e":Ljava/lang/Object;
    :cond_2
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 652
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 768
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$EmptyIterator;

    invoke-direct {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$EmptyIterator;-><init>()V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 596
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 597
    :cond_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue;->qlock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 601
    .local v1, "qlock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    :cond_1
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 603
    :try_start_0
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue;->waitingConsumers:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$WaitQueue;

    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$WaitQueue;->deq()Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 605
    .local v0, "node":Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 607
    if-nez v0, :cond_2

    .line 608
    const/4 v2, 0x0

    .line 611
    :goto_0
    return v2

    .line 605
    .end local v0    # "node":Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .line 610
    .restart local v0    # "node":Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;
    :cond_2
    invoke-virtual {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;->setItem(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 611
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public offer(Ljava/lang/Object;JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Z
    .locals 8
    .param p1, "e"    # Ljava/lang/Object;
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 461
    if-nez p1, :cond_0

    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    throw v7

    .line 462
    :cond_0
    invoke-virtual {p4, p2, p3}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 463
    .local v2, "nanos":J
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue;->qlock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 467
    .local v5, "qlock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/InterruptedException;

    invoke-direct {v7}, Ljava/lang/InterruptedException;-><init>()V

    throw v7

    .line 468
    :cond_2
    invoke-virtual {v5}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 470
    :try_start_0
    iget-object v7, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue;->waitingConsumers:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$WaitQueue;

    invoke-virtual {v7}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$WaitQueue;->deq()Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;

    move-result-object v4

    .line 471
    .local v4, "node":Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;
    if-nez v4, :cond_5

    move v1, v6

    .local v1, "mustWait":Z
    :goto_0
    if-eqz v1, :cond_3

    .line 472
    iget-object v7, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue;->waitingProducers:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$WaitQueue;

    invoke-virtual {v7, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$WaitQueue;->enq(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 474
    :cond_3
    invoke-virtual {v5}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 477
    if-eqz v1, :cond_6

    .line 479
    :try_start_1
    invoke-virtual {v4, v2, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;->waitForTake(J)Z

    move-result v6

    .line 480
    .local v6, "x":Z
    if-nez v6, :cond_4

    .line 481
    invoke-direct {p0, v4}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue;->unlinkCancelledProducer(Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 490
    .end local v6    # "x":Z
    :cond_4
    :goto_1
    return v6

    .line 471
    .end local v1    # "mustWait":Z
    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    .line 474
    .end local v4    # "node":Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;
    :catchall_0
    move-exception v7

    invoke-virtual {v5}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v7

    .line 483
    .restart local v1    # "mustWait":Z
    .restart local v4    # "node":Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;
    :catch_0
    move-exception v0

    .line 484
    .local v0, "ex":Ljava/lang/InterruptedException;
    invoke-direct {p0, v4}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue;->unlinkCancelledProducer(Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;)V

    .line 485
    throw v0

    .line 489
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_6
    invoke-virtual {v4, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;->setItem(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1
.end method

.method public peek()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 745
    const/4 v0, 0x0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 624
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue;->qlock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 627
    .local v1, "qlock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    :cond_0
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 629
    :try_start_0
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue;->waitingProducers:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$WaitQueue;

    invoke-virtual {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$WaitQueue;->deq()Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 631
    .local v0, "node":Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;
    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 633
    if-nez v0, :cond_1

    .line 634
    const/4 v2, 0x0

    .line 639
    :goto_0
    return-object v2

    .line 631
    .end local v0    # "node":Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 637
    .restart local v0    # "node":Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;
    :cond_1
    invoke-virtual {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;->getItem()Ljava/lang/Object;

    move-result-object v2

    .line 638
    .local v2, "x":Ljava/lang/Object;
    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public poll(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 11
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 547
    invoke-virtual {p3, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 548
    .local v2, "nanos":J
    iget-object v5, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue;->qlock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 554
    .local v5, "qlock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v8, Ljava/lang/InterruptedException;

    invoke-direct {v8}, Ljava/lang/InterruptedException;-><init>()V

    throw v8

    .line 555
    :cond_1
    invoke-virtual {v5}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 557
    :try_start_0
    iget-object v8, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue;->waitingProducers:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$WaitQueue;

    invoke-virtual {v8}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$WaitQueue;->deq()Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;

    move-result-object v4

    .line 558
    .local v4, "node":Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;
    if-nez v4, :cond_4

    const/4 v1, 0x1

    .local v1, "mustWait":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 559
    iget-object v8, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue;->waitingConsumers:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$WaitQueue;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$WaitQueue;->enq(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 561
    :cond_2
    invoke-virtual {v5}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 564
    if-eqz v1, :cond_5

    .line 566
    :try_start_1
    invoke-virtual {v4, v2, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;->waitForPut(J)Ljava/lang/Object;

    move-result-object v6

    .line 567
    .local v6, "x":Ljava/lang/Object;
    if-nez v6, :cond_3

    .line 568
    invoke-direct {p0, v4}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue;->unlinkCancelledConsumer(Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    move-object v7, v6

    .line 578
    .end local v6    # "x":Ljava/lang/Object;
    .local v7, "x":Ljava/lang/Object;
    :goto_1
    return-object v7

    .line 558
    .end local v1    # "mustWait":Z
    .end local v7    # "x":Ljava/lang/Object;
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 561
    .end local v4    # "node":Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;
    :catchall_0
    move-exception v8

    invoke-virtual {v5}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v8

    .line 570
    .restart local v1    # "mustWait":Z
    .restart local v4    # "node":Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;
    :catch_0
    move-exception v0

    .line 571
    .local v0, "ex":Ljava/lang/InterruptedException;
    invoke-direct {p0, v4}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue;->unlinkCancelledConsumer(Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;)V

    .line 572
    throw v0

    .line 576
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_5
    invoke-virtual {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;->getItem()Ljava/lang/Object;

    move-result-object v6

    .line 577
    .restart local v6    # "x":Ljava/lang/Object;
    if-eqz v6, :cond_0

    move-object v7, v6

    .line 578
    .end local v6    # "x":Ljava/lang/Object;
    .restart local v7    # "x":Ljava/lang/Object;
    goto :goto_1
.end method

.method public put(Ljava/lang/Object;)V
    .locals 5
    .param p1, "e"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 418
    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 419
    :cond_0
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue;->qlock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 424
    .local v3, "qlock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/InterruptedException;

    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    throw v4

    .line 425
    :cond_2
    invoke-virtual {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 427
    :try_start_0
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue;->waitingConsumers:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$WaitQueue;

    invoke-virtual {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$WaitQueue;->deq()Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;

    move-result-object v2

    .line 428
    .local v2, "node":Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;
    if-nez v2, :cond_4

    const/4 v1, 0x1

    .local v1, "mustWait":Z
    :goto_0
    if-eqz v1, :cond_3

    .line 429
    iget-object v4, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue;->waitingProducers:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$WaitQueue;

    invoke-virtual {v4, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$WaitQueue;->enq(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 431
    :cond_3
    invoke-virtual {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 434
    if-eqz v1, :cond_5

    .line 436
    :try_start_1
    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;->waitForTake()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 445
    :goto_1
    return-void

    .line 428
    .end local v1    # "mustWait":Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 431
    .end local v2    # "node":Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4

    .line 438
    .restart local v1    # "mustWait":Z
    .restart local v2    # "node":Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;
    :catch_0
    move-exception v0

    .line 439
    .local v0, "ex":Ljava/lang/InterruptedException;
    invoke-direct {p0, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue;->unlinkCancelledProducer(Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;)V

    .line 440
    throw v0

    .line 444
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_5
    invoke-virtual {v2, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;->setItem(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1
.end method

.method public remainingCapacity()I
    .locals 1

    .prologue
    .line 672
    const/4 v0, 0x0

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 700
    const/4 v0, 0x0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 723
    const/4 v0, 0x0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "c"    # Ljava/util/Collection;

    .prologue
    .line 734
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 662
    const/4 v0, 0x0

    return v0
.end method

.method public take()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 504
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue;->qlock:Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;

    .line 509
    .local v3, "qlock":Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/InterruptedException;

    invoke-direct {v6}, Ljava/lang/InterruptedException;-><init>()V

    throw v6

    .line 510
    :cond_1
    invoke-virtual {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->lock()V

    .line 512
    :try_start_0
    iget-object v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue;->waitingProducers:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$WaitQueue;

    invoke-virtual {v6}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$WaitQueue;->deq()Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;

    move-result-object v2

    .line 513
    .local v2, "node":Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;
    if-nez v2, :cond_3

    const/4 v1, 0x1

    .local v1, "mustWait":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 514
    iget-object v6, p0, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue;->waitingConsumers:Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$WaitQueue;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$WaitQueue;->enq(Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 516
    :cond_2
    invoke-virtual {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 519
    if-eqz v1, :cond_4

    .line 521
    :try_start_1
    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;->waitForPut()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .local v4, "x":Ljava/lang/Object;
    move-object v5, v4

    .line 531
    .end local v4    # "x":Ljava/lang/Object;
    .local v5, "x":Ljava/lang/Object;
    :goto_1
    return-object v5

    .line 513
    .end local v1    # "mustWait":Z
    .end local v5    # "x":Ljava/lang/Object;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 516
    .end local v2    # "node":Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;
    :catchall_0
    move-exception v6

    invoke-virtual {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v6

    .line 523
    .restart local v1    # "mustWait":Z
    .restart local v2    # "node":Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;
    :catch_0
    move-exception v0

    .line 524
    .local v0, "ex":Ljava/lang/InterruptedException;
    invoke-direct {p0, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue;->unlinkCancelledConsumer(Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;)V

    .line 525
    throw v0

    .line 529
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_4
    invoke-virtual {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/SynchronousQueue$Node;->getItem()Ljava/lang/Object;

    move-result-object v4

    .line 530
    .restart local v4    # "x":Ljava/lang/Object;
    if-eqz v4, :cond_0

    move-object v5, v4

    .line 531
    .end local v4    # "x":Ljava/lang/Object;
    .restart local v5    # "x":Ljava/lang/Object;
    goto :goto_1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 777
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .param p1, "a"    # [Ljava/lang/Object;

    .prologue
    .line 789
    array-length v0, p1

    if-lez v0, :cond_0

    .line 790
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 791
    :cond_0
    return-object p1
.end method
