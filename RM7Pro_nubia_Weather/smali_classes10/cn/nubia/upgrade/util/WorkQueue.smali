.class public Lcn/nubia/upgrade/util/WorkQueue;
.super Ljava/lang/Object;
.source "WorkQueue.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcn/nubia/upgrade/util/WorkQueue;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcn/nubia/upgrade/util/WorkQueue;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/upgrade/util/WorkQueue;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcn/nubia/upgrade/util/WorkQueue;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/upgrade/util/WorkQueue;->mThread:Landroid/os/HandlerThread;

    .line 19
    iget-object v0, p0, Lcn/nubia/upgrade/util/WorkQueue;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 20
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/upgrade/util/WorkQueue;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/upgrade/util/WorkQueue;->mHandler:Landroid/os/Handler;

    .line 21
    return-void
.end method

.method public static getInstance()Lcn/nubia/upgrade/util/WorkQueue;
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lcn/nubia/upgrade/util/WorkQueue;->sInstance:Lcn/nubia/upgrade/util/WorkQueue;

    if-nez v0, :cond_1

    .line 25
    const-class v1, Lcn/nubia/upgrade/util/WorkQueue;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lcn/nubia/upgrade/util/WorkQueue;->sInstance:Lcn/nubia/upgrade/util/WorkQueue;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcn/nubia/upgrade/util/WorkQueue;

    invoke-direct {v0}, Lcn/nubia/upgrade/util/WorkQueue;-><init>()V

    sput-object v0, Lcn/nubia/upgrade/util/WorkQueue;->sInstance:Lcn/nubia/upgrade/util/WorkQueue;

    .line 29
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_1
    sget-object v0, Lcn/nubia/upgrade/util/WorkQueue;->sInstance:Lcn/nubia/upgrade/util/WorkQueue;

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public add(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 35
    iget-object v0, p0, Lcn/nubia/upgrade/util/WorkQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    return-void
.end method

.method public quit()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcn/nubia/upgrade/util/WorkQueue;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 40
    return-void
.end method
