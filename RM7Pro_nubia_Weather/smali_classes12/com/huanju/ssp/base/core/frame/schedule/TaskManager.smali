.class public Lcom/huanju/ssp/base/core/frame/schedule/TaskManager;
.super Ljava/lang/Object;
.source "TaskManager.java"


# instance fields
.field private mTaskQueue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/huanju/ssp/base/core/frame/schedule/ITask;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadPoolProxy:Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huanju/ssp/base/core/frame/schedule/TaskManager;->mTaskQueue:Ljava/util/HashMap;

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager;->getSinglePool(Ljava/lang/String;)Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/ssp/base/core/frame/schedule/TaskManager;->mThreadPoolProxy:Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

    .line 16
    return-void
.end method


# virtual methods
.method public declared-synchronized addTask(Lcom/huanju/ssp/base/core/frame/schedule/ITask;)V
    .locals 3
    .param p1, "task"    # Lcom/huanju/ssp/base/core/frame/schedule/ITask;

    .prologue
    .line 25
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lcom/huanju/ssp/base/core/frame/schedule/ITask;->getLaunchMode()Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;

    move-result-object v1

    sget-object v2, Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;->REPLACE_OLD:Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;

    if-ne v1, v2, :cond_0

    .line 26
    iget-object v1, p0, Lcom/huanju/ssp/base/core/frame/schedule/TaskManager;->mTaskQueue:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/huanju/ssp/base/core/frame/schedule/ITask;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huanju/ssp/base/core/frame/schedule/ITask;

    .line 27
    .local v0, "lastTAsk":Lcom/huanju/ssp/base/core/frame/schedule/ITask;
    iget-object v1, p0, Lcom/huanju/ssp/base/core/frame/schedule/TaskManager;->mThreadPoolProxy:Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

    invoke-virtual {v1, v0}, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;->cancel(Ljava/lang/Runnable;)Z

    .line 29
    .end local v0    # "lastTAsk":Lcom/huanju/ssp/base/core/frame/schedule/ITask;
    :cond_0
    iget-object v1, p0, Lcom/huanju/ssp/base/core/frame/schedule/TaskManager;->mThreadPoolProxy:Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

    invoke-virtual {v1, p1}, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit p0

    return-void

    .line 25
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public removeAllTask()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/huanju/ssp/base/core/frame/schedule/TaskManager;->mThreadPoolProxy:Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;->shutdown()V

    .line 34
    iget-object v0, p0, Lcom/huanju/ssp/base/core/frame/schedule/TaskManager;->mTaskQueue:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 35
    return-void
.end method
