.class public Lcn/nubia/cloud/accounts/oldaccount/OldInfoAuthClient$AccountAuthHandler;
.super Ljava/lang/Object;
.source "OldInfoAuthClient.java"

# interfaces
.implements Lcn/nubia/cloud/utils/ipcclient/IServiceHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/accounts/oldaccount/OldInfoAuthClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountAuthHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/cloud/utils/ipcclient/IServiceHandler<",
        "Lcn/nubia/cloud/accounts/oldaccount/INubiaAccountAuth;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACCOUNT_AUTH_SERVER_CLASS:Ljava/lang/String; = "cn.nubia.accounts.auth.service.NubiaAccountAuthService"

.field private static final SERVER_PACKAGE:Ljava/lang/String; = "cn.nubia.accounts"


# instance fields
.field private final mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "cn.nubia.accounts"

    const-string v2, "cn.nubia.accounts.auth.service.NubiaAccountAuthService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcn/nubia/cloud/accounts/oldaccount/OldInfoAuthClient$AccountAuthHandler;->mIntent:Landroid/content/Intent;

    .line 39
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onServiceIntent()Landroid/content/Intent;
    .locals 1

    .line 49
    iget-object v0, p0, Lcn/nubia/cloud/accounts/oldaccount/OldInfoAuthClient$AccountAuthHandler;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public onTransact(Landroid/os/IBinder;)Lcn/nubia/cloud/accounts/oldaccount/INubiaAccountAuth;
    .locals 0

    .line 44
    invoke-static {p1}, Lcn/nubia/cloud/accounts/oldaccount/INubiaAccountAuth$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/accounts/oldaccount/INubiaAccountAuth;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onTransact(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/accounts/oldaccount/OldInfoAuthClient$AccountAuthHandler;->onTransact(Landroid/os/IBinder;)Lcn/nubia/cloud/accounts/oldaccount/INubiaAccountAuth;

    move-result-object p1

    return-object p1
.end method
