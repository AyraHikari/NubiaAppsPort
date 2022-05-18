.class public interface abstract Lcn/nubia/music/app/scan/IMusicScanService;
.super Ljava/lang/Object;
.source "IMusicScanService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/app/scan/IMusicScanService$Stub;
    }
.end annotation


# virtual methods
.method public abstract startScan()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopScan()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
