.class public Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;
.super Landroid/os/HandlerThread;
.source "HandlerThreadExtension.java"


# static fields
.field private static final SHOW_LOGS:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mStart:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "setupExceptionHandler"    # Z

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;->mStart:Ljava/lang/Object;

    .line 25
    if-eqz p2, :cond_0

    .line 26
    new-instance v0, Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension$1;

    invoke-direct {v0, p0}, Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension$1;-><init>(Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;)V

    invoke-virtual {p0, v0}, Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 36
    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;->mStart:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 3

    .prologue
    .line 40
    sget-object v0, Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLooperPrepared "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;->mHandler:Landroid/os/Handler;

    .line 43
    iget-object v0, p0, Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension$2;

    invoke-direct {v1, p0}, Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension$2;-><init>(Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 55
    iget-object v1, p0, Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    .line 57
    .local v0, "successfullyAddedToQueue":Z
    sget-object v1, Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "post, successfullyAddedToQueue "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method

.method public postAtFrontOfQueue(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 63
    return-void
.end method

.method public postQuit()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension$3;

    invoke-direct {v1, p0}, Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension$3;-><init>(Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    return-void
.end method

.method public remove(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 92
    return-void
.end method

.method public startThread()V
    .locals 3

    .prologue
    .line 66
    sget-object v1, Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;->TAG:Ljava/lang/String;

    const-string v2, ">> startThread"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v2, p0, Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;->mStart:Ljava/lang/Object;

    monitor-enter v2

    .line 69
    :try_start_0
    invoke-virtual {p0}, Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :try_start_1
    iget-object v1, p0, Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;->mStart:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    sget-object v1, Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;->TAG:Ljava/lang/String;

    const-string v2, "<< startThread"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 75
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
