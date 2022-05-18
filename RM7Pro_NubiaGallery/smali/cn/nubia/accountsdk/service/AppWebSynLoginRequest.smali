.class public Lcn/nubia/accountsdk/service/AppWebSynLoginRequest;
.super Lcn/nubia/accountsdk/service/ServiceAsyncRequest;
.source "AppWebSynLoginRequest.java"


# instance fields
.field private final mListener:Lcn/nubia/accountsdk/aidl/IAppWebSynLoginListener;

.field private final mWebUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcn/nubia/accountsdk/aidl/IAppWebSynLoginListener;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcn/nubia/accountsdk/service/ServiceAsyncRequest;-><init>()V

    .line 13
    iput-object p2, p0, Lcn/nubia/accountsdk/service/AppWebSynLoginRequest;->mListener:Lcn/nubia/accountsdk/aidl/IAppWebSynLoginListener;

    .line 14
    iput-object p1, p0, Lcn/nubia/accountsdk/service/AppWebSynLoginRequest;->mWebUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic cancel()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcn/nubia/accountsdk/service/ServiceAsyncRequest;->cancel()V

    return-void
.end method

.method public processRequest(Lcn/nubia/accountsdk/aidl/INBAccountService;)V
    .locals 2

    .line 20
    :try_start_0
    iget-object v0, p0, Lcn/nubia/accountsdk/service/AppWebSynLoginRequest;->mWebUrl:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/accountsdk/service/AppWebSynLoginRequest;->mListener:Lcn/nubia/accountsdk/aidl/IAppWebSynLoginListener;

    invoke-interface {p1, v0, v1}, Lcn/nubia/accountsdk/aidl/INBAccountService;->appWebSynlogin(Ljava/lang/String;Lcn/nubia/accountsdk/aidl/IAppWebSynLoginListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
