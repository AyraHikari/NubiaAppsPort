.class public interface abstract Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;
.super Ljava/lang/Object;
.source "BlockingQueue.java"

# interfaces
.implements Ledu/emory/mathcs/backport/java/util/Queue;


# virtual methods
.method public abstract add(Ljava/lang/Object;)Z
.end method

.method public abstract contains(Ljava/lang/Object;)Z
.end method

.method public abstract drainTo(Ljava/util/Collection;)I
.end method

.method public abstract drainTo(Ljava/util/Collection;I)I
.end method

.method public abstract offer(Ljava/lang/Object;)Z
.end method

.method public abstract offer(Ljava/lang/Object;JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract poll(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract put(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract remainingCapacity()I
.end method

.method public abstract remove(Ljava/lang/Object;)Z
.end method

.method public abstract take()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method
