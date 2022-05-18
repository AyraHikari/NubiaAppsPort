.class public Lcn/nubia/cloud/utils/ipcclient/IPCClient;
.super Ljava/lang/Object;
.source "IPCClient.java"

# interfaces
.implements Lcn/nubia/cloud/utils/ipcclient/StatuMonitor;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcn/nubia/cloud/utils/ipcclient/StatuMonitor<",
        "TT;>;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field private final mConnManager:Lcn/nubia/cloud/utils/ipcclient/ConnectionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/cloud/utils/ipcclient/ConnectionManager<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mNBExecutor:Lcn/nubia/cloud/utils/task/NBExecutor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/cloud/utils/ipcclient/IServiceHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcn/nubia/cloud/utils/ipcclient/IServiceHandler<",
            "TT;>;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;

    invoke-direct {v0, p1, p2, p0}, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;-><init>(Landroid/content/Context;Lcn/nubia/cloud/utils/ipcclient/IServiceHandler;Lcn/nubia/cloud/utils/ipcclient/StatuMonitor;)V

    iput-object v0, p0, Lcn/nubia/cloud/utils/ipcclient/IPCClient;->mConnManager:Lcn/nubia/cloud/utils/ipcclient/ConnectionManager;

    .line 15
    invoke-static {}, Lcn/nubia/cloud/utils/task/NBExecutor;->newSinglePool()Lcn/nubia/cloud/utils/task/NBExecutor;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/cloud/utils/ipcclient/IPCClient;->mNBExecutor:Lcn/nubia/cloud/utils/task/NBExecutor;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcn/nubia/cloud/utils/ipcclient/IPCClient;->mNBExecutor:Lcn/nubia/cloud/utils/task/NBExecutor;

    invoke-virtual {v0}, Lcn/nubia/cloud/utils/task/NBExecutor;->shutdown()V

    .line 51
    iget-object v0, p0, Lcn/nubia/cloud/utils/ipcclient/IPCClient;->mConnManager:Lcn/nubia/cloud/utils/ipcclient/ConnectionManager;

    invoke-interface {v0}, Lcn/nubia/cloud/utils/ipcclient/ConnectionManager;->close()V

    return-void
.end method

.method public connect()V
    .locals 1

    .line 24
    :try_start_0
    iget-object v0, p0, Lcn/nubia/cloud/utils/ipcclient/IPCClient;->mConnManager:Lcn/nubia/cloud/utils/ipcclient/ConnectionManager;

    invoke-interface {v0}, Lcn/nubia/cloud/utils/ipcclient/ConnectionManager;->getService()Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcn/nubia/cloud/utils/ipcclient/IPCClient;->mConnManager:Lcn/nubia/cloud/utils/ipcclient/ConnectionManager;

    invoke-interface {v0}, Lcn/nubia/cloud/utils/ipcclient/ConnectionManager;->close()V

    .line 57
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method final getConnectionManager()Lcn/nubia/cloud/utils/ipcclient/ConnectionManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/nubia/cloud/utils/ipcclient/ConnectionManager<",
            "TT;>;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcn/nubia/cloud/utils/ipcclient/IPCClient;->mConnManager:Lcn/nubia/cloud/utils/ipcclient/ConnectionManager;

    return-object v0
.end method

.method public final getService()Ljava/lang/Object;
    .locals 1
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

    .line 36
    iget-object v0, p0, Lcn/nubia/cloud/utils/ipcclient/IPCClient;->mConnManager:Lcn/nubia/cloud/utils/ipcclient/ConnectionManager;

    invoke-interface {v0}, Lcn/nubia/cloud/utils/ipcclient/ConnectionManager;->getService()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onRemoteExceptionOccurred(Landroid/os/RemoteException;)V
    .locals 2

    const-string v0, "IPCClient"

    const-string v1, "remote service exception, closing service"

    .line 40
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v0, p0, Lcn/nubia/cloud/utils/ipcclient/IPCClient;->mConnManager:Lcn/nubia/cloud/utils/ipcclient/ConnectionManager;

    invoke-interface {v0}, Lcn/nubia/cloud/utils/ipcclient/ConnectionManager;->close()V

    .line 42
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public onServiceConnected(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public onServiceDisconnected()V
    .locals 0

    return-void
.end method

.method protected summitTask(Ljava/lang/Runnable;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcn/nubia/cloud/utils/ipcclient/IPCClient;->mNBExecutor:Lcn/nubia/cloud/utils/task/NBExecutor;

    invoke-virtual {v0, p1}, Lcn/nubia/cloud/utils/task/NBExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
