.class public abstract Lcn/nubia/cloud/common/sync/ISyncCallback$Stub;
.super Landroid/os/Binder;
.source "ISyncCallback.java"

# interfaces
.implements Lcn/nubia/cloud/common/sync/ISyncCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/common/sync/ISyncCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/common/sync/ISyncCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cn.nubia.cloud.sync.common.ISyncCallback"

.field static final TRANSACTION_onComplete:I = 0x3

.field static final TRANSACTION_onException:I = 0x4

.field static final TRANSACTION_onProgress:I = 0x2

.field static final TRANSACTION_progressInterval:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "cn.nubia.cloud.sync.common.ISyncCallback"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcn/nubia/cloud/common/sync/ISyncCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/common/sync/ISyncCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "cn.nubia.cloud.sync.common.ISyncCallback"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcn/nubia/cloud/common/sync/ISyncCallback;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcn/nubia/cloud/common/sync/ISyncCallback;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcn/nubia/cloud/common/sync/ISyncCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcn/nubia/cloud/common/sync/ISyncCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "cn.nubia.cloud.sync.common.ISyncCallback"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_6

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 93
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 42
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 83
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 88
    invoke-virtual {p0, p1, p2}, Lcn/nubia/cloud/common/sync/ISyncCallback$Stub;->onException(ILjava/lang/String;)V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 69
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 72
    sget-object p1, Lcn/nubia/cloud/common/sync/SyncStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcn/nubia/cloud/common/sync/SyncStatus;

    .line 77
    :cond_3
    invoke-virtual {p0, v3}, Lcn/nubia/cloud/common/sync/ISyncCallback$Stub;->onComplete(Lcn/nubia/cloud/common/sync/SyncStatus;)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 55
    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    .line 58
    sget-object p1, Lcn/nubia/cloud/common/sync/SyncStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcn/nubia/cloud/common/sync/SyncStatus;

    .line 63
    :cond_5
    invoke-virtual {p0, v3}, Lcn/nubia/cloud/common/sync/ISyncCallback$Stub;->onProgress(Lcn/nubia/cloud/common/sync/SyncStatus;)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 47
    :cond_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcn/nubia/cloud/common/sync/ISyncCallback$Stub;->progressInterval()J

    move-result-wide p1

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1
.end method
