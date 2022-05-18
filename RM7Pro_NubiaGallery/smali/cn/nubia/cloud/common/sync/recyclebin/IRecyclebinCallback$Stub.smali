.class public abstract Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinCallback$Stub;
.super Landroid/os/Binder;
.source "IRecyclebinCallback.java"

# interfaces
.implements Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cn.nubia.cloud.sync.common.recyclebin.IRecyclebinCallback"

.field static final TRANSACTION_onComplete:I = 0x1

.field static final TRANSACTION_onException:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "cn.nubia.cloud.sync.common.recyclebin.IRecyclebinCallback"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "cn.nubia.cloud.sync.common.recyclebin.IRecyclebinCallback"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinCallback;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinCallback;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v0, "cn.nubia.cloud.sync.common.recyclebin.IRecyclebinCallback"

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

    .line 42
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
    invoke-virtual {p0, p1, p2}, Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinCallback$Stub;->onException(ILjava/lang/String;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 47
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 50
    sget-object p1, Lcn/nubia/cloud/common/ParcelableJson;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/cloud/common/ParcelableJson;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 55
    :goto_0
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinCallback$Stub;->onComplete(Lcn/nubia/cloud/common/ParcelableJson;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1
.end method
