.class public Lcn/nubia/trafficcontrol/service/DisconnectTask;
.super Ljava/lang/Object;
.source "DisconnectTask.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcn/nubia/trafficcontrol/service/DisconnectTask;


# instance fields
.field private mDisconnectTaskHandler:Landroid/os/Handler;

.field private mDisconnectTaskHandlerThread:Landroid/os/HandlerThread;

.field private mListener:Lcn/nubia/trafficcontrol/interfaces/IDisconnectListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcn/nubia/trafficcontrol/service/DisconnectTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/trafficcontrol/service/DisconnectTask;->TAG:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/trafficcontrol/service/DisconnectTask;->sInstance:Lcn/nubia/trafficcontrol/service/DisconnectTask;

    return-void
.end method

.method private constructor <init>(Lcn/nubia/trafficcontrol/interfaces/IDisconnectListener;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lcn/nubia/trafficcontrol/service/DisconnectTask;->mListener:Lcn/nubia/trafficcontrol/interfaces/IDisconnectListener;

    .line 23
    iput-object v0, p0, Lcn/nubia/trafficcontrol/service/DisconnectTask;->mDisconnectTaskHandler:Landroid/os/Handler;

    .line 24
    iput-object v0, p0, Lcn/nubia/trafficcontrol/service/DisconnectTask;->mDisconnectTaskHandlerThread:Landroid/os/HandlerThread;

    .line 27
    iput-object p1, p0, Lcn/nubia/trafficcontrol/service/DisconnectTask;->mListener:Lcn/nubia/trafficcontrol/interfaces/IDisconnectListener;

    .line 28
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "unbind-remote-service-handler"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcn/nubia/trafficcontrol/service/DisconnectTask;->mDisconnectTaskHandlerThread:Landroid/os/HandlerThread;

    .line 29
    iget-object v0, p0, Lcn/nubia/trafficcontrol/service/DisconnectTask;->mDisconnectTaskHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 30
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/trafficcontrol/service/DisconnectTask;->mDisconnectTaskHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/trafficcontrol/service/DisconnectTask;->mDisconnectTaskHandler:Landroid/os/Handler;

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcn/nubia/trafficcontrol/service/DisconnectTask;)Lcn/nubia/trafficcontrol/interfaces/IDisconnectListener;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcn/nubia/trafficcontrol/service/DisconnectTask;->mListener:Lcn/nubia/trafficcontrol/interfaces/IDisconnectListener;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcn/nubia/trafficcontrol/service/DisconnectTask;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance(Lcn/nubia/trafficcontrol/interfaces/IDisconnectListener;)Lcn/nubia/trafficcontrol/service/DisconnectTask;
    .locals 2

    .prologue
    .line 34
    sget-object v0, Lcn/nubia/trafficcontrol/service/DisconnectTask;->sInstance:Lcn/nubia/trafficcontrol/service/DisconnectTask;

    if-nez v0, :cond_0

    .line 35
    const-class v1, Lcn/nubia/trafficcontrol/service/DisconnectTask;

    monitor-enter v1

    .line 36
    :try_start_0
    new-instance v0, Lcn/nubia/trafficcontrol/service/DisconnectTask;

    invoke-direct {v0, p0}, Lcn/nubia/trafficcontrol/service/DisconnectTask;-><init>(Lcn/nubia/trafficcontrol/interfaces/IDisconnectListener;)V

    sput-object v0, Lcn/nubia/trafficcontrol/service/DisconnectTask;->sInstance:Lcn/nubia/trafficcontrol/service/DisconnectTask;

    .line 35
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_0
    sget-object v0, Lcn/nubia/trafficcontrol/service/DisconnectTask;->sInstance:Lcn/nubia/trafficcontrol/service/DisconnectTask;

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public trigger(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 46
    iget-object v0, p0, Lcn/nubia/trafficcontrol/service/DisconnectTask;->mDisconnectTaskHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lcn/nubia/trafficcontrol/service/DisconnectTask;->mDisconnectTaskHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/trafficcontrol/service/DisconnectTask$1;

    invoke-direct {v1, p0, p1}, Lcn/nubia/trafficcontrol/service/DisconnectTask$1;-><init>(Lcn/nubia/trafficcontrol/service/DisconnectTask;Landroid/content/Context;)V

    .line 56
    sget v2, Lcn/nubia/analytic/util/Consts;->sUnBindServiceTimeout:I

    int-to-long v2, v2

    .line 47
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    return-void
.end method
