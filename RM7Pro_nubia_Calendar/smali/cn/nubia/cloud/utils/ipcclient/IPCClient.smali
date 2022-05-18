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
        "Lcn/nubia/cloud/utils/ipcclient/StatuMonitor",
        "<TT;>;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field private final mConnManager:Lcn/nubia/cloud/utils/ipcclient/ConnectionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/cloud/utils/ipcclient/ConnectionManager",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mNBExecutor:Lcn/nubia/cloud/utils/task/NBExecutor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/cloud/utils/ipcclient/IServiceHandler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcn/nubia/cloud/utils/ipcclient/IServiceHandler",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p0, "this":Lcn/nubia/cloud/utils/ipcclient/IPCClient;, "Lcn/nubia/cloud/utils/ipcclient/IPCClient<TT;>;"
    .local p2, "handler":Lcn/nubia/cloud/utils/ipcclient/IServiceHandler;, "Lcn/nubia/cloud/utils/ipcclient/IServiceHandler<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;

    invoke-direct {v0, p1, p2, p0}, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;-><init>(Landroid/content/Context;Lcn/nubia/cloud/utils/ipcclient/IServiceHandler;Lcn/nubia/cloud/utils/ipcclient/StatuMonitor;)V

    iput-object v0, p0, Lcn/nubia/cloud/utils/ipcclient/IPCClient;->mConnManager:Lcn/nubia/cloud/utils/ipcclient/ConnectionManager;

    .line 15
    invoke-static {}, Lcn/nubia/cloud/utils/task/NBExecutor;->newSinglePool()Lcn/nubia/cloud/utils/task/NBExecutor;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/utils/ipcclient/IPCClient;->mNBExecutor:Lcn/nubia/cloud/utils/task/NBExecutor;

    .line 16
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 50
    .local p0, "this":Lcn/nubia/cloud/utils/ipcclient/IPCClient;, "Lcn/nubia/cloud/utils/ipcclient/IPCClient<TT;>;"
    iget-object v0, p0, Lcn/nubia/cloud/utils/ipcclient/IPCClient;->mNBExecutor:Lcn/nubia/cloud/utils/task/NBExecutor;

    invoke-virtual {v0}, Lcn/nubia/cloud/utils/task/NBExecutor;->shutdown()V

    .line 51
    iget-object v0, p0, Lcn/nubia/cloud/utils/ipcclient/IPCClient;->mConnManager:Lcn/nubia/cloud/utils/ipcclient/ConnectionManager;

    invoke-interface {v0}, Lcn/nubia/cloud/utils/ipcclient/ConnectionManager;->close()V

    .line 52
    return-void
.end method

.method public connect()V
    .locals 2

    .prologue
    .line 24
    .local p0, "this":Lcn/nubia/cloud/utils/ipcclient/IPCClient;, "Lcn/nubia/cloud/utils/ipcclient/IPCClient<TT;>;"
    :try_start_0
    iget-object v1, p0, Lcn/nubia/cloud/utils/ipcclient/IPCClient;->mConnManager:Lcn/nubia/cloud/utils/ipcclient/ConnectionManager;

    invoke-interface {v1}, Lcn/nubia/cloud/utils/ipcclient/ConnectionManager;->getService()Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :goto_0
    return-void

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lcn/nubia/cloud/utils/ipcclient/IPCClient;, "Lcn/nubia/cloud/utils/ipcclient/IPCClient<TT;>;"
    iget-object v0, p0, Lcn/nubia/cloud/utils/ipcclient/IPCClient;->mConnManager:Lcn/nubia/cloud/utils/ipcclient/ConnectionManager;

    invoke-interface {v0}, Lcn/nubia/cloud/utils/ipcclient/ConnectionManager;->close()V

    .line 57
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 58
    return-void
.end method

.method final getConnectionManager()Lcn/nubia/cloud/utils/ipcclient/ConnectionManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/nubia/cloud/utils/ipcclient/ConnectionManager",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "this":Lcn/nubia/cloud/utils/ipcclient/IPCClient;, "Lcn/nubia/cloud/utils/ipcclient/IPCClient<TT;>;"
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

    .prologue
    .line 36
    .local p0, "this":Lcn/nubia/cloud/utils/ipcclient/IPCClient;, "Lcn/nubia/cloud/utils/ipcclient/IPCClient<TT;>;"
    iget-object v0, p0, Lcn/nubia/cloud/utils/ipcclient/IPCClient;->mConnManager:Lcn/nubia/cloud/utils/ipcclient/ConnectionManager;

    invoke-interface {v0}, Lcn/nubia/cloud/utils/ipcclient/ConnectionManager;->getService()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onRemoteExceptionOccurred(Landroid/os/RemoteException;)V
    .locals 2
    .param p1, "e"    # Landroid/os/RemoteException;

    .prologue
    .line 40
    .local p0, "this":Lcn/nubia/cloud/utils/ipcclient/IPCClient;, "Lcn/nubia/cloud/utils/ipcclient/IPCClient<TT;>;"
    const-string v0, "IPCClient"

    const-string v1, "remote service exception, closing service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v0, p0, Lcn/nubia/cloud/utils/ipcclient/IPCClient;->mConnManager:Lcn/nubia/cloud/utils/ipcclient/ConnectionManager;

    invoke-interface {v0}, Lcn/nubia/cloud/utils/ipcclient/ConnectionManager;->close()V

    .line 42
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 43
    return-void
.end method

.method public onServiceConnected(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lcn/nubia/cloud/utils/ipcclient/IPCClient;, "Lcn/nubia/cloud/utils/ipcclient/IPCClient<TT;>;"
    .local p1, "service":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 0

    .prologue
    .line 70
    .local p0, "this":Lcn/nubia/cloud/utils/ipcclient/IPCClient;, "Lcn/nubia/cloud/utils/ipcclient/IPCClient<TT;>;"
    return-void
.end method

.method protected summitTask(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "run"    # Ljava/lang/Runnable;

    .prologue
    .line 61
    .local p0, "this":Lcn/nubia/cloud/utils/ipcclient/IPCClient;, "Lcn/nubia/cloud/utils/ipcclient/IPCClient<TT;>;"
    iget-object v0, p0, Lcn/nubia/cloud/utils/ipcclient/IPCClient;->mNBExecutor:Lcn/nubia/cloud/utils/task/NBExecutor;

    invoke-virtual {v0, p1}, Lcn/nubia/cloud/utils/task/NBExecutor;->execute(Ljava/lang/Runnable;)V

    .line 62
    return-void
.end method
