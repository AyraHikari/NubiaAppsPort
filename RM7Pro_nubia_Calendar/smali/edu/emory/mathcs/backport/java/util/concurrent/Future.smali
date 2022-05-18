.class public interface abstract Ledu/emory/mathcs/backport/java/util/concurrent/Future;
.super Ljava/lang/Object;
.source "Future.java"


# virtual methods
.method public abstract cancel(Z)Z
.end method

.method public abstract get()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ledu/emory/mathcs/backport/java/util/concurrent/ExecutionException;
        }
    .end annotation
.end method

.method public abstract get(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ledu/emory/mathcs/backport/java/util/concurrent/ExecutionException;,
            Ledu/emory/mathcs/backport/java/util/concurrent/TimeoutException;
        }
    .end annotation
.end method

.method public abstract isCancelled()Z
.end method

.method public abstract isDone()Z
.end method
