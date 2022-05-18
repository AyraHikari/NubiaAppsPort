.class public abstract Lcn/nubia/cloud/common/ICloudManager$Stub;
.super Landroid/os/Binder;
.source "ICloudManager.java"

# interfaces
.implements Lcn/nubia/cloud/common/ICloudManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/common/ICloudManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/common/ICloudManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cn.nubia.cloud.ICloudManager"

.field static final TRANSACTION_findModule:I = 0x4

.field static final TRANSACTION_findSyncModule:I = 0x5

.field static final TRANSACTION_getAllModules:I = 0x1

.field static final TRANSACTION_getSurfaceModules:I = 0x2

.field static final TRANSACTION_getSyncModules:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "cn.nubia.cloud.ICloudManager"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcn/nubia/cloud/common/ICloudManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/common/ICloudManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "cn.nubia.cloud.ICloudManager"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcn/nubia/cloud/common/ICloudManager;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcn/nubia/cloud/common/ICloudManager;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcn/nubia/cloud/common/ICloudManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcn/nubia/cloud/common/ICloudManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v0, "cn.nubia.cloud.ICloudManager"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_7

    const/4 v2, 0x2

    if-eq p1, v2, :cond_6

    const/4 v2, 0x3

    if-eq p1, v2, :cond_5

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eq p1, v2, :cond_3

    const/4 v2, 0x5

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

    .line 87
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 90
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/common/ICloudManager$Stub;->findSyncModule(I)Lcn/nubia/cloud/common/module/SyncModule;

    move-result-object p1

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_2

    .line 93
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    invoke-virtual {p1, p3, v1}, Lcn/nubia/cloud/common/module/SyncModule;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 71
    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 74
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/common/ICloudManager$Stub;->findModule(Ljava/lang/String;)Lcn/nubia/cloud/common/module/Module;

    move-result-object p1

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_4

    .line 77
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    invoke-virtual {p1, p3, v1}, Lcn/nubia/cloud/common/module/Module;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 81
    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v1

    .line 63
    :cond_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcn/nubia/cloud/common/ICloudManager$Stub;->getSyncModules()Ljava/util/List;

    move-result-object p1

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 55
    :cond_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcn/nubia/cloud/common/ICloudManager$Stub;->getSurfaceModules()Ljava/util/List;

    move-result-object p1

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 47
    :cond_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcn/nubia/cloud/common/ICloudManager$Stub;->getAllModules()Ljava/util/List;

    move-result-object p1

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1
.end method
