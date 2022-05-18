.class public abstract Lcn/nubia/cloud/common/sync/AbsCloudSyncAdapter;
.super Lcn/nubia/cloud/common/sync/ISyncStorage$Stub;
.source "AbsCloudSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcn/nubia/cloud/common/sync/SyncItem;",
        ">",
        "Lcn/nubia/cloud/common/sync/ISyncStorage$Stub;"
    }
.end annotation


# instance fields
.field mSyncItemCreator:Lcn/nubia/cloud/common/Jsonable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/cloud/common/Jsonable$Creator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/cloud/common/Jsonable$Creator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/cloud/common/Jsonable$Creator<",
            "TT;>;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Lcn/nubia/cloud/common/sync/ISyncStorage$Stub;-><init>()V

    .line 12
    iput-object p1, p0, Lcn/nubia/cloud/common/sync/AbsCloudSyncAdapter;->mSyncItemCreator:Lcn/nubia/cloud/common/Jsonable$Creator;

    return-void
.end method


# virtual methods
.method public getDirtyData()Lcn/nubia/cloud/common/sync/ClosableEnumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    new-instance v0, Lcn/nubia/cloud/common/sync/Iterator2ClosableEnumeration;

    invoke-virtual {p0}, Lcn/nubia/cloud/common/sync/AbsCloudSyncAdapter;->onQueryDirtyData()Lcn/nubia/cloud/common/sync/SyncDataIterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/cloud/common/sync/Iterator2ClosableEnumeration;-><init>(Lcn/nubia/cloud/common/sync/SyncDataIterator;)V

    return-object v0
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPushComplete(JLcn/nubia/cloud/common/sync/ClosableEnumeration;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    new-instance v0, Lcn/nubia/cloud/common/sync/ClosableEnumeration2Iterator;

    sget-object v1, Lcn/nubia/cloud/common/sync/IDMap;->CREATOR:Lcn/nubia/cloud/common/Jsonable$Creator;

    invoke-direct {v0, p3, v1}, Lcn/nubia/cloud/common/sync/ClosableEnumeration2Iterator;-><init>(Lcn/nubia/cloud/common/sync/ClosableEnumeration;Lcn/nubia/cloud/common/Jsonable$Creator;)V

    .line 23
    invoke-virtual {p0, p1, p2, v0}, Lcn/nubia/cloud/common/sync/AbsCloudSyncAdapter;->onSyncComplete(JLcn/nubia/cloud/common/sync/SyncDataIterator;)V

    return-void
.end method

.method protected abstract onQueryDirtyData()Lcn/nubia/cloud/common/sync/SyncDataIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/nubia/cloud/common/sync/SyncDataIterator<",
            "TT;>;"
        }
    .end annotation
.end method

.method public onServerItemsPulled(JLcn/nubia/cloud/common/sync/ClosableEnumeration;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    new-instance v0, Lcn/nubia/cloud/common/sync/ClosableEnumeration2Iterator;

    .line 30
    iget-object v1, p0, Lcn/nubia/cloud/common/sync/AbsCloudSyncAdapter;->mSyncItemCreator:Lcn/nubia/cloud/common/Jsonable$Creator;

    .line 29
    invoke-direct {v0, p3, v1}, Lcn/nubia/cloud/common/sync/ClosableEnumeration2Iterator;-><init>(Lcn/nubia/cloud/common/sync/ClosableEnumeration;Lcn/nubia/cloud/common/Jsonable$Creator;)V

    .line 31
    invoke-virtual {p0, p1, p2, v0}, Lcn/nubia/cloud/common/sync/AbsCloudSyncAdapter;->onUpdateData(JLcn/nubia/cloud/common/sync/SyncDataIterator;)V

    return-void
.end method

.method protected abstract onSyncComplete(JLcn/nubia/cloud/common/sync/SyncDataIterator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcn/nubia/cloud/common/sync/SyncDataIterator<",
            "Lcn/nubia/cloud/common/sync/IDMap;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract onUpdateData(JLcn/nubia/cloud/common/sync/SyncDataIterator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcn/nubia/cloud/common/sync/SyncDataIterator<",
            "TT;>;)V"
        }
    .end annotation
.end method
