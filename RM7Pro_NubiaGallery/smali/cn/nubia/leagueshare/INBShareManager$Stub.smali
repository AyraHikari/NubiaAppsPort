.class public abstract Lcn/nubia/leagueshare/INBShareManager$Stub;
.super Landroid/os/Binder;
.source "INBShareManager.java"

# interfaces
.implements Lcn/nubia/leagueshare/INBShareManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/leagueshare/INBShareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/leagueshare/INBShareManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cn.nubia.leagueshare.INBShareManager"

.field static final TRANSACTION_cancelSending:I = 0x6

.field static final TRANSACTION_getDeviceList:I = 0x4

.field static final TRANSACTION_isNBShareOn:I = 0x1

.field static final TRANSACTION_openNBShareHelp:I = 0x3

.field static final TRANSACTION_registerListener:I = 0x7

.field static final TRANSACTION_sendFile:I = 0x5

.field static final TRANSACTION_turnOnNBShare:I = 0x2

.field static final TRANSACTION_unregisterListener:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "cn.nubia.leagueshare.INBShareManager"

    .line 48
    invoke-virtual {p0, p0, v0}, Lcn/nubia/leagueshare/INBShareManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcn/nubia/leagueshare/INBShareManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "cn.nubia.leagueshare.INBShareManager"

    .line 59
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 60
    instance-of v1, v0, Lcn/nubia/leagueshare/INBShareManager;

    if-eqz v1, :cond_1

    .line 61
    check-cast v0, Lcn/nubia/leagueshare/INBShareManager;

    return-object v0

    .line 63
    :cond_1
    new-instance v0, Lcn/nubia/leagueshare/INBShareManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcn/nubia/leagueshare/INBShareManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcn/nubia/leagueshare/INBShareManager;
    .locals 1

    .line 350
    sget-object v0, Lcn/nubia/leagueshare/INBShareManager$Stub$Proxy;->sDefaultImpl:Lcn/nubia/leagueshare/INBShareManager;

    return-object v0
.end method

.method public static setDefaultImpl(Lcn/nubia/leagueshare/INBShareManager;)Z
    .locals 1

    .line 343
    sget-object v0, Lcn/nubia/leagueshare/INBShareManager$Stub$Proxy;->sDefaultImpl:Lcn/nubia/leagueshare/INBShareManager;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 344
    sput-object p0, Lcn/nubia/leagueshare/INBShareManager$Stub$Proxy;->sDefaultImpl:Lcn/nubia/leagueshare/INBShareManager;

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

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "cn.nubia.leagueshare.INBShareManager"

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 154
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 145
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/leagueshare/INBShareStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/leagueshare/INBShareStatusListener;

    move-result-object p1

    .line 148
    invoke-virtual {p0, p1}, Lcn/nubia/leagueshare/INBShareManager$Stub;->unregisterListener(Lcn/nubia/leagueshare/INBShareStatusListener;)V

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 136
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/leagueshare/INBShareStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/leagueshare/INBShareStatusListener;

    move-result-object p1

    .line 139
    invoke-virtual {p0, p1}, Lcn/nubia/leagueshare/INBShareManager$Stub;->registerListener(Lcn/nubia/leagueshare/INBShareStatusListener;)V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 127
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 130
    invoke-virtual {p0, p1}, Lcn/nubia/leagueshare/INBShareManager$Stub;->cancelSending(I)V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 111
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_0

    .line 116
    sget-object p4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 121
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcn/nubia/leagueshare/INBShareManager$Stub;->sendFile(ILandroid/content/Intent;)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 103
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcn/nubia/leagueshare/INBShareManager$Stub;->getDeviceList()Ljava/util/List;

    move-result-object p1

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 96
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcn/nubia/leagueshare/INBShareManager$Stub;->openNBShareHelp()V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 89
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcn/nubia/leagueshare/INBShareManager$Stub;->turnOnNBShare()V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 81
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcn/nubia/leagueshare/INBShareManager$Stub;->isNBShareOn()Z

    move-result p1

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 76
    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
