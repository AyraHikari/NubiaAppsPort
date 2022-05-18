.class public interface abstract Ledu/emory/mathcs/backport/java/util/concurrent/CompletionService;
.super Ljava/lang/Object;
.source "CompletionService.java"


# virtual methods
.method public abstract poll()Ledu/emory/mathcs/backport/java/util/concurrent/Future;
.end method

.method public abstract poll(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Ledu/emory/mathcs/backport/java/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract submit(Ledu/emory/mathcs/backport/java/util/concurrent/Callable;)Ledu/emory/mathcs/backport/java/util/concurrent/Future;
.end method

.method public abstract submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/concurrent/Future;
.end method

.method public abstract take()Ledu/emory/mathcs/backport/java/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method
