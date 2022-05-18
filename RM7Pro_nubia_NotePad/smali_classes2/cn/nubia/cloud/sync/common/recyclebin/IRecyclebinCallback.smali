.class public interface abstract Lcn/nubia/cloud/sync/common/recyclebin/IRecyclebinCallback;
.super Ljava/lang/Object;
.source "IRecyclebinCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/sync/common/recyclebin/IRecyclebinCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onComplete(Lcn/nubia/cloud/utils/ParcelableJson;)V
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
