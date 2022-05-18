.class public interface abstract Lcn/nubia/accountsdk/aidl/INBAccountService;
.super Ljava/lang/Object;
.source "INBAccountService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/accountsdk/aidl/INBAccountService$Stub;
    }
.end annotation


# virtual methods
.method public abstract appWebSynlogin(Ljava/lang/String;Lcn/nubia/accountsdk/aidl/IAppWebSynLoginListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract checkPassword(Ljava/lang/String;Lcn/nubia/accountsdk/aidl/ICheckPasswordListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getBaiduAccountInfo(Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCloudSpace(Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSystemAccountInfo(Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getThirdBindInfo(Lcn/nubia/accountsdk/aidl/IGetThirdBindInfoListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startBindBaiduAccount(ZLcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
