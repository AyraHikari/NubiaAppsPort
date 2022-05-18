.class public Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager;
.super Lcn/nubia/cloud/utils/ipcclient/IPCClient;
.source "RecyclebinManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager$IRecyclebinCallbackIml;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/cloud/utils/ipcclient/IPCClient",
        "<",
        "Lcn/nubia/cloud/sync/common/recyclebin/IRecyclebinManager;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "nubia.cloud.sync.RecyclebinManager"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    new-instance v0, Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinServiceHandler;

    invoke-direct {v0, p1}, Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinServiceHandler;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcn/nubia/cloud/utils/ipcclient/IPCClient;-><init>(Landroid/content/Context;Lcn/nubia/cloud/utils/ipcclient/IServiceHandler;)V

    .line 23
    return-void
.end method


# virtual methods
.method public clear(Ljava/lang/String;Lcn/nubia/cloud/service/common/SyncType;Lcn/nubia/cloud/utils/SimpleListener;)V
    .locals 5
    .param p1, "cloudSession"    # Ljava/lang/String;
    .param p2, "type"    # Lcn/nubia/cloud/service/common/SyncType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Result:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcn/nubia/cloud/service/common/SyncType;",
            "Lcn/nubia/cloud/utils/SimpleListener",
            "<",
            "Lcn/nubia/cloud/utils/NBResponse;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 62
    .local p3, "listener":Lcn/nubia/cloud/utils/SimpleListener;, "Lcn/nubia/cloud/utils/SimpleListener<Lcn/nubia/cloud/utils/NBResponse;>;"
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager;->getService()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/cloud/sync/common/recyclebin/IRecyclebinManager;

    invoke-virtual {p2}, Lcn/nubia/cloud/service/common/SyncType;->intValue()I

    move-result v2

    new-instance v3, Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager$IRecyclebinCallbackIml;

    sget-object v4, Lcn/nubia/cloud/utils/NBResponse;->CREATOR:Lcn/nubia/cloud/utils/Jsonable$Creator;

    invoke-direct {v3, p3, v4}, Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager$IRecyclebinCallbackIml;-><init>(Lcn/nubia/cloud/utils/SimpleListener;Lcn/nubia/cloud/utils/Jsonable$Creator;)V

    invoke-interface {v1, p1, v2, v3}, Lcn/nubia/cloud/sync/common/recyclebin/IRecyclebinManager;->clear(Ljava/lang/String;ILcn/nubia/cloud/sync/common/recyclebin/IRecyclebinCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager;->onRemoteExceptionOccurred(Landroid/os/RemoteException;)V

    .line 66
    throw v0
.end method

.method public collect(Ljava/lang/String;Lcn/nubia/cloud/utils/SimpleListener;Lcn/nubia/cloud/utils/Jsonable$Creator;)V
    .locals 4
    .param p1, "cloudSession"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Result:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcn/nubia/cloud/utils/SimpleListener",
            "<",
            "Ljava/util/List",
            "<TResult;>;>;",
            "Lcn/nubia/cloud/utils/Jsonable$Creator",
            "<TResult;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 29
    .local p2, "listener":Lcn/nubia/cloud/utils/SimpleListener;, "Lcn/nubia/cloud/utils/SimpleListener<Ljava/util/List<TResult;>;>;"
    .local p3, "creator":Lcn/nubia/cloud/utils/Jsonable$Creator;, "Lcn/nubia/cloud/utils/Jsonable$Creator<TResult;>;"
    :try_start_0
    new-instance v1, Lcn/nubia/cloud/sync/common/recyclebin/GarbageDataListCreator;

    invoke-direct {v1, p3}, Lcn/nubia/cloud/sync/common/recyclebin/GarbageDataListCreator;-><init>(Lcn/nubia/cloud/utils/Jsonable$Creator;)V

    .line 30
    .local v1, "listCreator":Lcn/nubia/cloud/utils/Jsonable$Creator;, "Lcn/nubia/cloud/utils/Jsonable$Creator<Ljava/util/List<TResult;>;>;"
    invoke-virtual {p0}, Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager;->getService()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/cloud/sync/common/recyclebin/IRecyclebinManager;

    new-instance v3, Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager$IRecyclebinCallbackIml;

    invoke-direct {v3, p2, v1}, Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager$IRecyclebinCallbackIml;-><init>(Lcn/nubia/cloud/utils/SimpleListener;Lcn/nubia/cloud/utils/Jsonable$Creator;)V

    invoke-interface {v2, p1, v3}, Lcn/nubia/cloud/sync/common/recyclebin/IRecyclebinManager;->collect(Ljava/lang/String;Lcn/nubia/cloud/sync/common/recyclebin/IRecyclebinCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    return-void

    .line 32
    .end local v1    # "listCreator":Lcn/nubia/cloud/utils/Jsonable$Creator;, "Lcn/nubia/cloud/utils/Jsonable$Creator<Ljava/util/List<TResult;>;>;"
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager;->onRemoteExceptionOccurred(Landroid/os/RemoteException;)V

    .line 34
    throw v0
.end method

.method public list(Ljava/lang/String;Lcn/nubia/cloud/service/common/SyncType;IILcn/nubia/cloud/utils/SimpleListener;Lcn/nubia/cloud/utils/Jsonable$Creator;)V
    .locals 8
    .param p1, "cloudSession"    # Ljava/lang/String;
    .param p2, "type"    # Lcn/nubia/cloud/service/common/SyncType;
    .param p3, "pageIndex"    # I
    .param p4, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Result:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcn/nubia/cloud/service/common/SyncType;",
            "II",
            "Lcn/nubia/cloud/utils/SimpleListener",
            "<",
            "Ljava/util/List",
            "<TResult;>;>;",
            "Lcn/nubia/cloud/utils/Jsonable$Creator",
            "<TResult;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 49
    .local p5, "listener":Lcn/nubia/cloud/utils/SimpleListener;, "Lcn/nubia/cloud/utils/SimpleListener<Ljava/util/List<TResult;>;>;"
    .local p6, "creator":Lcn/nubia/cloud/utils/Jsonable$Creator;, "Lcn/nubia/cloud/utils/Jsonable$Creator<TResult;>;"
    :try_start_0
    new-instance v7, Lcn/nubia/cloud/sync/common/recyclebin/GarbageDataListCreator;

    invoke-direct {v7, p6}, Lcn/nubia/cloud/sync/common/recyclebin/GarbageDataListCreator;-><init>(Lcn/nubia/cloud/utils/Jsonable$Creator;)V

    .line 50
    .local v7, "listCreator":Lcn/nubia/cloud/utils/Jsonable$Creator;, "Lcn/nubia/cloud/utils/Jsonable$Creator<Ljava/util/List<TResult;>;>;"
    invoke-virtual {p0}, Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/cloud/sync/common/recyclebin/IRecyclebinManager;

    invoke-virtual {p2}, Lcn/nubia/cloud/service/common/SyncType;->intValue()I

    move-result v2

    new-instance v5, Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager$IRecyclebinCallbackIml;

    invoke-direct {v5, p5, v7}, Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager$IRecyclebinCallbackIml;-><init>(Lcn/nubia/cloud/utils/SimpleListener;Lcn/nubia/cloud/utils/Jsonable$Creator;)V

    move-object v1, p1

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcn/nubia/cloud/sync/common/recyclebin/IRecyclebinManager;->list(Ljava/lang/String;IIILcn/nubia/cloud/sync/common/recyclebin/IRecyclebinCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    return-void

    .line 52
    .end local v7    # "listCreator":Lcn/nubia/cloud/utils/Jsonable$Creator;, "Lcn/nubia/cloud/utils/Jsonable$Creator<Ljava/util/List<TResult;>;>;"
    :catch_0
    move-exception v6

    .line 53
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v6}, Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager;->onRemoteExceptionOccurred(Landroid/os/RemoteException;)V

    .line 54
    throw v6
.end method

.method public restore(Ljava/lang/String;Lcn/nubia/cloud/service/common/SyncType;[JLcn/nubia/cloud/utils/SimpleListener;)V
    .locals 5
    .param p1, "cloudSession"    # Ljava/lang/String;
    .param p2, "type"    # Lcn/nubia/cloud/service/common/SyncType;
    .param p3, "ids"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Result:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcn/nubia/cloud/service/common/SyncType;",
            "[J",
            "Lcn/nubia/cloud/utils/SimpleListener",
            "<",
            "Lcn/nubia/cloud/utils/NBResponse;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 73
    .local p4, "listener":Lcn/nubia/cloud/utils/SimpleListener;, "Lcn/nubia/cloud/utils/SimpleListener<Lcn/nubia/cloud/utils/NBResponse;>;"
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager;->getService()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/cloud/sync/common/recyclebin/IRecyclebinManager;

    invoke-virtual {p2}, Lcn/nubia/cloud/service/common/SyncType;->intValue()I

    move-result v2

    new-instance v3, Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager$IRecyclebinCallbackIml;

    sget-object v4, Lcn/nubia/cloud/utils/NBResponse;->CREATOR:Lcn/nubia/cloud/utils/Jsonable$Creator;

    invoke-direct {v3, p4, v4}, Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager$IRecyclebinCallbackIml;-><init>(Lcn/nubia/cloud/utils/SimpleListener;Lcn/nubia/cloud/utils/Jsonable$Creator;)V

    invoke-interface {v1, p1, v2, p3, v3}, Lcn/nubia/cloud/sync/common/recyclebin/IRecyclebinManager;->restore(Ljava/lang/String;I[JLcn/nubia/cloud/sync/common/recyclebin/IRecyclebinCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager;->onRemoteExceptionOccurred(Landroid/os/RemoteException;)V

    .line 77
    throw v0
.end method
