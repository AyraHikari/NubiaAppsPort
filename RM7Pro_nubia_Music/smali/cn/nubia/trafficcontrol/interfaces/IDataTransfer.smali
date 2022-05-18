.class public interface abstract Lcn/nubia/trafficcontrol/interfaces/IDataTransfer;
.super Ljava/lang/Object;
.source "IDataTransfer.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/trafficcontrol/interfaces/IDataTransfer$Stub;
    }
.end annotation


# virtual methods
.method public abstract transfer(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract transferAsync(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
