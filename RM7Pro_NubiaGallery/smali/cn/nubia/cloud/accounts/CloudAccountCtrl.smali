.class Lcn/nubia/cloud/accounts/CloudAccountCtrl;
.super Ljava/lang/Object;
.source "CloudAccountCtrl.java"


# static fields
.field private static final CLOUD_ACCOUNT_NAME:Ljava/lang/String; = "cn.nubia.cloud"

.field private static final CLOUD_ACCOUNT_TYPE:Ljava/lang/String; = "cn.nubia.cloud"

.field private static final CONTACT_AUTHORITY:Ljava/lang/String; = "com.android.contacts"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSyncAccount(Landroid/content/Context;)V
    .locals 3

    .line 15
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "cn.nubia.cloud"

    invoke-direct {v0, v1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "account"

    .line 17
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/accounts/AccountManager;

    const-string v1, "com.android.contacts"

    const/4 v2, 0x1

    .line 19
    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    .line 21
    invoke-virtual {p0, v0, v1, v1}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    return-void
.end method

.method public static createUserAccount(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 26
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "cn.nubia.cloud"

    invoke-direct {v0, p1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "account"

    .line 27
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/accounts/AccountManager;

    const/4 p1, 0x0

    .line 29
    invoke-virtual {p0, v0, p1, p1}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    return-void
.end method

.method public static getFloatUserData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;F)F
    .locals 0

    .line 98
    invoke-static {p0, p1, p2}, Lcn/nubia/cloud/accounts/CloudAccountCtrl;->getUserData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 99
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 101
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 103
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return p3
.end method

.method public static getIntUserData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    .line 72
    invoke-static {p0, p1, p2}, Lcn/nubia/cloud/accounts/CloudAccountCtrl;->getUserData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 73
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 75
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 77
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return p3
.end method

.method public static getLongUserData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J
    .locals 0

    .line 85
    invoke-static {p0, p1, p2}, Lcn/nubia/cloud/accounts/CloudAccountCtrl;->getUserData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 86
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 88
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    .line 90
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-wide p3
.end method

.method public static getStringUserData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 63
    invoke-static {p0, p1, p2}, Lcn/nubia/cloud/accounts/CloudAccountCtrl;->getUserData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, p0

    :goto_0
    return-object p3
.end method

.method private static getUserData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "account"

    .line 34
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/accounts/AccountManager;

    const-string v0, "cn.nubia.cloud"

    .line 36
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 37
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 38
    iget-object v4, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 39
    invoke-virtual {p0, v3, p2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static putUserData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5

    const-string v0, "account"

    .line 47
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/accounts/AccountManager;

    const-string v0, "cn.nubia.cloud"

    .line 49
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 50
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 51
    iget-object v4, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez p3, :cond_0

    const/4 v4, 0x0

    .line 53
    invoke-virtual {p0, v3, p2, v4}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 55
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, p2, v4}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
