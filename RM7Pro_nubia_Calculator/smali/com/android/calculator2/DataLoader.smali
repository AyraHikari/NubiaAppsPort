.class public Lcom/android/calculator2/DataLoader;
.super Ljava/lang/Object;
.source "DataLoader.java"


# static fields
.field private static final CORE_POOL_SIZE:I = 0x10

.field private static final KEEP_ALIVE_TIME:I = 0xa

.field private static final MAX_POOL_SIZE:I = 0x20

.field private static volatile mInstance:Lcom/android/calculator2/DataLoader;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private pool:Ljava/util/concurrent/ExecutorService;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/calculator2/DataLoader;
    .locals 2

    .line 30
    sget-object v0, Lcom/android/calculator2/DataLoader;->mInstance:Lcom/android/calculator2/DataLoader;

    if-nez v0, :cond_1

    .line 31
    const-class v0, Lcom/android/calculator2/DataLoader;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/android/calculator2/DataLoader;->mInstance:Lcom/android/calculator2/DataLoader;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lcom/android/calculator2/DataLoader;

    invoke-direct {v1}, Lcom/android/calculator2/DataLoader;-><init>()V

    sput-object v1, Lcom/android/calculator2/DataLoader;->mInstance:Lcom/android/calculator2/DataLoader;

    .line 35
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 37
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/calculator2/DataLoader;->mInstance:Lcom/android/calculator2/DataLoader;

    return-object v0
.end method

.method private initPool()V
    .locals 9

    .line 18
    iget-object v0, p0, Lcom/android/calculator2/DataLoader;->pool:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calculator2/DataLoader;->pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    :cond_0
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v2, 0x10

    const/16 v3, 0x20

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    sget-object v8, Lcom/android/calculator2/-$$Lambda$DataLoader$o4LZwiiJGDgRfW_R1X765HBaMAo;->INSTANCE:Lcom/android/calculator2/-$$Lambda$DataLoader$o4LZwiiJGDgRfW_R1X765HBaMAo;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/android/calculator2/DataLoader;->pool:Ljava/util/concurrent/ExecutorService;

    :cond_1
    return-void
.end method

.method static synthetic lambda$initPool$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 21
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "statics-worker"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addExecuteTask(Ljava/lang/Runnable;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/android/calculator2/DataLoader;->initPool()V

    if-eqz p1, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/calculator2/DataLoader;->pool:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 50
    iget-object p0, p0, Lcom/android/calculator2/DataLoader;->pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/android/calculator2/DataLoader;->pool:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/android/calculator2/DataLoader;->pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/android/calculator2/DataLoader;->pool:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method
