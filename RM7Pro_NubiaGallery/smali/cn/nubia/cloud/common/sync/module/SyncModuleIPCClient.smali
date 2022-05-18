.class public Lcn/nubia/cloud/common/sync/module/SyncModuleIPCClient;
.super Lcn/nubia/cloud/common/ipcclient/IPCClient;
.source "SyncModuleIPCClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/cloud/common/ipcclient/IPCClient<",
        "Lcn/nubia/cloud/common/sync/ISyncStorage;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/cloud/common/ipcclient/IServiceHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcn/nubia/cloud/common/ipcclient/IServiceHandler<",
            "Lcn/nubia/cloud/common/sync/ISyncStorage;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Lcn/nubia/cloud/common/ipcclient/IPCClient;-><init>(Landroid/content/Context;Lcn/nubia/cloud/common/ipcclient/IServiceHandler;)V

    return-void
.end method


# virtual methods
.method public getLastSyncVersion(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/cloud/common/sync/module/SyncModuleIPCClient;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/cloud/common/sync/ISyncStorage;

    invoke-interface {v0, p1}, Lcn/nubia/cloud/common/sync/ISyncStorage;->getLastSyncVersion(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/common/sync/module/SyncModuleIPCClient;->onRemoteExceptionOccurred(Landroid/os/RemoteException;)V

    .line 22
    throw p1
.end method

.method public queryDirtyData()Lcn/nubia/cloud/common/sync/ClosableEnumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/cloud/common/sync/module/SyncModuleIPCClient;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/cloud/common/sync/ISyncStorage;

    invoke-interface {v0}, Lcn/nubia/cloud/common/sync/ISyncStorage;->getDirtyData()Lcn/nubia/cloud/common/sync/ClosableEnumeration;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/common/sync/module/SyncModuleIPCClient;->onRemoteExceptionOccurred(Landroid/os/RemoteException;)V

    .line 31
    throw v0
.end method

.method public syncComplete(JLcn/nubia/cloud/common/sync/ClosableEnumeration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/cloud/common/sync/module/SyncModuleIPCClient;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/cloud/common/sync/ISyncStorage;

    invoke-interface {v0, p1, p2, p3}, Lcn/nubia/cloud/common/sync/ISyncStorage;->onPushComplete(JLcn/nubia/cloud/common/sync/ClosableEnumeration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 49
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/common/sync/module/SyncModuleIPCClient;->onRemoteExceptionOccurred(Landroid/os/RemoteException;)V

    .line 50
    throw p1
.end method

.method public updateData(JLcn/nubia/cloud/common/sync/ClosableEnumeration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/cloud/common/sync/module/SyncModuleIPCClient;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/cloud/common/sync/ISyncStorage;

    invoke-interface {v0, p1, p2, p3}, Lcn/nubia/cloud/common/sync/ISyncStorage;->onServerItemsPulled(JLcn/nubia/cloud/common/sync/ClosableEnumeration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 39
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/common/sync/module/SyncModuleIPCClient;->onRemoteExceptionOccurred(Landroid/os/RemoteException;)V

    .line 40
    throw p1
.end method
