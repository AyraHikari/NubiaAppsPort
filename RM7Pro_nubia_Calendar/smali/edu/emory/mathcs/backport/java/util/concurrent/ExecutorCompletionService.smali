.class public Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorCompletionService;
.super Ljava/lang/Object;
.source "ExecutorCompletionService.java"

# interfaces
.implements Ledu/emory/mathcs/backport/java/util/concurrent/CompletionService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorCompletionService$QueueingFuture;
    }
.end annotation


# instance fields
.field private final aes:Ledu/emory/mathcs/backport/java/util/concurrent/AbstractExecutorService;

.field private final completionQueue:Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;

.field private final executor:Ledu/emory/mathcs/backport/java/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/Executor;)V
    .locals 1
    .param p1, "executor"    # Ledu/emory/mathcs/backport/java/util/concurrent/Executor;

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    if-nez p1, :cond_0

    .line 122
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 123
    :cond_0
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorCompletionService;->executor:Ledu/emory/mathcs/backport/java/util/concurrent/Executor;

    .line 124
    instance-of v0, p1, Ledu/emory/mathcs/backport/java/util/concurrent/AbstractExecutorService;

    if-eqz v0, :cond_1

    check-cast p1, Ledu/emory/mathcs/backport/java/util/concurrent/AbstractExecutorService;

    .end local p1    # "executor":Ledu/emory/mathcs/backport/java/util/concurrent/Executor;
    :goto_0
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorCompletionService;->aes:Ledu/emory/mathcs/backport/java/util/concurrent/AbstractExecutorService;

    .line 126
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorCompletionService;->completionQueue:Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;

    .line 127
    return-void

    .line 124
    .restart local p1    # "executor":Ledu/emory/mathcs/backport/java/util/concurrent/Executor;
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/Executor;Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;)V
    .locals 1
    .param p1, "executor"    # Ledu/emory/mathcs/backport/java/util/concurrent/Executor;
    .param p2, "completionQueue"    # Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 145
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 146
    :cond_1
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorCompletionService;->executor:Ledu/emory/mathcs/backport/java/util/concurrent/Executor;

    .line 147
    instance-of v0, p1, Ledu/emory/mathcs/backport/java/util/concurrent/AbstractExecutorService;

    if-eqz v0, :cond_2

    check-cast p1, Ledu/emory/mathcs/backport/java/util/concurrent/AbstractExecutorService;

    .end local p1    # "executor":Ledu/emory/mathcs/backport/java/util/concurrent/Executor;
    :goto_0
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorCompletionService;->aes:Ledu/emory/mathcs/backport/java/util/concurrent/AbstractExecutorService;

    .line 149
    iput-object p2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorCompletionService;->completionQueue:Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;

    .line 150
    return-void

    .line 147
    .restart local p1    # "executor":Ledu/emory/mathcs/backport/java/util/concurrent/Executor;
    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method static access$000(Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorCompletionService;)Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorCompletionService;

    .prologue
    .line 81
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorCompletionService;->completionQueue:Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method private newTaskFor(Ledu/emory/mathcs/backport/java/util/concurrent/Callable;)Ledu/emory/mathcs/backport/java/util/concurrent/RunnableFuture;
    .locals 1
    .param p1, "task"    # Ledu/emory/mathcs/backport/java/util/concurrent/Callable;

    .prologue
    .line 99
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorCompletionService;->aes:Ledu/emory/mathcs/backport/java/util/concurrent/AbstractExecutorService;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/Callable;)V

    .line 102
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorCompletionService;->aes:Ledu/emory/mathcs/backport/java/util/concurrent/AbstractExecutorService;

    invoke-virtual {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/AbstractExecutorService;->newTaskFor(Ledu/emory/mathcs/backport/java/util/concurrent/Callable;)Ledu/emory/mathcs/backport/java/util/concurrent/RunnableFuture;

    move-result-object v0

    goto :goto_0
.end method

.method private newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/concurrent/RunnableFuture;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "result"    # Ljava/lang/Object;

    .prologue
    .line 106
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorCompletionService;->aes:Ledu/emory/mathcs/backport/java/util/concurrent/AbstractExecutorService;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;

    invoke-direct {v0, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 109
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorCompletionService;->aes:Ledu/emory/mathcs/backport/java/util/concurrent/AbstractExecutorService;

    invoke-virtual {v0, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/AbstractExecutorService;->newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/concurrent/RunnableFuture;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public poll()Ledu/emory/mathcs/backport/java/util/concurrent/Future;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorCompletionService;->completionQueue:Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledu/emory/mathcs/backport/java/util/concurrent/Future;

    return-object v0
.end method

.method public poll(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Ledu/emory/mathcs/backport/java/util/concurrent/Future;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorCompletionService;->completionQueue:Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1, p2, p3}, Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;->poll(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledu/emory/mathcs/backport/java/util/concurrent/Future;

    return-object v0
.end method

.method public submit(Ledu/emory/mathcs/backport/java/util/concurrent/Callable;)Ledu/emory/mathcs/backport/java/util/concurrent/Future;
    .locals 3
    .param p1, "task"    # Ledu/emory/mathcs/backport/java/util/concurrent/Callable;

    .prologue
    .line 153
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 154
    :cond_0
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorCompletionService;->newTaskFor(Ledu/emory/mathcs/backport/java/util/concurrent/Callable;)Ledu/emory/mathcs/backport/java/util/concurrent/RunnableFuture;

    move-result-object v0

    .line 155
    .local v0, "f":Ledu/emory/mathcs/backport/java/util/concurrent/RunnableFuture;
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorCompletionService;->executor:Ledu/emory/mathcs/backport/java/util/concurrent/Executor;

    new-instance v2, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorCompletionService$QueueingFuture;

    invoke-direct {v2, p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorCompletionService$QueueingFuture;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorCompletionService;Ledu/emory/mathcs/backport/java/util/concurrent/RunnableFuture;)V

    invoke-interface {v1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 156
    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/concurrent/Future;
    .locals 3
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "result"    # Ljava/lang/Object;

    .prologue
    .line 160
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 161
    :cond_0
    invoke-direct {p0, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorCompletionService;->newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/concurrent/RunnableFuture;

    move-result-object v0

    .line 162
    .local v0, "f":Ledu/emory/mathcs/backport/java/util/concurrent/RunnableFuture;
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorCompletionService;->executor:Ledu/emory/mathcs/backport/java/util/concurrent/Executor;

    new-instance v2, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorCompletionService$QueueingFuture;

    invoke-direct {v2, p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorCompletionService$QueueingFuture;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorCompletionService;Ledu/emory/mathcs/backport/java/util/concurrent/RunnableFuture;)V

    invoke-interface {v1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 163
    return-object v0
.end method

.method public take()Ledu/emory/mathcs/backport/java/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorCompletionService;->completionQueue:Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledu/emory/mathcs/backport/java/util/concurrent/Future;

    return-object v0
.end method
