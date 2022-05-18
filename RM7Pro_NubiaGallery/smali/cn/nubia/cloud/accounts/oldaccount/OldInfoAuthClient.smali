.class public Lcn/nubia/cloud/accounts/oldaccount/OldInfoAuthClient;
.super Lcn/nubia/cloud/utils/ipcclient/IPCClient;
.source "OldInfoAuthClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/accounts/oldaccount/OldInfoAuthClient$IAuthListenerIml;,
        Lcn/nubia/cloud/accounts/oldaccount/OldInfoAuthClient$AccountAuthHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/cloud/utils/ipcclient/IPCClient<",
        "Lcn/nubia/cloud/accounts/oldaccount/INubiaAccountAuth;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 15
    new-instance v0, Lcn/nubia/cloud/accounts/oldaccount/OldInfoAuthClient$AccountAuthHandler;

    invoke-direct {v0}, Lcn/nubia/cloud/accounts/oldaccount/OldInfoAuthClient$AccountAuthHandler;-><init>()V

    invoke-direct {p0, p1, v0}, Lcn/nubia/cloud/utils/ipcclient/IPCClient;-><init>(Landroid/content/Context;Lcn/nubia/cloud/utils/ipcclient/IServiceHandler;)V

    return-void
.end method


# virtual methods
.method public getAccountInfo()Lcn/nubia/cloud/accounts/NBAccountInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    new-instance v0, Lcn/nubia/cloud/accounts/oldaccount/OldInfoAuthClient$IAuthListenerIml;

    invoke-direct {v0}, Lcn/nubia/cloud/accounts/oldaccount/OldInfoAuthClient$IAuthListenerIml;-><init>()V

    .line 21
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/cloud/accounts/oldaccount/OldInfoAuthClient;->getService()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/cloud/accounts/oldaccount/INubiaAccountAuth;

    invoke-interface {v1, v0}, Lcn/nubia/cloud/accounts/oldaccount/INubiaAccountAuth;->getAccountInfo(Lcn/nubia/cloud/accounts/oldaccount/IAuthListener;)V

    .line 22
    invoke-virtual {v0}, Lcn/nubia/cloud/accounts/oldaccount/OldInfoAuthClient$IAuthListenerIml;->get()Lcn/nubia/cloud/accounts/NBAccountInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 24
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/accounts/oldaccount/OldInfoAuthClient;->onRemoteExceptionOccurred(Landroid/os/RemoteException;)V

    .line 25
    throw v0
.end method
