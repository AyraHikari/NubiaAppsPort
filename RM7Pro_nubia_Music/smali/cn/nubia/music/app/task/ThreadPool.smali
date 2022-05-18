.class public abstract Lcn/nubia/music/app/task/ThreadPool;
.super Ljava/lang/Object;
.source "ThreadPool.java"


# static fields
.field private static mHandler:Landroid/os/Handler;


# instance fields
.field integer:Ljava/lang/Integer;

.field private mBlockQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mPool:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mThreads:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcn/nubia/music/app/task/Job;",
            "Ljava/util/concurrent/Future",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcn/nubia/music/app/task/ThreadPool$1;

    invoke-direct {v0}, Lcn/nubia/music/app/task/ThreadPool$1;-><init>()V

    sput-object v0, Lcn/nubia/music/app/task/ThreadPool;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/app/task/ThreadPool;->mThreads:Ljava/util/WeakHashMap;

    .line 26
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/app/task/ThreadPool;->mBlockQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 46
    return-void
.end method

.method public constructor <init>(IIJI)V
    .locals 9

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/app/task/ThreadPool;->mThreads:Ljava/util/WeakHashMap;

    .line 26
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/app/task/ThreadPool;->mBlockQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 50
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lcn/nubia/music/app/task/ThreadPool;->mBlockQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v8, Lcn/nubia/music/app/task/ThreadPool$2;

    invoke-direct {v8, p0, p5}, Lcn/nubia/music/app/task/ThreadPool$2;-><init>(Lcn/nubia/music/app/task/ThreadPool;I)V

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcn/nubia/music/app/task/ThreadPool;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 60
    return-void
.end method


# virtual methods
.method purge()V
    .locals 5

    .prologue
    .line 90
    iget-object v0, p0, Lcn/nubia/music/app/task/ThreadPool;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->purge()V

    .line 91
    iget-object v0, p0, Lcn/nubia/music/app/task/ThreadPool;->mBlockQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 92
    iget-object v0, p0, Lcn/nubia/music/app/task/ThreadPool;->mThreads:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    iget-object v0, p0, Lcn/nubia/music/app/task/ThreadPool;->mThreads:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 96
    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/app/task/Job;

    .line 97
    iget-object v1, p0, Lcn/nubia/music/app/task/ThreadPool;->mThreads:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Purge thread pool, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcn/nubia/music/app/task/Job;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " removed!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 100
    if-eqz v1, :cond_0

    .line 101
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ConcurrentModificationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 109
    :cond_1
    :goto_1
    return-void

    .line 104
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcn/nubia/music/app/task/ThreadPool;->mThreads:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V
    :try_end_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method put(Lcn/nubia/music/app/task/Job;)V
    .locals 4

    .prologue
    .line 63
    if-nez p1, :cond_0

    .line 75
    :goto_0
    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Put "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/music/app/task/Job;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " into thread pool!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Lcn/nubia/music/app/task/Job;->getMaxTime()I

    move-result v0

    .line 68
    if-lez v0, :cond_1

    .line 69
    sget-object v0, Lcn/nubia/music/app/task/ThreadPool;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 70
    sget-object v1, Lcn/nubia/music/app/task/ThreadPool;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcn/nubia/music/app/task/Job;->getMaxTime()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 72
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/app/task/ThreadPool;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1}, Lcn/nubia/music/app/task/Job;->getRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 73
    invoke-virtual {p1, p0}, Lcn/nubia/music/app/task/Job;->setThreadPool(Lcn/nubia/music/app/task/ThreadPool;)V

    .line 74
    iget-object v1, p0, Lcn/nubia/music/app/task/ThreadPool;->mThreads:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method remove(Lcn/nubia/music/app/task/Job;)V
    .locals 2

    .prologue
    .line 78
    if-nez p1, :cond_0

    .line 87
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/app/task/ThreadPool;->mThreads:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 82
    if-eqz v0, :cond_1

    .line 83
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 85
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/app/task/ThreadPool;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1}, Lcn/nubia/music/app/task/Job;->getRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 86
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/nubia/music/app/task/Job;->setThreadPool(Lcn/nubia/music/app/task/ThreadPool;)V

    goto :goto_0
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Lcn/nubia/music/app/task/ThreadPool;->purge()V

    .line 113
    iget-object v0, p0, Lcn/nubia/music/app/task/ThreadPool;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 114
    return-void
.end method
