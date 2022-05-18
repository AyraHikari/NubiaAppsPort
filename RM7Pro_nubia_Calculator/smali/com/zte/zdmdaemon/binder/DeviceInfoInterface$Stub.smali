.class public abstract Lcom/zte/zdmdaemon/binder/DeviceInfoInterface$Stub;
.super Landroid/os/Binder;
.source "DeviceInfoInterface.java"

# interfaces
.implements Lcom/zte/zdmdaemon/binder/DeviceInfoInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zdmdaemon/binder/DeviceInfoInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/zdmdaemon/binder/DeviceInfoInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.zte.zdmdaemon.binder.DeviceInfoInterface"

.field static final TRANSACTION_doJob:I = 0x3

.field static final TRANSACTION_getDeviceInfo:I = 0x1

.field static final TRANSACTION_getLocation:I = 0x5

.field static final TRANSACTION_startLocation:I = 0x4

.field static final TRANSACTION_write:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.zte.zdmdaemon.binder.DeviceInfoInterface"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/zte/zdmdaemon/binder/DeviceInfoInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/zte/zdmdaemon/binder/DeviceInfoInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.zte.zdmdaemon.binder.DeviceInfoInterface"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/zte/zdmdaemon/binder/DeviceInfoInterface;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/zte/zdmdaemon/binder/DeviceInfoInterface;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/zte/zdmdaemon/binder/DeviceInfoInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/zte/zdmdaemon/binder/DeviceInfoInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 94
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    const-string p1, "com.zte.zdmdaemon.binder.DeviceInfoInterface"

    .line 87
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/zte/zdmdaemon/binder/DeviceInfoInterface$Stub;->getLocation()Ljava/lang/String;

    move-result-object p0

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1
    const-string p1, "com.zte.zdmdaemon.binder.DeviceInfoInterface"

    .line 79
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/zte/zdmdaemon/binder/DeviceInfoInterface$Stub;->startLocation()I

    move-result p0

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_2
    const-string p1, "com.zte.zdmdaemon.binder.DeviceInfoInterface"

    .line 70
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-virtual {p0, p1}, Lcom/zte/zdmdaemon/binder/DeviceInfoInterface$Stub;->doJob(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_3
    const-string p1, "com.zte.zdmdaemon.binder.DeviceInfoInterface"

    .line 57
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 64
    :goto_0
    invoke-virtual {p0, p1, p4, p2}, Lcom/zte/zdmdaemon/binder/DeviceInfoInterface$Stub;->write(Ljava/lang/String;[BZ)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_4
    const-string p1, "com.zte.zdmdaemon.binder.DeviceInfoInterface"

    .line 47
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-virtual {p0, p1}, Lcom/zte/zdmdaemon/binder/DeviceInfoInterface$Stub;->getDeviceInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    const-string p0, "com.zte.zdmdaemon.binder.DeviceInfoInterface"

    .line 42
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
