.class public Lcn/nubia/accountsdk/service/BindBaiduAccountAsyncRequest;
.super Lcn/nubia/accountsdk/service/ServiceAsyncRequest;
.source "BindBaiduAccountAsyncRequest.java"


# instance fields
.field private final mIsToExplicit:Z

.field private final mListener:Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcn/nubia/accountsdk/service/ServiceAsyncRequest;-><init>()V

    .line 13
    iput-object p2, p0, Lcn/nubia/accountsdk/service/BindBaiduAccountAsyncRequest;->mListener:Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener;

    .line 14
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/accountsdk/service/BindBaiduAccountAsyncRequest;->mIsToExplicit:Z

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
    iget-boolean v0, p0, Lcn/nubia/accountsdk/service/BindBaiduAccountAsyncRequest;->mIsToExplicit:Z

    iget-object v1, p0, Lcn/nubia/accountsdk/service/BindBaiduAccountAsyncRequest;->mListener:Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener;

    invoke-interface {p1, v0, v1}, Lcn/nubia/accountsdk/aidl/INBAccountService;->startBindBaiduAccount(ZLcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener;)V
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
