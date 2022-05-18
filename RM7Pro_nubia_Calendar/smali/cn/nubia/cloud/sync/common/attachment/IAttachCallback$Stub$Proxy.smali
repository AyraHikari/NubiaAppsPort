.class Lcn/nubia/cloud/sync/common/attachment/IAttachCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAttachCallback.java"

# interfaces
.implements Lcn/nubia/cloud/sync/common/attachment/IAttachCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/sync/common/attachment/IAttachCallback$Stub;
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
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcn/nubia/cloud/sync/common/attachment/IAttachCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 74
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcn/nubia/cloud/sync/common/attachment/IAttachCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string v0, "cn.nubia.cloud.sync.common.attachment.IAttachCallback"

    return-object v0
.end method

.method public onStatus(IJJLcn/nubia/cloud/utils/ParcelableJson;)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "downSize"    # J
    .param p4, "totalSize"    # J
    .param p6, "json"    # Lcn/nubia/cloud/utils/ParcelableJson;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 86
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 88
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "cn.nubia.cloud.sync.common.attachment.IAttachCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 91
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 92
    if-eqz p6, :cond_0

    .line 93
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    const/4 v2, 0x0

    invoke-virtual {p6, v0, v2}, Lcn/nubia/cloud/utils/ParcelableJson;->writeToParcel(Landroid/os/Parcel;I)V

    .line 99
    :goto_0
    iget-object v2, p0, Lcn/nubia/cloud/sync/common/attachment/IAttachCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 100
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 106
    return-void

    .line 97
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
