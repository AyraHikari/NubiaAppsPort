.class public abstract Lcn/nubia/cloud/sync/common/attachment/IAttachmentManager$Stub;
.super Landroid/os/Binder;
.source "IAttachmentManager.java"

# interfaces
.implements Lcn/nubia/cloud/sync/common/attachment/IAttachmentManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/sync/common/attachment/IAttachmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/sync/common/attachment/IAttachmentManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cn.nubia.cloud.sync.common.attachment.IAttachmentManager"

.field static final TRANSACTION_downloadAttachByCloudPaths:I = 0x2

.field static final TRANSACTION_downloadAttachBySrverIds:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "cn.nubia.cloud.sync.common.attachment.IAttachmentManager"

    invoke-virtual {p0, p0, v0}, Lcn/nubia/cloud/sync/common/attachment/IAttachmentManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/sync/common/attachment/IAttachmentManager;
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
    const-string v1, "cn.nubia.cloud.sync.common.attachment.IAttachmentManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcn/nubia/cloud/sync/common/attachment/IAttachmentManager;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcn/nubia/cloud/sync/common/attachment/IAttachmentManager;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcn/nubia/cloud/sync/common/attachment/IAttachmentManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcn/nubia/cloud/sync/common/attachment/IAttachmentManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 7
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
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 86
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v5, "cn.nubia.cloud.sync.common.attachment.IAttachmentManager"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "cn.nubia.cloud.sync.common.attachment.IAttachmentManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    .line 51
    .local v0, "_arg0":[J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 53
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/cloud/sync/common/attachment/IAttachCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/sync/common/attachment/IAttachCallback;

    move-result-object v2

    .line 54
    .local v2, "_arg2":Lcn/nubia/cloud/sync/common/attachment/IAttachCallback;
    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/cloud/sync/common/attachment/IAttachmentManager$Stub;->downloadAttachBySrverIds([JILcn/nubia/cloud/sync/common/attachment/IAttachCallback;)Lcn/nubia/cloud/utils/ParcelableJson;

    move-result-object v3

    .line 55
    .local v3, "_result":Lcn/nubia/cloud/utils/ParcelableJson;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    if-eqz v3, :cond_0

    .line 57
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    invoke-virtual {v3, p3, v4}, Lcn/nubia/cloud/utils/ParcelableJson;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 67
    .end local v0    # "_arg0":[J
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lcn/nubia/cloud/sync/common/attachment/IAttachCallback;
    .end local v3    # "_result":Lcn/nubia/cloud/utils/ParcelableJson;
    :sswitch_2
    const-string v5, "cn.nubia.cloud.sync.common.attachment.IAttachmentManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 73
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/cloud/sync/common/attachment/IAttachCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/sync/common/attachment/IAttachCallback;

    move-result-object v2

    .line 74
    .restart local v2    # "_arg2":Lcn/nubia/cloud/sync/common/attachment/IAttachCallback;
    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/cloud/sync/common/attachment/IAttachmentManager$Stub;->downloadAttachByCloudPaths([Ljava/lang/String;ILcn/nubia/cloud/sync/common/attachment/IAttachCallback;)Lcn/nubia/cloud/utils/ParcelableJson;

    move-result-object v3

    .line 75
    .restart local v3    # "_result":Lcn/nubia/cloud/utils/ParcelableJson;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    if-eqz v3, :cond_1

    .line 77
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    invoke-virtual {v3, p3, v4}, Lcn/nubia/cloud/utils/ParcelableJson;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
