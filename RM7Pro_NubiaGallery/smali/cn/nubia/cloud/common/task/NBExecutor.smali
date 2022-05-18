.class public Lcn/nubia/cloud/common/task/NBExecutor;
.super Ljava/lang/Object;
.source "NBExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/common/task/NBExecutor$InnerClass;
    }
.end annotation


# instance fields
.field private mCorePoolSize:I

.field private mKeepAliveTime:J

.field private mMaximumPoolSize:I

.field private mPool:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method private constructor <init>(IIJ)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcn/nubia/cloud/common/task/NBExecutor;->mCorePoolSize:I

    .line 21
    iput p2, p0, Lcn/nubia/cloud/common/task/NBExecutor;->mMaximumPoolSize:I

    .line 22
    iput-wide p3, p0, Lcn/nubia/cloud/common/task/NBExecutor;->mKeepAliveTime:J

    .line 23
    invoke-direct {p0}, Lcn/nubia/cloud/common/task/NBExecutor;->init()V

    return-void
.end method

.method synthetic constructor <init>(IIJLcn/nubia/cloud/common/task/NBExecutor;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/cloud/common/task/NBExecutor;-><init>(IIJ)V

    return-void
.end method

.method public static getDownloadPool()Lcn/nubia/cloud/common/task/NBExecutor;
    .locals 1

    .line 98
    sget-object v0, Lcn/nubia/cloud/common/task/NBExecutor$InnerClass;->sDownloadPool:Lcn/nubia/cloud/common/task/NBExecutor;

    return-object v0
.end method

.method public static getImageDownloadPool()Lcn/nubia/cloud/common/task/NBExecutor;
    .locals 1

    .line 110
    sget-object v0, Lcn/nubia/cloud/common/task/NBExecutor$InnerClass;->sImageDownloadPool:Lcn/nubia/cloud/common/task/NBExecutor;

    return-object v0
.end method

.method public static getLongPool()Lcn/nubia/cloud/common/task/NBExecutor;
    .locals 1

    .line 102
    sget-object v0, Lcn/nubia/cloud/common/task/NBExecutor$InnerClass;->sLongPool:Lcn/nubia/cloud/common/task/NBExecutor;

    return-object v0
.end method

.method public static getShortPool()Lcn/nubia/cloud/common/task/NBExecutor;
    .locals 1

    .line 106
    sget-object v0, Lcn/nubia/cloud/common/task/NBExecutor$InnerClass;->sShortPool:Lcn/nubia/cloud/common/task/NBExecutor;

    return-object v0
.end method

.method public static getSinglePool()Lcn/nubia/cloud/common/task/NBExecutor;
    .locals 1

    .line 114
    sget-object v0, Lcn/nubia/cloud/common/task/NBExecutor$InnerClass;->sSinglePool:Lcn/nubia/cloud/common/task/NBExecutor;

    return-object v0
.end method

.method private init()V
    .locals 10

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "init mCorePoolSize="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/nubia/cloud/common/task/NBExecutor;->mCorePoolSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "**mMaximumPoolSize="

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/cloud/common/task/NBExecutor;->mMaximumPoolSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "**mKeepAliveTime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 52
    iget-wide v1, p0, Lcn/nubia/cloud/common/task/NBExecutor;->mKeepAliveTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/cloud/common/LogUtil;->d(Ljava/lang/String;)V

    .line 61
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iget v2, p0, Lcn/nubia/cloud/common/task/NBExecutor;->mCorePoolSize:I

    iget v3, p0, Lcn/nubia/cloud/common/task/NBExecutor;->mMaximumPoolSize:I

    .line 62
    iget-wide v4, p0, Lcn/nubia/cloud/common/task/NBExecutor;->mKeepAliveTime:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 63
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 64
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 61
    iput-object v0, p0, Lcn/nubia/cloud/common/task/NBExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method


# virtual methods
.method public declared-synchronized cancel(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Lcn/nubia/cloud/common/task/NBExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/cloud/common/task/NBExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    :cond_0
    iget-object v0, p0, Lcn/nubia/cloud/common/task/NBExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized contains(Ljava/lang/Runnable;)Z
    .locals 1

    monitor-enter p0

    .line 76
    :try_start_0
    iget-object v0, p0, Lcn/nubia/cloud/common/task/NBExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/cloud/common/task/NBExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    :cond_0
    iget-object v0, p0, Lcn/nubia/cloud/common/task/NBExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 79
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "execute Runnable is null"

    .line 35
    invoke-static {p1}, Lcn/nubia/cloud/common/LogUtil;->e(Ljava/lang/String;)V

    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcn/nubia/cloud/common/task/NBExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/cloud/common/task/NBExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/cloud/common/task/NBExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminating()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "execute mPool is null or is shutdown"

    .line 41
    invoke-static {v0}, Lcn/nubia/cloud/common/LogUtil;->e(Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Lcn/nubia/cloud/common/task/NBExecutor;->init()V

    .line 45
    :cond_2
    iget-object v0, p0, Lcn/nubia/cloud/common/task/NBExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    .line 27
    iget-object v0, p0, Lcn/nubia/cloud/common/task/NBExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public declared-synchronized shutdown()V
    .locals 1

    monitor-enter p0

    .line 92
    :try_start_0
    iget-object v0, p0, Lcn/nubia/cloud/common/task/NBExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/cloud/common/task/NBExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    iget-object v0, p0, Lcn/nubia/cloud/common/task/NBExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stop()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcn/nubia/cloud/common/task/NBExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/cloud/common/task/NBExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    :cond_0
    iget-object v0, p0, Lcn/nubia/cloud/common/task/NBExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    :cond_1
    return-void
.end method
