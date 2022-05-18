.class public interface abstract Lcn/nubia/gallery3d/data/CommonInterface;
.super Ljava/lang/Object;
.source "CommonInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/data/CommonInterface$Stub;,
        Lcn/nubia/gallery3d/data/CommonInterface$Default;
    }
.end annotation


# virtual methods
.method public abstract getCameraForSelection()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
