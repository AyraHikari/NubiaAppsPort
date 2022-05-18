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
        "Lcn/nubia/cloud/utils/ipcclient/ConnectionManager",
        "<TT;>;"
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
            "Lcn/nubia/cloud/utils/ipcclient/IServiceHandler",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mStatuMonitor:Lcn/nubia/cloud/utils/ipcclient/StatuMonitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/cloud/utils/ipcclient/StatuMonitor",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcn/nubia/cloud/utils/ipcclient/IServiceHandler;Lcn/nubia/cloud/utils/ipcclient/StatuMonitor;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcn/nubia/cloud/utils/ipcclient/IServiceHandler",
            "<TT;>;",
            "Lcn/nubia/cloud/utils/ipcclient/StatuMonitor",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;, "Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml<TT;>;"
    .local p2, "serviceHandler":Lcn/nubia/cloud/utils/ipcclient/IServiceHandler;, "Lcn/nubia/cloud/utils/ipcclient/IServiceHandler<TT;>;"
    .local p3, "statuMonitor":Lcn/nubia/cloud/utils/ipcclient/StatuMonitor;, "Lcn/nubia/cloud/utils/ipcclient/StatuMonitor<TT;>;"
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

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->mServiceHandler:Lcn/nubia/cloud/utils/ipcclient/IServiceHandler;

    .line 43
    iput-object p3, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->mStatuMonitor:Lcn/nubia/cloud/utils/ipcclient/StatuMonitor;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;)Lcn/nubia/cloud/utils/ipcclient/StatuMonitor;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;

    .prologue
    .line 17
    iget-object v0, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->mStatuMonitor:Lcn/nubia/cloud/utils/ipcclient/StatuMonitor;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;

    .prologue
    .line 17
    iget-object v0, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;

    .prologue
    .line 17
    iget-object v0, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->mService:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$202(Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 17
    iput-object p1, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->mService:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$300(Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;)Lcn/nubia/cloud/utils/ipcclient/IServiceHandler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;

    .prologue
    .line 17
    iget-object v0, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->mServiceHandler:Lcn/nubia/cloud/utils/ipcclient/IServiceHandler;

    return-object v0
.end method

.method private bindService()Z
    .locals 4

    .prologue
    .local p0, "this":Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;, "Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml<TT;>;"
    const/4 v1, 0x1

    .line 47
    iget-object v2, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->mServiceHandler:Lcn/nubia/cloud/utils/ipcclient/IServiceHandler;

    invoke-interface {v2}, Lcn/nubia/cloud/utils/ipcclient/IServiceHandler;->onServiceIntent()Landroid/content/Intent;

    move-result-object v0

    .line 48
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private synchronizedLock()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;, "Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml<TT;>;"
    iget-object v0, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->mService:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 76
    iget-object v1, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 77
    :try_start_0
    iget-object v0, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->mService:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->bindService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->mLock:Ljava/lang/Object;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 80
    :cond_0
    monitor-exit v1

    .line 82
    :cond_1
    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private unbindService()V
    .locals 3

    .prologue
    .line 56
    .local p0, "this":Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;, "Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml<TT;>;"
    :try_start_0
    iget-object v1, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 102
    .local p0, "this":Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;, "Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml<TT;>;"
    invoke-virtual {p0}, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->disconnect()V

    .line 103
    return-void
.end method

.method final disconnect()V
    .locals 2

    .prologue
    .line 63
    .local p0, "this":Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;, "Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml<TT;>;"
    iget-object v0, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->mService:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 64
    iget-object v1, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 65
    :try_start_0
    iget-object v0, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->mService:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 66
    invoke-direct {p0}, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->unbindService()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->mService:Ljava/lang/Object;

    .line 69
    :cond_0
    monitor-exit v1

    .line 71
    :cond_1
    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getService()Ljava/lang/Object;
    .locals 3
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

    .prologue
    .line 85
    .local p0, "this":Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;, "Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml<TT;>;"
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 86
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "can not be called from main thread"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 89
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->synchronizedLock()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    iget-object v1, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->mService:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->mService:Ljava/lang/Object;

    return-object v1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 96
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "can\'t get service"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
