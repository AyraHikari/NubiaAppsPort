.class public Lcn/nubia/calendar/deftcontroller/UpdateApkController;
.super Ljava/lang/Object;
.source "UpdateApkController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/deftcontroller/UpdateApkController$mIGetVersionListener;,
        Lcn/nubia/calendar/deftcontroller/UpdateApkController$ControlHandler;
    }
.end annotation


# static fields
.field public static final DOWNLOAD_CHECK:Ljava/lang/String; = "DOWNLOAD_CHECK"

.field private static final MESSAGE_CHECK_UPGRADE:I = 0x16000014

.field public static final MESSAGE_ID_DL_NEW_VERSION:I = 0x100005

.field public static final UPGRADE_CHECK:Ljava/lang/String; = "UPGRADE_CHECK"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v1, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController;->mContext:Landroid/content/Context;

    .line 36
    iput-object v1, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController;->mUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    .line 37
    new-instance v0, Lcn/nubia/calendar/deftcontroller/UpdateApkController$ControlHandler;

    invoke-direct {v0, p0, v1}, Lcn/nubia/calendar/deftcontroller/UpdateApkController$ControlHandler;-><init>(Lcn/nubia/calendar/deftcontroller/UpdateApkController;Lcn/nubia/calendar/deftcontroller/UpdateApkController$1;)V

    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController;->mHandler:Landroid/os/Handler;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v1, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController;->mContext:Landroid/content/Context;

    .line 36
    iput-object v1, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController;->mUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    .line 37
    new-instance v0, Lcn/nubia/calendar/deftcontroller/UpdateApkController$ControlHandler;

    invoke-direct {v0, p0, v1}, Lcn/nubia/calendar/deftcontroller/UpdateApkController$ControlHandler;-><init>(Lcn/nubia/calendar/deftcontroller/UpdateApkController;Lcn/nubia/calendar/deftcontroller/UpdateApkController$1;)V

    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController;->mHandler:Landroid/os/Handler;

    .line 43
    iput-object p1, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController;->mContext:Landroid/content/Context;

    .line 44
    invoke-virtual {p0}, Lcn/nubia/calendar/deftcontroller/UpdateApkController;->checkUpgrade()V

    .line 45
    return-void
.end method

