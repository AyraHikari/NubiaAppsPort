.class public abstract Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;
.super Landroid/os/Binder;
.source "DownloadBinderProxy.java"

# interfaces
.implements Lcn/nubia/upgrade/service/DownloadBinderProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/upgrade/service/DownloadBinderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub$a;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cn.nubia.upgrade.service.DownloadBinderProxy"

.field static final TRANSACTION_onDownloadCallingPid:I = 0x7

.field static final TRANSACTION_onDownloadComplete:I = 0x5

.field static final TRANSACTION_onDownloadError:I = 0x3

.field static final TRANSACTION_onDownloadPause:I = 0x4

.field static final TRANSACTION_onDownloadProgress:I = 0x6

.field static final TRANSACTION_onResumeDownload:I = 0x2

.field static final TRANSACTION_onStartDownload:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "cn.nubia.upgrade.service.DownloadBinderProxy"

    invoke-virtual {p0, p0, v0}, Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcn/nubia/upgrade/service/DownloadBinderProxy;
    .locals 2

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
    const-string v0, "cn.nubia.upgrade.service.DownloadBinderProxy"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcn/nubia/upgrade/service/DownloadBinderProxy;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcn/nubia/upgrade/service/DownloadBinderProxy;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub$a;

    invoke-direct {v0, p0}, Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub$a;-><init>(Landroid/os/IBinder;)V

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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 104
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 42
    :sswitch_0
    const-string v0, "cn.nubia.upgrade.service.DownloadBinderProxy"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "cn.nubia.upgrade.service.DownloadBinderProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;->onStartDownload()V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 54
    :sswitch_2
    const-string v0, "cn.nubia.upgrade.service.DownloadBinderProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;->onResumeDownload()V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 61
    :sswitch_3
    const-string v0, "cn.nubia.upgrade.service.DownloadBinderProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 64
    invoke-virtual {p0, v0}, Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;->onDownloadError(I)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 70
    :sswitch_4
    const-string v0, "cn.nubia.upgrade.service.DownloadBinderProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;->onDownloadPause()V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 77
    :sswitch_5
    const-string v0, "cn.nubia.upgrade.service.DownloadBinderProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 82
    :goto_1
    invoke-virtual {p0, v2, v0}, Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;->onDownloadComplete(Ljava/lang/String;Z)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 81
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 88
    :sswitch_6
    const-string v0, "cn.nubia.upgrade.service.DownloadBinderProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 91
    invoke-virtual {p0, v0}, Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;->onDownloadProgress(I)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 97
    :sswitch_7
    const-string v0, "cn.nubia.upgrade.service.DownloadBinderProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;->onDownloadCallingPid()I

    move-result v0

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
