.class public abstract Lcn/nubia/cloud/storage/common/IStorageEngineSetupCallback$Stub;
.super Landroid/os/Binder;
.source "IStorageEngineSetupCallback.java"

# interfaces
.implements Lcn/nubia/cloud/storage/common/IStorageEngineSetupCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/storage/common/IStorageEngineSetupCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/storage/common/IStorageEngineSetupCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cn.nubia.cloud.storage.common.IStorageEngineSetupCallback"

.field static final TRANSACTION_onException:I = 0x2

.field static final TRANSACTION_setupFileDescriptor:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "cn.nubia.cloud.storage.common.IStorageEngineSetupCallback"

    .line 19
    invoke-virtual {p0, p0, v0}, Lcn/nubia/cloud/storage/common/IStorageEngineSetupCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/storage/common/IStorageEngineSetupCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "cn.nubia.cloud.storage.common.IStorageEngineSetupCallback"

    .line 30
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 31
    instance-of v1, v0, Lcn/nubia/cloud/storage/common/IStorageEngineSetupCallback;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcn/nubia/cloud/storage/common/IStorageEngineSetupCallback;

    return-object v0

    .line 34
    :cond_1
    new-instance v0, Lcn/nubia/cloud/storage/common/IStorageEngineSetupCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcn/nubia/cloud/storage/common/IStorageEngineSetupCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "cn.nubia.cloud.storage.common.IStorageEngineSetupCallback"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 71
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 46
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 61
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 66
    invoke-virtual {p0, p1, p2}, Lcn/nubia/cloud/storage/common/IStorageEngineSetupCallback$Stub;->onException(ILjava/lang/String;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 51
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    sget-object p1, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 54
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/storage/common/IStorageEngineSetupCallback$Stub;->setupFileDescriptor(Ljava/util/List;)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1
.end method
