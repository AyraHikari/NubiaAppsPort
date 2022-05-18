.class final Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;
.super Ljava/lang/Object;
.source "ConnectionManager.java"

# interfaces
.implements Lcn/nubia/cloud/utils/ipcclient/ConnectionManager;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcn/nubia/cloud/utils/ipcclient/ConnectionManager<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private mService:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private final mServiceHandler:Lcn/nubia/cloud/utils/ipcclient/IServiceHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/cloud/utils/ipcclient/IServiceHandler<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mStatuMonitor:Lcn/nubia/cloud/utils/ipcclient/StatuMonitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/cloud/utils/ipcclient/StatuMonitor<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcn/nubia/cloud/utils/ipcclient/IServiceHandler;Lcn/nubia/cloud/utils/ipcclient/StatuMonitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcn/nubia/cloud/utils/ipcclient/IServiceHandler<",
            "TT;>;",
            "Lcn/nubia/cloud/utils/ipcclient/StatuMonitor<",
            "TT;>;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->mLock:Ljava/lang/Object;

    .line 24
    new-instance v0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml$1;

    invoke-direct {v0, p0}, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml$1;-><init>(Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;)V

    iput-object v0, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->mServiceHandler:Lcn/nubia/cloud/utils/ipcclient/IServiceHandler;

    .line 43
    iput-object p3, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->mStatuMonitor:Lcn/nubia/cloud/utils/ipcclient/StatuMonitor;

    return-void
.end method

.method static synthetic access$0(Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;)Lcn/nubia/cloud/utils/ipcclient/StatuMonitor;
    .locals 0

    .line 20
    iget-object p0, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->mStatuMonitor:Lcn/nubia/cloud/utils/ipcclient/StatuMonitor;

    return-object p0
.end method

.method static synthetic access$1(Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;)Ljava/lang/Object;
    .locals 0

    .line 19
    iget-object p0, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2(Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;)Lcn/nubia/cloud/utils/ipcclient/IServiceHandler;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->mServiceHandler:Lcn/nubia/cloud/utils/ipcclient/IServiceHandler;

    return-object p0
.end method

.method static synthetic access$3(Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;Ljava/lang/Object;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->mService:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$4(Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;)Ljava/lang/Object;
    .locals 0

    .line 22
    iget-object p0, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->mService:Ljava/lang/Object;

    return-object p0
.end method

.method private bindService()Z
    .locals 4

    .line 47
    iget-object v0, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->mServiceHandler:Lcn/nubia/cloud/utils/ipcclient/IServiceHandler;

    invoke-interface {v0}, Lcn/nubia/cloud/utils/ipcclient/IServiceHandler;->onServiceIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v1, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->mContext:Landroid/content/Context;

    .line 49
    iget-object v2, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    .line 48
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private synchronizedLock()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->mService:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 76
    iget-object v0, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_0
    iget-object v1, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->mService:Ljava/lang/Object;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->bindService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->mLock:Ljava/lang/Object;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 76
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method private unbindService()V
    .locals 2

    .line 56
    :try_start_0
    iget-object v0, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 102
    invoke-virtual {p0}, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->disconnect()V

    return-void
.end method

.method final disconnect()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->mService:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 65
    :try_start_0
    iget-object v1, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->mService:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 66
    invoke-direct {p0}, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->unbindService()V

    const/4 v1, 0x0

    .line 67
    iput-object v1, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->mService:Ljava/lang/Object;

    .line 64
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public final getService()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 89
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->synchronizedLock()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 93
    :goto_0
    iget-object v0, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->mService:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    .line 96
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "can\'t get service"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can not be called from main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
