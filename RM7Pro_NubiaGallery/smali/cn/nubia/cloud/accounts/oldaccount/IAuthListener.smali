.class public interface abstract Lcn/nubia/cloud/accounts/oldaccount/IAuthListener;
.super Ljava/lang/Object;
.source "IAuthListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/accounts/oldaccount/IAuthListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onComplete(Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onException(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
