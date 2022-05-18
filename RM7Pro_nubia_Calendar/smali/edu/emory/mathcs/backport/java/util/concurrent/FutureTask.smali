.class public Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;
.super Ljava/lang/Object;
.source "FutureTask.java"

# interfaces
.implements Ledu/emory/mathcs/backport/java/util/concurrent/RunnableFuture;


# static fields
.field private static final CANCELLED:I = 0x4

.field private static final RAN:I = 0x2

.field private static final READY:I = 0x0

.field private static final RUNNING:I = 0x1


# instance fields
.field private final callable:Ledu/emory/mathcs/backport/java/util/concurrent/Callable;

.field private exception:Ljava/lang/Throwable;

.field private result:Ljava/lang/Object;

.field private volatile runner:Ljava/lang/Thread;

.field private state:I


# direct methods
.method public constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/Callable;)V
    .locals 1
    .param p1, "callable"    # Ledu/emory/mathcs/backport/java/util/concurrent/Callable;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    if-nez p1, :cond_0

    .line 70
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 71
    :cond_0
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;->callable:Ledu/emory/mathcs/backport/java/util/concurrent/Callable;

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "result"    # Ljava/lang/Object;

    .prologue
    .line 87
    invoke-static {p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/Executors;->callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/concurrent/Callable;

    move-result-object v0

    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/Callable;)V

    .line 88
    return-void
.end method

.method private getResult()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ledu/emory/mathcs/backport/java/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 297
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 298
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/CancellationException;

    invoke-direct {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/CancellationException;-><init>()V

    throw v0

    .line 300
    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 301
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutionException;

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;->exception:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 303
    :cond_1
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;->result:Ljava/lang/Object;

    return-object v0
.end method

.method private ranOrCancelled()Z
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;->state:I

    and-int/lit8 v0, v0, 0x6

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCompleted(Ljava/lang/Object;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 228
    monitor-enter p0

    .line 229
    :try_start_0
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;->ranOrCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p0

    .line 241
    :goto_0
    return-void

    .line 230
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;->state:I

    .line 231
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;->result:Ljava/lang/Object;

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;->runner:Ljava/lang/Thread;

    .line 233
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 234
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;->done()V

    goto :goto_0

    .line 234
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setFailed(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 248
    monitor-enter p0

    .line 249
    :try_start_0
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;->ranOrCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p0

    .line 261
    :goto_0
    return-void

    .line 250
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;->state:I

    .line 251
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;->exception:Ljava/lang/Throwable;

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;->runner:Ljava/lang/Thread;

    .line 253
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 254
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;->done()V

    goto :goto_0

    .line 254
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private waitFor()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 268
    :goto_0
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 271
    :cond_0
    return-void
.end method

.method private waitFor(J)V
    .locals 7
    .param p1, "nanos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ledu/emory/mathcs/backport/java/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 279
    cmp-long v2, p1, v4

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 280
    :cond_0
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;->isDone()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 284
    :cond_1
    return-void

    .line 281
    :cond_2
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J

    move-result-wide v2

    add-long v0, v2, p1

    .line 282
    .local v0, "deadline":J
    :goto_0
    cmp-long v2, p1, v4

    if-lez v2, :cond_3

    .line 283
    sget-object v2, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    invoke-virtual {v2, p0, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->timedWait(Ljava/lang/Object;J)V

    .line 284
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;->isDone()Z

    move-result v2

    if-nez v2, :cond_1

    .line 285
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J

    move-result-wide v2

    sub-long p1, v0, v2

    goto :goto_0

    .line 287
    :cond_3
    new-instance v2, Ledu/emory/mathcs/backport/java/util/concurrent/TimeoutException;

    invoke-direct {v2}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeoutException;-><init>()V

    throw v2
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 2
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 99
    monitor-enter p0

    .line 100
    :try_start_0
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;->ranOrCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    monitor-exit p0

    .line 110
    :goto_0
    return v1

    .line 101
    :cond_0
    const/4 v1, 0x4

    iput v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;->state:I

    .line 102
    if-eqz p1, :cond_1

    .line 103
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;->runner:Ljava/lang/Thread;

    .line 104
    .local v0, "r":Ljava/lang/Thread;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 106
    .end local v0    # "r":Ljava/lang/Thread;
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;->runner:Ljava/lang/Thread;

    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 108
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;->done()V

    .line 110
    const/4 v1, 0x1

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected done()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public declared-synchronized get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ledu/emory/mathcs/backport/java/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;->waitFor()V

    .line 120
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;->getResult()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ledu/emory/mathcs/backport/java/util/concurrent/ExecutionException;,
            Ledu/emory/mathcs/backport/java/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    invoke-virtual {p3, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;->waitFor(J)V

    .line 130
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;->getResult()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isCancelled()Z
    .locals 2

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;->ranOrCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;->runner:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 172
    monitor-enter p0

    .line 173
    :try_start_0
    iget v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;->state:I

    if-eqz v1, :cond_0

    monitor-exit p0

    .line 183
    :goto_0
    return-void

    .line 174
    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;->state:I

    .line 175
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;->runner:Ljava/lang/Thread;

    .line 176
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :try_start_1
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;->callable:Ledu/emory/mathcs/backport/java/util/concurrent/Callable;

    invoke-interface {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;->set(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 176
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected runAndReset()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 194
    monitor-enter p0

    .line 195
    :try_start_0
    iget v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;->state:I

    if-eqz v3, :cond_0

    monitor-exit p0

    .line 214
    :goto_0
    return v1

    .line 196
    :cond_0
    const/4 v3, 0x1

    iput v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;->state:I

    .line 197
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;->runner:Ljava/lang/Thread;

    .line 198
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :try_start_1
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;->callable:Ledu/emory/mathcs/backport/java/util/concurrent/Callable;

    invoke-interface {v3}, Ledu/emory/mathcs/backport/java/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 201
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 202
    const/4 v3, 0x0

    :try_start_2
    iput-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;->runner:Ljava/lang/Thread;

    .line 203
    iget v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;->state:I

    if-ne v3, v2, :cond_1

    .line 204
    const/4 v3, 0x0

    iput v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;->state:I

    .line 205
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v1, v2

    goto :goto_0

    .line 198
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 208
    :cond_1
    :try_start_4
    monitor-exit p0

    goto :goto_0

    .line 210
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected set(Ljava/lang/Object;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/Object;

    .prologue
    .line 152
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;->setCompleted(Ljava/lang/Object;)V

    .line 153
    return-void
.end method

.method protected setException(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 164
    invoke-direct {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;->setFailed(Ljava/lang/Throwable;)V

    .line 165
    return-void
.end method
