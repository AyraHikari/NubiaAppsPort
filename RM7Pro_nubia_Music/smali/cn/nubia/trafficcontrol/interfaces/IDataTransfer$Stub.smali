.class public abstract Lcn/nubia/trafficcontrol/interfaces/IDataTransfer$Stub;
.super Landroid/os/Binder;
.source "IDataTransfer.java"

# interfaces
.implements Lcn/nubia/trafficcontrol/interfaces/IDataTransfer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/trafficcontrol/interfaces/IDataTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/trafficcontrol/interfaces/IDataTransfer$Stub$a;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cn.nubia.trafficcontrol.interfaces.IDataTransfer"

.field static final TRANSACTION_transfer:I = 0x1

.field static final TRANSACTION_transferAsync:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "cn.nubia.trafficcontrol.interfaces.IDataTransfer"

    invoke-virtual {p0, p0, v0}, Lcn/nubia/trafficcontrol/interfaces/IDataTransfer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcn/nubia/trafficcontrol/interfaces/IDataTransfer;
    .locals 2

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    .line 33
    :cond_0
    const-string v0, "cn.nubia.trafficcontrol.interfaces.IDataTransfer"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcn/nubia/trafficcontrol/interfaces/IDataTransfer;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lcn/nubia/trafficcontrol/interfaces/IDataTransfer;

    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Lcn/nubia/trafficcontrol/interfaces/IDataTransfer$Stub$a;

    invoke-direct {v0, p0}, Lcn/nubia/trafficcontrol/interfaces/IDataTransfer$Stub$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 45
    const-string v2, "cn.nubia.trafficcontrol.interfaces.IDataTransfer"

    .line 46
    sparse-switch p1, :sswitch_data_0

    .line 91
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 50
    :sswitch_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 51
    goto :goto_0

    .line 55
    :sswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 64
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 65
    invoke-virtual {p0, v0, v2}, Lcn/nubia/trafficcontrol/interfaces/IDataTransfer$Stub;->transfer(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    if-eqz v2, :cond_1

    .line 68
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    invoke-virtual {v2, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    move v0, v1

    .line 74
    goto :goto_0

    .line 72
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 78
    :sswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 81
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 86
    :cond_2
    invoke-virtual {p0, v0}, Lcn/nubia/trafficcontrol/interfaces/IDataTransfer$Stub;->transferAsync(Landroid/os/Bundle;)V

    move v0, v1

    .line 87
    goto :goto_0

    .line 46
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
