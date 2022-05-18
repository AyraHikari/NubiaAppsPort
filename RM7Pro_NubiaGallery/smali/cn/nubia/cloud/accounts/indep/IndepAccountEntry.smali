.class public Lcn/nubia/cloud/accounts/indep/IndepAccountEntry;
.super Lcn/nubia/cloud/accounts/BaseAccountEntry;
.source "IndepAccountEntry.java"


# static fields
.field public static final KEY_EMAIL:Ljava/lang/String; = "email"

.field public static final KEY_MOBILE:Ljava/lang/String; = "mobile"

.field public static final KEY_NICKNAME:Ljava/lang/String; = "nickname"

.field public static final KEY_USER_NAME:Ljava/lang/String; = "username"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcn/nubia/cloud/accounts/BaseAccountEntry;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onBindBaiduAccount(Z)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected onGetBaiduPCSToken()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onGetNBAccountInfo()Lcn/nubia/cloud/accounts/NBAccountInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/cloud/accounts/AccountNotFountException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcn/nubia/cloud/accounts/indep/IndepAccountEntry;->mSpfsCtrl:Lcn/nubia/cloud/utils/SharedPreferencesCtrl;

    const-string v1, "username"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/cloud/utils/SharedPreferencesCtrl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lcn/nubia/cloud/accounts/NBAccountInfo;

    invoke-direct {v1, v2, v2, v0}, Lcn/nubia/cloud/accounts/NBAccountInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcn/nubia/cloud/accounts/indep/IndepAccountEntry;->mSpfsCtrl:Lcn/nubia/cloud/utils/SharedPreferencesCtrl;

    const-string v2, "nickname"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcn/nubia/cloud/utils/SharedPreferencesCtrl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/nubia/cloud/accounts/NBAccountInfo;->nickName:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcn/nubia/cloud/accounts/indep/IndepAccountEntry;->mSpfsCtrl:Lcn/nubia/cloud/utils/SharedPreferencesCtrl;

    const-string v2, "mobile"

    invoke-virtual {v0, v2, v3}, Lcn/nubia/cloud/utils/SharedPreferencesCtrl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/nubia/cloud/accounts/NBAccountInfo;->mobile:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcn/nubia/cloud/accounts/indep/IndepAccountEntry;->mSpfsCtrl:Lcn/nubia/cloud/utils/SharedPreferencesCtrl;

    const-string v2, "email"

    invoke-virtual {v0, v2, v3}, Lcn/nubia/cloud/utils/SharedPreferencesCtrl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/nubia/cloud/accounts/NBAccountInfo;->email:Ljava/lang/String;

    return-object v1

    .line 53
    :cond_0
    new-instance v0, Lcn/nubia/cloud/accounts/AccountNotFountException;

    const-string v1, "username is null or empty"

    invoke-direct {v0, v1}, Lcn/nubia/cloud/accounts/AccountNotFountException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onGetUserToken()Ljava/lang/String;
    .locals 3

    .line 70
    iget-object v0, p0, Lcn/nubia/cloud/accounts/indep/IndepAccountEntry;->mSpfsCtrl:Lcn/nubia/cloud/utils/SharedPreferencesCtrl;

    const-string v1, "username"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcn/nubia/cloud/utils/SharedPreferencesCtrl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public switchToAccountDetailPage(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public switchToChangePassworldPage(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public switchToLoginPage(Landroid/app/Activity;I)V
    .locals 2

    .line 24
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "nubia.cloud.AccountLogin"

    .line 25
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "cn.nubia.cloud"

    .line 26
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
