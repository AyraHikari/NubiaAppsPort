.class public Lcn/nubia/cloud/common/sync/recyclebin/RecyclebinManager;
.super Lcn/nubia/cloud/common/ipcclient/IPCClient;
.source "RecyclebinManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/common/sync/recyclebin/RecyclebinManager$IRecyclebinCallbackIml;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/cloud/common/ipcclient/IPCClient<",
        "Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinManager;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "nubia.cloud.sync.RecyclebinManager"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 18
    new-instance v0, Lcn/nubia/cloud/common/sync/recyclebin/RecyclebinServiceHandler;

    invoke-direct {v0, p1}, Lcn/nubia/cloud/common/sync/recyclebin/RecyclebinServiceHandler;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcn/nubia/cloud/common/ipcclient/IPCClient;-><init>(Landroid/content/Context;Lcn/nubia/cloud/common/ipcclient/IServiceHandler;)V

    return-void
.end method


# virtual methods
.method public clear(Ljava/lang/String;Lcn/nubia/cloud/common/module/SyncType;Lcn/nubia/cloud/common/SimpleListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Result:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcn/nubia/cloud/common/module/SyncType;",
            "Lcn/nubia/cloud/common/SimpleListener<",
            "Lcn/nubia/cloud/common/NBResponse;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/cloud/common/sync/recyclebin/RecyclebinManager;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinManager;

    invoke-virtual {p2}, Lcn/nubia/cloud/common/module/SyncType;->intValue()I

    move-result p2

    .line 59
    new-instance v1, Lcn/nubia/cloud/common/sync/recyclebin/RecyclebinManager$IRecyclebinCallbackIml;

    sget-object v2, Lcn/nubia/cloud/common/NBResponse;->CREATOR:Lcn/nubia/cloud/common/Jsonable$Creator;

    invoke-direct {v1, p3, v2}, Lcn/nubia/cloud/common/sync/recyclebin/RecyclebinManager$IRecyclebinCallbackIml;-><init>(Lcn/nubia/cloud/common/SimpleListener;Lcn/nubia/cloud/common/Jsonable$Creator;)V

    .line 58
    invoke-interface {v0, p1, p2, v1}, Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinManager;->clear(Ljava/lang/String;ILcn/nubia/cloud/common/sync/recyclebin/IRecyclebinCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 61
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/common/sync/recyclebin/RecyclebinManager;->onRemoteExceptionOccurred(Landroid/os/RemoteException;)V

    .line 62
    throw p1
.end method

.method public collect(Ljava/lang/String;Lcn/nubia/cloud/common/SimpleListener;Lcn/nubia/cloud/common/Jsonable$Creator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Result:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcn/nubia/cloud/common/SimpleListener<",
            "Ljava/util/List<",
            "TResult;>;>;",
            "Lcn/nubia/cloud/common/Jsonable$Creator<",
            "TResult;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    :try_start_0
    new-instance v0, Lcn/nubia/cloud/common/sync/recyclebin/GarbageDataListCreator;

    invoke-direct {v0, p3}, Lcn/nubia/cloud/common/sync/recyclebin/GarbageDataListCreator;-><init>(Lcn/nubia/cloud/common/Jsonable$Creator;)V

    .line 26
    invoke-virtual {p0}, Lcn/nubia/cloud/common/sync/recyclebin/RecyclebinManager;->getService()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinManager;

    .line 27
    new-instance v1, Lcn/nubia/cloud/common/sync/recyclebin/RecyclebinManager$IRecyclebinCallbackIml;

    invoke-direct {v1, p2, v0}, Lcn/nubia/cloud/common/sync/recyclebin/RecyclebinManager$IRecyclebinCallbackIml;-><init>(Lcn/nubia/cloud/common/SimpleListener;Lcn/nubia/cloud/common/Jsonable$Creator;)V

    .line 26
    invoke-interface {p3, p1, v1}, Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinManager;->collect(Ljava/lang/String;Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 29
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/common/sync/recyclebin/RecyclebinManager;->onRemoteExceptionOccurred(Landroid/os/RemoteException;)V

    .line 30
    throw p1
.end method

.method public list(Ljava/lang/String;Lcn/nubia/cloud/common/module/SyncType;IILcn/nubia/cloud/common/SimpleListener;Lcn/nubia/cloud/common/Jsonable$Creator;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Result:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcn/nubia/cloud/common/module/SyncType;",
            "II",
            "Lcn/nubia/cloud/common/SimpleListener<",
            "Ljava/util/List<",
            "TResult;>;>;",
            "Lcn/nubia/cloud/common/Jsonable$Creator<",
            "TResult;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    :try_start_0
    new-instance v0, Lcn/nubia/cloud/common/sync/recyclebin/GarbageDataListCreator;

    invoke-direct {v0, p6}, Lcn/nubia/cloud/common/sync/recyclebin/GarbageDataListCreator;-><init>(Lcn/nubia/cloud/common/Jsonable$Creator;)V

    .line 46
    invoke-virtual {p0}, Lcn/nubia/cloud/common/sync/recyclebin/RecyclebinManager;->getService()Ljava/lang/Object;

    move-result-object p6

    move-object v1, p6

    check-cast v1, Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinManager;

    invoke-virtual {p2}, Lcn/nubia/cloud/common/module/SyncType;->intValue()I

    move-result v3

    .line 47
    new-instance v6, Lcn/nubia/cloud/common/sync/recyclebin/RecyclebinManager$IRecyclebinCallbackIml;

    invoke-direct {v6, p5, v0}, Lcn/nubia/cloud/common/sync/recyclebin/RecyclebinManager$IRecyclebinCallbackIml;-><init>(Lcn/nubia/cloud/common/SimpleListener;Lcn/nubia/cloud/common/Jsonable$Creator;)V

    move-object v2, p1

    move v4, p3

    move v5, p4

    .line 46
    invoke-interface/range {v1 .. v6}, Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinManager;->list(Ljava/lang/String;IIILcn/nubia/cloud/common/sync/recyclebin/IRecyclebinCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 49
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/common/sync/recyclebin/RecyclebinManager;->onRemoteExceptionOccurred(Landroid/os/RemoteException;)V

    .line 50
    throw p1
.end method

.method public restore(Ljava/lang/String;Lcn/nubia/cloud/common/module/SyncType;[JLcn/nubia/cloud/common/SimpleListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Result:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcn/nubia/cloud/common/module/SyncType;",
            "[J",
            "Lcn/nubia/cloud/common/SimpleListener<",
            "Lcn/nubia/cloud/common/NBResponse;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/cloud/common/sync/recyclebin/RecyclebinManager;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinManager;

    invoke-virtual {p2}, Lcn/nubia/cloud/common/module/SyncType;->intValue()I

    move-result p2

    .line 70
    new-instance v1, Lcn/nubia/cloud/common/sync/recyclebin/RecyclebinManager$IRecyclebinCallbackIml;

    sget-object v2, Lcn/nubia/cloud/common/NBResponse;->CREATOR:Lcn/nubia/cloud/common/Jsonable$Creator;

    invoke-direct {v1, p4, v2}, Lcn/nubia/cloud/common/sync/recyclebin/RecyclebinManager$IRecyclebinCallbackIml;-><init>(Lcn/nubia/cloud/common/SimpleListener;Lcn/nubia/cloud/common/Jsonable$Creator;)V

    .line 69
    invoke-interface {v0, p1, p2, p3, v1}, Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinManager;->restore(Ljava/lang/String;I[JLcn/nubia/cloud/common/sync/recyclebin/IRecyclebinCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 72
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/common/sync/recyclebin/RecyclebinManager;->onRemoteExceptionOccurred(Landroid/os/RemoteException;)V

    .line 73
    throw p1
.end method
