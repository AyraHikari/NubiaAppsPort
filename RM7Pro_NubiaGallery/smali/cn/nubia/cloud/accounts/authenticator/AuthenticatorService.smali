.class public Lcn/nubia/cloud/accounts/authenticator/AuthenticatorService;
.super Landroid/app/Service;
.source "AuthenticatorService.java"


# instance fields
.field private mAuthenticator:Lcn/nubia/cloud/accounts/authenticator/Authenticator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 17
    iget-object p1, p0, Lcn/nubia/cloud/accounts/authenticator/AuthenticatorService;->mAuthenticator:Lcn/nubia/cloud/accounts/authenticator/Authenticator;

    invoke-virtual {p1}, Lcn/nubia/cloud/accounts/authenticator/Authenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 13
    new-instance v0, Lcn/nubia/cloud/accounts/authenticator/Authenticator;

    invoke-direct {v0, p0}, Lcn/nubia/cloud/accounts/authenticator/Authenticator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/cloud/accounts/authenticator/AuthenticatorService;->mAuthenticator:Lcn/nubia/cloud/accounts/authenticator/Authenticator;

    return-void
.end method
