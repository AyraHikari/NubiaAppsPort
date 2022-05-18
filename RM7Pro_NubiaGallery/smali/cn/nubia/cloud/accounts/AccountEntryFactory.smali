.class public Lcn/nubia/cloud/accounts/AccountEntryFactory;
.super Ljava/lang/Object;
.source "AccountEntryFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAccountEntry(Landroid/content/Context;)Lcn/nubia/cloud/accounts/AccountEntry;
    .locals 1

    .line 26
    invoke-static {p0}, Lcn/nubia/accountsdk/common/SDKConfiguration;->isNubiaAccountAppSurport(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    new-instance v0, Lcn/nubia/cloud/accounts/newaccount/NewSystenAccountEntry;

    invoke-direct {v0, p0}, Lcn/nubia/cloud/accounts/newaccount/NewSystenAccountEntry;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 28
    :cond_0
    invoke-static {p0}, Lcn/nubia/cloud/accounts/AccountEntryFactory;->isInOldSupportRom(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    new-instance v0, Lcn/nubia/cloud/accounts/oldaccount/OldSystemAccountEntry;

    invoke-direct {v0, p0}, Lcn/nubia/cloud/accounts/oldaccount/OldSystemAccountEntry;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 31
    :cond_1
    new-instance v0, Lcn/nubia/cloud/accounts/indep/IndepAccountEntry;

    invoke-direct {v0, p0}, Lcn/nubia/cloud/accounts/indep/IndepAccountEntry;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getSysAccountEntry(Landroid/content/Context;)Lcn/nubia/cloud/accounts/AccountEntry;
    .locals 2

    .line 15
    invoke-static {p0}, Lcn/nubia/cloud/common/dev/CloudConfigCtrl;->getServerType(Landroid/content/Context;)Lcn/nubia/cloud/common/dev/ServerType;

    move-result-object v0

    .line 16
    sget-object v1, Lcn/nubia/cloud/accounts/AccountEntryFactory$1;->$SwitchMap$cn$nubia$cloud$common$dev$ServerType:[I

    invoke-virtual {v0}, Lcn/nubia/cloud/common/dev/ServerType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 21
    invoke-static {p0}, Lcn/nubia/cloud/accounts/AccountEntryFactory;->getAccountEntry(Landroid/content/Context;)Lcn/nubia/cloud/accounts/AccountEntry;

    move-result-object p0

    return-object p0

    .line 19
    :cond_0
    new-instance v0, Lcn/nubia/cloud/accounts/indep/IndepAccountEntry;

    invoke-direct {v0, p0}, Lcn/nubia/cloud/accounts/indep/IndepAccountEntry;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static isInOldSupportRom(Landroid/content/Context;)Z
    .locals 3

    .line 40
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "cn.nubia.accounts"

    const-string v2, "cn.nubia.accounts.auth.service.NubiaAccountAuthService"

    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isSupport(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
