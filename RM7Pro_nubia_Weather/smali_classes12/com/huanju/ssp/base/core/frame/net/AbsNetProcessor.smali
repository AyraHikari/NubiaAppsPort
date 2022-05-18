.class public abstract Lcom/huanju/ssp/base/core/frame/net/AbsNetProcessor;
.super Ljava/lang/Object;
.source "AbsNetProcessor.java"

# interfaces
.implements Lcom/huanju/ssp/base/core/frame/net/NetTaskListener;


# instance fields
.field private mTaskManager:Lcom/huanju/ssp/base/core/frame/schedule/TaskManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huanju/ssp/base/core/frame/net/AbsNetProcessor;->mTaskManager:Lcom/huanju/ssp/base/core/frame/schedule/TaskManager;

    return-void
.end method


# virtual methods
.method protected abstract createNetTask()Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;
.end method

.method public process()V
    .locals 3

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/frame/net/AbsNetProcessor;->createNetTask()Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;

    move-result-object v0

    .line 21
    .local v0, "netTask":Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  start process"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, p0}, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->setListener(Lcom/huanju/ssp/base/core/frame/net/NetTaskListener;)V

    .line 24
    iget-object v1, p0, Lcom/huanju/ssp/base/core/frame/net/AbsNetProcessor;->mTaskManager:Lcom/huanju/ssp/base/core/frame/schedule/TaskManager;

    if-eqz v1, :cond_0

    .line 25
    iget-object v1, p0, Lcom/huanju/ssp/base/core/frame/net/AbsNetProcessor;->mTaskManager:Lcom/huanju/ssp/base/core/frame/schedule/TaskManager;

    invoke-virtual {v1, v0}, Lcom/huanju/ssp/base/core/frame/schedule/TaskManager;->addTask(Lcom/huanju/ssp/base/core/frame/schedule/ITask;)V

    .line 42
    :goto_0
    return-void

    .line 29
    :cond_0
    instance-of v1, p0, Lcom/huanju/ssp/base/core/download/DownloadProcessor;

    if-eqz v1, :cond_1

    .line 30
    const-string v1, "\u5f53\u524d\u4efb\u52a1\u662f\u4e0b\u8f7d\u4efb\u52a1"

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager;->getDownloadPool()Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 35
    :cond_1
    instance-of v1, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;

    if-eqz v1, :cond_2

    .line 36
    const-string v1, "\u5f53\u524d\u4efb\u52a1\u662f\u8bf7\u6c42\u5e7f\u544a"

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager;->getRequestAdPool()Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 41
    :cond_2
    invoke-static {}, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager;->getLongPool()Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setNetTaskManager(Lcom/huanju/ssp/base/core/frame/schedule/TaskManager;)V
    .locals 0
    .param p1, "manager"    # Lcom/huanju/ssp/base/core/frame/schedule/TaskManager;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/huanju/ssp/base/core/frame/net/AbsNetProcessor;->mTaskManager:Lcom/huanju/ssp/base/core/frame/schedule/TaskManager;

    .line 17
    return-void
.end method
