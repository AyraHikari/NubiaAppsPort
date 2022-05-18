.class public Lcn/nubia/cloud/common/sync/module/SyncModuleCtrl;
.super Ljava/lang/Object;
.source "SyncModuleCtrl.java"


# static fields
.field public static final HANDLER:Lcn/nubia/cloud/common/module/ModuleCtrlHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/cloud/common/module/ModuleCtrlHandler<",
            "Lcn/nubia/cloud/common/sync/module/SyncModuleCtrl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIPCClient:Lcn/nubia/cloud/common/sync/module/SyncModuleIPCClient;

.field private final mModule:Lcn/nubia/cloud/common/module/Module;

.field private mSpsCtrl:Lcn/nubia/cloud/common/SharedPreferencesCtrl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Lcn/nubia/cloud/common/sync/module/SyncModuleCtrl$1;

    invoke-direct {v0}, Lcn/nubia/cloud/common/sync/module/SyncModuleCtrl$1;-><init>()V

    sput-object v0, Lcn/nubia/cloud/common/sync/module/SyncModuleCtrl;->HANDLER:Lcn/nubia/cloud/common/module/ModuleCtrlHandler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/nubia/cloud/common/module/Module;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-direct {p0, p1}, Lcn/nubia/cloud/common/sync/module/SyncModuleCtrl;->checkAppPackageName(Landroid/content/Context;)V

    .line 21
    iput-object p1, p0, Lcn/nubia/cloud/common/sync/module/SyncModuleCtrl;->mContext:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcn/nubia/cloud/common/sync/module/SyncModuleCtrl;->mModule:Lcn/nubia/cloud/common/module/Module;

    .line 23
    new-instance v0, Lcn/nubia/cloud/common/SharedPreferencesCtrl;

    .line 24
    invoke-virtual {p2}, Lcn/nubia/cloud/common/module/Module;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v0, p1, p2}, Lcn/nubia/cloud/common/SharedPreferencesCtrl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 23
    iput-object v0, p0, Lcn/nubia/cloud/common/sync/module/SyncModuleCtrl;->mSpsCtrl:Lcn/nubia/cloud/common/SharedPreferencesCtrl;

    return-void
.end method

.method private checkAppPackageName(Landroid/content/Context;)V
    .locals 1

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "cn.nubia.cloud"

    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "this class only use in cn.nubia.cloud application"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getIPCClient()Lcn/nubia/cloud/common/sync/module/SyncModuleIPCClient;
    .locals 3

    .line 36
    iget-object v0, p0, Lcn/nubia/cloud/common/sync/module/SyncModuleCtrl;->mIPCClient:Lcn/nubia/cloud/common/sync/module/SyncModuleIPCClient;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcn/nubia/cloud/common/sync/module/SyncModuleServiceHandler;

    .line 38
    iget-object v1, p0, Lcn/nubia/cloud/common/sync/module/SyncModuleCtrl;->mModule:Lcn/nubia/cloud/common/module/Module;

    invoke-virtual {v1}, Lcn/nubia/cloud/common/module/Module;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 37
    invoke-direct {v0, v1}, Lcn/nubia/cloud/common/sync/module/SyncModuleServiceHandler;-><init>(Landroid/content/Intent;)V

    .line 39
    new-instance v1, Lcn/nubia/cloud/common/sync/module/SyncModuleIPCClient;

    iget-object v2, p0, Lcn/nubia/cloud/common/sync/module/SyncModuleCtrl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcn/nubia/cloud/common/sync/module/SyncModuleIPCClient;-><init>(Landroid/content/Context;Lcn/nubia/cloud/common/ipcclient/IServiceHandler;)V

    iput-object v1, p0, Lcn/nubia/cloud/common/sync/module/SyncModuleCtrl;->mIPCClient:Lcn/nubia/cloud/common/sync/module/SyncModuleIPCClient;

    .line 41
    :cond_0
    iget-object v0, p0, Lcn/nubia/cloud/common/sync/module/SyncModuleCtrl;->mIPCClient:Lcn/nubia/cloud/common/sync/module/SyncModuleIPCClient;

    return-object v0
.end method

