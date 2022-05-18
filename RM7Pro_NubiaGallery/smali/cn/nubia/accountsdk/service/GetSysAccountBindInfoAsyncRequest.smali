.class public Lcn/nubia/accountsdk/service/GetSysAccountBindInfoAsyncRequest;
.super Lcn/nubia/accountsdk/service/ServiceAsyncRequest;
.source "GetSysAccountBindInfoAsyncRequest.java"


# instance fields
.field private final mListener:Lcn/nubia/accountsdk/aidl/IGetThirdBindInfoListener;


# direct methods
.method public constructor <init>(Lcn/nubia/accountsdk/aidl/IGetThirdBindInfoListener;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcn/nubia/accountsdk/service/ServiceAsyncRequest;-><init>()V

    .line 12
    iput-object p1, p0, Lcn/nubia/accountsdk/service/GetSysAccountBindInfoAsyncRequest;->mListener:Lcn/nubia/accountsdk/aidl/IGetThirdBindInfoListener;

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
    .locals 1

    .line 18
    :try_start_0
    iget-object v0, p0, Lcn/nubia/accountsdk/service/GetSysAccountBindInfoAsyncRequest;->mListener:Lcn/nubia/accountsdk/aidl/IGetThirdBindInfoListener;

    invoke-interface {p1, v0}, Lcn/nubia/accountsdk/aidl/INBAccountService;->getThirdBindInfo(Lcn/nubia/accountsdk/aidl/IGetThirdBindInfoListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
