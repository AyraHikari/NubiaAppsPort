.class public abstract Lcn/nubia/databackup/newsolution/aidl/IBackupController$Stub;
.super Landroid/os/Binder;
.source "IBackupController.java"

# interfaces
.implements Lcn/nubia/databackup/newsolution/aidl/IBackupController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/databackup/newsolution/aidl/IBackupController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/databackup/newsolution/aidl/IBackupController$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cn.nubia.databackup.newsolution.aidl.IBackupController"

.field static final TRANSACTION_cancelBackup:I = 0x3

.field static final TRANSACTION_cancelRestore:I = 0x6

.field static final TRANSACTION_deleteData:I = 0x8

.field static final TRANSACTION_getBackupEntries:I = 0x1

.field static final TRANSACTION_setPauseBackup:I = 0x4

.field static final TRANSACTION_setPauseRestore:I = 0x7

.field static final TRANSACTION_startBackup:I = 0x2

.field static final TRANSACTION_startRestore:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "cn.nubia.databackup.newsolution.aidl.IBackupController"

    invoke-virtual {p0, p0, v0}, Lcn/nubia/databackup/newsolution/aidl/IBackupController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcn/nubia/databackup/newsolution/aidl/IBackupController;
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
    const-string v1, "cn.nubia.databackup.newsolution.aidl.IBackupController"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcn/nubia/databackup/newsolution/aidl/IBackupController;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcn/nubia/databackup/newsolution/aidl/IBackupController;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcn/nubia/databackup/newsolution/aidl/IBackupController$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcn/nubia/databackup/newsolution/aidl/IBackupController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 9
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

    const/4 v7, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 133
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 42
    :sswitch_0
    const-string v6, "cn.nubia.databackup.newsolution.aidl.IBackupController"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v6, "cn.nubia.databackup.newsolution.aidl.IBackupController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcn/nubia/databackup/newsolution/aidl/IBackupController$Stub;->getBackupEntries()Ljava/util/List;

    move-result-object v5

    .line 49
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 55
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;>;"
    :sswitch_2
    const-string v8, "cn.nubia.databackup.newsolution.aidl.IBackupController"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 59
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;

    move-result-object v2

    .line 62
    .local v2, "_arg2":Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;
    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/databackup/newsolution/aidl/IBackupController$Stub;->startBackup(ILjava/lang/String;Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)Z

    move-result v4

    .line 63
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    if-eqz v4, :cond_0

    move v6, v7

    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 69
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;
    .end local v4    # "_result":Z
    :sswitch_3
    const-string v6, "cn.nubia.databackup.newsolution.aidl.IBackupController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcn/nubia/databackup/newsolution/aidl/IBackupController$Stub;->cancelBackup(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 78
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_4
    const-string v8, "cn.nubia.databackup.newsolution.aidl.IBackupController"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    move v0, v7

    .line 82
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 83
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcn/nubia/databackup/newsolution/aidl/IBackupController$Stub;->setPauseBackup(ZLjava/lang/String;)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    :cond_1
    move v0, v6

    .line 80
    goto :goto_1

    .line 89
    :sswitch_5
    const-string v8, "cn.nubia.databackup.newsolution.aidl.IBackupController"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 93
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 95
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;

    move-result-object v3

    .line 98
    .local v3, "_arg3":Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;
    invoke-virtual {p0, v0, v1, v2, v3}, Lcn/nubia/databackup/newsolution/aidl/IBackupController$Stub;->startRestore(ILjava/lang/String;Ljava/lang/String;Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;)Z

    move-result v4

    .line 99
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    if-eqz v4, :cond_2

    move v6, v7

    :cond_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 105
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;
    .end local v4    # "_result":Z
    :sswitch_6
    const-string v6, "cn.nubia.databackup.newsolution.aidl.IBackupController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcn/nubia/databackup/newsolution/aidl/IBackupController$Stub;->cancelRestore(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 114
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_7
    const-string v8, "cn.nubia.databackup.newsolution.aidl.IBackupController"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3

    move v0, v7

    .line 118
    .local v0, "_arg0":Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 119
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcn/nubia/databackup/newsolution/aidl/IBackupController$Stub;->setPauseRestore(ZLjava/lang/String;)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    :cond_3
    move v0, v6

    .line 116
    goto :goto_2

    .line 125
    :sswitch_8
    const-string v6, "cn.nubia.databackup.newsolution.aidl.IBackupController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcn/nubia/databackup/newsolution/aidl/IBackupController$Stub;->deleteData(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
