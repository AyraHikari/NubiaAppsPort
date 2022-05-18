.class public abstract Lcn/nubia/cloud/sync/common/attachment/IAttachCallback$Stub;
.super Landroid/os/Binder;
.source "IAttachCallback.java"

# interfaces
.implements Lcn/nubia/cloud/sync/common/attachment/IAttachCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/sync/common/attachment/IAttachCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/sync/common/attachment/IAttachCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cn.nubia.cloud.sync.common.attachment.IAttachCallback"

.field static final TRANSACTION_onStatus:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "cn.nubia.cloud.sync.common.attachment.IAttachCallback"

    invoke-virtual {p0, p0, v0}, Lcn/nubia/cloud/sync/common/attachment/IAttachCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/sync/common/attachment/IAttachCallback;
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
    const-string v1, "cn.nubia.cloud.sync.common.attachment.IAttachCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcn/nubia/cloud/sync/common/attachment/IAttachCallback;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcn/nubia/cloud/sync/common/attachment/IAttachCallback;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcn/nubia/cloud/sync/common/attachment/IAttachCallback$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcn/nubia/cloud/sync/common/attachment/IAttachCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 8
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
    const/4 v7, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 66
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v0, "cn.nubia.cloud.sync.common.attachment.IAttachCallback"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "cn.nubia.cloud.sync.common.attachment.IAttachCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 51
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 53
    .local v2, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 55
    .local v4, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lcn/nubia/cloud/utils/ParcelableJson;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/cloud/utils/ParcelableJson;

    .local v6, "_arg3":Lcn/nubia/cloud/utils/ParcelableJson;
    :goto_1
    move-object v0, p0

    .line 61
    invoke-virtual/range {v0 .. v6}, Lcn/nubia/cloud/sync/common/attachment/IAttachCallback$Stub;->onStatus(IJJLcn/nubia/cloud/utils/ParcelableJson;)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 63
    goto :goto_0

    .line 59
    .end local v6    # "_arg3":Lcn/nubia/cloud/utils/ParcelableJson;
    :cond_0
    const/4 v6, 0x0

    .restart local v6    # "_arg3":Lcn/nubia/cloud/utils/ParcelableJson;
    goto :goto_1

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
