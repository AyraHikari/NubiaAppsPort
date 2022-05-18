.class public abstract Lcn/nubia/cloud/accounts/oldaccount/IAccountAuth$Stub;
.super Landroid/os/Binder;
.source "IAccountAuth.java"

# interfaces
.implements Lcn/nubia/cloud/accounts/oldaccount/IAccountAuth;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/accounts/oldaccount/IAccountAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/accounts/oldaccount/IAccountAuth$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.account.IAccountAuth"

.field static final TRANSACTION_getBaiduAccountId:I = 0x3

.field static final TRANSACTION_getBaiduAccountToken:I = 0x2

.field static final TRANSACTION_getNubiaToken:I = 0x1

.field static final TRANSACTION_getNubiaTokenKey:I = 0x7

.field static final TRANSACTION_refreshNubiaToken:I = 0x5

.field static final TRANSACTION_signIn:I = 0x6

.field static final TRANSACTION_startBindBaiduAccount:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.account.IAccountAuth"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcn/nubia/cloud/accounts/oldaccount/IAccountAuth$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/accounts/oldaccount/IAccountAuth;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.android.account.IAccountAuth"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcn/nubia/cloud/accounts/oldaccount/IAccountAuth;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcn/nubia/cloud/accounts/oldaccount/IAccountAuth;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcn/nubia/cloud/accounts/oldaccount/IAccountAuth$Stub$Proxy;

    invoke-direct {v0, p0}, Lcn/nubia/cloud/accounts/oldaccount/IAccountAuth$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const v0, 0x5f4e5446

    const-string v1, "com.android.account.IAccountAuth"

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 109
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 102
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcn/nubia/cloud/accounts/oldaccount/IAccountAuth$Stub;->getNubiaTokenKey()Ljava/lang/String;

    move-result-object p1

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 89
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcn/nubia/cloud/accounts/oldaccount/IAccountSignInListener$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/accounts/oldaccount/IAccountSignInListener;

    move-result-object p2

    .line 96
    invoke-virtual {p0, p1, p4, p2}, Lcn/nubia/cloud/accounts/oldaccount/IAccountAuth$Stub;->signIn(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/cloud/accounts/oldaccount/IAccountSignInListener;)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 82
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcn/nubia/cloud/accounts/oldaccount/IAccountAuth$Stub;->refreshNubiaToken()V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 71
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 75
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcn/nubia/cloud/accounts/oldaccount/IAccountInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/accounts/oldaccount/IAccountInfoListener;

    move-result-object p2

    .line 76
    invoke-virtual {p0, p1, p2}, Lcn/nubia/cloud/accounts/oldaccount/IAccountAuth$Stub;->startBindBaiduAccount(ZLcn/nubia/cloud/accounts/oldaccount/IAccountInfoListener;)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 63
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcn/nubia/cloud/accounts/oldaccount/IAccountAuth$Stub;->getBaiduAccountId()Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 55
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcn/nubia/cloud/accounts/oldaccount/IAccountAuth$Stub;->getBaiduAccountToken()Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 47
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcn/nubia/cloud/accounts/oldaccount/IAccountAuth$Stub;->getNubiaToken()Ljava/lang/String;

    move-result-object p1

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 42
    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
