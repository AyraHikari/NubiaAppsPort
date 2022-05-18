.class public Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;
.super Ljava/lang/Object;
.source "ThreadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThreadPoolProxy"
.end annotation


# instance fields
.field private mCorePoolSize:I

.field private mKeepAliveTime:J

.field private mMaximumPoolSize:I

.field private mPool:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method private constructor <init>(IIJ)V
    .locals 1
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput p1, p0, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;->mCorePoolSize:I

    .line 115
    iput p2, p0, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;->mMaximumPoolSize:I

    .line 116
    iput-wide p3, p0, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;->mKeepAliveTime:J

    .line 117
    return-void
.end method

.method synthetic constructor <init>(IIJLcom/huanju/ssp/base/core/frame/schedule/ThreadManager$1;)V
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # J
    .param p5, "x3"    # Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$1;

    .prologue
    .line 107
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;-><init>(IIJ)V

    return-void
.end method


# virtual methods
.method public declared-synchronized cancel(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "run"    # Ljava/lang/Runnable;

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminating()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized contains(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "run"    # Ljava/lang/Runnable;

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminating()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized execute(Ljava/lang/Runnable;)V
    .locals 10
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 123
    monitor-enter p0

    if-nez p1, :cond_0

    .line 132
    :goto_0
    monitor-exit p0

    return-void

    .line 126
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    :cond_1
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    iget v2, p0, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;->mCorePoolSize:I

    iget v3, p0, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;->mMaximumPoolSize:I

    iget-wide v4, p0, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;->mKeepAliveTime:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 129
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p0, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized shutdown()V
    .locals 1

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :cond_1
    monitor-exit p0

    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized stop()V
    .locals 1

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :cond_1
    monitor-exit p0

    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
