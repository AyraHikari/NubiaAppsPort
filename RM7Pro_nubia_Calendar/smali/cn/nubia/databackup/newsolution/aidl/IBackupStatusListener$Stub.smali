.class public abstract Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener$Stub;
.super Landroid/os/Binder;
.source "IBackupStatusListener.java"

# interfaces
.implements Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cn.nubia.databackup.newsolution.aidl.IBackupStatusListener"

.field static final TRANSACTION_onBackupCompleted:I = 0x2

.field static final TRANSACTION_onBackupFailed:I = 0x3

.field static final TRANSACTION_onProgressChanged:I = 0x1

.field static final TRANSACTION_onRestoreCompleted:I = 0x4

.field static final TRANSACTION_onRestoreFailed:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "cn.nubia.databackup.newsolution.aidl.IBackupStatusListener"

    invoke-virtual {p0, p0, v0}, Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;
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
    const-string v1, "cn.nubia.databackup.newsolution.aidl.IBackupStatusListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 103
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v5, "cn.nubia.databackup.newsolution.aidl.IBackupStatusListener"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "cn.nubia.databackup.newsolution.aidl.IBackupStatusListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 51
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 53
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 55
    .local v2, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v3}, Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener$Stub;->onProgressChanged(IIILjava/lang/String;)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 62
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    :sswitch_2
    const-string v5, "cn.nubia.databackup.newsolution.aidl.IBackupStatusListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 66
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener$Stub;->onBackupCompleted(ILjava/lang/String;)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 73
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_3
    const-string v5, "cn.nubia.databackup.newsolution.aidl.IBackupStatusListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 77
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 78
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener$Stub;->onBackupFailed(ILjava/lang/String;)V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 84
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_4
    const-string v5, "cn.nubia.databackup.newsolution.aidl.IBackupStatusListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 87
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener$Stub;->onRestoreCompleted(I)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 93
    .end local v0    # "_arg0":I
    :sswitch_5
    const-string v5, "cn.nubia.databackup.newsolution.aidl.IBackupStatusListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 97
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 98
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcn/nubia/databackup/newsolution/aidl/IBackupStatusListener$Stub;->onRestoreFailed(ILjava/lang/String;)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
