.class Lcn/nubia/cloud/sync/common/attachment/IAttachmentManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAttachmentManager.java"

# interfaces
.implements Lcn/nubia/cloud/sync/common/attachment/IAttachmentManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/sync/common/attachment/IAttachmentManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcn/nubia/cloud/sync/common/attachment/IAttachmentManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 94
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcn/nubia/cloud/sync/common/attachment/IAttachmentManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public downloadAttachByCloudPaths([Ljava/lang/String;ILcn/nubia/cloud/sync/common/attachment/IAttachCallback;)Lcn/nubia/cloud/utils/ParcelableJson;
    .locals 6
    .param p1, "cloudPaths"    # [Ljava/lang/String;
    .param p2, "syncType"    # I
    .param p3, "callback"    # Lcn/nubia/cloud/sync/common/attachment/IAttachCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 131
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 134
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "cn.nubia.cloud.sync.common.attachment.IAttachmentManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcn/nubia/cloud/sync/common/attachment/IAttachCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 138
    iget-object v3, p0, Lcn/nubia/cloud/sync/common/attachment/IAttachmentManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 139
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 140
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 141
    sget-object v3, Lcn/nubia/cloud/utils/ParcelableJson;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/cloud/utils/ParcelableJson;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    .local v2, "_result":Lcn/nubia/cloud/utils/ParcelableJson;
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 151
    return-object v2

    .line 137
    .end local v2    # "_result":Lcn/nubia/cloud/utils/ParcelableJson;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 144
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Lcn/nubia/cloud/utils/ParcelableJson;
    goto :goto_1

    .line 148
    .end local v2    # "_result":Lcn/nubia/cloud/utils/ParcelableJson;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public downloadAttachBySrverIds([JILcn/nubia/cloud/sync/common/attachment/IAttachCallback;)Lcn/nubia/cloud/utils/ParcelableJson;
    .locals 6
    .param p1, "ids"    # [J
    .param p2, "syncType"    # I
    .param p3, "callback"    # Lcn/nubia/cloud/sync/common/attachment/IAttachCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 106
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 109
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "cn.nubia.cloud.sync.common.attachment.IAttachmentManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 111
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcn/nubia/cloud/sync/common/attachment/IAttachCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 113
    iget-object v3, p0, Lcn/nubia/cloud/sync/common/attachment/IAttachmentManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 114
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 115
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 116
    sget-object v3, Lcn/nubia/cloud/utils/ParcelableJson;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/cloud/utils/ParcelableJson;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .local v2, "_result":Lcn/nubia/cloud/utils/ParcelableJson;
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 126
    return-object v2

    .line 112
    .end local v2    # "_result":Lcn/nubia/cloud/utils/ParcelableJson;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 119
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Lcn/nubia/cloud/utils/ParcelableJson;
    goto :goto_1

    .line 123
    .end local v2    # "_result":Lcn/nubia/cloud/utils/ParcelableJson;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const-string v0, "cn.nubia.cloud.sync.common.attachment.IAttachmentManager"

    return-object v0
.end method
