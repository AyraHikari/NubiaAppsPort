.class public interface abstract Lcn/nubia/cloud/sync/common/ISyncManager;
.super Ljava/lang/Object;
.source "ISyncManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/sync/common/ISyncManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract getLastSyncTime(Ljava/lang/String;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract regeditSyncListener(Ljava/lang/String;Lcn/nubia/cloud/sync/common/ISyncCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sync(Lcn/nubia/cloud/service/common/SyncModule;Lcn/nubia/cloud/sync/common/ISyncCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract syncByModuleToken(Ljava/lang/String;Lcn/nubia/cloud/sync/common/ISyncCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract syncByType(ILcn/nubia/cloud/sync/common/ISyncCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregeditSyncListener(Ljava/lang/String;Lcn/nubia/cloud/sync/common/ISyncCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
