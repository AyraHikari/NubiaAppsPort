.class public Lcn/nubia/deskclock/util/ThreadPool;
.super Ljava/lang/Object;
.source "ThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deskclock/util/ThreadPool$DeskclockThreadFactory;,
        Lcn/nubia/deskclock/util/ThreadPool$DeskclockDiscardPolicy;,
        Lcn/nubia/deskclock/util/ThreadPool$DeskclockThreadPoolExecutor;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final KEEP_ALIVE_TIME:I = 0x1e

.field private static final MAXIMUM_POOL_SIZE:I

.field private static final TAG:Ljava/lang/String; = "ThreadPool"

.field private static mInstance:Lcn/nubia/deskclock/util/ThreadPool;


# instance fields
.field private mExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/deskclock/util/ThreadPool;->mInstance:Lcn/nubia/deskclock/util/ThreadPool;

    .line 20
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcn/nubia/deskclock/util/ThreadPool;->CPU_COUNT:I

    .line 21
    sget v0, Lcn/nubia/deskclock/util/ThreadPool;->CPU_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcn/nubia/deskclock/util/ThreadPool;->CORE_POOL_SIZE:I

    .line 22
    sget v0, Lcn/nubia/deskclock/util/ThreadPool;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcn/nubia/deskclock/util/ThreadPool;->MAXIMUM_POOL_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v10, p0, Lcn/nubia/deskclock/util/ThreadPool;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 26
    new-instance v0, Lcn/nubia/deskclock/util/ThreadPool$DeskclockThreadPoolExecutor;

    sget v2, Lcn/nubia/deskclock/util/ThreadPool;->CORE_POOL_SIZE:I

    sget v3, Lcn/nubia/deskclock/util/ThreadPool;->MAXIMUM_POOL_SIZE:I

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x32

    invoke-direct {v7, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v8, Lcn/nubia/deskclock/util/ThreadPool$DeskclockThreadFactory;

    invoke-direct {v8, p0}, Lcn/nubia/deskclock/util/ThreadPool$DeskclockThreadFactory;-><init>(Lcn/nubia/deskclock/util/ThreadPool;)V

    new-instance v9, Lcn/nubia/deskclock/util/ThreadPool$DeskclockDiscardPolicy;

    invoke-direct {v9, p0, v10}, Lcn/nubia/deskclock/util/ThreadPool$DeskclockDiscardPolicy;-><init>(Lcn/nubia/deskclock/util/ThreadPool;Lcn/nubia/deskclock/util/ThreadPool$1;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcn/nubia/deskclock/util/ThreadPool$DeskclockThreadPoolExecutor;-><init>(Lcn/nubia/deskclock/util/ThreadPool;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lcn/nubia/deskclock/util/ThreadPool;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 29
    return-void
.end method

.method public static declared-synchronized getInstance()Lcn/nubia/deskclock/util/ThreadPool;
    .locals 2

    .prologue
    .line 32
    const-class v1, Lcn/nubia/deskclock/util/ThreadPool;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/nubia/deskclock/util/ThreadPool;->mInstance:Lcn/nubia/deskclock/util/ThreadPool;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcn/nubia/deskclock/util/ThreadPool;

    invoke-direct {v0}, Lcn/nubia/deskclock/util/ThreadPool;-><init>()V

    sput-object v0, Lcn/nubia/deskclock/util/ThreadPool;->mInstance:Lcn/nubia/deskclock/util/ThreadPool;

    .line 35
    :cond_0
    sget-object v0, Lcn/nubia/deskclock/util/ThreadPool;->mInstance:Lcn/nubia/deskclock/util/ThreadPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public varargs addTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "task"    # Landroid/os/AsyncTask;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 95
    iget-object v0, p0, Lcn/nubia/deskclock/util/ThreadPool;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p1, v0, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 96
    return-void
.end method

.method public addTask(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 91
    iget-object v0, p0, Lcn/nubia/deskclock/util/ThreadPool;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 92
    return-void
.end method
