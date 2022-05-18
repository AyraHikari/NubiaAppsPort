.class public abstract Lcn/nubia/music/online/api/Task;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final RESULT_NOMAL:I = 0x1

.field public static final RESULT_TIME_OUT:I


# instance fields
.field private mFinished:Z

.field private mIsCanceled:Z

.field private mTaskManager:Lcn/nubia/music/online/api/TaskManager;

.field private mTimeOut:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-boolean v0, p0, Lcn/nubia/music/online/api/Task;->mFinished:Z

    .line 16
    iput-boolean v0, p0, Lcn/nubia/music/online/api/Task;->mIsCanceled:Z

    .line 17
    const/16 v0, 0x7530

    iput v0, p0, Lcn/nubia/music/online/api/Task;->mTimeOut:I

    .line 22
    invoke-static {}, Lcn/nubia/music/online/api/TaskManager;->getInstance()Lcn/nubia/music/online/api/TaskManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/online/api/Task;->mTaskManager:Lcn/nubia/music/online/api/TaskManager;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcn/nubia/music/online/api/Task;->mTaskManager:Lcn/nubia/music/online/api/TaskManager;

    if-eqz v0, :cond_0

    .line 108
    const-string v0, "xiami cancel"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcn/nubia/music/online/api/Task;->mTaskManager:Lcn/nubia/music/online/api/TaskManager;

    invoke-virtual {v0, p0}, Lcn/nubia/music/online/api/TaskManager;->removeTask(Lcn/nubia/music/online/api/Task;)V

    .line 115
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/online/api/Task;->mIsCanceled:Z

    .line 117
    return-void

    .line 111
    :cond_0
    invoke-static {}, Lcn/nubia/music/online/api/TaskManager;->getInstance()Lcn/nubia/music/online/api/TaskManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/online/api/Task;->mTaskManager:Lcn/nubia/music/online/api/TaskManager;

    .line 112
    iget-object v0, p0, Lcn/nubia/music/online/api/Task;->mTaskManager:Lcn/nubia/music/online/api/TaskManager;

    invoke-virtual {v0, p0}, Lcn/nubia/music/online/api/TaskManager;->removeTask(Lcn/nubia/music/online/api/Task;)V

    .line 113
    const-string v0, "xiami cancel2"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract doInBackound()Ljava/lang/Object;
.end method

.method public getMaxRunTime()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcn/nubia/music/online/api/Task;->mTimeOut:I

    return v0
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcn/nubia/music/online/api/Task;->mIsCanceled:Z

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcn/nubia/music/online/api/Task;->mFinished:Z

    return v0
.end method

.method public abstract onPost(Ljava/lang/Object;I)V
.end method

.method public resetStatus()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 138
    iput-boolean v0, p0, Lcn/nubia/music/online/api/Task;->mFinished:Z

    .line 139
    iput-boolean v0, p0, Lcn/nubia/music/online/api/Task;->mIsCanceled:Z

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/music/online/api/Task;->mTaskManager:Lcn/nubia/music/online/api/TaskManager;

    .line 141
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 59
    iget-boolean v0, p0, Lcn/nubia/music/online/api/Task;->mIsCanceled:Z

    if-eqz v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 63
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/online/api/Task;->mFinished:Z

    .line 64
    invoke-virtual {p0}, Lcn/nubia/music/online/api/Task;->doInBackound()Ljava/lang/Object;

    move-result-object v0

    .line 65
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/music/online/api/Task;->mFinished:Z

    .line 67
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 68
    const-string v2, "task"

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v2, "result"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-boolean v1, p0, Lcn/nubia/music/online/api/Task;->mIsCanceled:Z

    if-nez v1, :cond_1

    .line 71
    new-instance v1, Lcn/nubia/music/online/api/Task$1;

    invoke-direct {v1, p0, v0}, Lcn/nubia/music/online/api/Task$1;-><init>(Lcn/nubia/music/online/api/Task;Ljava/lang/Object;)V

    invoke-static {v1}, Lcn/nubia/music/utils/ThreadHelper;->postInUIThread(Ljava/lang/Runnable;)V

    .line 78
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/online/api/Task;->mTaskManager:Lcn/nubia/music/online/api/TaskManager;

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lcn/nubia/music/online/api/Task;->mTaskManager:Lcn/nubia/music/online/api/TaskManager;

    invoke-virtual {v0, p0}, Lcn/nubia/music/online/api/TaskManager;->removeTask(Lcn/nubia/music/online/api/Task;)V

    goto :goto_0

    .line 81
    :cond_2
    invoke-static {}, Lcn/nubia/music/online/api/TaskManager;->getInstance()Lcn/nubia/music/online/api/TaskManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/online/api/Task;->mTaskManager:Lcn/nubia/music/online/api/TaskManager;

    .line 82
    iget-object v0, p0, Lcn/nubia/music/online/api/Task;->mTaskManager:Lcn/nubia/music/online/api/TaskManager;

    invoke-virtual {v0, p0}, Lcn/nubia/music/online/api/TaskManager;->removeTask(Lcn/nubia/music/online/api/Task;)V

    goto :goto_0
.end method

.method protected setMaxRunTime(I)V
    .locals 0

    .prologue
    .line 124
    iput p1, p0, Lcn/nubia/music/online/api/Task;->mTimeOut:I

    .line 125
    return-void
.end method

.method protected setThreadManager(Lcn/nubia/music/online/api/TaskManager;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcn/nubia/music/online/api/Task;->mTaskManager:Lcn/nubia/music/online/api/TaskManager;

    .line 135
    return-void
.end method

.method public timeout()V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcn/nubia/music/online/api/Task$2;

    invoke-direct {v0, p0}, Lcn/nubia/music/online/api/Task$2;-><init>(Lcn/nubia/music/online/api/Task;)V

    invoke-static {v0}, Lcn/nubia/music/utils/ThreadHelper;->postInUIThread(Ljava/lang/Runnable;)V

    .line 103
    return-void
.end method
