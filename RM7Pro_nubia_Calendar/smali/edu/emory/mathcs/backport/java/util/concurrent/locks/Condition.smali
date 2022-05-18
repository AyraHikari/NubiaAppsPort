.class public interface abstract Ledu/emory/mathcs/backport/java/util/concurrent/locks/Condition;
.super Ljava/lang/Object;
.source "Condition.java"


# virtual methods
.method public abstract await()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract await(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract awaitUninterruptibly()V
.end method

.method public abstract awaitUntil(Ljava/util/Date;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract signal()V
.end method

.method public abstract signalAll()V
.end method
