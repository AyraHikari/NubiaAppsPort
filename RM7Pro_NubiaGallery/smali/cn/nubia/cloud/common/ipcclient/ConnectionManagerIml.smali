.class final Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml;
.super Ljava/lang/Object;
.source "ConnectionManager.java"

# interfaces
.implements Lcn/nubia/cloud/common/ipcclient/ConnectionManager;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcn/nubia/cloud/common/ipcclient/ConnectionManager<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceHandler:Lcn/nubia/cloud/common/ipcclient/IServiceHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/cloud/common/ipcclient/IServiceHandler<",
            "TT;>;"
        }
    .end annotation
.end field

.field private service:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcn/nubia/cloud/common/ipcclient/IServiceHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcn/nubia/cloud/common/ipcclient/IServiceHandler<",
            "TT;>;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml;->mLock:Ljava/lang/Object;

    .line 23
    new-instance v0, Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml$1;

    invoke-direct {v0, p0}, Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml$1;-><init>(Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml;)V

    iput-object v0, p0, Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml;->mServiceHandler:Lcn/nubia/cloud/common/ipcclient/IServiceHandler;

    return-void
.end method

.method static synthetic access$0(Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml;)Ljava/lang/Object;
    .locals 0

    .line 19
    iget-object p0, p0, Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1(Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml;)Lcn/nubia/cloud/common/ipcclient/IServiceHandler;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml;->mServiceHandler:Lcn/nubia/cloud/common/ipcclient/IServiceHandler;

    return-object p0
.end method

.method static synthetic access$2(Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml;Ljava/lang/Object;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml;->service:Ljava/lang/Object;

    return-void
.end method

.method private bindService()Z
    .locals 4

    .line 43
    iget-object v0, p0, Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml;->mServiceHandler:Lcn/nubia/cloud/common/ipcclient/IServiceHandler;

    invoke-interface {v0}, Lcn/nubia/cloud/common/ipcclient/IServiceHandler;->onServiceIntent()Landroid/content/Intent;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml;->mContext:Landroid/content/Context;

    .line 45
    iget-object v2, p0, Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    .line 44
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0
.end method

.method private synchronizedLock()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml;->service:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 72
    iget-object v0, p0, Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 73
    :try_start_0
    iget-object v1, p0, Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml;->service:Ljava/lang/Object;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml;->bindService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml;->mLock:Ljava/lang/Object;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 72
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

    .line 52
    :try_start_0
    iget-object v0, p0, Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 98
    invoke-virtual {p0}, Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml;->disconnect()V

    return-void
.end method

.method final disconnect()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml;->service:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 61
    :try_start_0
    iget-object v1, p0, Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml;->service:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 62
    invoke-direct {p0}, Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml;->unbindService()V

    const/4 v1, 0x0

    .line 63
    iput-object v1, p0, Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml;->service:Ljava/lang/Object;

    .line 60
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

    .line 81
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 85
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml;->synchronizedLock()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 89
    :goto_0
    iget-object v0, p0, Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml;->service:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    .line 92
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "can\'t get service"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can not be called from main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
