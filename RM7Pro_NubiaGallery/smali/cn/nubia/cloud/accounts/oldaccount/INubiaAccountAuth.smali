.class public interface abstract Lcn/nubia/cloud/accounts/oldaccount/INubiaAccountAuth;
.super Ljava/lang/Object;
.source "INubiaAccountAuth.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/accounts/oldaccount/INubiaAccountAuth$Stub;
    }
.end annotation


# virtual methods
.method public abstract getAccountInfo(Lcn/nubia/cloud/accounts/oldaccount/IAuthListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCloudSpace(Lcn/nubia/cloud/accounts/oldaccount/IAuthListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
