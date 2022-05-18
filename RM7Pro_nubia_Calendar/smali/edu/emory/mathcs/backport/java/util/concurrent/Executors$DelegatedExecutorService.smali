.class Ledu/emory/mathcs/backport/java/util/concurrent/Executors$DelegatedExecutorService;
.super Ledu/emory/mathcs/backport/java/util/concurrent/AbstractExecutorService;
.source "Executors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/Executors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DelegatedExecutorService"
.end annotation


# instance fields
.field private final e:Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "executor"    # Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorService;

    .prologue
    .line 590
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/AbstractExecutorService;-><init>()V

    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$DelegatedExecutorService;->e:Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public awaitTermination(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 598
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$DelegatedExecutorService;->e:Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3}, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorService;->awaitTermination(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 591
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$DelegatedExecutorService;->e:Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .param p1, "tasks"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 611
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$DelegatedExecutorService;->e:Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public invokeAll(Ljava/util/Collection;JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Ljava/util/List;
    .locals 2
    .param p1, "tasks"    # Ljava/util/Collection;
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 616
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$DelegatedExecutorService;->e:Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3, p4}, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 1
    .param p1, "tasks"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ledu/emory/mathcs/backport/java/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 620
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$DelegatedExecutorService;->e:Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorService;->invokeAny(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invokeAny(Ljava/util/Collection;JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2
    .param p1, "tasks"    # Ljava/util/Collection;
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ledu/emory/mathcs/backport/java/util/concurrent/ExecutionException;,
            Ledu/emory/mathcs/backport/java/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 625
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$DelegatedExecutorService;->e:Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3, p4}, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorService;->invokeAny(Ljava/util/Collection;JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isShutdown()Z
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$DelegatedExecutorService;->e:Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    return v0
.end method

.method public isTerminated()Z
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$DelegatedExecutorService;->e:Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    return v0
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$DelegatedExecutorService;->e:Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$DelegatedExecutorService;->e:Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ledu/emory/mathcs/backport/java/util/concurrent/Callable;)Ledu/emory/mathcs/backport/java/util/concurrent/Future;
    .locals 1
    .param p1, "task"    # Ledu/emory/mathcs/backport/java/util/concurrent/Callable;

    .prologue
    .line 604
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$DelegatedExecutorService;->e:Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorService;->submit(Ledu/emory/mathcs/backport/java/util/concurrent/Callable;)Ledu/emory/mathcs/backport/java/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;)Ledu/emory/mathcs/backport/java/util/concurrent/Future;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 601
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$DelegatedExecutorService;->e:Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ledu/emory/mathcs/backport/java/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/concurrent/Future;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "result"    # Ljava/lang/Object;

    .prologue
    .line 607
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$DelegatedExecutorService;->e:Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
