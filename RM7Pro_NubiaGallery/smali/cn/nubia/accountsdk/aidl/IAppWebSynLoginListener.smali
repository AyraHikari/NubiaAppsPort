.class public interface abstract Lcn/nubia/accountsdk/aidl/IAppWebSynLoginListener;
.super Ljava/lang/Object;
.source "IAppWebSynLoginListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/accountsdk/aidl/IAppWebSynLoginListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onComplete(Ljava/lang/String;)V
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
