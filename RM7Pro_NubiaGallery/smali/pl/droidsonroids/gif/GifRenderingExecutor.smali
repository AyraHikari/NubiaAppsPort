.class final Lpl/droidsonroids/gif/GifRenderingExecutor;
.super Ljava/util/concurrent/ScheduledThreadPoolExecutor;
.source "GifRenderingExecutor.java"


# static fields
.field private static volatile instance:Lpl/droidsonroids/gif/GifRenderingExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 12
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v0}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/RejectedExecutionHandler;)V

    return-void
.end method

.method public static getInstance()Lpl/droidsonroids/gif/GifRenderingExecutor;
    .locals 2

    .line 19
    sget-object v0, Lpl/droidsonroids/gif/GifRenderingExecutor;->instance:Lpl/droidsonroids/gif/GifRenderingExecutor;

    if-nez v0, :cond_1

    .line 20
    const-class v0, Lpl/droidsonroids/gif/GifRenderingExecutor;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lpl/droidsonroids/gif/GifRenderingExecutor;->instance:Lpl/droidsonroids/gif/GifRenderingExecutor;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Lpl/droidsonroids/gif/GifRenderingExecutor;

    invoke-direct {v1}, Lpl/droidsonroids/gif/GifRenderingExecutor;-><init>()V

    sput-object v1, Lpl/droidsonroids/gif/GifRenderingExecutor;->instance:Lpl/droidsonroids/gif/GifRenderingExecutor;

    .line 24
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 26
    :cond_1
    :goto_0
    sget-object v0, Lpl/droidsonroids/gif/GifRenderingExecutor;->instance:Lpl/droidsonroids/gif/GifRenderingExecutor;

    return-object v0
.end method
