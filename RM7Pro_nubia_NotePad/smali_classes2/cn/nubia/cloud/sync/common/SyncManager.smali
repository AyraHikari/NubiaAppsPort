.class public Lcn/nubia/cloud/sync/common/SyncManager;
.super Lcn/nubia/cloud/utils/ipcclient/IPCClient;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/sync/common/SyncManager$ISyncCallbackIml;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/cloud/utils/ipcclient/IPCClient",
        "<",
        "Lcn/nubia/cloud/sync/common/ISyncManager;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "nubia.cloud.sync.SyncManager"

.field public static final AppPackageName:Ljava/lang/String; = "cn.nubia.cloud"

.field public static final KEY_IS_SYNC_ENABLE:Ljava/lang/String; = "key_is_sync_enable"

.field public static final KEY_IS_WAIT_SYNC:Ljava/lang/String; = "key_is_wait_sync"

.field public static final KEY_LAST_SYNC_TIME:Ljava/lang/String; = "last_sync_time"

.field public static final KEY_MODULE_TOKEN:Ljava/lang/String; = "key_module_token"

.field public static final KEY_SYNC_CONDITION:Ljava/lang/String; = "key_sync_condition"

.field public static final KEY_SYNC_LAST_VERSION:Ljava/lang/String; = "sync_last_version"

.field public static final KEY_SYNC_MODULE:Ljava/lang/String; = "key_sync_module"

.field public static final KEY_SYNC_TYPE_VALUE:Ljava/lang/String; = "key_sync_type_value"

.field public static final SYNC_ACCOUNT_CHANGED:I = 0x4

.field public static final SYNC_ADAPTER_PERFORMED:I = 0x5

.field public static final SYNC_ADAPTER_PERFORMED_ALARM:I = 0x6

.field public static final SYNC_CONFIG_CHANGE:I = 0x1

.field public static final SYNC_FOR_BIND_SERVICE:I = 0x7

.field public static final SYNC_NETWORK_CONNECTED:I = 0x2

.field public static final SYNC_ON_TIMER:I = 0x3


# instance fields
.field private mISyncCallbackImls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcn/nubia/cloud/sync/common/SyncManager$ISyncCallbackIml;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    new-instance v0, Lcn/nubia/cloud/sync/common/SyncServiceHandler;

    invoke-direct {v0, p1}, Lcn/nubia/cloud/sync/common/SyncServiceHandler;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcn/nubia/cloud/utils/ipcclient/IPCClient;-><init>(Landroid/content/Context;Lcn/nubia/cloud/utils/ipcclient/IServiceHandler;)V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/cloud/sync/common/SyncManager;->mISyncCallbackImls:Ljava/util/Map;

    .line 43
    return-void
.end method

