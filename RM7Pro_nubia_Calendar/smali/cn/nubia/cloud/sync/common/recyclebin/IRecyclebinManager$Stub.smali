.class public abstract Lcn/nubia/cloud/sync/common/recyclebin/IRecyclebinManager$Stub;
.super Landroid/os/Binder;
.source "IRecyclebinManager.java"

# interfaces
.implements Lcn/nubia/cloud/sync/common/recyclebin/IRecyclebinManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/sync/common/recyclebin/IRecyclebinManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/sync/common/recyclebin/IRecyclebinManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cn.nubia.cloud.sync.common.recyclebin.IRecyclebinManager"

.field static final TRANSACTION_clear:I = 0x2

.field static final TRANSACTION_collect:I = 0x4

.field static final TRANSACTION_list:I = 0x1

.field static final TRANSACTION_restore:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "cn.nubia.cloud.sync.common.recyclebin.IRecyclebinManager"

    invoke-virtual {p0, p0, v0}, Lcn/nubia/cloud/sync/common/recyclebin/IRecyclebinManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/sync/common/recyclebin/IRecyclebinManager;
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
    const-string v1, "cn.nubia.cloud.sync.common.recyclebin.IRecyclebinManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcn/nubia/cloud/sync/common/recyclebin/IRecyclebinManager;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcn/nubia/cloud/sync/common/recyclebin/IRecyclebinManager;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcn/nubia/cloud/sync/common/recyclebin/IRecyclebinManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcn/nubia/cloud/sync/common/recyclebin/IRecyclebinManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 102
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v0, "cn.nubia.cloud.sync.common.recyclebin.IRecyclebinManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v6

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "cn.nubia.cloud.sync.common.recyclebin.IRecyclebinManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 53
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 55
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 57
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/cloud/sync/common/recyclebin/IRecyclebinCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/sync/common/recyclebin/IRecyclebinCallback;

    move-result-object v5

    .local v5, "_arg4":Lcn/nubia/cloud/sync/common/recyclebin/IRecyclebinCallback;
    move-object v0, p0

    .line 58
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/cloud/sync/common/recyclebin/IRecyclebinManager$Stub;->list(Ljava/lang/String;IIILcn/nubia/cloud/sync/common/recyclebin/IRecyclebinCallback;)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 60
    goto :goto_0

    .line 64
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Lcn/nubia/cloud/sync/common/recyclebin/IRecyclebinCallback;
    :sswitch_2
    const-string v0, "cn.nubia.cloud.sync.common.recyclebin.IRecyclebinManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 68
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 70
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/cloud/sync/common/recyclebin/IRecyclebinCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/sync/common/recyclebin/IRecyclebinCallback;

    move-result-object v3

    .line 71
    .local v3, "_arg2":Lcn/nubia/cloud/sync/common/recyclebin/IRecyclebinCallback;
    invoke-virtual {p0, v1, v2, v3}, Lcn/nubia/cloud/sync/common/recyclebin/IRecyclebinManager$Stub;->clear(Ljava/lang/String;ILcn/nubia/cloud/sync/common/recyclebin/IRecyclebinCallback;)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 73
    goto :goto_0

    .line 77
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Lcn/nubia/cloud/sync/common/recyclebin/IRecyclebinCallback;
    :sswitch_3
    const-string v0, "cn.nubia.cloud.sync.common.recyclebin.IRecyclebinManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 81
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 83
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v3

    .line 85
    .local v3, "_arg2":[J
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/cloud/sync/common/recyclebin/IRecyclebinCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/sync/common/recyclebin/IRecyclebinCallback;

    move-result-object v4

    .line 86
    .local v4, "_arg3":Lcn/nubia/cloud/sync/common/recyclebin/IRecyclebinCallback;
    invoke-virtual {p0, v1, v2, v3, v4}, Lcn/nubia/cloud/sync/common/recyclebin/IRecyclebinManager$Stub;->restore(Ljava/lang/String;I[JLcn/nubia/cloud/sync/common/recyclebin/IRecyclebinCallback;)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 88
    goto :goto_0

    .line 92
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[J
    .end local v4    # "_arg3":Lcn/nubia/cloud/sync/common/recyclebin/IRecyclebinCallback;
    :sswitch_4
    const-string v0, "cn.nubia.cloud.sync.common.recyclebin.IRecyclebinManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 96
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/cloud/sync/common/recyclebin/IRecyclebinCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/sync/common/recyclebin/IRecyclebinCallback;

    move-result-object v2

    .line 97
    .local v2, "_arg1":Lcn/nubia/cloud/sync/common/recyclebin/IRecyclebinCallback;
    invoke-virtual {p0, v1, v2}, Lcn/nubia/cloud/sync/common/recyclebin/IRecyclebinManager$Stub;->collect(Ljava/lang/String;Lcn/nubia/cloud/sync/common/recyclebin/IRecyclebinCallback;)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 99
    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
