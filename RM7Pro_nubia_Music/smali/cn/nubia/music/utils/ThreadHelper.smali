.class public Lcn/nubia/music/utils/ThreadHelper;
.super Ljava/lang/Object;
.source "ThreadHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/utils/ThreadHelper$a;
    }
.end annotation


# static fields
.field private static final THREAD_LIVE_TIME:J = 0x0L

.field private static final THREAD_POOL_SIZE:I = 0x4

.field private static final THREAD_PRIORITY:I = 0xa

.field private static handlerThread:Landroid/os/HandlerThread;

.field private static mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 24
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x4

    const/16 v3, 0x8

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcn/nubia/music/utils/ThreadHelper$a;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Lcn/nubia/music/utils/ThreadHelper$a;-><init>(Lcn/nubia/music/utils/ThreadHelper$1;)V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcn/nubia/music/utils/ThreadHelper;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "-->ThreadHelper<--"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/nubia/music/utils/ThreadHelper;->handlerThread:Landroid/os/HandlerThread;

    .line 35
    sget-object v0, Lcn/nubia/music/utils/ThreadHelper;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 37
    return-void
.end method

.method public static postDelayedInUIThread(Ljava/lang/Runnable;J)V
    .locals 3

    .prologue
    .line 89
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    return-void
.end method

.method public static postInMessageThread(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 64
    sget-object v0, Lcn/nubia/music/utils/ThreadHelper;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcn/nubia/music/utils/ThreadHelper;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 67
    :cond_0
    return-void
.end method

.method public static postInNewThread(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcn/nubia/music/utils/ThreadHelper;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 100
    return-void
.end method

.method public static postInNewThreadSerial(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 103
    invoke-static {p0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 104
    return-void
.end method

.method public static postInUIThread(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 85
    return-void
.end method

.method public static quit()V
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcn/nubia/music/utils/ThreadHelper;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 71
    sget-object v0, Lcn/nubia/music/utils/ThreadHelper;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 73
    :cond_0
    return-void
.end method

.method public static removeCallbacksAndMessages(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 95
    return-void
.end method

.method public static sendMsgToUIThread(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 80
    return-void
.end method
