.class public abstract Lcn/nubia/music/app/task/Job;
.super Ljava/lang/Object;
.source "Job.java"


# static fields
.field private static count:I

.field private static mHandler:Landroid/os/Handler;


# instance fields
.field private mCanceled:Z

.field private mFinished:Z

.field private mMaxTime:I

.field private mName:Ljava/lang/String;

.field private mRunnable:Ljava/lang/Runnable;

.field private mThreadPool:Lcn/nubia/music/app/task/ThreadPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput v0, Lcn/nubia/music/app/task/Job;->count:I

    .line 31
    new-instance v0, Lcn/nubia/music/app/task/Job$2;

    invoke-direct {v0}, Lcn/nubia/music/app/task/Job$2;-><init>()V

    sput-object v0, Lcn/nubia/music/app/task/Job;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Job-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcn/nubia/music/app/task/Job;->count:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcn/nubia/music/app/task/Job;->count:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/app/task/Job;->mName:Ljava/lang/String;

    .line 15
    invoke-static {}, Lcn/nubia/music/app/task/JobManager;->getInstance()Lcn/nubia/music/app/task/JobManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/app/task/Job;->mThreadPool:Lcn/nubia/music/app/task/ThreadPool;

    .line 17
    const/16 v0, 0x7530

    iput v0, p0, Lcn/nubia/music/app/task/Job;->mMaxTime:I

    .line 19
    new-instance v0, Lcn/nubia/music/app/task/Job$1;

    invoke-direct {v0, p0}, Lcn/nubia/music/app/task/Job$1;-><init>(Lcn/nubia/music/app/task/Job;)V

    iput-object v0, p0, Lcn/nubia/music/app/task/Job;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$002(Lcn/nubia/music/app/task/Job;Z)Z
    .locals 0

    .prologue
    .line 10
    iput-boolean p1, p0, Lcn/nubia/music/app/task/Job;->mFinished:Z

    return p1
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcn/nubia/music/app/task/Job;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/music/app/task/Job;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcn/nubia/music/app/task/Job;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/music/app/task/Job;)Lcn/nubia/music/app/task/ThreadPool;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcn/nubia/music/app/task/Job;->mThreadPool:Lcn/nubia/music/app/task/ThreadPool;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcn/nubia/music/app/task/Job;->mThreadPool:Lcn/nubia/music/app/task/ThreadPool;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcn/nubia/music/app/task/Job;->mThreadPool:Lcn/nubia/music/app/task/ThreadPool;

    invoke-virtual {v0, p0}, Lcn/nubia/music/app/task/ThreadPool;->remove(Lcn/nubia/music/app/task/Job;)V

    .line 47
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/app/task/Job;->mCanceled:Z

    .line 48
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcn/nubia/music/app/task/Job;->mThreadPool:Lcn/nubia/music/app/task/ThreadPool;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcn/nubia/music/app/task/Job;->mThreadPool:Lcn/nubia/music/app/task/ThreadPool;

    invoke-virtual {v0, p0}, Lcn/nubia/music/app/task/ThreadPool;->remove(Lcn/nubia/music/app/task/Job;)V

    .line 100
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 101
    return-void
.end method

.method public getMaxTime()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcn/nubia/music/app/task/Job;->mMaxTime:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcn/nubia/music/app/task/Job;->mName:Ljava/lang/String;

    return-object v0
.end method

.method protected getRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcn/nubia/music/app/task/Job;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcn/nubia/music/app/task/Job;->mCanceled:Z

    return v0
.end method

.method public isFinish()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcn/nubia/music/app/task/Job;->mFinished:Z

    return v0
.end method

.method protected onPostRun()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public onTimeOut()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method protected abstract run()V
.end method

.method public setMaxTime(I)V
    .locals 0

    .prologue
    .line 66
    iput p1, p0, Lcn/nubia/music/app/task/Job;->mMaxTime:I

    .line 67
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcn/nubia/music/app/task/Job;->mName:Ljava/lang/String;

    .line 86
    return-void
.end method

.method protected final setThreadPool(Lcn/nubia/music/app/task/ThreadPool;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcn/nubia/music/app/task/Job;->mThreadPool:Lcn/nubia/music/app/task/ThreadPool;

    .line 90
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcn/nubia/music/app/task/Job;->mThreadPool:Lcn/nubia/music/app/task/ThreadPool;

    if-nez v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/app/task/Job;->mThreadPool:Lcn/nubia/music/app/task/ThreadPool;

    invoke-virtual {v0, p0}, Lcn/nubia/music/app/task/ThreadPool;->put(Lcn/nubia/music/app/task/Job;)V

    goto :goto_0
.end method
