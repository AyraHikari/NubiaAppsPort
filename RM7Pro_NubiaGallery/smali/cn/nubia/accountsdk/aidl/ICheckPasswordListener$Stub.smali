.class public abstract Lcn/nubia/accountsdk/aidl/ICheckPasswordListener$Stub;
.super Landroid/os/Binder;
.source "ICheckPasswordListener.java"

# interfaces
.implements Lcn/nubia/accountsdk/aidl/ICheckPasswordListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/accountsdk/aidl/ICheckPasswordListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/accountsdk/aidl/ICheckPasswordListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cn.nubia.accountsdk.aidl.ICheckPasswordListener"

.field static final TRANSACTION_onComplete:I = 0x1

.field static final TRANSACTION_onException:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "cn.nubia.accountsdk.aidl.ICheckPasswordListener"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcn/nubia/accountsdk/aidl/ICheckPasswordListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcn/nubia/accountsdk/aidl/ICheckPasswordListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "cn.nubia.accountsdk.aidl.ICheckPasswordListener"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcn/nubia/accountsdk/aidl/ICheckPasswordListener;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcn/nubia/accountsdk/aidl/ICheckPasswordListener;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcn/nubia/accountsdk/aidl/ICheckPasswordListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcn/nubia/accountsdk/aidl/ICheckPasswordListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v0, "cn.nubia.accountsdk.aidl.ICheckPasswordListener"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 64
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 42
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 56
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-virtual {p0, p1}, Lcn/nubia/accountsdk/aidl/ICheckPasswordListener$Stub;->onException(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 47
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    move p1, v1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 50
    :goto_0
    invoke-virtual {p0, p1}, Lcn/nubia/accountsdk/aidl/ICheckPasswordListener$Stub;->onComplete(Z)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1
.end method
