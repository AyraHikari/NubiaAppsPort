.class public Lcn/nubia/cloud/sync/common/SyncModuleCtrl;
.super Ljava/lang/Object;
.source "SyncModuleCtrl.java"


# static fields
.field public static final HANDLER:Lcn/nubia/cloud/service/common/ModuleCtrlHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/cloud/service/common/ModuleCtrlHandler",
            "<",
            "Lcn/nubia/cloud/sync/common/SyncModuleCtrl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIPCClient:Lcn/nubia/cloud/sync/common/SyncModuleIPCClient;

.field private final mModule:Lcn/nubia/cloud/service/common/Module;

.field private mSpsCtrl:Lcn/nubia/cloud/utils/SharedPreferencesCtrl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcn/nubia/cloud/sync/common/SyncModuleCtrl$1;

    invoke-direct {v0}, Lcn/nubia/cloud/sync/common/SyncModuleCtrl$1;-><init>()V

    sput-object v0, Lcn/nubia/cloud/sync/common/SyncModuleCtrl;->HANDLER:Lcn/nubia/cloud/service/common/ModuleCtrlHandler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/nubia/cloud/service/common/Module;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "module"    # Lcn/nubia/cloud/service/common/Module;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-direct {p0, p1}, Lcn/nubia/cloud/sync/common/SyncModuleCtrl;->checkAppPackageName(Landroid/content/Context;)V

    .line 18
    iput-object p1, p0, Lcn/nubia/cloud/sync/common/SyncModuleCtrl;->mContext:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcn/nubia/cloud/sync/common/SyncModuleCtrl;->mModule:Lcn/nubia/cloud/service/common/Module;

    .line 20
    new-instance v0, Lcn/nubia/cloud/utils/SharedPreferencesCtrl;

    invoke-virtual {p2}, Lcn/nubia/cloud/service/common/Module;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcn/nubia/cloud/utils/SharedPreferencesCtrl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/cloud/sync/common/SyncModuleCtrl;->mSpsCtrl:Lcn/nubia/cloud/utils/SharedPreferencesCtrl;

    .line 22
    return-void
.end method

