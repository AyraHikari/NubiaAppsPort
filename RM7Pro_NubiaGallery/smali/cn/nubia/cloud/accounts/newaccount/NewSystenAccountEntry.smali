.class public Lcn/nubia/cloud/accounts/newaccount/NewSystenAccountEntry;
.super Lcn/nubia/cloud/accounts/BaseAccountEntry;
.source "NewSystenAccountEntry.java"


# static fields
.field private static ACCOUNT_TYPE:Ljava/lang/String; = "com.ztemt"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcn/nubia/cloud/accounts/BaseAccountEntry;-><init>(Landroid/content/Context;)V

    .line 23
    iput-object p1, p0, Lcn/nubia/cloud/accounts/newaccount/NewSystenAccountEntry;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onBindBaiduAccount(Z)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/cloud/common/RequestException;
        }
    .end annotation

    .line 65
    sget-boolean v0, Lcn/nubia/cloud/utils/LogUtil;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindBaiduAccount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/cloud/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 68
    :cond_0
    iget-object p1, p0, Lcn/nubia/cloud/accounts/newaccount/NewSystenAccountEntry;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->get(Landroid/content/Context;)Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;

    move-result-object p1

    .line 69
    new-instance v0, Lcn/nubia/cloud/accounts/newaccount/IGetBaiduAccountInfoListenerIml;

    invoke-direct {v0}, Lcn/nubia/cloud/accounts/newaccount/IGetBaiduAccountInfoListenerIml;-><init>()V

    const/4 v1, 0x1

    .line 71
    :try_start_0
    invoke-virtual {p1, v1, v0}, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->startBindBaiduAccount(ZLcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener;)V

    .line 72
    invoke-virtual {v0}, Lcn/nubia/cloud/accounts/newaccount/IGetBaiduAccountInfoListenerIml;->get()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 74
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onGetBaiduPCSToken()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/cloud/common/RequestException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcn/nubia/cloud/accounts/newaccount/NewSystenAccountEntry;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->get(Landroid/content/Context;)Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;

    move-result-object v0

    .line 40
    new-instance v1, Lcn/nubia/cloud/accounts/newaccount/IGetBaiduAccountInfoListenerIml;

    invoke-direct {v1}, Lcn/nubia/cloud/accounts/newaccount/IGetBaiduAccountInfoListenerIml;-><init>()V

    .line 42
    :try_start_0
    invoke-virtual {v0, v1}, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->getBaiduAccountInfo(Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener;)V

    .line 43
    invoke-virtual {v1}, Lcn/nubia/cloud/accounts/newaccount/IGetBaiduAccountInfoListenerIml;->get()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 45
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onGetNBAccountInfo()Lcn/nubia/cloud/accounts/NBAccountInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/cloud/accounts/AccountNotFountException;
        }
    .end annotation

    .line 28
    new-instance v0, Lcn/nubia/cloud/accounts/newaccount/IGetAccountInfoListenerIml;

    invoke-direct {v0}, Lcn/nubia/cloud/accounts/newaccount/IGetAccountInfoListenerIml;-><init>()V

    .line 30
    :try_start_0
    iget-object v1, p0, Lcn/nubia/cloud/accounts/newaccount/NewSystenAccountEntry;->mAccountFullClient:Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    invoke-virtual {v1, v0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->getSystemAccountInfo(Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener;)V

    .line 31
    invoke-virtual {v0}, Lcn/nubia/cloud/accounts/newaccount/IGetAccountInfoListenerIml;->get()Lcn/nubia/cloud/accounts/NBAccountInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 33
    new-instance v1, Lcn/nubia/cloud/accounts/AccountNotFountException;

    invoke-direct {v1, v0}, Lcn/nubia/cloud/accounts/AccountNotFountException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onGetUserToken()Ljava/lang/String;
    .locals 3

    .line 53
    iget-object v0, p0, Lcn/nubia/cloud/accounts/newaccount/NewSystenAccountEntry;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 54
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 55
    sget-object v2, Lcn/nubia/cloud/accounts/newaccount/NewSystenAccountEntry;->ACCOUNT_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 56
    array-length v2, v0

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 57
    aget-object v0, v0, v2

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {v0}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public switchToAccountDetailPage(Landroid/content/Context;)V
    .locals 3

    .line 86
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "cn.nubia.account.SETTING_ENTER_ACCOUNT_DETAILS_ACTION"

    .line 87
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "cn.nubia.accounts"

    const-string v2, "cn.nubia.accounts.details.AccountDetailActivity"

    .line 88
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public switchToChangePassworldPage(Landroid/content/Context;)V
    .locals 2

    .line 95
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "cn.nubia.account.CHANGE_PASSWORD_ACTION"

    .line 96
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "cn.nubia.accounts"

    .line 97
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public switchToLoginPage(Landroid/app/Activity;I)V
    .locals 0

    .line 81
    invoke-static {p1}, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->get(Landroid/content/Context;)Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/nubia/accountsdk/simpleclient/AccountSimpleClient;->loginOrRegister(Landroid/app/Activity;)V

    return-void
.end method
