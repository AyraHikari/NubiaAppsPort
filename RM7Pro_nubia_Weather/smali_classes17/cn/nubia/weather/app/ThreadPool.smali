.class public Lcn/nubia/weather/app/ThreadPool;
.super Ljava/lang/Object;
.source "ThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/app/ThreadPool$WeatherThreadFactory;,
        Lcn/nubia/weather/app/ThreadPool$WeatherThreadPoolExecutor;,
        Lcn/nubia/weather/app/ThreadPool$WeatherDiscardPolicy;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final KEEP_ALIVE_TIME:I = 0x1e

.field private static final MAXIMUM_POOL_SIZE:I

.field private static final TAG:Ljava/lang/String; = "ThreadPool"

.field private static mInstance:Lcn/nubia/weather/app/ThreadPool;


# instance fields
.field private mExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/weather/app/ThreadPool;->mInstance:Lcn/nubia/weather/app/ThreadPool;

    .line 29
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcn/nubia/weather/app/ThreadPool;->CPU_COUNT:I

    .line 30
    sget v0, Lcn/nubia/weather/app/ThreadPool;->CPU_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcn/nubia/weather/app/ThreadPool;->CORE_POOL_SIZE:I

    .line 31
    sget v0, Lcn/nubia/weather/app/ThreadPool;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcn/nubia/weather/app/ThreadPool;->MAXIMUM_POOL_SIZE:I

    return-void
.end method

.method private constructor <init>()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v10, p0, Lcn/nubia/weather/app/ThreadPool;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 35
    new-instance v0, Lcn/nubia/weather/app/ThreadPool$WeatherThreadPoolExecutor;

    sget v2, Lcn/nubia/weather/app/ThreadPool;->CORE_POOL_SIZE:I

    sget v3, Lcn/nubia/weather/app/ThreadPool;->MAXIMUM_POOL_SIZE:I

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x32

    invoke-direct {v7, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v8, Lcn/nubia/weather/app/ThreadPool$WeatherThreadFactory;

    invoke-direct {v8, p0, v10}, Lcn/nubia/weather/app/ThreadPool$WeatherThreadFactory;-><init>(Lcn/nubia/weather/app/ThreadPool;Lcn/nubia/weather/app/ThreadPool$1;)V

    new-instance v9, Lcn/nubia/weather/app/ThreadPool$WeatherDiscardPolicy;

    invoke-direct {v9, p0, v10}, Lcn/nubia/weather/app/ThreadPool$WeatherDiscardPolicy;-><init>(Lcn/nubia/weather/app/ThreadPool;Lcn/nubia/weather/app/ThreadPool$1;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcn/nubia/weather/app/ThreadPool$WeatherThreadPoolExecutor;-><init>(Lcn/nubia/weather/app/ThreadPool;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lcn/nubia/weather/app/ThreadPool;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 38
    return-void
.end method

.method public static declared-synchronized getInstance()Lcn/nubia/weather/app/ThreadPool;
    .locals 2

    .prologue
    .line 46
    const-class v1, Lcn/nubia/weather/app/ThreadPool;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/nubia/weather/app/ThreadPool;->mInstance:Lcn/nubia/weather/app/ThreadPool;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcn/nubia/weather/app/ThreadPool;

    invoke-direct {v0}, Lcn/nubia/weather/app/ThreadPool;-><init>()V

    sput-object v0, Lcn/nubia/weather/app/ThreadPool;->mInstance:Lcn/nubia/weather/app/ThreadPool;

    .line 49
    :cond_0
    sget-object v0, Lcn/nubia/weather/app/ThreadPool;->mInstance:Lcn/nubia/weather/app/ThreadPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public varargs addTask(Landroid/os/AsyncTask;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "task"    # Landroid/os/AsyncTask;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;

    .prologue
    .line 60
    iget-object v0, p0, Lcn/nubia/weather/app/ThreadPool;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 61
    return-void
.end method

.method public addTask(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 78
    iget-object v0, p0, Lcn/nubia/weather/app/ThreadPool;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 79
    return-void
.end method

.method public addTask(Ljava/util/concurrent/FutureTask;)V
    .locals 1
    .param p1, "task"    # Ljava/util/concurrent/FutureTask;

    .prologue
    .line 69
    iget-object v0, p0, Lcn/nubia/weather/app/ThreadPool;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 70
    return-void
.end method
