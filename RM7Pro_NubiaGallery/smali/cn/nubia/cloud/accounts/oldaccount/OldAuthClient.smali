.class public Lcn/nubia/cloud/accounts/oldaccount/OldAuthClient;
.super Lcn/nubia/cloud/utils/ipcclient/IPCClient;
.source "OldAuthClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/accounts/oldaccount/OldAuthClient$AccountInfoListener;,
        Lcn/nubia/cloud/accounts/oldaccount/OldAuthClient$OldAuthHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/cloud/utils/ipcclient/IPCClient<",
        "Lcn/nubia/cloud/accounts/oldaccount/IAccountAuth;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 17
    new-instance v0, Lcn/nubia/cloud/accounts/oldaccount/OldAuthClient$OldAuthHandler;

    invoke-direct {v0}, Lcn/nubia/cloud/accounts/oldaccount/OldAuthClient$OldAuthHandler;-><init>()V

    invoke-direct {p0, p1, v0}, Lcn/nubia/cloud/utils/ipcclient/IPCClient;-><init>(Landroid/content/Context;Lcn/nubia/cloud/utils/ipcclient/IServiceHandler;)V

    return-void
.end method


# virtual methods
.method public bindBaiduAccount(Z)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcn/nubia/cloud/common/RequestException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 34
    :try_start_0
    new-instance v1, Lcn/nubia/cloud/accounts/oldaccount/OldAuthClient$AccountInfoListener;

    invoke-direct {v1, v0}, Lcn/nubia/cloud/accounts/oldaccount/OldAuthClient$AccountInfoListener;-><init>(Lcn/nubia/cloud/accounts/oldaccount/OldAuthClient$1;)V

    .line 35
    invoke-virtual {p0}, Lcn/nubia/cloud/accounts/oldaccount/OldAuthClient;->getService()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/cloud/accounts/oldaccount/IAccountAuth;

    invoke-interface {v2, p1, v1}, Lcn/nubia/cloud/accounts/oldaccount/IAccountAuth;->startBindBaiduAccount(ZLcn/nubia/cloud/accounts/oldaccount/IAccountInfoListener;)V

    .line 36
    invoke-virtual {v1}, Lcn/nubia/cloud/accounts/oldaccount/OldAuthClient$AccountInfoListener;->get()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-object v0

    :catch_1
    move-exception p1

    .line 38
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/accounts/oldaccount/OldAuthClient;->onRemoteExceptionOccurred(Landroid/os/RemoteException;)V

    .line 39
    throw p1
.end method

.method public getBaiduToken()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/cloud/accounts/oldaccount/OldAuthClient;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/cloud/accounts/oldaccount/IAccountAuth;

    invoke-interface {v0}, Lcn/nubia/cloud/accounts/oldaccount/IAccountAuth;->getBaiduAccountToken()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0

    :catch_1
    move-exception v0

    .line 24
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/accounts/oldaccount/OldAuthClient;->onRemoteExceptionOccurred(Landroid/os/RemoteException;)V

    .line 25
    throw v0
.end method
