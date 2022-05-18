.class public Lcn/nubia/cloud/utils/task/NBExecutor;
.super Ljava/lang/Object;
.source "NBExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/utils/task/NBExecutor$1;,
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
    .locals 1
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcn/nubia/cloud/utils/task/NBExecutor;->mCorePoolSize:I

    .line 21
    iput p2, p0, Lcn/nubia/cloud/utils/task/NBExecutor;->mMaximumPoolSize:I

    .line 22
    iput-wide p3, p0, Lcn/nubia/cloud/utils/task/NBExecutor;->mKeepAliveTime:J

    .line 23
    return-void
.end method

.method synthetic constructor <init>(IIJLcn/nubia/cloud/utils/task/NBExecutor$1;)V
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # J
    .param p5, "x3"    # Lcn/nubia/cloud/utils/task/NBExecutor$1;

    .prologue
    .line 12
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/cloud/utils/task/NBExecutor;-><init>(IIJ)V

    return-void
.end method

.method public static getDownloadPool()Lcn/nubia/cloud/utils/task/NBExecutor;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcn/nubia/cloud/utils/task/NBExecutor$InnerClass;->sDownloadPool:Lcn/nubia/cloud/utils/task/NBExecutor;

    return-object v0
.end method

.method public static getImageDownloadPool()Lcn/nubia/cloud/utils/task/NBExecutor;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcn/nubia/cloud/utils/task/NBExecutor$InnerClass;->sImageDownloadPool:Lcn/nubia/cloud/utils/task/NBExecutor;

    return-object v0
.end method

.method public static getLongPool()Lcn/nubia/cloud/utils/task/NBExecutor;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcn/nubia/cloud/utils/task/NBExecutor$InnerClass;->sLongPool:Lcn/nubia/cloud/utils/task/NBExecutor;

    return-object v0
.end method

.method public static getShortPool()Lcn/nubia/cloud/utils/task/NBExecutor;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcn/nubia/cloud/utils/task/NBExecutor$InnerClass;->sShortPool:Lcn/nubia/cloud/utils/task/NBExecutor;

    return-object v0
.end method

.method public static getSinglePool()Lcn/nubia/cloud/utils/task/NBExecutor;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcn/nubia/cloud/utils/task/NBExecutor$InnerClass;->sSinglePool:Lcn/nubia/cloud/utils/task/NBExecutor;

    return-object v0
.end method

.method private init()V
    .locals 10

    .prologue
    .line 50
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    iget v2, p0, Lcn/nubia/cloud/utils/task/NBExecutor;->mCorePoolSize:I

    iget v3, p0, Lcn/nubia/cloud/utils/task/NBExecutor;->mMaximumPoolSize:I

    iget-wide v4, p0, Lcn/nubia/cloud/utils/task/NBExecutor;->mKeepAliveTime:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p0, Lcn/nubia/cloud/utils/task/NBExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 54
    return-void
.end method

.method public static newSinglePool()Lcn/nubia/cloud/utils/task/NBExecutor;
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 100
    new-instance v0, Lcn/nubia/cloud/utils/task/NBExecutor;

    const-wide/16 v2, 0x5

    invoke-direct {v0, v1, v1, v2, v3}, Lcn/nubia/cloud/utils/task/NBExecutor;-><init>(IIJ)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized cancel(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "run"    # Ljava/lang/Runnable;

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/nubia/cloud/utils/task/NBExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/cloud/utils/task/NBExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

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

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized contains(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "run"    # Ljava/lang/Runnable;

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/nubia/cloud/utils/task/NBExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/cloud/utils/task/NBExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 68
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "run"    # Ljava/lang/Runnable;

    .prologue
    .line 28
    if-nez p1, :cond_1

    .line 29
    sget-boolean v0, Lcn/nubia/cloud/utils/LogUtil;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 30
    const-string v0, "execute Runnable is null"

    invoke-static {v0}, Lcn/nubia/cloud/utils/LogUtil;->e(Ljava/lang/String;)V

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    iget-object v0, p0, Lcn/nubia/cloud/utils/task/NBExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/cloud/utils/task/NBExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/nubia/cloud/utils/task/NBExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_2

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

    goto :goto_0
.end method

.method public declared-synchronized shutdown()V
    .locals 1

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/nubia/cloud/utils/task/NBExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/cloud/utils/task/NBExecutor;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

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

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