.method static synthetic access$100(Lcn/nubia/calendar/deftcontroller/UpdateApkController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/deftcontroller/UpdateApkController;

    .prologue
    .line 28
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/calendar/deftcontroller/UpdateApkController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/deftcontroller/UpdateApkController;

    .prologue
    .line 28
    invoke-direct {p0}, Lcn/nubia/calendar/deftcontroller/UpdateApkController;->getNetworkStatus()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/calendar/deftcontroller/UpdateApkController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/deftcontroller/UpdateApkController;

    .prologue
    .line 28
    invoke-direct {p0}, Lcn/nubia/calendar/deftcontroller/UpdateApkController;->checkUpgradeV2()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/calendar/deftcontroller/UpdateApkController;)Lcn/nubia/upgrade/api/NubiaUpgradeManager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/deftcontroller/UpdateApkController;

    .prologue
    .line 28
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController;->mUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/calendar/deftcontroller/UpdateApkController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/deftcontroller/UpdateApkController;

    .prologue
    .line 28
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private final checkUpgradeV2()V
    .locals 2

    .prologue
    .line 55
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcn/nubia/calendar/deftcontroller/UpdateApkController$1;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/deftcontroller/UpdateApkController$1;-><init>(Lcn/nubia/calendar/deftcontroller/UpdateApkController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method

.method private final getNetworkStatus()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const v5, 0x7f0c001b

    const/4 v6, 0x0

    .line 66
    invoke-static {v6}, Lcn/nubia/upgrade/constants/HttpConstants;->debug(Z)V

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "builder":Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    iget-object v3, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcn/nubia/calendar/util/NetUtil;->getNetworkState(Landroid/content/Context;)I

    move-result v1

    .line 69
    .local v1, "networkType":I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 70
    new-instance v3, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    invoke-direct {v3}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;-><init>()V

    .line 71
    invoke-virtual {v3, v4}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setSilentDownload(Z)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    move-result-object v3

    .line 72
    invoke-virtual {v3, v6}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setShowNotification(Z)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    move-result-object v3

    .line 73
    invoke-virtual {v3, v6}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setSilentInstall(Z)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController;->mContext:Landroid/content/Context;

    .line 75
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 74
    invoke-virtual {v3, v4}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setNotificationTitle(Ljava/lang/String;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController;->mContext:Landroid/content/Context;

    .line 78
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 77
    invoke-virtual {v3, v4}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setAppName(Ljava/lang/String;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    move-result-object v0

    .line 89
    :goto_0
    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->build()Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    move-result-object v2

    .line 90
    .local v2, "updateConfig":Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;
    iget-object v3, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController;->mUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    if-nez v3, :cond_0

    .line 91
    iget-object v3, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController;->mContext:Landroid/content/Context;

    const-string v4, "JqStdOCcb7a0bef0"

    const-string v5, "e18712e92e5d1fb0"

    invoke-static {v3, v4, v5}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController;->mUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    .line 93
    iget-object v3, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController;->mUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-virtual {v3, v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->setConfiguration(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;)V

    .line 94
    iget-object v3, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController;->mUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-virtual {v3, v6}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->debug(Z)V

    .line 96
    :cond_0
    iget-object v3, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController;->mUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    iget-object v4, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController;->mContext:Landroid/content/Context;

    new-instance v5, Lcn/nubia/calendar/deftcontroller/UpdateApkController$mIGetVersionListener;

    invoke-direct {v5, p0}, Lcn/nubia/calendar/deftcontroller/UpdateApkController$mIGetVersionListener;-><init>(Lcn/nubia/calendar/deftcontroller/UpdateApkController;)V

    invoke-virtual {v3, v4, v5}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->getVersion(Landroid/content/Context;Lcn/nubia/upgrade/http/IGetVersionListener;)V

    .line 97
    return-void

    .line 81
    .end local v2    # "updateConfig":Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;
    :cond_1
    new-instance v3, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    invoke-direct {v3}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;-><init>()V

    .line 82
    invoke-virtual {v3, v4}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setSilentDownload(Z)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    move-result-object v3

    .line 83
    invoke-virtual {v3, v6}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setShowNotification(Z)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    move-result-object v3

    .line 84
    invoke-virtual {v3, v6}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setSilentInstall(Z)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController;->mContext:Landroid/content/Context;

    .line 86
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 85
    invoke-virtual {v3, v4}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setAppName(Ljava/lang/String;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public checkUpgrade()V
    .locals 4

    .prologue
    const v1, 0x16000014

    .line 48
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 51
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 52
    return-void
.end method

.method public doInstall(Landroid/content/Context;Lcn/nubia/upgrade/model/VersionData;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "versionData"    # Lcn/nubia/upgrade/model/VersionData;

    .prologue
    .line 236
    :try_start_0
    new-instance v0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    invoke-direct {v0, p1}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 237
    .local v0, "builder":Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->setCancelable(Z)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    .line 238
    const v3, 0x7f0c0237

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    .line 239
    const v3, 0x7f0c0157

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcn/nubia/calendar/deftcontroller/UpdateApkController$3;

    invoke-direct {v4, p0}, Lcn/nubia/calendar/deftcontroller/UpdateApkController$3;-><init>(Lcn/nubia/calendar/deftcontroller/UpdateApkController;)V

    invoke-virtual {v0, v3, v4}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    .line 245
    const v3, 0x7f0c0158

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcn/nubia/calendar/deftcontroller/UpdateApkController$4;

    invoke-direct {v4, p0, p2}, Lcn/nubia/calendar/deftcontroller/UpdateApkController$4;-><init>(Lcn/nubia/calendar/deftcontroller/UpdateApkController;Lcn/nubia/upgrade/model/VersionData;)V

    invoke-virtual {v0, v3, v4}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    .line 251
    invoke-virtual {v0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->create()Lcn/nubia/commonui/app/NubiaCenterAlertDialog;

    move-result-object v2

    .line 252
    .local v2, "mDialog":Lcn/nubia/commonui/app/NubiaCenterAlertDialog;
    invoke-virtual {v2}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .end local v0    # "builder":Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .end local v2    # "mDialog":Lcn/nubia/commonui/app/NubiaCenterAlertDialog;
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v1

    .line 254
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public downloadNewVersion(Lcn/nubia/upgrade/model/VersionData;)V
    .locals 2
    .param p1, "newVersionData"    # Lcn/nubia/upgrade/model/VersionData;

    .prologue
    .line 181
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController;->mUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    new-instance v1, Lcn/nubia/calendar/deftcontroller/UpdateApkController$2;

    invoke-direct {v1, p0, p1}, Lcn/nubia/calendar/deftcontroller/UpdateApkController$2;-><init>(Lcn/nubia/calendar/deftcontroller/UpdateApkController;Lcn/nubia/upgrade/model/VersionData;)V

    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->addDownLoadListener(Lcn/nubia/upgrade/http/IDownLoadListener;)V

    .line 222
    if-eqz p1, :cond_0

    .line 223
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController;->mUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->startDownload(Landroid/content/Context;Lcn/nubia/upgrade/model/VersionData;)V

    .line 225
    :cond_0
    return-void
.end method

.method public installNewVersion(Lcn/nubia/upgrade/model/VersionData;)V
    .locals 2
    .param p1, "newVersionData"    # Lcn/nubia/upgrade/model/VersionData;

    .prologue
    .line 228
    if-eqz p1, :cond_0

    .line 229
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController;->mUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->install(Landroid/content/Context;Lcn/nubia/upgrade/model/VersionData;)V

    .line 231
    :cond_0
    return-void
.end method

.method public isInstallMsgNeeded()Z
    .locals 12

    .prologue
    .line 121
    const/4 v6, 0x0

    .line 123
    .local v6, "result":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 124
    .local v0, "currentTime":J
    iget-object v7, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController;->mContext:Landroid/content/Context;

    const-string v8, "DOWNLOAD_CHECK"

    const-wide/16 v10, 0x0

    invoke-static {v7, v8, v10, v11}, Lcn/nubia/calendar/util/Utils;->getPrefLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    .line 125
    .local v2, "lastTime":J
    const-wide/32 v4, 0x5265c00

    .line 126
    .local v4, "oneDayTime":J
    sub-long v8, v0, v2

    cmp-long v7, v8, v4

    if-lez v7, :cond_0

    .line 127
    const/4 v6, 0x1

    .line 129
    :cond_0
    iget-object v7, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController;->mContext:Landroid/content/Context;

    const-string v8, "DOWNLOAD_CHECK"

    invoke-static {v7, v8, v0, v1}, Lcn/nubia/calendar/util/Utils;->setSettingLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 130
    return v6
.end method
