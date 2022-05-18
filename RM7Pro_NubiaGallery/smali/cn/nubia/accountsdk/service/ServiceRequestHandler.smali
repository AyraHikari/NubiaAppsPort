.class public Lcn/nubia/accountsdk/service/ServiceRequestHandler;
.super Ljava/lang/Object;
.source "ServiceRequestHandler.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;
.implements Lcn/nubia/accountsdk/service/DisconnectHandler;


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private final mContext:Landroid/content/Context;

.field private mIsConnecting:Z

.field private mService:Lcn/nubia/accountsdk/aidl/INBAccountService;

.field private final mTaskExecutor:Lcn/nubia/accountsdk/common/TaskExecutor;

.field private mTimerTask:Lcn/nubia/accountsdk/service/DisconnectTimerTask;

.field private final mWaitingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcn/nubia/accountsdk/service/ServiceAsyncRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mIsConnecting:Z

    .line 29
    iput-object p1, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mContext:Landroid/content/Context;

    .line 30
    new-instance p1, Lcn/nubia/accountsdk/common/TaskExecutor;

    invoke-direct {p1}, Lcn/nubia/accountsdk/common/TaskExecutor;-><init>()V

    iput-object p1, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mTaskExecutor:Lcn/nubia/accountsdk/common/TaskExecutor;

    .line 31
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mWaitingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 32
    new-instance p1, Lcn/nubia/accountsdk/service/DisconnectTimerTask;

    invoke-direct {p1, p0}, Lcn/nubia/accountsdk/service/DisconnectTimerTask;-><init>(Lcn/nubia/accountsdk/service/DisconnectHandler;)V

    iput-object p1, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mTimerTask:Lcn/nubia/accountsdk/service/DisconnectTimerTask;

    return-void
.end method

.method private declared-synchronized connect()V
    .locals 3

    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mService:Lcn/nubia/accountsdk/aidl/INBAccountService;

    if-nez v0, :cond_0

    .line 58
    iget-boolean v0, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mIsConnecting:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mIsConnecting:Z

    .line 60
    iget-object v1, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->createAccessIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2, p0, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private createAccessIntent()Landroid/content/Intent;
    .locals 3

    .line 91
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "cn.nubia.accounts"

    const-string v2, "cn.nubia.accounts.nbaccountservice.NBAccountService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/accountsdk/common/SDKConfiguration;->isNewAccountIntent(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "cn.nubia.accounts.NBACCOUNT_SERVICE"

    goto :goto_0

    :cond_0
    const-string v1, "android.intent.action.NBAccountService"

    .line 96
    :goto_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v2
.end method

.method private handleWaitingQueue()V
    .locals 5

    .line 51
    :goto_0
    iget-object v0, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mWaitingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/accountsdk/service/ServiceAsyncRequest;

    if-nez v0, :cond_0

    return-void

    .line 52
    :cond_0
    iget-object v1, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mTaskExecutor:Lcn/nubia/accountsdk/common/TaskExecutor;

    const/4 v2, 0x1

    new-array v2, v2, [Lcn/nubia/accountsdk/aidl/INBAccountService;

    const/4 v3, 0x0

    iget-object v4, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mService:Lcn/nubia/accountsdk/aidl/INBAccountService;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcn/nubia/accountsdk/service/ServiceAsyncRequest;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private isConnected()Z
    .locals 1

    .line 66
    iget-object v0, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mService:Lcn/nubia/accountsdk/aidl/INBAccountService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    const-string v0, "binderDied"

    .line 104
    invoke-static {v0}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mService:Lcn/nubia/accountsdk/aidl/INBAccountService;

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mIsConnecting:Z

    .line 107
    iget-object v0, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mTaskExecutor:Lcn/nubia/accountsdk/common/TaskExecutor;

    invoke-virtual {v0}, Lcn/nubia/accountsdk/common/TaskExecutor;->release()V

    .line 108
    iget-object v0, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mWaitingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 109
    iget-object v0, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mTimerTask:Lcn/nubia/accountsdk/service/DisconnectTimerTask;

    invoke-virtual {v0}, Lcn/nubia/accountsdk/service/DisconnectTimerTask;->cancel()V

    return-void
.end method

.method public declared-synchronized disconnect()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "disconnect"

    .line 114
    invoke-static {v0}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mService:Lcn/nubia/accountsdk/aidl/INBAccountService;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 117
    iget-object v0, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mService:Lcn/nubia/accountsdk/aidl/INBAccountService;

    .line 119
    iput-boolean v1, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mIsConnecting:Z

    .line 120
    iget-object v0, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mTaskExecutor:Lcn/nubia/accountsdk/common/TaskExecutor;

    invoke-virtual {v0}, Lcn/nubia/accountsdk/common/TaskExecutor;->release()V

    .line 121
    iget-object v0, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mWaitingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isConnectionFree()Z
    .locals 1

    .line 127
    iget-object v0, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mWaitingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mTaskExecutor:Lcn/nubia/accountsdk/common/TaskExecutor;

    invoke-virtual {v0}, Lcn/nubia/accountsdk/common/TaskExecutor;->isTaskExecutorFree()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 71
    monitor-enter p0

    .line 72
    :try_start_0
    iput-object p2, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mBinder:Landroid/os/IBinder;

    .line 73
    invoke-static {p2}, Lcn/nubia/accountsdk/aidl/INBAccountService$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/accountsdk/aidl/INBAccountService;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mService:Lcn/nubia/accountsdk/aidl/INBAccountService;

    const/4 p1, 0x0

    .line 74
    iput-boolean p1, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mIsConnecting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :try_start_1
    iget-object p2, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mBinder:Landroid/os/IBinder;

    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 78
    iget-object p1, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mTimerTask:Lcn/nubia/accountsdk/service/DisconnectTimerTask;

    invoke-virtual {p1}, Lcn/nubia/accountsdk/service/DisconnectTimerTask;->start()V

    .line 79
    invoke-direct {p0}, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->handleWaitingQueue()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 81
    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->binderDied()V

    .line 71
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public sendRequest(Lcn/nubia/accountsdk/service/ServiceAsyncRequest;)Z
    .locals 4

    .line 38
    invoke-direct {p0}, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mTaskExecutor:Lcn/nubia/accountsdk/common/TaskExecutor;

    const/4 v2, 0x1

    new-array v2, v2, [Lcn/nubia/accountsdk/aidl/INBAccountService;

    iget-object v3, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mService:Lcn/nubia/accountsdk/aidl/INBAccountService;

    aput-object v3, v2, v1

    invoke-virtual {p1, v0, v2}, Lcn/nubia/accountsdk/service/ServiceAsyncRequest;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->mWaitingQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 42
    invoke-direct {p0}, Lcn/nubia/accountsdk/service/ServiceRequestHandler;->connect()V

    :goto_0
    return v1
.end method
