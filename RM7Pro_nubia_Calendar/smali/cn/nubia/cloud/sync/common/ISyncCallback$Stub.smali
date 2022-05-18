.class public abstract Lcn/nubia/cloud/sync/common/ISyncCallback$Stub;
.super Landroid/os/Binder;
.source "ISyncCallback.java"

# interfaces
.implements Lcn/nubia/cloud/sync/common/ISyncCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/sync/common/ISyncCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/sync/common/ISyncCallback$Stub$Proxy;
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

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "cn.nubia.cloud.sync.common.ISyncCallback"

    invoke-virtual {p0, p0, v0}, Lcn/nubia/cloud/sync/common/ISyncCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/sync/common/ISyncCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "cn.nubia.cloud.sync.common.ISyncCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcn/nubia/cloud/sync/common/ISyncCallback;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcn/nubia/cloud/sync/common/ISyncCallback;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcn/nubia/cloud/sync/common/ISyncCallback$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcn/nubia/cloud/sync/common/ISyncCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 93
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v5, "cn.nubia.cloud.sync.common.ISyncCallback"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "cn.nubia.cloud.sync.common.ISyncCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcn/nubia/cloud/sync/common/ISyncCallback$Stub;->progressInterval()J

    move-result-wide v2

    .line 49
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 55
    .end local v2    # "_result":J
    :sswitch_2
    const-string v5, "cn.nubia.cloud.sync.common.ISyncCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 58
    sget-object v5, Lcn/nubia/cloud/sync/common/SyncStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/cloud/sync/common/SyncStatus;

    .line 63
    .local v0, "_arg0":Lcn/nubia/cloud/sync/common/SyncStatus;
    :goto_1
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/sync/common/ISyncCallback$Stub;->onProgress(Lcn/nubia/cloud/sync/common/SyncStatus;)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 61
    .end local v0    # "_arg0":Lcn/nubia/cloud/sync/common/SyncStatus;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcn/nubia/cloud/sync/common/SyncStatus;
    goto :goto_1

    .line 69
    .end local v0    # "_arg0":Lcn/nubia/cloud/sync/common/SyncStatus;
    :sswitch_3
    const-string v5, "cn.nubia.cloud.sync.common.ISyncCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 72
    sget-object v5, Lcn/nubia/cloud/sync/common/SyncStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/cloud/sync/common/SyncStatus;

    .line 77
    .restart local v0    # "_arg0":Lcn/nubia/cloud/sync/common/SyncStatus;
    :goto_2
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/sync/common/ISyncCallback$Stub;->onComplete(Lcn/nubia/cloud/sync/common/SyncStatus;)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 75
    .end local v0    # "_arg0":Lcn/nubia/cloud/sync/common/SyncStatus;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcn/nubia/cloud/sync/common/SyncStatus;
    goto :goto_2

    .line 83
    .end local v0    # "_arg0":Lcn/nubia/cloud/sync/common/SyncStatus;
    :sswitch_4
    const-string v5, "cn.nubia.cloud.sync.common.ISyncCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 87
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcn/nubia/cloud/sync/common/ISyncCallback$Stub;->onException(ILjava/lang/String;)V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
