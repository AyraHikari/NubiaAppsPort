.class Lcn/nubia/cloud/service/common/IModuleSolution$Stub$Proxy;
.super Ljava/lang/Object;
.source "IModuleSolution.java"

# interfaces
.implements Lcn/nubia/cloud/service/common/IModuleSolution;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/service/common/IModuleSolution$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcn/nubia/cloud/service/common/IModuleSolution$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 62
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcn/nubia/cloud/service/common/IModuleSolution$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string v0, "cn.nubia.cloud.service.common.IModuleSolution"

    return-object v0
.end method

.method public getModuleConfigs()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/cloud/service/common/ModuleConfig;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 74
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 77
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "cn.nubia.cloud.service.common.IModuleSolution"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 78
    iget-object v3, p0, Lcn/nubia/cloud/service/common/IModuleSolution$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 79
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 80
    sget-object v3, Lcn/nubia/cloud/service/common/ModuleConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 83
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/cloud/service/common/ModuleConfig;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 84
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 86
    return-object v2

    .line 83
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/cloud/service/common/ModuleConfig;>;"
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 84
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method
