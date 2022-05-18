.class public Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;
.super Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;
.source "ScheduledThreadPoolExecutor.java"

# interfaces
.implements Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledExecutorService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;,
        Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;
    }
.end annotation


# static fields
.field private static final sequencer:Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLong;


# instance fields
.field private volatile continueExistingPeriodicTasksAfterShutdown:Z

.field private volatile executeExistingDelayedTasksAfterShutdown:Z

.field private volatile removeOnCancel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 142
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->sequencer:Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 8
    .param p1, "corePoolSize"    # I

    .prologue
    .line 395
    const v3, 0x7fffffff

    const-wide/16 v4, 0x0

    sget-object v6, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    new-instance v7, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;

    invoke-direct {v7}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;-><init>()V

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v1 .. v7}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;-><init>(IIJLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;)V

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->executeExistingDelayedTasksAfterShutdown:Z

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->removeOnCancel:Z

    .line 397
    return-void
.end method

.method public constructor <init>(ILedu/emory/mathcs/backport/java/util/concurrent/RejectedExecutionHandler;)V
    .locals 9
    .param p1, "corePoolSize"    # I
    .param p2, "handler"    # Ledu/emory/mathcs/backport/java/util/concurrent/RejectedExecutionHandler;

    .prologue
    .line 429
    const v3, 0x7fffffff

    const-wide/16 v4, 0x0

    sget-object v6, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    new-instance v7, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;

    invoke-direct {v7}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;-><init>()V

    move-object v1, p0

    move v2, p1

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;-><init>(IIJLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;Ledu/emory/mathcs/backport/java/util/concurrent/RejectedExecutionHandler;)V

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->executeExistingDelayedTasksAfterShutdown:Z

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->removeOnCancel:Z

    .line 431
    return-void
.end method

.method public constructor <init>(ILedu/emory/mathcs/backport/java/util/concurrent/ThreadFactory;)V
    .locals 9
    .param p1, "corePoolSize"    # I
    .param p2, "threadFactory"    # Ledu/emory/mathcs/backport/java/util/concurrent/ThreadFactory;

    .prologue
    .line 412
    const v3, 0x7fffffff

    const-wide/16 v4, 0x0

    sget-object v6, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    new-instance v7, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;

    invoke-direct {v7}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;-><init>()V

    move-object v1, p0

    move v2, p1

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;-><init>(IIJLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;Ledu/emory/mathcs/backport/java/util/concurrent/ThreadFactory;)V

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->executeExistingDelayedTasksAfterShutdown:Z

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->removeOnCancel:Z

    .line 414
    return-void
.end method

.method public constructor <init>(ILedu/emory/mathcs/backport/java/util/concurrent/ThreadFactory;Ledu/emory/mathcs/backport/java/util/concurrent/RejectedExecutionHandler;)V
    .locals 10
    .param p1, "corePoolSize"    # I
    .param p2, "threadFactory"    # Ledu/emory/mathcs/backport/java/util/concurrent/ThreadFactory;
    .param p3, "handler"    # Ledu/emory/mathcs/backport/java/util/concurrent/RejectedExecutionHandler;

    .prologue
    .line 450
    const v3, 0x7fffffff

    const-wide/16 v4, 0x0

    sget-object v6, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    new-instance v7, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;

    invoke-direct {v7}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;-><init>()V

    move-object v1, p0

    move v2, p1

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v1 .. v9}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;-><init>(IIJLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;Ledu/emory/mathcs/backport/java/util/concurrent/ThreadFactory;Ledu/emory/mathcs/backport/java/util/concurrent/RejectedExecutionHandler;)V

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->executeExistingDelayedTasksAfterShutdown:Z

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->removeOnCancel:Z

    .line 452
    return-void
.end method

.method static access$000()Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLong;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->sequencer:Ledu/emory/mathcs/backport/java/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static access$100(Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;)Z
    .locals 1
    .param p0, "x0"    # Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;

    .prologue
    .line 82
    iget-boolean v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->removeOnCancel:Z

    return v0
.end method

