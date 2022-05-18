.class public final Lcn/nubia/accountsdk/common/TaskExecutor;
.super Ljava/lang/Object;
.source "TaskExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/accountsdk/common/TaskExecutor$ExecutorThread;
    }
.end annotation


# static fields
.field private static final FREE_TIME_OUT:J = 0x3a98L


# instance fields
.field private volatile mCurrentExecuteTask:I

.field private volatile mLaskTaskRunningTime:J

.field private final mTaskQ:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mThreadPool:[Lcn/nubia/accountsdk/common/TaskExecutor$ExecutorThread;

.field private final mThreadPriority:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x5

    .line 44
    invoke-direct {p0, v0, v1}, Lcn/nubia/accountsdk/common/TaskExecutor;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/nubia/accountsdk/common/TaskExecutor;->mTaskQ:Ljava/util/LinkedList;

    if-gtz p1, :cond_1

    .line 28
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p1

    mul-int/lit8 p1, p1, 0x3

    div-int/lit8 p1, p1, 0x4

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 31
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_2

    .line 32
    sget-boolean v0, Lcn/nubia/accountsdk/common/SDKLogUtils;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "TaskExecutor"

    const-string v1, "Too many threads"

    .line 33
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_2
    iput p2, p0, Lcn/nubia/accountsdk/common/TaskExecutor;->mThreadPriority:I

    .line 37
    new-array p1, p1, [Lcn/nubia/accountsdk/common/TaskExecutor$ExecutorThread;

    iput-object p1, p0, Lcn/nubia/accountsdk/common/TaskExecutor;->mThreadPool:[Lcn/nubia/accountsdk/common/TaskExecutor$ExecutorThread;

    return-void
.end method

.method static synthetic access$0(Lcn/nubia/accountsdk/common/TaskExecutor;)Ljava/lang/Runnable;
    .locals 0

    .line 47
    invoke-direct {p0}, Lcn/nubia/accountsdk/common/TaskExecutor;->popTask()Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1(Lcn/nubia/accountsdk/common/TaskExecutor;)I
    .locals 0

    .line 18
    iget p0, p0, Lcn/nubia/accountsdk/common/TaskExecutor;->mCurrentExecuteTask:I

    return p0
.end method

.method static synthetic access$2(Lcn/nubia/accountsdk/common/TaskExecutor;I)V
    .locals 0

    .line 18
    iput p1, p0, Lcn/nubia/accountsdk/common/TaskExecutor;->mCurrentExecuteTask:I

    return-void
.end method

.method static synthetic access$3(Lcn/nubia/accountsdk/common/TaskExecutor;J)V
    .locals 0

    .line 17
    iput-wide p1, p0, Lcn/nubia/accountsdk/common/TaskExecutor;->mLaskTaskRunningTime:J

    return-void
.end method

.method static synthetic access$4(Lcn/nubia/accountsdk/common/TaskExecutor;)Ljava/util/LinkedList;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/nubia/accountsdk/common/TaskExecutor;->mTaskQ:Ljava/util/LinkedList;

    return-object p0
.end method

.method private popTask()Ljava/lang/Runnable;
    .locals 3

    .line 49
    iget-object v0, p0, Lcn/nubia/accountsdk/common/TaskExecutor;->mTaskQ:Ljava/util/LinkedList;

    monitor-enter v0

    .line 50
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcn/nubia/accountsdk/common/TaskExecutor;->mTaskQ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    goto :goto_1

    .line 52
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcn/nubia/accountsdk/common/TaskExecutor;->mTaskQ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 57
    :catch_0
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcn/nubia/accountsdk/common/TaskExecutor;->mTaskQ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 58
    iget-object v1, p0, Lcn/nubia/accountsdk/common/TaskExecutor;->mTaskQ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 59
    iget-object v2, p0, Lcn/nubia/accountsdk/common/TaskExecutor;->mTaskQ:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 60
    iget-object v2, p0, Lcn/nubia/accountsdk/common/TaskExecutor;->mTaskQ:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    .line 49
    :cond_2
    :goto_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private startThreads()V
    .locals 5

    .line 77
    iget-object v0, p0, Lcn/nubia/accountsdk/common/TaskExecutor;->mThreadPool:[Lcn/nubia/accountsdk/common/TaskExecutor$ExecutorThread;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    .line 78
    :goto_0
    iget-object v0, p0, Lcn/nubia/accountsdk/common/TaskExecutor;->mThreadPool:[Lcn/nubia/accountsdk/common/TaskExecutor$ExecutorThread;

    array-length v2, v0

    if-lt v1, v2, :cond_0

    goto :goto_1

    .line 79
    :cond_0
    new-instance v2, Lcn/nubia/accountsdk/common/TaskExecutor$ExecutorThread;

    add-int/lit8 v3, v1, 0x1

    iget v4, p0, Lcn/nubia/accountsdk/common/TaskExecutor;->mThreadPriority:I

    invoke-direct {v2, p0, v3, v4}, Lcn/nubia/accountsdk/common/TaskExecutor$ExecutorThread;-><init>(Lcn/nubia/accountsdk/common/TaskExecutor;II)V

    aput-object v2, v0, v1

    .line 80
    iget-object v0, p0, Lcn/nubia/accountsdk/common/TaskExecutor;->mThreadPool:[Lcn/nubia/accountsdk/common/TaskExecutor$ExecutorThread;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcn/nubia/accountsdk/common/TaskExecutor$ExecutorThread;->start()V

    move v1, v3

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private stopThreads()V
    .locals 3

    .line 96
    iget-object v0, p0, Lcn/nubia/accountsdk/common/TaskExecutor;->mThreadPool:[Lcn/nubia/accountsdk/common/TaskExecutor$ExecutorThread;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 97
    :goto_0
    iget-object v0, p0, Lcn/nubia/accountsdk/common/TaskExecutor;->mThreadPool:[Lcn/nubia/accountsdk/common/TaskExecutor$ExecutorThread;

    array-length v2, v0

    if-lt v1, v2, :cond_0

    goto :goto_1

    .line 98
    :cond_0
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcn/nubia/accountsdk/common/TaskExecutor$ExecutorThread;->quit()V

    .line 99
    iget-object v0, p0, Lcn/nubia/accountsdk/common/TaskExecutor;->mThreadPool:[Lcn/nubia/accountsdk/common/TaskExecutor$ExecutorThread;

    const/4 v2, 0x0

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2

    .line 69
    iget-object v0, p0, Lcn/nubia/accountsdk/common/TaskExecutor;->mTaskQ:Ljava/util/LinkedList;

    monitor-enter v0

    .line 70
    :try_start_0
    iget-object v1, p0, Lcn/nubia/accountsdk/common/TaskExecutor;->mTaskQ:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-direct {p0}, Lcn/nubia/accountsdk/common/TaskExecutor;->startThreads()V

    .line 72
    iget-object p1, p0, Lcn/nubia/accountsdk/common/TaskExecutor;->mTaskQ:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 69
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isTaskExecutorFree()Z
    .locals 5

    .line 105
    iget-object v0, p0, Lcn/nubia/accountsdk/common/TaskExecutor;->mTaskQ:Ljava/util/LinkedList;

    monitor-enter v0

    .line 106
    :try_start_0
    iget-object v1, p0, Lcn/nubia/accountsdk/common/TaskExecutor;->mTaskQ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcn/nubia/accountsdk/common/TaskExecutor;->mCurrentExecuteTask:I

    if-nez v1, :cond_0

    .line 107
    iget-wide v1, p0, Lcn/nubia/accountsdk/common/TaskExecutor;->mLaskTaskRunningTime:J

    const-wide/16 v3, 0x3a98

    add-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 106
    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 105
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcn/nubia/accountsdk/common/TaskExecutor;->mTaskQ:Ljava/util/LinkedList;

    monitor-enter v0

    .line 90
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/accountsdk/common/TaskExecutor;->stopThreads()V

    .line 91
    iget-object v1, p0, Lcn/nubia/accountsdk/common/TaskExecutor;->mTaskQ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 89
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
