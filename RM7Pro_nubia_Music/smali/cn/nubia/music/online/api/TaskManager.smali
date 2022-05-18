.class public Lcn/nubia/music/online/api/TaskManager;
.super Ljava/lang/Object;
.source "TaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/online/api/TaskManager$TaskTog;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x2

.field private static final KEEP_ALIVE_TIME:I = 0x2

.field private static final MAX_POOL_SIZE:I = 0x8

.field private static final THREAD_PRIORITY:I = 0x5

.field private static final TIME_OUT:I

.field private static sInstance:Lcn/nubia/music/online/api/TaskManager;


# instance fields
.field private mBlockingQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningTasks:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcn/nubia/music/online/api/Task;",
            "Ljava/util/concurrent/Future",
            "<*>;>;"
        }
    .end annotation
.end field

.field private mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/music/online/api/TaskManager;->sInstance:Lcn/nubia/music/online/api/TaskManager;

    return-void
.end method

.method private constructor <init>(IIJI)V
    .locals 9

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/online/api/TaskManager;->mRunningTasks:Ljava/util/WeakHashMap;

    .line 30
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/online/api/TaskManager;->mBlockingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/music/online/api/TaskManager;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "corePoolSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keeepAliveTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maxPoolSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 64
    new-instance v8, Lcn/nubia/music/online/api/TaskManager$1;

    invoke-direct {v8, p0, p5}, Lcn/nubia/music/online/api/TaskManager$1;-><init>(Lcn/nubia/music/online/api/TaskManager;I)V

    .line 75
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x2

    const/16 v3, 0x8

    const-wide/16 v4, 0x2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lcn/nubia/music/online/api/TaskManager;->mBlockingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcn/nubia/music/online/api/TaskManager;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 78
    return-void
.end method

.method public static getInstance()Lcn/nubia/music/online/api/TaskManager;
    .locals 8

    .prologue
    .line 81
    sget-object v0, Lcn/nubia/music/online/api/TaskManager;->sInstance:Lcn/nubia/music/online/api/TaskManager;

    if-eqz v0, :cond_0

    .line 82
    sget-object v0, Lcn/nubia/music/online/api/TaskManager;->sInstance:Lcn/nubia/music/online/api/TaskManager;

    .line 90
    :goto_0
    return-object v0

    .line 85
    :cond_0
    const-class v7, Lcn/nubia/music/online/api/TaskManager;

    monitor-enter v7

    .line 86
    :try_start_0
    new-instance v1, Lcn/nubia/music/online/api/TaskManager;

    const/4 v2, 0x2

    const/16 v3, 0x8

    const-wide/16 v4, 0x2

    const/4 v6, 0x5

    invoke-direct/range {v1 .. v6}, Lcn/nubia/music/online/api/TaskManager;-><init>(IIJI)V

    sput-object v1, Lcn/nubia/music/online/api/TaskManager;->sInstance:Lcn/nubia/music/online/api/TaskManager;

    .line 89
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    sget-object v0, Lcn/nubia/music/online/api/TaskManager;->sInstance:Lcn/nubia/music/online/api/TaskManager;

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected removeTask(Lcn/nubia/music/online/api/Task;)V
    .locals 2

    .prologue
    .line 126
    if-nez p1, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-static {p1}, Lcn/nubia/music/utils/ThreadHelper;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lcn/nubia/music/online/api/TaskManager;->mRunningTasks:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 133
    if-eqz v0, :cond_0

    .line 134
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 135
    iget-object v0, p0, Lcn/nubia/music/online/api/TaskManager;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public submit(Lcn/nubia/music/online/api/Task;)V
    .locals 4

    .prologue
    .line 96
    if-nez p1, :cond_0

    .line 97
    const-string v0, "xiami submit null"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 123
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/music/online/api/Task;->getMaxRunTime()I

    move-result v0

    .line 103
    if-lez v0, :cond_1

    .line 107
    new-instance v1, Lcn/nubia/music/online/api/TaskManager$2;

    invoke-direct {v1, p0, p1}, Lcn/nubia/music/online/api/TaskManager$2;-><init>(Lcn/nubia/music/online/api/TaskManager;Lcn/nubia/music/online/api/Task;)V

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcn/nubia/music/utils/ThreadHelper;->postDelayedInUIThread(Ljava/lang/Runnable;J)V

    .line 119
    :cond_1
    const-string v0, "submit---"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcn/nubia/music/online/api/TaskManager;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcn/nubia/music/online/api/TaskManager;->mRunningTasks:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