.method private checkAppPackageName(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "appPackageName":Ljava/lang/String;
    const-string v1, "cn.nubia.cloud"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "this class only use in cn.nubia.cloud application"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 30
    :cond_0
    return-void
.end method


# virtual methods
.method public getIPCClient()Lcn/nubia/cloud/sync/common/SyncModuleIPCClient;
    .locals 3

    .prologue
    .line 33
    iget-object v1, p0, Lcn/nubia/cloud/sync/common/SyncModuleCtrl;->mIPCClient:Lcn/nubia/cloud/sync/common/SyncModuleIPCClient;

    if-nez v1, :cond_0

    .line 34
    new-instance v0, Lcn/nubia/cloud/sync/common/SyncModuleServiceHandler;

    iget-object v1, p0, Lcn/nubia/cloud/sync/common/SyncModuleCtrl;->mModule:Lcn/nubia/cloud/service/common/Module;

    invoke-virtual {v1}, Lcn/nubia/cloud/service/common/Module;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/cloud/sync/common/SyncModuleServiceHandler;-><init>(Landroid/content/Intent;)V

    .line 36
    .local v0, "h":Lcn/nubia/cloud/sync/common/SyncModuleServiceHandler;
    new-instance v1, Lcn/nubia/cloud/sync/common/SyncModuleIPCClient;

    iget-object v2, p0, Lcn/nubia/cloud/sync/common/SyncModuleCtrl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcn/nubia/cloud/sync/common/SyncModuleIPCClient;-><init>(Landroid/content/Context;Lcn/nubia/cloud/utils/ipcclient/IServiceHandler;)V

    iput-object v1, p0, Lcn/nubia/cloud/sync/common/SyncModuleCtrl;->mIPCClient:Lcn/nubia/cloud/sync/common/SyncModuleIPCClient;

    .line 38
    .end local v0    # "h":Lcn/nubia/cloud/sync/common/SyncModuleServiceHandler;
    :cond_0
    iget-object v1, p0, Lcn/nubia/cloud/sync/common/SyncModuleCtrl;->mIPCClient:Lcn/nubia/cloud/sync/common/SyncModuleIPCClient;

    return-object v1
.end method

.method public getLastSyncTime()J
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Lcn/nubia/cloud/sync/common/SyncModuleCtrl;->mSpsCtrl:Lcn/nubia/cloud/utils/SharedPreferencesCtrl;

    const-string v1, "last_sync_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/cloud/utils/SharedPreferencesCtrl;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastSyncVersion()J
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, Lcn/nubia/cloud/sync/common/SyncModuleCtrl;->mSpsCtrl:Lcn/nubia/cloud/utils/SharedPreferencesCtrl;

    const-string v1, "sync_last_version"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/cloud/utils/SharedPreferencesCtrl;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasDataChanged()Z
    .locals 4

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 86
    .local v0, "data":Lcn/nubia/cloud/sync/common/ClosableEnumeration;
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/cloud/sync/common/SyncModuleCtrl;->getIPCClient()Lcn/nubia/cloud/sync/common/SyncModuleIPCClient;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/cloud/sync/common/SyncModuleIPCClient;->getService()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/cloud/sync/common/ISyncStorage;

    invoke-interface {v2}, Lcn/nubia/cloud/sync/common/ISyncStorage;->getDirtyData()Lcn/nubia/cloud/sync/common/ClosableEnumeration;

    move-result-object v0

    .line 87
    invoke-interface {v0}, Lcn/nubia/cloud/sync/common/ClosableEnumeration;->hasNext()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 91
    if-eqz v0, :cond_0

    .line 93
    :try_start_1
    invoke-interface {v0}, Lcn/nubia/cloud/sync/common/ClosableEnumeration;->close()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 97
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/cloud/sync/common/SyncModuleCtrl;->getIPCClient()Lcn/nubia/cloud/sync/common/SyncModuleIPCClient;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/cloud/sync/common/SyncModuleIPCClient;->close()V

    .line 99
    :goto_1
    return v2

    .line 88
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    if-eqz v0, :cond_1

    .line 93
    :try_start_3
    invoke-interface {v0}, Lcn/nubia/cloud/sync/common/ClosableEnumeration;->close()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 97
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcn/nubia/cloud/sync/common/SyncModuleCtrl;->getIPCClient()Lcn/nubia/cloud/sync/common/SyncModuleIPCClient;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/cloud/sync/common/SyncModuleIPCClient;->close()V

    .line 99
    const/4 v2, 0x0

    goto :goto_1

    .line 91
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    .line 93
    :try_start_4
    invoke-interface {v0}, Lcn/nubia/cloud/sync/common/ClosableEnumeration;->close()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 97
    :cond_2
    :goto_3
    invoke-virtual {p0}, Lcn/nubia/cloud/sync/common/SyncModuleCtrl;->getIPCClient()Lcn/nubia/cloud/sync/common/SyncModuleIPCClient;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/cloud/sync/common/SyncModuleIPCClient;->close()V

    throw v2

    .line 94
    :catch_1
    move-exception v3

    goto :goto_0

    .restart local v1    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    goto :goto_2

    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_3
    move-exception v3

    goto :goto_3
.end method

.method public isSyncEnable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 46
    iget-object v1, p0, Lcn/nubia/cloud/sync/common/SyncModuleCtrl;->mSpsCtrl:Lcn/nubia/cloud/utils/SharedPreferencesCtrl;

    const-string v2, "key_is_sync_enable"

    invoke-virtual {v1, v2, v0}, Lcn/nubia/cloud/utils/SharedPreferencesCtrl;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/nubia/cloud/sync/common/SyncModuleCtrl;->mModule:Lcn/nubia/cloud/service/common/Module;

    invoke-virtual {v1}, Lcn/nubia/cloud/service/common/Module;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isWaitSync()Z
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcn/nubia/cloud/sync/common/SyncModuleCtrl;->mSpsCtrl:Lcn/nubia/cloud/utils/SharedPreferencesCtrl;

    const-string v1, "key_is_wait_sync"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/nubia/cloud/utils/SharedPreferencesCtrl;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public saveLastSyncTime(J)V
    .locals 3
    .param p1, "lastSyncTime"    # J

    .prologue
    .line 67
    iget-object v0, p0, Lcn/nubia/cloud/sync/common/SyncModuleCtrl;->mSpsCtrl:Lcn/nubia/cloud/utils/SharedPreferencesCtrl;

    const-string v1, "last_sync_time"

    invoke-virtual {v0, v1, p1, p2}, Lcn/nubia/cloud/utils/SharedPreferencesCtrl;->put(Ljava/lang/String;J)V

    .line 68
    return-void
.end method

.method public saveLastSyncVersion(J)V
    .locals 3
    .param p1, "version"    # J

    .prologue
    .line 59
    iget-object v0, p0, Lcn/nubia/cloud/sync/common/SyncModuleCtrl;->mSpsCtrl:Lcn/nubia/cloud/utils/SharedPreferencesCtrl;

    const-string v1, "sync_last_version"

    invoke-virtual {v0, v1, p1, p2}, Lcn/nubia/cloud/utils/SharedPreferencesCtrl;->put(Ljava/lang/String;J)V

    .line 60
    return-void
.end method

.method public setIsWaitSync(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 51
    iget-object v0, p0, Lcn/nubia/cloud/sync/common/SyncModuleCtrl;->mSpsCtrl:Lcn/nubia/cloud/utils/SharedPreferencesCtrl;

    const-string v1, "key_is_wait_sync"

    invoke-virtual {v0, v1, p1}, Lcn/nubia/cloud/utils/SharedPreferencesCtrl;->put(Ljava/lang/String;Z)V

    .line 52
    return-void
.end method

.method public setSyncEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 42
    iget-object v0, p0, Lcn/nubia/cloud/sync/common/SyncModuleCtrl;->mSpsCtrl:Lcn/nubia/cloud/utils/SharedPreferencesCtrl;

    const-string v1, "key_is_sync_enable"

    invoke-virtual {v0, v1, p1}, Lcn/nubia/cloud/utils/SharedPreferencesCtrl;->put(Ljava/lang/String;Z)V

    .line 43
    return-void
.end method
