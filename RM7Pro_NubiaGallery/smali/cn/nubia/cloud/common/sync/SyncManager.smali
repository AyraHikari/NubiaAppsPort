.class public Lcn/nubia/cloud/common/sync/SyncManager;
.super Lcn/nubia/cloud/common/ipcclient/IPCClient;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/common/sync/SyncManager$ISyncCallbackIml;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/cloud/common/ipcclient/IPCClient<",
        "Lcn/nubia/cloud/common/sync/ISyncManager;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "nubia.cloud.sync.SyncManager"

.field public static final KEY_IS_SYNC_ENABLE:Ljava/lang/String; = "key_is_sync_enable"

.field public static final KEY_LAST_SYNC_TIME:Ljava/lang/String; = "last_sync_time"

.field public static final KEY_SYNC_CONDITION:Ljava/lang/String; = "key_sync_condition"

.field public static final KEY_SYNC_LAST_VERSION:Ljava/lang/String; = "sync_last_version"

.field public static final KEY_SYNC_MODULE:Ljava/lang/String; = "key_sync_module"

.field public static final KEY_SYNC_TYPE_VALUE:Ljava/lang/String; = "key_sync_type_value"

.field public static final SYNC_ACCOUNT_CHANGED:I = 0x4

.field public static final SYNC_CONFIG_CHANGE:I = 0x1

.field public static final SYNC_NETWORK_CONNECTED:I = 0x2

.field public static final SYNC_ON_TIMER:I = 0x3


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 24
    new-instance v0, Lcn/nubia/cloud/common/sync/SyncServiceHandler;

    invoke-direct {v0, p1}, Lcn/nubia/cloud/common/sync/SyncServiceHandler;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcn/nubia/cloud/common/ipcclient/IPCClient;-><init>(Landroid/content/Context;Lcn/nubia/cloud/common/ipcclient/IServiceHandler;)V

    return-void
.end method


# virtual methods
.method public sync(Lcn/nubia/cloud/common/module/SyncModule;Lcn/nubia/cloud/common/sync/SyncListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/cloud/common/sync/SyncManager;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/cloud/common/sync/ISyncManager;

    new-instance v1, Lcn/nubia/cloud/common/sync/SyncManager$ISyncCallbackIml;

    invoke-direct {v1, p2}, Lcn/nubia/cloud/common/sync/SyncManager$ISyncCallbackIml;-><init>(Lcn/nubia/cloud/common/sync/SyncListener;)V

    invoke-interface {v0, p1, v1}, Lcn/nubia/cloud/common/sync/ISyncManager;->sync(Lcn/nubia/cloud/common/module/SyncModule;Lcn/nubia/cloud/common/sync/ISyncCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 52
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/common/sync/SyncManager;->onRemoteExceptionOccurred(Landroid/os/RemoteException;)V

    .line 53
    throw p1
.end method

.method public sync(Lcn/nubia/cloud/common/module/SyncType;Lcn/nubia/cloud/common/sync/SyncListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/cloud/common/sync/SyncManager;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/cloud/common/sync/ISyncManager;

    invoke-virtual {p1}, Lcn/nubia/cloud/common/module/SyncType;->intValue()I

    move-result p1

    new-instance v1, Lcn/nubia/cloud/common/sync/SyncManager$ISyncCallbackIml;

    invoke-direct {v1, p2}, Lcn/nubia/cloud/common/sync/SyncManager$ISyncCallbackIml;-><init>(Lcn/nubia/cloud/common/sync/SyncListener;)V

    invoke-interface {v0, p1, v1}, Lcn/nubia/cloud/common/sync/ISyncManager;->syncByType(ILcn/nubia/cloud/common/sync/ISyncCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 32
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/common/sync/SyncManager;->onRemoteExceptionOccurred(Landroid/os/RemoteException;)V

    .line 33
    throw p1
.end method

.method public sync(Ljava/lang/String;Lcn/nubia/cloud/common/sync/SyncListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/cloud/common/sync/SyncManager;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/cloud/common/sync/ISyncManager;

    new-instance v1, Lcn/nubia/cloud/common/sync/SyncManager$ISyncCallbackIml;

    invoke-direct {v1, p2}, Lcn/nubia/cloud/common/sync/SyncManager$ISyncCallbackIml;-><init>(Lcn/nubia/cloud/common/sync/SyncListener;)V

    invoke-interface {v0, p1, v1}, Lcn/nubia/cloud/common/sync/ISyncManager;->syncByModuleToken(Ljava/lang/String;Lcn/nubia/cloud/common/sync/ISyncCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 42
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/common/sync/SyncManager;->onRemoteExceptionOccurred(Landroid/os/RemoteException;)V

    .line 43
    throw p1
.end method
