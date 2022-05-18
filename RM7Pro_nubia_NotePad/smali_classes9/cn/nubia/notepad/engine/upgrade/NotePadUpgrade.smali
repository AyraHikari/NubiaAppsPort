.class public Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;
.super Ljava/lang/Object;
.source "NotePadUpgrade.java"

# interfaces
.implements Lcn/nubia/upgrade/http/IGetVersionListener;
.implements Lcn/nubia/upgrade/http/IDownLoadListener;


# instance fields
.field private final NOTEPAD_APP_KEY:Ljava/lang/String;

.field private final NOTEPAD_SECRET_KEY:Ljava/lang/String;

.field private final NOTEPAD_UPGRADE_INTERVAL:J

.field private final NOTEPAD_UPGRADE_TIME:Ljava/lang/String;

.field private mAlertDialog:Lcn/nubia/commonui/app/NubiaCenterAlertDialog;

.field private mContext:Landroid/content/Context;

.field private mUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

.field private mVersionData:Lcn/nubia/upgrade/model/VersionData;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-wide/32 v0, 0xa4cb80

    iput-wide v0, p0, Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;->NOTEPAD_UPGRADE_INTERVAL:J

    .line 24
    const-string v0, "notepad_upgrade_time"

    iput-object v0, p0, Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;->NOTEPAD_UPGRADE_TIME:Ljava/lang/String;

    .line 25
    const-string v0, "OZACVSb6c1cd0fa4"

    iput-object v0, p0, Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;->NOTEPAD_APP_KEY:Ljava/lang/String;

    .line 26
    const-string v0, "40c4d8ad802a1ce3"

    iput-object v0, p0, Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;->NOTEPAD_SECRET_KEY:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;)Lcn/nubia/upgrade/api/NubiaUpgradeManager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;

    .prologue
    .line 21
    iget-object v0, p0, Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;->mUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;

    .prologue
    .line 21
    iget-object v0, p0, Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;)Lcn/nubia/upgrade/model/VersionData;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;

    .prologue
    .line 21
    iget-object v0, p0, Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;->mVersionData:Lcn/nubia/upgrade/model/VersionData;

    return-object v0
.end method

