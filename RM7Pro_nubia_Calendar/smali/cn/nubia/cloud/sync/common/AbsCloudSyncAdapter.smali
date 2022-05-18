.class public abstract Lcn/nubia/cloud/sync/common/AbsCloudSyncAdapter;
.super Lcn/nubia/cloud/sync/common/ISyncStorage$Stub;
.source "AbsCloudSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcn/nubia/cloud/sync/common/SyncItem;",
        ">",
        "Lcn/nubia/cloud/sync/common/ISyncStorage$Stub;"
    }
.end annotation


# instance fields
.field private mSyncItemCreator:Lcn/nubia/cloud/utils/Jsonable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/cloud/utils/Jsonable$Creator",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/cloud/utils/Jsonable$Creator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/cloud/utils/Jsonable$Creator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p0, "this":Lcn/nubia/cloud/sync/common/AbsCloudSyncAdapter;, "Lcn/nubia/cloud/sync/common/AbsCloudSyncAdapter<TT;>;"
    .local p1, "creator":Lcn/nubia/cloud/utils/Jsonable$Creator;, "Lcn/nubia/cloud/utils/Jsonable$Creator<TT;>;"
    invoke-direct {p0}, Lcn/nubia/cloud/sync/common/ISyncStorage$Stub;-><init>()V

    .line 13
    iput-object p1, p0, Lcn/nubia/cloud/sync/common/AbsCloudSyncAdapter;->mSyncItemCreator:Lcn/nubia/cloud/utils/Jsonable$Creator;

    .line 14
    return-void
.end method


# virtual methods
.method public getDirtyData()Lcn/nubia/cloud/sync/common/ClosableEnumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "this":Lcn/nubia/cloud/sync/common/AbsCloudSyncAdapter;, "Lcn/nubia/cloud/sync/common/AbsCloudSyncAdapter<TT;>;"
    new-instance v0, Lcn/nubia/cloud/sync/common/Iterator2ClosableEnumeration;

    invoke-virtual {p0}, Lcn/nubia/cloud/sync/common/AbsCloudSyncAdapter;->onQueryDirtyData()Lcn/nubia/cloud/sync/common/SyncDataIterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/cloud/sync/common/Iterator2ClosableEnumeration;-><init>(Lcn/nubia/cloud/sync/common/SyncDataIterator;)V

    return-object v0
.end method

.method public onAttachmentsPulled(Lcn/nubia/cloud/sync/common/ClosableEnumeration;)Lcn/nubia/cloud/sync/common/ClosableEnumeration;
    .locals 3
    .param p1, "items"    # Lcn/nubia/cloud/sync/common/ClosableEnumeration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcn/nubia/cloud/sync/common/AbsCloudSyncAdapter;, "Lcn/nubia/cloud/sync/common/AbsCloudSyncAdapter<TT;>;"
    new-instance v0, Lcn/nubia/cloud/sync/common/ClosableEnumeration2Iterator;

    sget-object v1, Lcn/nubia/cloud/sync/common/AttachmentInfo;->CREATOR:Lcn/nubia/cloud/utils/Jsonable$Creator;

    invoke-direct {v0, p1, v1}, Lcn/nubia/cloud/sync/common/ClosableEnumeration2Iterator;-><init>(Lcn/nubia/cloud/sync/common/ClosableEnumeration;Lcn/nubia/cloud/utils/Jsonable$Creator;)V

    .line 41
    .local v0, "it":Lcn/nubia/cloud/sync/common/ClosableEnumeration2Iterator;, "Lcn/nubia/cloud/sync/common/ClosableEnumeration2Iterator<Lcn/nubia/cloud/sync/common/AttachmentInfo;>;"
    new-instance v1, Lcn/nubia/cloud/sync/common/Iterator2ClosableEnumeration;

    invoke-virtual {p0, v0}, Lcn/nubia/cloud/sync/common/AbsCloudSyncAdapter;->onUpdateAttachment(Lcn/nubia/cloud/sync/common/SyncDataIterator;)Lcn/nubia/cloud/sync/common/SyncDataIterator;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/cloud/sync/common/Iterator2ClosableEnumeration;-><init>(Lcn/nubia/cloud/sync/common/SyncDataIterator;)V

    return-object v1
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 46
    .local p0, "this":Lcn/nubia/cloud/sync/common/AbsCloudSyncAdapter;, "Lcn/nubia/cloud/sync/common/AbsCloudSyncAdapter<TT;>;"
    return-void
