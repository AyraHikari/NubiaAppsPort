.class public interface abstract Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorService;
.super Ljava/lang/Object;
.source "ExecutorService.java"

# interfaces
.implements Ledu/emory/mathcs/backport/java/util/concurrent/Executor;


# virtual methods
.method public abstract awaitTermination(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract invokeAll(Ljava/util/Collection;JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ledu/emory/mathcs/backport/java/util/concurrent/ExecutionException;
        }
    .end annotation
.end method

.method public abstract invokeAny(Ljava/util/Collection;JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ledu/emory/mathcs/backport/java/util/concurrent/ExecutionException;,
            Ledu/emory/mathcs/backport/java/util/concurrent/TimeoutException;
        }
    .end annotation
.end method

.method public abstract isShutdown()Z
.end method

.method public abstract isTerminated()Z
.end method

.method public abstract shutdown()V
.end method

.method public abstract shutdownNow()Ljava/util/List;
.end method

.method public abstract submit(Ledu/emory/mathcs/backport/java/util/concurrent/Callable;)Ledu/emory/mathcs/backport/java/util/concurrent/Future;
.end method

.method public abstract submit(Ljava/lang/Runnable;)Ledu/emory/mathcs/backport/java/util/concurrent/Future;
.end method

.method public abstract submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/concurrent/Future;
.end method
