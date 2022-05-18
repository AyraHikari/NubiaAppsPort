.class public interface abstract Lcn/nubia/leagueshare/INBShareStatusListener;
.super Ljava/lang/Object;
.source "INBShareStatusListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/leagueshare/INBShareStatusListener$Stub;,
        Lcn/nubia/leagueshare/INBShareStatusListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onDeviceArrived(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/leagueshare/NBShareDevice;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDeviceStatusChanged(Lcn/nubia/leagueshare/NBShareDevice;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onNBShareOff()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onNBShareOn()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
