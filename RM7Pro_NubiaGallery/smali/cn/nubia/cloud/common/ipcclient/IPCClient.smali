.class public Lcn/nubia/cloud/common/ipcclient/IPCClient;
.super Ljava/lang/Object;
.source "IPCClient.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field private final mConnManager:Lcn/nubia/cloud/common/ipcclient/ConnectionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/cloud/common/ipcclient/ConnectionManager<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/cloud/common/ipcclient/IServiceHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcn/nubia/cloud/common/ipcclient/IServiceHandler<",
            "TT;>;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml;

    invoke-direct {v0, p1, p2}, Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml;-><init>(Landroid/content/Context;Lcn/nubia/cloud/common/ipcclient/IServiceHandler;)V

    iput-object v0, p0, Lcn/nubia/cloud/common/ipcclient/IPCClient;->mConnManager:Lcn/nubia/cloud/common/ipcclient/ConnectionManager;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 40
    iget-object v0, p0, Lcn/nubia/cloud/common/ipcclient/IPCClient;->mConnManager:Lcn/nubia/cloud/common/ipcclient/ConnectionManager;

    invoke-interface {v0}, Lcn/nubia/cloud/common/ipcclient/ConnectionManager;->close()V

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcn/nubia/cloud/common/ipcclient/IPCClient;->mConnManager:Lcn/nubia/cloud/common/ipcclient/ConnectionManager;

    invoke-interface {v0}, Lcn/nubia/cloud/common/ipcclient/ConnectionManager;->close()V

    .line 46
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method final getConnectionManager()Lcn/nubia/cloud/common/ipcclient/ConnectionManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/nubia/cloud/common/ipcclient/ConnectionManager<",
            "TT;>;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcn/nubia/cloud/common/ipcclient/IPCClient;->mConnManager:Lcn/nubia/cloud/common/ipcclient/ConnectionManager;

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

    .line 26
    iget-object v0, p0, Lcn/nubia/cloud/common/ipcclient/IPCClient;->mConnManager:Lcn/nubia/cloud/common/ipcclient/ConnectionManager;

    invoke-interface {v0}, Lcn/nubia/cloud/common/ipcclient/ConnectionManager;->getService()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onRemoteExceptionOccurred(Landroid/os/RemoteException;)V
    .locals 2

    const-string v0, "IPCClient"

    const-string v1, "remote service exception, closing service"

    .line 30
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v0, p0, Lcn/nubia/cloud/common/ipcclient/IPCClient;->mConnManager:Lcn/nubia/cloud/common/ipcclient/ConnectionManager;

    invoke-interface {v0}, Lcn/nubia/cloud/common/ipcclient/ConnectionManager;->close()V

    .line 32
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method
