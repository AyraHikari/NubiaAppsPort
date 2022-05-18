.class public Lcn/nubia/cloud/sync/common/SyncModuleIPCClient;
.super Lcn/nubia/cloud/utils/ipcclient/IPCClient;
.source "SyncModuleIPCClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/cloud/utils/ipcclient/IPCClient",
        "<",
        "Lcn/nubia/cloud/sync/common/ISyncStorage;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/cloud/utils/ipcclient/IServiceHandler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcn/nubia/cloud/utils/ipcclient/IServiceHandler",
            "<",
            "Lcn/nubia/cloud/sync/common/ISyncStorage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 11
    .local p2, "handler":Lcn/nubia/cloud/utils/ipcclient/IServiceHandler;, "Lcn/nubia/cloud/utils/ipcclient/IServiceHandler<Lcn/nubia/cloud/sync/common/ISyncStorage;>;"
    invoke-direct {p0, p1, p2}, Lcn/nubia/cloud/utils/ipcclient/IPCClient;-><init>(Landroid/content/Context;Lcn/nubia/cloud/utils/ipcclient/IServiceHandler;)V

    .line 12
    return-void
.end method


# virtual methods
.method public getLastSyncVersion(Ljava/lang/String;)J
    .locals 4
    .param p1, "user"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 16
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/cloud/sync/common/SyncModuleIPCClient;->getService()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/cloud/sync/common/ISyncStorage;

    invoke-interface {v1, p1}, Lcn/nubia/cloud/sync/common/ISyncStorage;->getLastSyncVersion(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 17
    :catch_0
    move-exception v0

    .line 18
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/sync/common/SyncModuleIPCClient;->onRemoteExceptionOccurred(Landroid/os/RemoteException;)V

    .line 19
    throw v0
.end method

.method public queryDirtyData()Lcn/nubia/cloud/sync/common/ClosableEnumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 25
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/cloud/sync/common/SyncModuleIPCClient;->getService()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/cloud/sync/common/ISyncStorage;

    invoke-interface {v1}, Lcn/nubia/cloud/sync/common/ISyncStorage;->getDirtyData()Lcn/nubia/cloud/sync/common/ClosableEnumeration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/sync/common/SyncModuleIPCClient;->onRemoteExceptionOccurred(Landroid/os/RemoteException;)V

    .line 28
    throw v0
.end method

.method public syncComplete(JLcn/nubia/cloud/sync/common/ClosableEnumeration;)V
    .locals 3
    .param p1, "serverVersion"    # J
    .param p3, "idmaps"    # Lcn/nubia/cloud/sync/common/ClosableEnumeration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 44
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/cloud/sync/common/SyncModuleIPCClient;->getService()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/cloud/sync/common/ISyncStorage;

    invoke-interface {v1, p1, p2, p3}, Lcn/nubia/cloud/sync/common/ISyncStorage;->onPushComplete(JLcn/nubia/cloud/sync/common/ClosableEnumeration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/sync/common/SyncModuleIPCClient;->onRemoteExceptionOccurred(Landroid/os/RemoteException;)V

    .line 47
    throw v0
.end method

.method public updateAttachData(Lcn/nubia/cloud/sync/common/ClosableEnumeration;)Lcn/nubia/cloud/sync/common/ClosableEnumeration;
    .locals 2
    .param p1, "items"    # Lcn/nubia/cloud/sync/common/ClosableEnumeration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 53
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/cloud/sync/common/SyncModuleIPCClient;->getService()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/cloud/sync/common/ISyncStorage;

    invoke-interface {v1, p1}, Lcn/nubia/cloud/sync/common/ISyncStorage;->onAttachmentsPulled(Lcn/nubia/cloud/sync/common/ClosableEnumeration;)Lcn/nubia/cloud/sync/common/ClosableEnumeration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/sync/common/SyncModuleIPCClient;->onRemoteExceptionOccurred(Landroid/os/RemoteException;)V

    .line 56
    throw v0
.end method

.method public updateData(JLcn/nubia/cloud/sync/common/ClosableEnumeration;)V
    .locals 3
    .param p1, "serverVersion"    # J
    .param p3, "items"    # Lcn/nubia/cloud/sync/common/ClosableEnumeration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 34
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/cloud/sync/common/SyncModuleIPCClient;->getService()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/cloud/sync/common/ISyncStorage;

    invoke-interface {v1, p1, p2, p3}, Lcn/nubia/cloud/sync/common/ISyncStorage;->onServerItemsPulled(JLcn/nubia/cloud/sync/common/ClosableEnumeration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/sync/common/SyncModuleIPCClient;->onRemoteExceptionOccurred(Landroid/os/RemoteException;)V

    .line 37
    throw v0
.end method
