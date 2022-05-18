.class final Lcn/nubia/accountsdk/common/TaskExecutor$ExecutorThread;
.super Ljava/lang/Thread;
.source "TaskExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/accountsdk/common/TaskExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExecutorThread"
.end annotation


# instance fields
.field private volatile mQuit:Z

.field final synthetic this$0:Lcn/nubia/accountsdk/common/TaskExecutor;


# direct methods
.method constructor <init>(Lcn/nubia/accountsdk/common/TaskExecutor;II)V
    .locals 1

    .line 114
    iput-object p1, p0, Lcn/nubia/accountsdk/common/TaskExecutor$ExecutorThread;->this$0:Lcn/nubia/accountsdk/common/TaskExecutor;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 115
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const-string p2, "TaskExecutorThread#%d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 112
    iput-boolean v0, p0, Lcn/nubia/accountsdk/common/TaskExecutor$ExecutorThread;->mQuit:Z

    .line 116
    invoke-virtual {p0, p3}, Lcn/nubia/accountsdk/common/TaskExecutor$ExecutorThread;->setPriority(I)V

    return-void
.end method

.method private runTask(Ljava/lang/Runnable;)V
    .locals 2

    .line 132
    :try_start_0
    iget-object v0, p0, Lcn/nubia/accountsdk/common/TaskExecutor$ExecutorThread;->this$0:Lcn/nubia/accountsdk/common/TaskExecutor;

    invoke-static {v0}, Lcn/nubia/accountsdk/common/TaskExecutor;->access$1(Lcn/nubia/accountsdk/common/TaskExecutor;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/accountsdk/common/TaskExecutor;->access$2(Lcn/nubia/accountsdk/common/TaskExecutor;I)V

    .line 133
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 134
    iget-object p1, p0, Lcn/nubia/accountsdk/common/TaskExecutor$ExecutorThread;->this$0:Lcn/nubia/accountsdk/common/TaskExecutor;

    invoke-static {p1}, Lcn/nubia/accountsdk/common/TaskExecutor;->access$1(Lcn/nubia/accountsdk/common/TaskExecutor;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Lcn/nubia/accountsdk/common/TaskExecutor;->access$2(Lcn/nubia/accountsdk/common/TaskExecutor;I)V

    .line 135
    iget-object p1, p0, Lcn/nubia/accountsdk/common/TaskExecutor$ExecutorThread;->this$0:Lcn/nubia/accountsdk/common/TaskExecutor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcn/nubia/accountsdk/common/TaskExecutor;->access$3(Lcn/nubia/accountsdk/common/TaskExecutor;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 137
    iget-object v0, p0, Lcn/nubia/accountsdk/common/TaskExecutor$ExecutorThread;->this$0:Lcn/nubia/accountsdk/common/TaskExecutor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/accountsdk/common/TaskExecutor;->access$2(Lcn/nubia/accountsdk/common/TaskExecutor;I)V

    .line 138
    iget-object v0, p0, Lcn/nubia/accountsdk/common/TaskExecutor$ExecutorThread;->this$0:Lcn/nubia/accountsdk/common/TaskExecutor;

    invoke-static {v0}, Lcn/nubia/accountsdk/common/TaskExecutor;->access$4(Lcn/nubia/accountsdk/common/TaskExecutor;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 139
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method quit()V
    .locals 1

    const/4 v0, 0x1

    .line 144
    iput-boolean v0, p0, Lcn/nubia/accountsdk/common/TaskExecutor$ExecutorThread;->mQuit:Z

    .line 145
    invoke-virtual {p0}, Lcn/nubia/accountsdk/common/TaskExecutor$ExecutorThread;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 2

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "run "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/nubia/accountsdk/common/TaskExecutor$ExecutorThread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskExecutor"

    invoke-static {v1, v0}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/accountsdk/common/TaskExecutor$ExecutorThread;->mQuit:Z

    if-eqz v0, :cond_1

    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lcn/nubia/accountsdk/common/TaskExecutor$ExecutorThread;->this$0:Lcn/nubia/accountsdk/common/TaskExecutor;

    invoke-static {v0}, Lcn/nubia/accountsdk/common/TaskExecutor;->access$0(Lcn/nubia/accountsdk/common/TaskExecutor;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    invoke-direct {p0, v0}, Lcn/nubia/accountsdk/common/TaskExecutor$ExecutorThread;->runTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
