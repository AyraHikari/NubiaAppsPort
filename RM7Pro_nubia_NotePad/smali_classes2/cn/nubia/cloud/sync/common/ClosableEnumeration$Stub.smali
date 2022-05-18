.class public abstract Lcn/nubia/cloud/sync/common/ClosableEnumeration$Stub;
.super Landroid/os/Binder;
.source "ClosableEnumeration.java"

# interfaces
.implements Lcn/nubia/cloud/sync/common/ClosableEnumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/sync/common/ClosableEnumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/sync/common/ClosableEnumeration$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cn.nubia.cloud.sync.common.ClosableEnumeration"

.field static final TRANSACTION_close:I = 0x4

.field static final TRANSACTION_getCount:I = 0x2

.field static final TRANSACTION_getNext:I = 0x3

.field static final TRANSACTION_hasNext:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "cn.nubia.cloud.sync.common.ClosableEnumeration"

    invoke-virtual {p0, p0, v0}, Lcn/nubia/cloud/sync/common/ClosableEnumeration$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/sync/common/ClosableEnumeration;
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
    const-string v1, "cn.nubia.cloud.sync.common.ClosableEnumeration"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcn/nubia/cloud/sync/common/ClosableEnumeration;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcn/nubia/cloud/sync/common/ClosableEnumeration;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcn/nubia/cloud/sync/common/ClosableEnumeration$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcn/nubia/cloud/sync/common/ClosableEnumeration$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v5, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 42
    :sswitch_0
    const-string v4, "cn.nubia.cloud.sync.common.ClosableEnumeration"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v4, "cn.nubia.cloud.sync.common.ClosableEnumeration"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcn/nubia/cloud/sync/common/ClosableEnumeration$Stub;->hasNext()Z

    move-result v2

    .line 49
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    if-eqz v2, :cond_0

    move v4, v5

    :goto_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 55
    .end local v2    # "_result":Z
    :sswitch_2
    const-string v4, "cn.nubia.cloud.sync.common.ClosableEnumeration"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcn/nubia/cloud/sync/common/ClosableEnumeration$Stub;->getCount()J

    move-result-wide v2

    .line 57
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 63
    .end local v2    # "_result":J
    :sswitch_3
    const-string v4, "cn.nubia.cloud.sync.common.ClosableEnumeration"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 66
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/sync/common/ClosableEnumeration$Stub;->getNext(I)Ljava/util/List;

    move-result-object v1

    .line 67
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/cloud/utils/ParcelableJson;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 73
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/cloud/utils/ParcelableJson;>;"
    :sswitch_4
    const-string v4, "cn.nubia.cloud.sync.common.ClosableEnumeration"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcn/nubia/cloud/sync/common/ClosableEnumeration$Stub;->close()V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

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
