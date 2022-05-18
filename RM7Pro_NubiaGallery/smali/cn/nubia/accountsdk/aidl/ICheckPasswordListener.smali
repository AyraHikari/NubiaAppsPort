.class public interface abstract Lcn/nubia/accountsdk/aidl/ICheckPasswordListener;
.super Ljava/lang/Object;
.source "ICheckPasswordListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/accountsdk/aidl/ICheckPasswordListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onComplete(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onException(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