.method public getLastSyncTime()J
    .locals 4

    .line 65
    iget-object v0, p0, Lcn/nubia/cloud/common/sync/module/SyncModuleCtrl;->mSpsCtrl:Lcn/nubia/cloud/common/SharedPreferencesCtrl;

    const-string v1, "last_sync_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/cloud/common/SharedPreferencesCtrl;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastSyncVersion()J
    .locals 4

    .line 57
    iget-object v0, p0, Lcn/nubia/cloud/common/sync/module/SyncModuleCtrl;->mSpsCtrl:Lcn/nubia/cloud/common/SharedPreferencesCtrl;

    const-string v1, "sync_last_version"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/cloud/common/SharedPreferencesCtrl;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasDataChanged()Z
    .locals 2

    const/4 v0, 0x0

    .line 80
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/cloud/common/sync/module/SyncModuleCtrl;->getIPCClient()Lcn/nubia/cloud/common/sync/module/SyncModuleIPCClient;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/cloud/common/sync/module/SyncModuleIPCClient;->getService()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/cloud/common/sync/ISyncStorage;

    invoke-interface {v1}, Lcn/nubia/cloud/common/sync/ISyncStorage;->getDirtyData()Lcn/nubia/cloud/common/sync/ClosableEnumeration;

    move-result-object v0

    .line 81
    invoke-interface {v0}, Lcn/nubia/cloud/common/sync/ClosableEnumeration;->hasNext()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 87
    :try_start_1
    invoke-interface {v0}, Lcn/nubia/cloud/common/sync/ClosableEnumeration;->close()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 91
    :catch_0
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/cloud/common/sync/module/SyncModuleCtrl;->getIPCClient()Lcn/nubia/cloud/common/sync/module/SyncModuleIPCClient;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/cloud/common/sync/module/SyncModuleIPCClient;->close()V

    return v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 83
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    .line 87
    :try_start_3
    invoke-interface {v0}, Lcn/nubia/cloud/common/sync/ClosableEnumeration;->close()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 91
    :catch_2
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/cloud/common/sync/module/SyncModuleCtrl;->getIPCClient()Lcn/nubia/cloud/common/sync/module/SyncModuleIPCClient;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/cloud/common/sync/module/SyncModuleIPCClient;->close()V

    const/4 v0, 0x0

    return v0

    :goto_0
    if-eqz v0, :cond_2

    .line 87
    :try_start_4
    invoke-interface {v0}, Lcn/nubia/cloud/common/sync/ClosableEnumeration;->close()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 91
    :catch_3
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/cloud/common/sync/module/SyncModuleCtrl;->getIPCClient()Lcn/nubia/cloud/common/sync/module/SyncModuleIPCClient;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/cloud/common/sync/module/SyncModuleIPCClient;->close()V

    .line 92
    throw v1
.end method

.method public isSyncEnable()Z
    .locals 3

    .line 49
    iget-object v0, p0, Lcn/nubia/cloud/common/sync/module/SyncModuleCtrl;->mSpsCtrl:Lcn/nubia/cloud/common/SharedPreferencesCtrl;

    const-string v1, "key_is_sync_enable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/nubia/cloud/common/SharedPreferencesCtrl;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public saveLastSyncTime(J)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcn/nubia/cloud/common/sync/module/SyncModuleCtrl;->mSpsCtrl:Lcn/nubia/cloud/common/SharedPreferencesCtrl;

    const-string v1, "last_sync_time"

    invoke-virtual {v0, v1, p1, p2}, Lcn/nubia/cloud/common/SharedPreferencesCtrl;->put(Ljava/lang/String;J)V

    return-void
.end method

.method public saveLastSyncVersion(J)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcn/nubia/cloud/common/sync/module/SyncModuleCtrl;->mSpsCtrl:Lcn/nubia/cloud/common/SharedPreferencesCtrl;

    const-string v1, "sync_last_version"

    invoke-virtual {v0, v1, p1, p2}, Lcn/nubia/cloud/common/SharedPreferencesCtrl;->put(Ljava/lang/String;J)V

    return-void
.end method

.method public setSyncEnable(Z)V
    .locals 2

    .line 45
    iget-object v0, p0, Lcn/nubia/cloud/common/sync/module/SyncModuleCtrl;->mSpsCtrl:Lcn/nubia/cloud/common/SharedPreferencesCtrl;

    const-string v1, "key_is_sync_enable"

    invoke-virtual {v0, v1, p1}, Lcn/nubia/cloud/common/SharedPreferencesCtrl;->put(Ljava/lang/String;Z)V

    return-void
.end method
