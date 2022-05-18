.class public abstract Lcn/nubia/cloud/sync/common/ISyncStorage$Stub;
.super Landroid/os/Binder;
.source "ISyncStorage.java"

# interfaces
.implements Lcn/nubia/cloud/sync/common/ISyncStorage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/sync/common/ISyncStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/sync/common/ISyncStorage$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cn.nubia.cloud.sync.common.ISyncStorage"

.field static final TRANSACTION_getDirtyData:I = 0x2

.field static final TRANSACTION_getLastSyncVersion:I = 0x1

.field static final TRANSACTION_onAttachmentsPulled:I = 0x6

.field static final TRANSACTION_onException:I = 0x5

.field static final TRANSACTION_onPushComplete:I = 0x3

.field static final TRANSACTION_onServerItemsPulled:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "cn.nubia.cloud.sync.common.ISyncStorage"

    invoke-virtual {p0, p0, v0}, Lcn/nubia/cloud/sync/common/ISyncStorage$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/sync/common/ISyncStorage;
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
    const-string v1, "cn.nubia.cloud.sync.common.ISyncStorage"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcn/nubia/cloud/sync/common/ISyncStorage;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcn/nubia/cloud/sync/common/ISyncStorage;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcn/nubia/cloud/sync/common/ISyncStorage$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcn/nubia/cloud/sync/common/ISyncStorage$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 107
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v3, "cn.nubia.cloud.sync.common.ISyncStorage"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v6

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "cn.nubia.cloud.sync.common.ISyncStorage"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/sync/common/ISyncStorage$Stub;->getLastSyncVersion(Ljava/lang/String;)J

    move-result-wide v4

    .line 51
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    move v3, v6

    .line 53
    goto :goto_0

    .line 57
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":J
    :sswitch_2
    const-string v7, "cn.nubia.cloud.sync.common.ISyncStorage"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcn/nubia/cloud/sync/common/ISyncStorage$Stub;->getDirtyData()Lcn/nubia/cloud/sync/common/ClosableEnumeration;

    move-result-object v4

    .line 59
    .local v4, "_result":Lcn/nubia/cloud/sync/common/ClosableEnumeration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    if-eqz v4, :cond_0

    invoke-interface {v4}, Lcn/nubia/cloud/sync/common/ClosableEnumeration;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v3, v6

    .line 61
    goto :goto_0

    .line 65
    .end local v4    # "_result":Lcn/nubia/cloud/sync/common/ClosableEnumeration;
    :sswitch_3
    const-string v3, "cn.nubia.cloud.sync.common.ISyncStorage"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 69
    .local v0, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/cloud/sync/common/ClosableEnumeration$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/sync/common/ClosableEnumeration;

    move-result-object v2

    .line 70
    .local v2, "_arg1":Lcn/nubia/cloud/sync/common/ClosableEnumeration;
    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/cloud/sync/common/ISyncStorage$Stub;->onPushComplete(JLcn/nubia/cloud/sync/common/ClosableEnumeration;)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v6

    .line 72
    goto :goto_0

    .line 76
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":Lcn/nubia/cloud/sync/common/ClosableEnumeration;
    :sswitch_4
    const-string v3, "cn.nubia.cloud.sync.common.ISyncStorage"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 80
    .restart local v0    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/cloud/sync/common/ClosableEnumeration$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/sync/common/ClosableEnumeration;

    move-result-object v2

    .line 81
    .restart local v2    # "_arg1":Lcn/nubia/cloud/sync/common/ClosableEnumeration;
    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/cloud/sync/common/ISyncStorage$Stub;->onServerItemsPulled(JLcn/nubia/cloud/sync/common/ClosableEnumeration;)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v6

    .line 83
    goto :goto_0

    .line 87
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":Lcn/nubia/cloud/sync/common/ClosableEnumeration;
    :sswitch_5
    const-string v3, "cn.nubia.cloud.sync.common.ISyncStorage"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcn/nubia/cloud/sync/common/ISyncStorage$Stub;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v6

    .line 94
    goto :goto_0

    .line 98
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_6
    const-string v7, "cn.nubia.cloud.sync.common.ISyncStorage"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcn/nubia/cloud/sync/common/ClosableEnumeration$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/sync/common/ClosableEnumeration;

    move-result-object v0

    .line 101
    .local v0, "_arg0":Lcn/nubia/cloud/sync/common/ClosableEnumeration;
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/sync/common/ISyncStorage$Stub;->onAttachmentsPulled(Lcn/nubia/cloud/sync/common/ClosableEnumeration;)Lcn/nubia/cloud/sync/common/ClosableEnumeration;

    move-result-object v4

    .line 102
    .restart local v4    # "_result":Lcn/nubia/cloud/sync/common/ClosableEnumeration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    if-eqz v4, :cond_1

    invoke-interface {v4}, Lcn/nubia/cloud/sync/common/ClosableEnumeration;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v3, v6

    .line 104
    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
