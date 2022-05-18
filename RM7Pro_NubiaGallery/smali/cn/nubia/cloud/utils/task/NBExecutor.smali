.class public Lcn/nubia/cloud/utils/task/NBExecutor;
.super Ljava/lang/Object;
.source "NBExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/utils/task/NBExecutor$InnerClass;
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
    iput p1, p0, Lcn/nubia/cloud/utils/task/NBExecutor;->mCorePoolSize:I

    .line 21
    iput p2, p0, Lcn/nubia/cloud/utils/task/NBExecutor;->mMaximumPoolSize:I

    .line 22
    iput-wide p3, p0, Lcn/nubia/cloud/utils/task/NBExecutor;->mKeepAliveTime:J

    return-void
.end method

.method synthetic constructor <init>(IIJLcn/nubia/cloud/utils/task/NBExecutor;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/cloud/utils/task/NBExecutor;-><init>(IIJ)V

    return-void
.end method

.method public static getDownloadPool()Lcn/nubia/cloud/utils/task/NBExecutor;
    .locals 1

    .line 80
    sget-object v0, Lcn/nubia/cloud/utils/task/NBExecutor$InnerClass;->sDownloadPool:Lcn/nubia/cloud/utils/task/NBExecutor;

    return-object v0
.end method

.method public static getImageDownloadPool()Lcn/nubia/cloud/utils/task/NBExecutor;
    .locals 1

    .line 92
    sget-object v0, Lcn/nubia/cloud/utils/task/NBExecutor$InnerClass;->sImageDownloadPool:Lcn/nubia/cloud/utils/task/NBExecutor;

    return-object v0
.end method

.method public static getLongPool()Lcn/nubia/cloud/utils/task/NBExecutor;
    .locals 1

    .line 84
    sget-object v0, Lcn/nubia/cloud/utils/task/NBExecutor$InnerClass;->sLongPool:Lcn/nubia/cloud/utils/task/NBExecutor;

    return-object v0
.end method

.method public static getShortPool()Lcn/nubia/cloud/utils/task/NBExecutor;
    .locals 1

    .line 88
    sget-object v0, Lcn/nubia/cloud/utils/task/NBExecutor$InnerClass;->sShortPool:Lcn/nubia/cloud/utils/task/NBExecutor;

    return-object v0
.end method

.method public static getSinglePool()Lcn/nubia/cloud/utils/task/NBExecutor;
    .locals 1

    .line 96
    sget-object v0, Lcn/nubia/cloud/utils/task/NBExecutor$InnerClass;->sSinglePool:Lcn/nubia/cloud/utils/task/NBExecutor;

    return-object v0
.end method

.method private init()V
    .locals 10

    .line 50
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    iget v1, p0, Lcn/nubia/cloud/utils/task/NBExecutor;->mCorePoolSize:I

    iget v2, p0, Lcn/nubia/cloud/utils/task/NBExecutor;->mMaximumPoolSize:I

    .line 51
    iget-wide v3, p0, Lcn/nubia/cloud/utils/task/NBExecutor;->mKeepAliveTime:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 52
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 53
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 50
    iput-object v9, p0, Lcn/nubia/cloud/utils/task/NBExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static newSinglePool()Lcn/nubia/cloud/utils/task/NBExecutor;
    .locals 4

    .line 100
    new-instance v0, Lcn/nubia/cloud/utils/task/NBExecutor;

    const/4 v1, 0x1

    const-wide/16 v2, 0x5

    invoke-direct {v0, v1, v1, v2, v3}, Lcn/nubia/cloud/utils/task/NBExecutor;-><init>(IIJ)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized cancel(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Lcn/nubia/cloud/utils/task/NBExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/cloud/utils/task/NBExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    :cond_0
    iget-object v0, p0, Lcn/nubia/cloud/utils/task/NBExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
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

    .line 65
    :try_start_0
    iget-object v0, p0, Lcn/nubia/cloud/utils/task/NBExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/cloud/utils/task/NBExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    :cond_0
    iget-object v0, p0, Lcn/nubia/cloud/utils/task/NBExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

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

    .line 68
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    if-nez p1, :cond_1

    .line 29
    sget-boolean p1, Lcn/nubia/cloud/utils/LogUtil;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "execute Runnable is null"

    .line 30
    invoke-static {p1}, Lcn/nubia/cloud/utils/LogUtil;->e(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 34
    :cond_1
    iget-object v0, p0, Lcn/nubia/cloud/utils/task/NBExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_2

    .line 35
    iget-object v0, p0, Lcn/nubia/cloud/utils/task/NBExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_2

    .line 36
    iget-object v0, p0, Lcn/nubia/cloud/utils/task/NBExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminating()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 37
    :cond_2
    invoke-direct {p0}, Lcn/nubia/cloud/utils/task/NBExecutor;->init()V

    .line 39
    :cond_3
    iget-object v0, p0, Lcn/nubia/cloud/utils/task/NBExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized shutdown()V
    .locals 1

    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcn/nubia/cloud/utils/task/NBExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/cloud/utils/task/NBExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    :cond_0
    iget-object v0, p0, Lcn/nubia/cloud/utils/task/NBExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