.end method

.method public onPushComplete(JLcn/nubia/cloud/sync/common/ClosableEnumeration;)V
    .locals 3
    .param p1, "serverVersion"    # J
    .param p3, "idmaps"    # Lcn/nubia/cloud/sync/common/ClosableEnumeration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lcn/nubia/cloud/sync/common/AbsCloudSyncAdapter;, "Lcn/nubia/cloud/sync/common/AbsCloudSyncAdapter<TT;>;"
    new-instance v0, Lcn/nubia/cloud/sync/common/ClosableEnumeration2Iterator;

    sget-object v1, Lcn/nubia/cloud/sync/common/IDMap;->CREATOR:Lcn/nubia/cloud/utils/Jsonable$Creator;

    invoke-direct {v0, p3, v1}, Lcn/nubia/cloud/sync/common/ClosableEnumeration2Iterator;-><init>(Lcn/nubia/cloud/sync/common/ClosableEnumeration;Lcn/nubia/cloud/utils/Jsonable$Creator;)V

    invoke-virtual {p0, p1, p2, v0}, Lcn/nubia/cloud/sync/common/AbsCloudSyncAdapter;->onSyncComplete(JLcn/nubia/cloud/sync/common/SyncDataIterator;)V

    .line 26
    return-void
.end method

.method protected abstract onQueryDirtyData()Lcn/nubia/cloud/sync/common/SyncDataIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/nubia/cloud/sync/common/SyncDataIterator",
            "<TT;>;"
        }
    .end annotation
.end method

.method public onServerItemsPulled(JLcn/nubia/cloud/sync/common/ClosableEnumeration;)V
    .locals 3
    .param p1, "serverVersion"    # J
    .param p3, "items"    # Lcn/nubia/cloud/sync/common/ClosableEnumeration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcn/nubia/cloud/sync/common/AbsCloudSyncAdapter;, "Lcn/nubia/cloud/sync/common/AbsCloudSyncAdapter<TT;>;"
    new-instance v0, Lcn/nubia/cloud/sync/common/ClosableEnumeration2Iterator;

    iget-object v1, p0, Lcn/nubia/cloud/sync/common/AbsCloudSyncAdapter;->mSyncItemCreator:Lcn/nubia/cloud/utils/Jsonable$Creator;

    invoke-direct {v0, p3, v1}, Lcn/nubia/cloud/sync/common/ClosableEnumeration2Iterator;-><init>(Lcn/nubia/cloud/sync/common/ClosableEnumeration;Lcn/nubia/cloud/utils/Jsonable$Creator;)V

    .line 33
    .local v0, "it":Lcn/nubia/cloud/sync/common/ClosableEnumeration2Iterator;, "Lcn/nubia/cloud/sync/common/ClosableEnumeration2Iterator<TT;>;"
    invoke-virtual {p0, p1, p2, v0}, Lcn/nubia/cloud/sync/common/AbsCloudSyncAdapter;->onUpdateData(JLcn/nubia/cloud/sync/common/SyncDataIterator;)V

    .line 34
    return-void
.end method

.method protected abstract onSyncComplete(JLcn/nubia/cloud/sync/common/SyncDataIterator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcn/nubia/cloud/sync/common/SyncDataIterator",
            "<",
            "Lcn/nubia/cloud/sync/common/IDMap;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract onUpdateAttachment(Lcn/nubia/cloud/sync/common/SyncDataIterator;)Lcn/nubia/cloud/sync/common/SyncDataIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/cloud/sync/common/SyncDataIterator",
            "<",
            "Lcn/nubia/cloud/sync/common/AttachmentInfo;",
            ">;)",
            "Lcn/nubia/cloud/sync/common/SyncDataIterator",
            "<",
            "Lcn/nubia/cloud/sync/common/AttachmentInfo;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract onUpdateData(JLcn/nubia/cloud/sync/common/SyncDataIterator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcn/nubia/cloud/sync/common/SyncDataIterator",
            "<TT;>;)V"
        }
    .end annotation
.end method
