.class public abstract Lcn/nubia/deskclock/controldatabase/aidl/IManagerAlarmDatabaseControl$Stub;
.super Landroid/os/Binder;
.source "IManagerAlarmDatabaseControl.java"

# interfaces
.implements Lcn/nubia/deskclock/controldatabase/aidl/IManagerAlarmDatabaseControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/controldatabase/aidl/IManagerAlarmDatabaseControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deskclock/controldatabase/aidl/IManagerAlarmDatabaseControl$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cn.nubia.deskclock.controldatabase.aidl.IManagerAlarmDatabaseControl"

.field static final TRANSACTION_createCountDown:I = 0x6

.field static final TRANSACTION_createStopWatch:I = 0x5

.field static final TRANSACTION_createWorldTime:I = 0x7

.field static final TRANSACTION_getCountDownStatus:I = 0x4

.field static final TRANSACTION_getStopWatchStatus:I = 0x3

.field static final TRANSACTION_insertAlarm:I = 0x1

.field static final TRANSACTION_updateAlarm:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "cn.nubia.deskclock.controldatabase.aidl.IManagerAlarmDatabaseControl"

    invoke-virtual {p0, p0, v0}, Lcn/nubia/deskclock/controldatabase/aidl/IManagerAlarmDatabaseControl$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcn/nubia/deskclock/controldatabase/aidl/IManagerAlarmDatabaseControl;
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
    const-string v1, "cn.nubia.deskclock.controldatabase.aidl.IManagerAlarmDatabaseControl"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcn/nubia/deskclock/controldatabase/aidl/IManagerAlarmDatabaseControl;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcn/nubia/deskclock/controldatabase/aidl/IManagerAlarmDatabaseControl;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcn/nubia/deskclock/controldatabase/aidl/IManagerAlarmDatabaseControl$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcn/nubia/deskclock/controldatabase/aidl/IManagerAlarmDatabaseControl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 132
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v6, "cn.nubia.deskclock.controldatabase.aidl.IManagerAlarmDatabaseControl"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v6, "cn.nubia.deskclock.controldatabase.aidl.IManagerAlarmDatabaseControl"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    .line 50
    sget-object v6, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 55
    .local v0, "_arg0":Landroid/content/ContentValues;
    :goto_1
    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/controldatabase/aidl/IManagerAlarmDatabaseControl$Stub;->insertAlarm(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    .end local v0    # "_arg0":Landroid/content/ContentValues;
    .end local v4    # "_result":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/ContentValues;
    goto :goto_1

    .line 62
    .end local v0    # "_arg0":Landroid/content/ContentValues;
    :sswitch_2
    const-string v6, "cn.nubia.deskclock.controldatabase.aidl.IManagerAlarmDatabaseControl"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    .line 65
    sget-object v6, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 71
    .restart local v0    # "_arg0":Landroid/content/ContentValues;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, "_arg2":[Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/deskclock/controldatabase/aidl/IManagerAlarmDatabaseControl$Stub;->updateAlarm(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v4

    .line 75
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 68
    .end local v0    # "_arg0":Landroid/content/ContentValues;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":[Ljava/lang/String;
    .end local v4    # "_result":J
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/ContentValues;
    goto :goto_2

    .line 81
    .end local v0    # "_arg0":Landroid/content/ContentValues;
    :sswitch_3
    const-string v6, "cn.nubia.deskclock.controldatabase.aidl.IManagerAlarmDatabaseControl"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcn/nubia/deskclock/controldatabase/aidl/IManagerAlarmDatabaseControl$Stub;->getStopWatchStatus()I

    move-result v4

    .line 83
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 89
    .end local v4    # "_result":I
    :sswitch_4
    const-string v6, "cn.nubia.deskclock.controldatabase.aidl.IManagerAlarmDatabaseControl"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcn/nubia/deskclock/controldatabase/aidl/IManagerAlarmDatabaseControl$Stub;->getCountDownStatus()I

    move-result v4

    .line 91
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 97
    .end local v4    # "_result":I
    :sswitch_5
    const-string v7, "cn.nubia.deskclock.controldatabase.aidl.IManagerAlarmDatabaseControl"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2

    move v1, v3

    .line 102
    .local v1, "_arg1":Z
    :goto_3
    invoke-virtual {p0, v0, v1}, Lcn/nubia/deskclock/controldatabase/aidl/IManagerAlarmDatabaseControl$Stub;->createStopWatch(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 103
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v4    # "_result":Ljava/lang/String;
    :cond_2
    move v1, v6

    .line 101
    goto :goto_3

    .line 109
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_6
    const-string v7, "cn.nubia.deskclock.controldatabase.aidl.IManagerAlarmDatabaseControl"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 113
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 115
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3

    move v2, v3

    .line 116
    .local v2, "_arg2":Z
    :goto_4
    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/deskclock/controldatabase/aidl/IManagerAlarmDatabaseControl$Stub;->createCountDown(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v4

    .line 117
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v2    # "_arg2":Z
    .end local v4    # "_result":Ljava/lang/String;
    :cond_3
    move v2, v6

    .line 115
    goto :goto_4

    .line 123
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :sswitch_7
    const-string v6, "cn.nubia.deskclock.controldatabase.aidl.IManagerAlarmDatabaseControl"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 126
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/controldatabase/aidl/IManagerAlarmDatabaseControl$Stub;->createWorldTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 127
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
