.class public interface abstract Lcn/nubia/cloud/common/sync/ISyncStorage;
.super Ljava/lang/Object;
.source "ISyncStorage.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/common/sync/ISyncStorage$Stub;
    }
.end annotation


# virtual methods
.method public abstract getDirtyData()Lcn/nubia/cloud/common/sync/ClosableEnumeration;
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

.method public abstract onException(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onPushComplete(JLcn/nubia/cloud/common/sync/ClosableEnumeration;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onServerItemsPulled(JLcn/nubia/cloud/common/sync/ClosableEnumeration;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
