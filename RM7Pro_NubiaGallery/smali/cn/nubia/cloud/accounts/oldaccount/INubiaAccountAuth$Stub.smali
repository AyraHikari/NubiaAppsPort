.class public abstract Lcn/nubia/cloud/accounts/oldaccount/INubiaAccountAuth$Stub;
.super Landroid/os/Binder;
.source "INubiaAccountAuth.java"

# interfaces
.implements Lcn/nubia/cloud/accounts/oldaccount/INubiaAccountAuth;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/accounts/oldaccount/INubiaAccountAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/accounts/oldaccount/INubiaAccountAuth$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cn.nubia.accounts.auth.INubiaAccountAuth"

.field static final TRANSACTION_getAccountInfo:I = 0x1

.field static final TRANSACTION_getCloudSpace:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "cn.nubia.accounts.auth.INubiaAccountAuth"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcn/nubia/cloud/accounts/oldaccount/INubiaAccountAuth$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/accounts/oldaccount/INubiaAccountAuth;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "cn.nubia.accounts.auth.INubiaAccountAuth"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcn/nubia/cloud/accounts/oldaccount/INubiaAccountAuth;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcn/nubia/cloud/accounts/oldaccount/INubiaAccountAuth;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcn/nubia/cloud/accounts/oldaccount/INubiaAccountAuth$Stub$Proxy;

    invoke-direct {v0, p0}, Lcn/nubia/cloud/accounts/oldaccount/INubiaAccountAuth$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v0, "cn.nubia.accounts.auth.INubiaAccountAuth"

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/cloud/accounts/oldaccount/IAuthListener$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/accounts/oldaccount/IAuthListener;

    move-result-object p1

    .line 59
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/accounts/oldaccount/INubiaAccountAuth$Stub;->getCloudSpace(Lcn/nubia/cloud/accounts/oldaccount/IAuthListener;)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 47
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/cloud/accounts/oldaccount/IAuthListener$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/accounts/oldaccount/IAuthListener;

    move-result-object p1

    .line 50
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/accounts/oldaccount/INubiaAccountAuth$Stub;->getAccountInfo(Lcn/nubia/cloud/accounts/oldaccount/IAuthListener;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1
.end method