.method public static startSyncService(Landroid/content/Context;Ljava/lang/String;ILjava/util/concurrent/TimeUnit;Z)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "moduleToken"    # Ljava/lang/String;
    .param p2, "delay"    # I
    .param p3, "util"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "byAlarmStart"    # Z

    .prologue
    .line 125
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    if-gez p2, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-string v5, "nubia.cloud.sync.SyncManager"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .local v4, "intent":Landroid/content/Intent;
    const-string v5, "cn.nubia.cloud"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 131
    .local v0, "data":Landroid/os/Bundle;
    const-string v5, "key_module_token"

    invoke-virtual {v0, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    int-to-long v6, p2

    invoke-virtual {p3, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 133
    .local v2, "delayMillis":J
    if-eqz p4, :cond_2

    const-wide/32 v6, 0xea60

    cmp-long v5, v2, v6

    if-ltz v5, :cond_2

    .line 134
    const-string v5, "key_sync_condition"

    const/4 v6, 0x6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 135
    invoke-virtual {v4, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 136
    invoke-static {p0, v2, v3, v4}, Lcn/nubia/cloud/sync/common/SyncCommonAlarmManager;->setSyncRepeatAlarmForService(Landroid/content/Context;JLandroid/content/Intent;)V

    goto :goto_0

    .line 138
    :cond_2
    const-string v5, "key_sync_condition"

    const/4 v6, 0x5

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 139
    invoke-virtual {v4, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 141
    :try_start_0
    invoke-virtual {p0, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getLastSyncTime(Ljava/lang/String;)J
    .locals 4
    .param p1, "moduleToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 117
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/cloud/sync/common/SyncManager;->getService()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/cloud/sync/common/ISyncManager;

    invoke-interface {v1, p1}, Lcn/nubia/cloud/sync/common/ISyncManager;->getLastSyncTime(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/sync/common/SyncManager;->onRemoteExceptionOccurred(Landroid/os/RemoteException;)V

    .line 120
    throw v0
.end method

.method public regeditSyncListener(Ljava/lang/String;Lcn/nubia/cloud/sync/common/SyncListener;)Z
    .locals 7
    .param p1, "moduleToken"    # Ljava/lang/String;
    .param p2, "l"    # Lcn/nubia/cloud/sync/common/SyncListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 80
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    add-int/2addr v4, v6

    int-to-long v2, v4

    .line 81
    .local v2, "key":J
    iget-object v4, p0, Lcn/nubia/cloud/sync/common/SyncManager;->mISyncCallbackImls:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 82
    new-instance v0, Lcn/nubia/cloud/sync/common/SyncManager$ISyncCallbackIml;

    invoke-direct {v0, p2}, Lcn/nubia/cloud/sync/common/SyncManager$ISyncCallbackIml;-><init>(Lcn/nubia/cloud/sync/common/SyncListener;)V

    .line 83
    .local v0, "callbackIml":Lcn/nubia/cloud/sync/common/SyncManager$ISyncCallbackIml;
    invoke-virtual {p0}, Lcn/nubia/cloud/sync/common/SyncManager;->getService()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/cloud/sync/common/ISyncManager;

    invoke-interface {v4, p1, v0}, Lcn/nubia/cloud/sync/common/ISyncManager;->regeditSyncListener(Ljava/lang/String;Lcn/nubia/cloud/sync/common/ISyncCallback;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 84
    iget-object v4, p0, Lcn/nubia/cloud/sync/common/SyncManager;->mISyncCallbackImls:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    .line 89
    .end local v0    # "callbackIml":Lcn/nubia/cloud/sync/common/SyncManager$ISyncCallbackIml;
    :goto_0
    return v4

    .line 87
    .restart local v0    # "callbackIml":Lcn/nubia/cloud/sync/common/SyncManager$ISyncCallbackIml;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .end local v0    # "callbackIml":Lcn/nubia/cloud/sync/common/SyncManager$ISyncCallbackIml;
    :cond_1
    move v4, v5

    .line 89
    goto :goto_0

    .line 90
    .end local v2    # "key":J
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v1}, Lcn/nubia/cloud/sync/common/SyncManager;->onRemoteExceptionOccurred(Landroid/os/RemoteException;)V

    .line 92
    throw v1
.end method

.method public sync(Lcn/nubia/cloud/service/common/SyncModule;Lcn/nubia/cloud/sync/common/SyncListener;)V
    .locals 3
    .param p1, "module"    # Lcn/nubia/cloud/service/common/SyncModule;
    .param p2, "l"    # Lcn/nubia/cloud/sync/common/SyncListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 70
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/cloud/sync/common/SyncManager;->getService()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/cloud/sync/common/ISyncManager;

    new-instance v2, Lcn/nubia/cloud/sync/common/SyncManager$ISyncCallbackIml;

    invoke-direct {v2, p2}, Lcn/nubia/cloud/sync/common/SyncManager$ISyncCallbackIml;-><init>(Lcn/nubia/cloud/sync/common/SyncListener;)V

    invoke-interface {v1, p1, v2}, Lcn/nubia/cloud/sync/common/ISyncManager;->sync(Lcn/nubia/cloud/service/common/SyncModule;Lcn/nubia/cloud/sync/common/ISyncCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/sync/common/SyncManager;->onRemoteExceptionOccurred(Landroid/os/RemoteException;)V

    .line 73
    throw v0
.end method

.method public sync(Lcn/nubia/cloud/service/common/SyncType;Lcn/nubia/cloud/sync/common/SyncListener;)V
    .locals 4
    .param p1, "syncType"    # Lcn/nubia/cloud/service/common/SyncType;
    .param p2, "l"    # Lcn/nubia/cloud/sync/common/SyncListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 48
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/cloud/sync/common/SyncManager;->getService()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/cloud/sync/common/ISyncManager;

    invoke-virtual {p1}, Lcn/nubia/cloud/service/common/SyncType;->intValue()I

    move-result v2

    new-instance v3, Lcn/nubia/cloud/sync/common/SyncManager$ISyncCallbackIml;

    invoke-direct {v3, p2}, Lcn/nubia/cloud/sync/common/SyncManager$ISyncCallbackIml;-><init>(Lcn/nubia/cloud/sync/common/SyncListener;)V

    invoke-interface {v1, v2, v3}, Lcn/nubia/cloud/sync/common/ISyncManager;->syncByType(ILcn/nubia/cloud/sync/common/ISyncCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/sync/common/SyncManager;->onRemoteExceptionOccurred(Landroid/os/RemoteException;)V

    .line 52
    throw v0
.end method

.method public sync(Ljava/lang/String;Lcn/nubia/cloud/sync/common/SyncListener;)V
    .locals 3
    .param p1, "moduleToken"    # Ljava/lang/String;
    .param p2, "l"    # Lcn/nubia/cloud/sync/common/SyncListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 59
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/cloud/sync/common/SyncManager;->getService()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/cloud/sync/common/ISyncManager;

    new-instance v2, Lcn/nubia/cloud/sync/common/SyncManager$ISyncCallbackIml;

    invoke-direct {v2, p2}, Lcn/nubia/cloud/sync/common/SyncManager$ISyncCallbackIml;-><init>(Lcn/nubia/cloud/sync/common/SyncListener;)V

    invoke-interface {v1, p1, v2}, Lcn/nubia/cloud/sync/common/ISyncManager;->syncByModuleToken(Ljava/lang/String;Lcn/nubia/cloud/sync/common/ISyncCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/sync/common/SyncManager;->onRemoteExceptionOccurred(Landroid/os/RemoteException;)V

    .line 63
    throw v0
.end method

.method public unregeditSyncListener(Ljava/lang/String;Lcn/nubia/cloud/sync/common/SyncListener;)Z
    .locals 6
    .param p1, "moduleToken"    # Ljava/lang/String;
    .param p2, "l"    # Lcn/nubia/cloud/sync/common/SyncListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 99
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int/2addr v4, v5

    int-to-long v2, v4

    .line 100
    .local v2, "key":J
    iget-object v4, p0, Lcn/nubia/cloud/sync/common/SyncManager;->mISyncCallbackImls:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/cloud/sync/common/SyncManager$ISyncCallbackIml;

    .line 101
    .local v0, "callbackIml":Lcn/nubia/cloud/sync/common/SyncManager$ISyncCallbackIml;
    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcn/nubia/cloud/sync/common/SyncManager;->getService()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/cloud/sync/common/ISyncManager;

    invoke-interface {v4, p1, v0}, Lcn/nubia/cloud/sync/common/ISyncManager;->unregeditSyncListener(Ljava/lang/String;Lcn/nubia/cloud/sync/common/ISyncCallback;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 103
    iget-object v4, p0, Lcn/nubia/cloud/sync/common/SyncManager;->mISyncCallbackImls:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    const/4 v4, 0x1

    .line 107
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 108
    .end local v0    # "callbackIml":Lcn/nubia/cloud/sync/common/SyncManager$ISyncCallbackIml;
    .end local v2    # "key":J
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v1}, Lcn/nubia/cloud/sync/common/SyncManager;->onRemoteExceptionOccurred(Landroid/os/RemoteException;)V

    .line 110
    throw v1
.end method
