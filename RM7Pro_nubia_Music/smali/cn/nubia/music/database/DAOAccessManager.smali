.class public Lcn/nubia/music/database/DAOAccessManager;
.super Ljava/lang/Object;
.source "DAOAccessManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/database/DAOAccessManager$c;,
        Lcn/nubia/music/database/DAOAccessManager$b;,
        Lcn/nubia/music/database/DAOAccessManager$a;
    }
.end annotation


# static fields
.field private static final THREAD_LIVE_TIME:J = 0x0L

.field private static final THREAD_POOL_SIZE:I = 0x4

.field private static final THREAD_PRIORITY:I = 0xa

.field private static sInstance:Lcn/nubia/music/database/DAOAccessManager;


# instance fields
.field private mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mUIThreadHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 9

    .prologue
    const/4 v2, 0x4

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcn/nubia/music/database/DAOAccessManager$b;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Lcn/nubia/music/database/DAOAccessManager$b;-><init>(Lcn/nubia/music/database/DAOAccessManager$1;)V

    move v3, v2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcn/nubia/music/database/DAOAccessManager;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 101
    new-instance v0, Lcn/nubia/music/database/DAOAccessManager$c;

    invoke-direct {v0, p0}, Lcn/nubia/music/database/DAOAccessManager$c;-><init>(Lcn/nubia/music/database/DAOAccessManager;)V

    iput-object v0, p0, Lcn/nubia/music/database/DAOAccessManager;->mUIThreadHandler:Landroid/os/Handler;

    .line 102
    return-void
.end method

.method public static getInstance()Lcn/nubia/music/database/DAOAccessManager;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcn/nubia/music/database/DAOAccessManager;->sInstance:Lcn/nubia/music/database/DAOAccessManager;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcn/nubia/music/database/DAOAccessManager;

    invoke-direct {v0}, Lcn/nubia/music/database/DAOAccessManager;-><init>()V

    sput-object v0, Lcn/nubia/music/database/DAOAccessManager;->sInstance:Lcn/nubia/music/database/DAOAccessManager;

    .line 108
    :cond_0
    sget-object v0, Lcn/nubia/music/database/DAOAccessManager;->sInstance:Lcn/nubia/music/database/DAOAccessManager;

    return-object v0
.end method


# virtual methods
.method public cancelAll()V
    .locals 5

    .prologue
    .line 77
    iget-object v0, p0, Lcn/nubia/music/database/DAOAccessManager;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    .line 78
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    new-array v1, v1, [Lcn/nubia/music/database/DAOAccessManager$a;

    .line 80
    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 82
    monitor-enter p0

    .line 83
    :try_start_0
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 84
    invoke-static {v3}, Lcn/nubia/music/database/DAOAccessManager$a;->a(Lcn/nubia/music/database/DAOAccessManager$a;)Lcn/nubia/music/database/AccessRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/music/database/AccessRequest;->cancel()V

    .line 85
    invoke-static {v3}, Lcn/nubia/music/database/DAOAccessManager$a;->a(Lcn/nubia/music/database/DAOAccessManager$a;)Lcn/nubia/music/database/AccessRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/music/database/AccessRequest;->getThread()Ljava/lang/Thread;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 86
    invoke-static {v3}, Lcn/nubia/music/database/DAOAccessManager$a;->a(Lcn/nubia/music/database/DAOAccessManager$a;)Lcn/nubia/music/database/AccessRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/music/database/AccessRequest;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 83
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_1
    monitor-exit p0

    .line 90
    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public execute(Lcn/nubia/music/database/AccessRequest;)V
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p1}, Lcn/nubia/music/database/AccessRequest;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcn/nubia/music/database/DAOAccessManager;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcn/nubia/music/database/DAOAccessManager$a;

    invoke-direct {v1, p0, p1}, Lcn/nubia/music/database/DAOAccessManager$a;-><init>(Lcn/nubia/music/database/DAOAccessManager;Lcn/nubia/music/database/AccessRequest;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 74
    :cond_0
    return-void
.end method

.method public fail(Lcn/nubia/music/database/AccessRequest;)V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcn/nubia/music/database/DAOAccessManager;->mUIThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 113
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 114
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 115
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 116
    return-void
.end method

.method public succeed(Lcn/nubia/music/database/AccessRequest;)V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcn/nubia/music/database/DAOAccessManager;->mUIThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 120
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 121
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 122
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 123
    return-void
.end method
