.class Lcn/nubia/gallery3d/data/CommonInterface$Stub$Proxy;
.super Ljava/lang/Object;
.source "CommonInterface.java"

# interfaces
.implements Lcn/nubia/gallery3d/data/CommonInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/data/CommonInterface$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcn/nubia/gallery3d/data/CommonInterface;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcn/nubia/gallery3d/data/CommonInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 82
    iget-object v0, p0, Lcn/nubia/gallery3d/data/CommonInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getCameraForSelection()Ljava/lang/String;
    .locals 5
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
    const-string v2, "cn.nubia.gallery3d.data.CommonInterface"

    .line 94
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 95
    iget-object v2, p0, Lcn/nubia/gallery3d/data/CommonInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    invoke-static {}, Lcn/nubia/gallery3d/data/CommonInterface$Stub;->getDefaultImpl()Lcn/nubia/gallery3d/data/CommonInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 97
    invoke-static {}, Lcn/nubia/gallery3d/data/CommonInterface$Stub;->getDefaultImpl()Lcn/nubia/gallery3d/data/CommonInterface;

    move-result-object v2

    invoke-interface {v2}, Lcn/nubia/gallery3d/data/CommonInterface;->getCameraForSelection()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 99
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 100
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 103
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 105
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "cn.nubia.gallery3d.data.CommonInterface"

    return-object v0
.end method
