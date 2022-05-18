.class public abstract Lcn/nubia/cloud/accounts/oldaccount/IAuthListener$Stub;
.super Landroid/os/Binder;
.source "IAuthListener.java"

# interfaces
.implements Lcn/nubia/cloud/accounts/oldaccount/IAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/accounts/oldaccount/IAuthListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/accounts/oldaccount/IAuthListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cn.nubia.accounts.auth.IAuthListener"

.field static final TRANSACTION_onComplete:I = 0x1

.field static final TRANSACTION_onException:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "cn.nubia.accounts.auth.IAuthListener"

    .line 20
    invoke-virtual {p0, p0, v0}, Lcn/nubia/cloud/accounts/oldaccount/IAuthListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/accounts/oldaccount/IAuthListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "cn.nubia.accounts.auth.IAuthListener"

    .line 31
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 32
    instance-of v1, v0, Lcn/nubia/cloud/accounts/oldaccount/IAuthListener;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcn/nubia/cloud/accounts/oldaccount/IAuthListener;

    return-object v0

    .line 35
    :cond_1
    new-instance v0, Lcn/nubia/cloud/accounts/oldaccount/IAuthListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcn/nubia/cloud/accounts/oldaccount/IAuthListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v0, "cn.nubia.accounts.auth.IAuthListener"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 76
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 47
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 66
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 71
    invoke-virtual {p0, p1, p2}, Lcn/nubia/cloud/accounts/oldaccount/IAuthListener$Stub;->onException(ILjava/lang/String;)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 52
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 55
    sget-object p1, Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 60
    :goto_0
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/accounts/oldaccount/IAuthListener$Stub;->onComplete(Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1
.end method
