.class public abstract Lcn/nubia/cloud/service/common/ICloudManager$Stub;
.super Landroid/os/Binder;
.source "ICloudManager.java"

# interfaces
.implements Lcn/nubia/cloud/service/common/ICloudManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/service/common/ICloudManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/service/common/ICloudManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cn.nubia.cloud.service.common.ICloudManager"

.field static final TRANSACTION_findModule:I = 0x4

.field static final TRANSACTION_findSyncModule:I = 0x5

.field static final TRANSACTION_getAllModules:I = 0x1

.field static final TRANSACTION_getSurfaceModules:I = 0x2

.field static final TRANSACTION_getSyncModules:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "cn.nubia.cloud.service.common.ICloudManager"

    invoke-virtual {p0, p0, v0}, Lcn/nubia/cloud/service/common/ICloudManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/service/common/ICloudManager;
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
    const-string v1, "cn.nubia.cloud.service.common.ICloudManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcn/nubia/cloud/service/common/ICloudManager;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcn/nubia/cloud/service/common/ICloudManager;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcn/nubia/cloud/service/common/ICloudManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcn/nubia/cloud/service/common/ICloudManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 102
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 42
    :sswitch_0
    const-string v6, "cn.nubia.cloud.service.common.ICloudManager"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v6, "cn.nubia.cloud.service.common.ICloudManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcn/nubia/cloud/service/common/ICloudManager$Stub;->getAllModules()Ljava/util/List;

    move-result-object v2

    .line 49
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/cloud/service/common/Module;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 55
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/cloud/service/common/Module;>;"
    :sswitch_2
    const-string v6, "cn.nubia.cloud.service.common.ICloudManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcn/nubia/cloud/service/common/ICloudManager$Stub;->getSurfaceModules()Ljava/util/List;

    move-result-object v3

    .line 57
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/cloud/service/common/SurfaceModule;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 63
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/cloud/service/common/SurfaceModule;>;"
    :sswitch_3
    const-string v6, "cn.nubia.cloud.service.common.ICloudManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcn/nubia/cloud/service/common/ICloudManager$Stub;->getSyncModules()Ljava/util/List;

    move-result-object v4

    .line 65
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/cloud/service/common/SyncModule;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 71
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/cloud/service/common/SyncModule;>;"
    :sswitch_4
    const-string v6, "cn.nubia.cloud.service.common.ICloudManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/service/common/ICloudManager$Stub;->findModule(Ljava/lang/String;)Lcn/nubia/cloud/service/common/Module;

    move-result-object v1

    .line 75
    .local v1, "_result":Lcn/nubia/cloud/service/common/Module;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    invoke-virtual {v1, p3, v5}, Lcn/nubia/cloud/service/common/Module;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 87
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Lcn/nubia/cloud/service/common/Module;
    :sswitch_5
    const-string v6, "cn.nubia.cloud.service.common.ICloudManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 90
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/service/common/ICloudManager$Stub;->findSyncModule(I)Lcn/nubia/cloud/service/common/SyncModule;

    move-result-object v1

    .line 91
    .local v1, "_result":Lcn/nubia/cloud/service/common/SyncModule;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v1, :cond_1

    .line 93
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    invoke-virtual {v1, p3, v5}, Lcn/nubia/cloud/service/common/SyncModule;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
