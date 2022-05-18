.class public abstract Lcn/nubia/cloud/common/sync/ISyncStorage$Stub;
.super Landroid/os/Binder;
.source "ISyncStorage.java"

# interfaces
.implements Lcn/nubia/cloud/common/sync/ISyncStorage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/common/sync/ISyncStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/common/sync/ISyncStorage$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cn.nubia.cloud.sync.common.ISyncStorage"

.field static final TRANSACTION_getDirtyData:I = 0x2

.field static final TRANSACTION_getLastSyncVersion:I = 0x1

.field static final TRANSACTION_onException:I = 0x5

.field static final TRANSACTION_onPushComplete:I = 0x3

.field static final TRANSACTION_onServerItemsPulled:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "cn.nubia.cloud.sync.common.ISyncStorage"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcn/nubia/cloud/common/sync/ISyncStorage$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/common/sync/ISyncStorage;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "cn.nubia.cloud.sync.common.ISyncStorage"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcn/nubia/cloud/common/sync/ISyncStorage;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcn/nubia/cloud/common/sync/ISyncStorage;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcn/nubia/cloud/common/sync/ISyncStorage$Stub$Proxy;

    invoke-direct {v0, p0}, Lcn/nubia/cloud/common/sync/ISyncStorage$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v0, "cn.nubia.cloud.sync.common.ISyncStorage"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_6

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 97
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
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 92
    invoke-virtual {p0, p1, p2}, Lcn/nubia/cloud/common/sync/ISyncStorage$Stub;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 76
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/cloud/common/sync/ClosableEnumeration$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/common/sync/ClosableEnumeration;

    move-result-object p1

    .line 81
    invoke-virtual {p0, v2, v3, p1}, Lcn/nubia/cloud/common/sync/ISyncStorage$Stub;->onServerItemsPulled(JLcn/nubia/cloud/common/sync/ClosableEnumeration;)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 65
    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/cloud/common/sync/ClosableEnumeration$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/common/sync/ClosableEnumeration;

    move-result-object p1

    .line 70
    invoke-virtual {p0, v2, v3, p1}, Lcn/nubia/cloud/common/sync/ISyncStorage$Stub;->onPushComplete(JLcn/nubia/cloud/common/sync/ClosableEnumeration;)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 57
    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcn/nubia/cloud/common/sync/ISyncStorage$Stub;->getDirtyData()Lcn/nubia/cloud/common/sync/ClosableEnumeration;

    move-result-object p1

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_5

    .line 60
    invoke-interface {p1}, Lcn/nubia/cloud/common/sync/ClosableEnumeration;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 47
    :cond_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/common/sync/ISyncStorage$Stub;->getLastSyncVersion(Ljava/lang/String;)J

    move-result-wide p1

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1
.end method
