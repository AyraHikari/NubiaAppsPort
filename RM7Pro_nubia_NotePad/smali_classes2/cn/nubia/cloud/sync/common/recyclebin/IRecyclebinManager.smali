.class public interface abstract Lcn/nubia/cloud/sync/common/recyclebin/IRecyclebinManager;
.super Ljava/lang/Object;
.source "IRecyclebinManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/sync/common/recyclebin/IRecyclebinManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract clear(Ljava/lang/String;ILcn/nubia/cloud/sync/common/recyclebin/IRecyclebinCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract collect(Ljava/lang/String;Lcn/nubia/cloud/sync/common/recyclebin/IRecyclebinCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract list(Ljava/lang/String;IIILcn/nubia/cloud/sync/common/recyclebin/IRecyclebinCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract restore(Ljava/lang/String;I[JLcn/nubia/cloud/sync/common/recyclebin/IRecyclebinCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
