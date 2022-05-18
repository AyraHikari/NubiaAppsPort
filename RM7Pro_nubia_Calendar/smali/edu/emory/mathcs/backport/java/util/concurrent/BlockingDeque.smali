.class public interface abstract Ledu/emory/mathcs/backport/java/util/concurrent/BlockingDeque;
.super Ljava/lang/Object;
.source "BlockingDeque.java"

# interfaces
.implements Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;
.implements Ledu/emory/mathcs/backport/java/util/Deque;


# virtual methods
.method public abstract add(Ljava/lang/Object;)Z
.end method

.method public abstract addFirst(Ljava/lang/Object;)V
.end method

.method public abstract addLast(Ljava/lang/Object;)V
.end method

.method public abstract contains(Ljava/lang/Object;)Z
.end method

.method public abstract element()Ljava/lang/Object;
.end method

.method public abstract iterator()Ljava/util/Iterator;
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

.method public abstract offerFirst(Ljava/lang/Object;)Z
.end method

.method public abstract offerFirst(Ljava/lang/Object;JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract offerLast(Ljava/lang/Object;)Z
.end method

.method public abstract offerLast(Ljava/lang/Object;JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract peek()Ljava/lang/Object;
.end method

.method public abstract poll()Ljava/lang/Object;
.end method

.method public abstract poll(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract pollFirst(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract pollLast(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract push(Ljava/lang/Object;)V
.end method

.method public abstract put(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract putFirst(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract putLast(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract remove()Ljava/lang/Object;
.end method

.method public abstract remove(Ljava/lang/Object;)Z
.end method

.method public abstract removeFirstOccurrence(Ljava/lang/Object;)Z
.end method

.method public abstract removeLastOccurrence(Ljava/lang/Object;)Z
.end method

.method public abstract size()I
.end method

.method public abstract take()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract takeFirst()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract takeLast()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method
