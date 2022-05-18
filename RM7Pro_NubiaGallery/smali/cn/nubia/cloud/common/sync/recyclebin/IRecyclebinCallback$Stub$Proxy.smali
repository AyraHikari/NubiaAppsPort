.class Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRecyclebinCallback.java"

# interfaces
.implements Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinCallback$Stub;
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

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 82
    iget-object v0, p0, Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public onComplete(Lcn/nubia/cloud/common/ParcelableJson;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 91
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "cn.nubia.cloud.sync.common.recyclebin.IRecyclebinCallback"

    .line 93
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    invoke-virtual {p1, v0, v3}, Lcn/nubia/cloud/common/ParcelableJson;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    :goto_0
    iget-object p1, p0, Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 102
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 106
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 105
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 106
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 107
    throw p1
.end method

.method public onException(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 118
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "cn.nubia.cloud.sync.common.recyclebin.IRecyclebinCallback"

    .line 120
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object p1, p0, Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x2

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 124
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 127
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 129
    throw p1
.end method
