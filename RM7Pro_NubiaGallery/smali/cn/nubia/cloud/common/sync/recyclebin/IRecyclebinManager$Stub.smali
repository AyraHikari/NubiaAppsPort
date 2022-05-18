.class public abstract Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinManager$Stub;
.super Landroid/os/Binder;
.source "IRecyclebinManager.java"

# interfaces
.implements Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinManager$Stub$Proxy;
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

    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "cn.nubia.cloud.sync.common.recyclebin.IRecyclebinManager"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "cn.nubia.cloud.sync.common.recyclebin.IRecyclebinManager"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinManager;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinManager;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "cn.nubia.cloud.sync.common.recyclebin.IRecyclebinManager"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 102
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 42
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 92
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinCallback;

    move-result-object p2

    .line 97
    invoke-virtual {p0, p1, p2}, Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinManager$Stub;->collect(Ljava/lang/String;Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinCallback;)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 77
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinCallback;

    move-result-object p2

    .line 86
    invoke-virtual {p0, p1, p4, v0, p2}, Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinManager$Stub;->restore(Ljava/lang/String;I[JLcn/nubia/cloud/common/sync/recyclebin/IRecyclebinCallback;)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 64
    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinCallback;

    move-result-object p2

    .line 71
    invoke-virtual {p0, p1, p4, p2}, Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinManager$Stub;->clear(Ljava/lang/String;ILcn/nubia/cloud/common/sync/recyclebin/IRecyclebinCallback;)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 47
    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinCallback;

    move-result-object v7

    move-object v2, p0

    .line 58
    invoke-virtual/range {v2 .. v7}, Lcn/nubia/cloud/common/sync/recyclebin/IRecyclebinManager$Stub;->list(Ljava/lang/String;IIILcn/nubia/cloud/common/sync/recyclebin/IRecyclebinCallback;)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1
.end method
