.class public interface abstract Lcn/nubia/cloud/sync/common/ISyncStorage;
.super Ljava/lang/Object;
.source "ISyncStorage.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/sync/common/ISyncStorage$Stub;
    }
.end annotation


# virtual methods
.method public abstract getDirtyData()Lcn/nubia/cloud/sync/common/ClosableEnumeration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getLastSyncVersion(Ljava/lang/String;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onAttachmentsPulled(Lcn/nubia/cloud/sync/common/ClosableEnumeration;)Lcn/nubia/cloud/sync/common/ClosableEnumeration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onException(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onPushComplete(JLcn/nubia/cloud/sync/common/ClosableEnumeration;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onServerItemsPulled(JLcn/nubia/cloud/sync/common/ClosableEnumeration;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
