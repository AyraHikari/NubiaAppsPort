.class public abstract Lcn/nubia/cloud/common/sync/ClosableEnumeration$Stub;
.super Landroid/os/Binder;
.source "ClosableEnumeration.java"

# interfaces
.implements Lcn/nubia/cloud/common/sync/ClosableEnumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/common/sync/ClosableEnumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/common/sync/ClosableEnumeration$Stub$Proxy;
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

    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "cn.nubia.cloud.sync.common.ClosableEnumeration"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcn/nubia/cloud/common/sync/ClosableEnumeration$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/common/sync/ClosableEnumeration;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "cn.nubia.cloud.sync.common.ClosableEnumeration"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcn/nubia/cloud/common/sync/ClosableEnumeration;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcn/nubia/cloud/common/sync/ClosableEnumeration;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcn/nubia/cloud/common/sync/ClosableEnumeration$Stub$Proxy;

    invoke-direct {v0, p0}, Lcn/nubia/cloud/common/sync/ClosableEnumeration$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "cn.nubia.cloud.sync.common.ClosableEnumeration"

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

    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 42
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 73
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcn/nubia/cloud/common/sync/ClosableEnumeration$Stub;->close()V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 63
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 66
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/common/sync/ClosableEnumeration$Stub;->getNext(I)Ljava/util/List;

    move-result-object p1

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 55
    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcn/nubia/cloud/common/sync/ClosableEnumeration$Stub;->getCount()J

    move-result-wide p1

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    .line 47
    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcn/nubia/cloud/common/sync/ClosableEnumeration$Stub;->hasNext()Z

    move-result p1

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1
.end method