.method private checkNeedUpdate()Z
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 46
    iget-object v6, p0, Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcn/nubia/notepad/utils/CtaPermissionUtils;->shouldShowCtaDialog(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v3

    .line 49
    :cond_1
    invoke-static {}, Lcn/nubia/notepad/utils/NubiaFeatureUtils;->isApkUpdateEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 53
    iget-object v6, p0, Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 54
    .local v2, "preference":Landroid/content/SharedPreferences;
    const-string v6, "notepad_upgrade_time"

    const-wide/16 v8, -0x1

    invoke-interface {v2, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 55
    .local v4, "time":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 56
    .local v0, "currentTime":J
    sub-long v6, v0, v4

    const-wide/32 v8, 0xa4cb80

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    .line 60
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private notePadUpgradeConfig()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 64
    iget-object v2, p0, Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;->mContext:Landroid/content/Context;

    const-string v3, "OZACVSb6c1cd0fa4"

    const-string v4, "40c4d8ad802a1ce3"

    invoke-static {v2, v3, v4}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;->mUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    .line 67
    invoke-static {v5}, Lcn/nubia/upgrade/constants/HttpConstants;->debug(Z)V

    .line 68
    new-instance v2, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    invoke-direct {v2}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;-><init>()V

    .line 69
    invoke-virtual {v2, v5}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setSlientDownload(Z)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 70
    invoke-virtual {v2, v3}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setShowNotification(Z)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    move-result-object v2

    .line 71
    invoke-virtual {v2, v5}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setSlientInstall(Z)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    move-result-object v2

    const v3, 0x7f020084

    .line 72
    invoke-virtual {v2, v3}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setIcon(I)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;->mContext:Landroid/content/Context;

    const v4, 0x7f0a00aa

    .line 74
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 73
    invoke-virtual {v2, v3}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setNotificationTitle(Ljava/lang/String;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0036

    .line 75
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setAppName(Ljava/lang/String;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    move-result-object v0

    .line 77
    .local v0, "builder":Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->getConfiguration(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    move-result-object v1

    .line 78
    .local v1, "config":Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;
    iget-object v2, p0, Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;->mUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-virtual {v2, v1}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->setConfiguration(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;)V

    .line 79
    iget-object v2, p0, Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;->mUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    iget-object v3, p0, Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->getVersion(Landroid/content/Context;Lcn/nubia/upgrade/http/IGetVersionListener;)V

    .line 80
    return-void
.end method

.method private showUpgradeDialog()V
    .locals 3

    .prologue
    .line 83
    iget-object v1, p0, Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;->mAlertDialog:Lcn/nubia/commonui/app/NubiaCenterAlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;->mAlertDialog:Lcn/nubia/commonui/app/NubiaCenterAlertDialog;

    invoke-virtual {v1}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;->mAlertDialog:Lcn/nubia/commonui/app/NubiaCenterAlertDialog;

    invoke-virtual {v1}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->dismiss()V

    .line 86
    :cond_0
    new-instance v0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    iget-object v1, p0, Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 87
    .local v0, "builer":Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    iget-object v1, p0, Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;->mContext:Landroid/content/Context;

    const v2, 0x7f0a00a9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    .line 88
    iget-object v1, p0, Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0034

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    .line 89
    iget-object v1, p0, Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;->mContext:Landroid/content/Context;

    const v2, 0x7f0a00a8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade$1;

    invoke-direct {v2, p0}, Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade$1;-><init>(Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    .line 97
    invoke-virtual {v0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->create()Lcn/nubia/commonui/app/NubiaCenterAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;->mAlertDialog:Lcn/nubia/commonui/app/NubiaCenterAlertDialog;

    .line 98
    iget-object v1, p0, Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;->mAlertDialog:Lcn/nubia/commonui/app/NubiaCenterAlertDialog;

    invoke-virtual {v1}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->show()V

    .line 99
    return-void
.end method


# virtual methods
.method public onDownloadComplete(Ljava/lang/String;)V
    .locals 4
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 118
    iget-object v1, p0, Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;->mVersionData:Lcn/nubia/upgrade/model/VersionData;

    if-nez v1, :cond_0

    .line 126
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v1, p0, Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;->mUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    iget-object v2, p0, Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;->mVersionData:Lcn/nubia/upgrade/model/VersionData;

    invoke-virtual {v1, v2, v3}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->install(Landroid/content/Context;Lcn/nubia/upgrade/model/VersionData;)V

    .line 122
    iget-object v1, p0, Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;->mUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-virtual {v1, p0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->removeDownloadListener(Lcn/nubia/upgrade/http/IDownLoadListener;)V

    .line 123
    iget-object v1, p0, Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 124
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 125
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "notepad_upgrade_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public onDownloadError(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 131
    return-void
.end method

.method public onDownloadPause()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public onDownloadProgress(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 141
    return-void
.end method

.method public onError(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 103
    return-void
.end method

.method public onGetNewVersion(Lcn/nubia/upgrade/model/VersionData;)V
    .locals 0
    .param p1, "versionData"    # Lcn/nubia/upgrade/model/VersionData;

    .prologue
    .line 107
    iput-object p1, p0, Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;->mVersionData:Lcn/nubia/upgrade/model/VersionData;

    .line 108
    invoke-direct {p0}, Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;->showUpgradeDialog()V

    .line 109
    return-void
.end method

.method public onGetNoVersion()V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method public onResumeDownload()V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public onStartDownload()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method public upgrade()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;->checkNeedUpdate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-direct {p0}, Lcn/nubia/notepad/engine/upgrade/NotePadUpgrade;->notePadUpgradeConfig()V

    goto :goto_0
.end method
