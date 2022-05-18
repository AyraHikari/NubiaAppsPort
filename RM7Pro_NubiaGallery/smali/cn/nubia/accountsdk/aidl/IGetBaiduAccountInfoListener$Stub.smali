.class public abstract Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener$Stub;
.super Landroid/os/Binder;
.source "IGetBaiduAccountInfoListener.java"

# interfaces
.implements Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cn.nubia.accountsdk.aidl.IGetBaiduAccountInfoListener"

.field static final TRANSACTION_onCancel:I = 0x3

.field static final TRANSACTION_onComplete:I = 0x1

.field static final TRANSACTION_onException:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "cn.nubia.accountsdk.aidl.IGetBaiduAccountInfoListener"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "cn.nubia.accountsdk.aidl.IGetBaiduAccountInfoListener"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v0, "cn.nubia.accountsdk.aidl.IGetBaiduAccountInfoListener"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 42
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 69
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener$Stub;->onCancel()V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 60
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-virtual {p0, p1}, Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener$Stub;->onException(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 47
    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 54
    invoke-virtual {p0, p1, p4, p2}, Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener$Stub;->onComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1
.end method
