.class public abstract Lcn/nubia/leagueshare/INBShareStatusListener$Stub;
.super Landroid/os/Binder;
.source "INBShareStatusListener.java"

# interfaces
.implements Lcn/nubia/leagueshare/INBShareStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/leagueshare/INBShareStatusListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/leagueshare/INBShareStatusListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cn.nubia.leagueshare.INBShareStatusListener"

.field static final TRANSACTION_onDeviceArrived:I = 0x2

.field static final TRANSACTION_onDeviceStatusChanged:I = 0x1

.field static final TRANSACTION_onNBShareOff:I = 0x3

.field static final TRANSACTION_onNBShareOn:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "cn.nubia.leagueshare.INBShareStatusListener"

    .line 36
    invoke-virtual {p0, p0, v0}, Lcn/nubia/leagueshare/INBShareStatusListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcn/nubia/leagueshare/INBShareStatusListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "cn.nubia.leagueshare.INBShareStatusListener"

    .line 47
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 48
    instance-of v1, v0, Lcn/nubia/leagueshare/INBShareStatusListener;

    if-eqz v1, :cond_1

    .line 49
    check-cast v0, Lcn/nubia/leagueshare/INBShareStatusListener;

    return-object v0

    .line 51
    :cond_1
    new-instance v0, Lcn/nubia/leagueshare/INBShareStatusListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcn/nubia/leagueshare/INBShareStatusListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcn/nubia/leagueshare/INBShareStatusListener;
    .locals 1

    .line 219
    sget-object v0, Lcn/nubia/leagueshare/INBShareStatusListener$Stub$Proxy;->sDefaultImpl:Lcn/nubia/leagueshare/INBShareStatusListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcn/nubia/leagueshare/INBShareStatusListener;)Z
    .locals 1

    .line 212
    sget-object v0, Lcn/nubia/leagueshare/INBShareStatusListener$Stub$Proxy;->sDefaultImpl:Lcn/nubia/leagueshare/INBShareStatusListener;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 213
    sput-object p0, Lcn/nubia/leagueshare/INBShareStatusListener$Stub$Proxy;->sDefaultImpl:Lcn/nubia/leagueshare/INBShareStatusListener;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
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

    const/4 v0, 0x1

    const-string v1, "cn.nubia.leagueshare.INBShareStatusListener"

    if-eq p1, v0, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 106
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 64
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 99
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcn/nubia/leagueshare/INBShareStatusListener$Stub;->onNBShareOn()V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 92
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcn/nubia/leagueshare/INBShareStatusListener$Stub;->onNBShareOff()V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 83
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    sget-object p1, Lcn/nubia/leagueshare/NBShareDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 86
    invoke-virtual {p0, p1}, Lcn/nubia/leagueshare/INBShareStatusListener$Stub;->onDeviceArrived(Ljava/util/List;)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 69
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    .line 72
    sget-object p1, Lcn/nubia/leagueshare/NBShareDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/leagueshare/NBShareDevice;

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    .line 77
    :goto_0
    invoke-virtual {p0, p1}, Lcn/nubia/leagueshare/INBShareStatusListener$Stub;->onDeviceStatusChanged(Lcn/nubia/leagueshare/NBShareDevice;)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