.method private delayedExecute(Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;)V
    .locals 1
    .param p1, "task"    # Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    .prologue
    .line 294
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->reject(Ljava/lang/Runnable;)V

    .line 305
    :goto_0
    return-void

    .line 297
    :cond_0
    invoke-super {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->getQueue()Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 298
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;->isPeriodic()Z

    move-result v0

    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->canRunInCurrentRunState(Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;->cancel(Z)Z

    goto :goto_0

    .line 303
    :cond_1
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->prestartCoreThread()Z

    goto :goto_0
.end method


# virtual methods
.method canRunInCurrentRunState(Z)Z
    .locals 1
    .param p1, "periodic"    # Z

    .prologue
    .line 277
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->continueExistingPeriodicTasksAfterShutdown:Z

    :goto_0
    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->isRunningOrShutdown(Z)Z

    move-result v0

    return v0

    :cond_0
    iget-boolean v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->executeExistingDelayedTasksAfterShutdown:Z

    goto :goto_0
.end method

.method protected decorateTask(Ledu/emory/mathcs/backport/java/util/concurrent/Callable;Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;)Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;
    .locals 0
    .param p1, "callable"    # Ledu/emory/mathcs/backport/java/util/concurrent/Callable;
    .param p2, "task"    # Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    .prologue
    .line 383
    return-object p2
.end method

.method protected decorateTask(Ljava/lang/Runnable;Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;)Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "task"    # Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    .prologue
    .line 367
    return-object p2
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 557
    const-wide/16 v0, 0x0

    sget-object v2, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0, v1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledFuture;

    .line 558
    return-void
.end method

.method public getContinueExistingPeriodicTasksAfterShutdownPolicy()Z
    .locals 1

    .prologue
    .line 616
    iget-boolean v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->continueExistingPeriodicTasksAfterShutdown:Z

    return v0
.end method

.method public getExecuteExistingDelayedTasksAfterShutdownPolicy()Z
    .locals 1

    .prologue
    .line 648
    iget-boolean v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->executeExistingDelayedTasksAfterShutdown:Z

    return v0
.end method

.method public getQueue()Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;
    .locals 1

    .prologue
    .line 726
    invoke-super {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->getQueue()Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;

    move-result-object v0

    return-object v0
.end method

.method public getRemoveOnCancelPolicy()Z
    .locals 1

    .prologue
    .line 674
    iget-boolean v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->removeOnCancel:Z

    return v0
.end method

.method final now()J
    .locals 2

    .prologue
    .line 148
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method onShutdown()V
    .locals 8

    .prologue
    .line 328
    invoke-super {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->getQueue()Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;

    move-result-object v5

    .line 329
    .local v5, "q":Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->getExecuteExistingDelayedTasksAfterShutdownPolicy()Z

    move-result v3

    .line 331
    .local v3, "keepDelayed":Z
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->getContinueExistingPeriodicTasksAfterShutdownPolicy()Z

    move-result v4

    .line 333
    .local v4, "keepPeriodic":Z
    if-nez v3, :cond_1

    if-nez v4, :cond_1

    .line 334
    invoke-interface {v5}, Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;->clear()V

    .line 351
    :cond_0
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->tryTerminate()V

    .line 352
    return-void

    .line 337
    :cond_1
    invoke-interface {v5}, Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 338
    .local v1, "entries":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v7, v1

    if-ge v2, v7, :cond_0

    .line 339
    aget-object v0, v1, v2

    .line 340
    .local v0, "e":Ljava/lang/Object;
    instance-of v7, v0, Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    if-eqz v7, :cond_3

    move-object v6, v0

    .line 341
    check-cast v6, Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    .line 343
    .local v6, "t":Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;
    invoke-interface {v6}, Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;->isPeriodic()Z

    move-result v7

    if-eqz v7, :cond_4

    if-nez v4, :cond_5

    .line 345
    :cond_2
    :goto_1
    invoke-interface {v5, v6}, Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 346
    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;->cancel(Z)Z

    .line 338
    .end local v6    # "t":Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 343
    .restart local v6    # "t":Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;
    :cond_4
    if-eqz v3, :cond_2

    :cond_5
    invoke-interface {v6}, Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1
.end method

.method reExecutePeriodic(Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;)V
    .locals 2
    .param p1, "task"    # Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    .prologue
    const/4 v1, 0x1

    .line 314
    invoke-virtual {p0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->canRunInCurrentRunState(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    invoke-super {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->getQueue()Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 316
    invoke-virtual {p0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->canRunInCurrentRunState(Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;->cancel(Z)Z

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->prestartCoreThread()Z

    goto :goto_0
.end method

.method public schedule(Ledu/emory/mathcs/backport/java/util/concurrent/Callable;JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledFuture;
    .locals 8
    .param p1, "callable"    # Ledu/emory/mathcs/backport/java/util/concurrent/Callable;
    .param p2, "delay"    # J
    .param p4, "unit"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    .prologue
    .line 478
    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    .line 479
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 480
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v1, p2, v4

    if-gez v1, :cond_2

    const-wide/16 p2, 0x0

    .line 481
    :cond_2
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->now()J

    move-result-wide v4

    invoke-virtual {p4, p2, p3}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    add-long v2, v4, v6

    .line 482
    .local v2, "triggerTime":J
    new-instance v1, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    invoke-direct {v1, p0, p1, v2, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;Ledu/emory/mathcs/backport/java/util/concurrent/Callable;J)V

    invoke-virtual {p0, p1, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->decorateTask(Ledu/emory/mathcs/backport/java/util/concurrent/Callable;Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;)Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    move-result-object v0

    .line 484
    .local v0, "t":Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;
    invoke-direct {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->delayedExecute(Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;)V

    .line 485
    return-object v0
.end method

.method public schedule(Ljava/lang/Runnable;JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledFuture;
    .locals 8
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J
    .param p4, "unit"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    .prologue
    .line 461
    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    .line 462
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 463
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_2

    const-wide/16 p2, 0x0

    .line 464
    :cond_2
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->now()J

    move-result-wide v0

    invoke-virtual {p4, p2, p3}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    add-long v4, v0, v2

    .line 465
    .local v4, "triggerTime":J
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Object;J)V

    invoke-virtual {p0, p1, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->decorateTask(Ljava/lang/Runnable;Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;)Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    move-result-object v6

    .line 467
    .local v6, "t":Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;
    invoke-direct {p0, v6}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->delayedExecute(Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;)V

    .line 468
    return-object v6
.end method

.method public scheduleAtFixedRate(Ljava/lang/Runnable;JJLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledFuture;
    .locals 14
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "initialDelay"    # J
    .param p4, "period"    # J
    .param p6, "unit"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    .prologue
    const-wide/16 v6, 0x0

    .line 497
    if-eqz p1, :cond_0

    if-nez p6, :cond_1

    .line 498
    :cond_0
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 499
    :cond_1
    cmp-long v4, p4, v6

    if-gtz v4, :cond_2

    .line 500
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 501
    :cond_2
    cmp-long v4, p2, v6

    if-gez v4, :cond_3

    const-wide/16 p2, 0x0

    .line 502
    :cond_3
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->now()J

    move-result-wide v4

    move-object/from16 v0, p6

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    add-long v8, v4, v6

    .line 503
    .local v8, "triggerTime":J
    new-instance v4, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    const/4 v7, 0x0

    move-object/from16 v0, p6

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v10

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v4 .. v11}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v4}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->decorateTask(Ljava/lang/Runnable;Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;)Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    move-result-object v12

    .line 508
    .local v12, "t":Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;
    invoke-direct {p0, v12}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->delayedExecute(Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;)V

    .line 509
    return-object v12
.end method

.method public scheduleWithFixedDelay(Ljava/lang/Runnable;JJLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledFuture;
    .locals 12
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "initialDelay"    # J
    .param p4, "delay"    # J
    .param p6, "unit"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    .prologue
    const-wide/16 v4, 0x0

    .line 521
    if-eqz p1, :cond_0

    if-nez p6, :cond_1

    .line 522
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 523
    :cond_1
    cmp-long v2, p4, v4

    if-gtz v2, :cond_2

    .line 524
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 525
    :cond_2
    cmp-long v2, p2, v4

    if-gez v2, :cond_3

    const-wide/16 p2, 0x0

    .line 526
    :cond_3
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->now()J

    move-result-wide v2

    move-object/from16 v0, p6

    invoke-virtual {v0, p2, p3}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    add-long v6, v2, v4

    .line 527
    .local v6, "triggerTime":J
    new-instance v2, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    const/4 v5, 0x0

    move-wide/from16 v0, p4

    neg-long v8, v0

    move-object/from16 v0, p6

    invoke-virtual {v0, v8, v9}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v9}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->decorateTask(Ljava/lang/Runnable;Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;)Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;

    move-result-object v10

    .line 532
    .local v10, "t":Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;
    invoke-direct {p0, v10}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->delayedExecute(Ledu/emory/mathcs/backport/java/util/concurrent/RunnableScheduledFuture;)V

    .line 533
    return-object v10
.end method

.method public setContinueExistingPeriodicTasksAfterShutdownPolicy(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 599
    iput-boolean p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->continueExistingPeriodicTasksAfterShutdown:Z

    .line 600
    if-nez p1, :cond_0

    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->onShutdown()V

    .line 602
    :cond_0
    return-void
.end method

.method public setExecuteExistingDelayedTasksAfterShutdownPolicy(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 631
    iput-boolean p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->executeExistingDelayedTasksAfterShutdown:Z

    .line 632
    if-nez p1, :cond_0

    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->onShutdown()V

    .line 634
    :cond_0
    return-void
.end method

.method public setRemoveOnCancelPolicy(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 661
    iput-boolean p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->removeOnCancel:Z

    .line 662
    return-void
.end method

.method public shutdown()V
    .locals 0

    .prologue
    .line 690
    invoke-super {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 691
    return-void
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1

    .prologue
    .line 711
    invoke-super {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ledu/emory/mathcs/backport/java/util/concurrent/Callable;)Ledu/emory/mathcs/backport/java/util/concurrent/Future;
    .locals 3
    .param p1, "task"    # Ledu/emory/mathcs/backport/java/util/concurrent/Callable;

    .prologue
    .line 584
    const-wide/16 v0, 0x0

    sget-object v2, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0, v1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ledu/emory/mathcs/backport/java/util/concurrent/Callable;JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;)Ledu/emory/mathcs/backport/java/util/concurrent/Future;
    .locals 3
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 567
    const-wide/16 v0, 0x0

    sget-object v2, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0, v1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/concurrent/Future;
    .locals 4
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "result"    # Ljava/lang/Object;

    .prologue
    .line 575
    invoke-static {p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/Executors;->callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/concurrent/Callable;

    move-result-object v0

    const-wide/16 v2, 0x0

    sget-object v1, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v2, v3, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ledu/emory/mathcs/backport/java/util/concurrent/Callable;JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Ledu/emory/mathcs/backport/java/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method
