.class public Lcn/nubia/upgrade/service/UpgradeService;
.super Landroid/app/Service;
.source "UpgradeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/upgrade/service/UpgradeService$DownloadCallback;,
        Lcn/nubia/upgrade/service/UpgradeService$ServiceHandler;,
        Lcn/nubia/upgrade/service/UpgradeService$UIHandler;
    }
.end annotation


# static fields
.field public static final CMD_INSTALL:I = 0x2

.field public static final CMD_PAUSE:I = 0x1

.field public static final CMD_UPDATE:I = 0x3

.field private static final DOWNLOAD_PROGRESS_MSG:I = 0x67

.field public static final KEY_AUTHID:Ljava/lang/String; = "authid"

.field public static final KEY_AUTHKEY:Ljava/lang/String; = "authkey"

.field public static final KEY_CONFIGURATION_DATA:Ljava/lang/String; = "ConfigurationData"

.field public static final KEY_DEBUG:Ljava/lang/String; = "debug"

.field public static final KEY_DOWNLOAD_PROXY:Ljava/lang/String; = "downLoadBinderProxy"

.field public static final KEY_DOWNLOAD_REQUEST:Ljava/lang/String; = "downloadRequest"

.field public static final KEY_VERSION_DATA:Ljava/lang/String; = "versionData"

.field public static final Key_CMD:Ljava/lang/String; = "CommandService"

.field private static final MSG_CHECK_INSTALL:I = 0x64

.field private static final MSG_DOWNLOAD_COMPLETE:I = 0x66

.field private static final MSG_KILL_SERVICE:I = 0x65

.field private static final NOTIFICATION_ID:I = 0x3

.field public static final PAUSE_ACTION:Ljava/lang/String; = "command_pause"

.field private static final START_NOTIFICATION:I = 0x2710

.field public static final TAG:Ljava/lang/String; = "UpgradeService"


# instance fields
.field private mAuthId:Ljava/lang/String;

.field private mAuthKey:Ljava/lang/String;

.field private mBuilder:Landroid/app/Notification$Builder;

.field private mCommandReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDebug:Z

.field private mDownloadBinderProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy;

.field private mDownloadCallback:Lcn/nubia/upgrade/service/UpgradeService$DownloadCallback;

.field private mDstApkFilePath:Ljava/lang/String;

.field private mHandler:Lcn/nubia/upgrade/service/UpgradeService$UIHandler;

.field private mHttpDownloadManager:Lcn/nubia/upgrade/http/HttpDownloadManager;

.field private mNotification:Landroid/app/Notification;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

.field private volatile mServiceHandler:Landroid/os/Handler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private mSubNotification:Ljava/lang/String;

.field private mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 81
    iput-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService;->mAuthId:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService;->mAuthKey:Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/upgrade/service/UpgradeService;->mDebug:Z

    .line 86
    new-instance v0, Lcn/nubia/upgrade/service/UpgradeService$1;

    invoke-direct {v0, p0}, Lcn/nubia/upgrade/service/UpgradeService$1;-><init>(Lcn/nubia/upgrade/service/UpgradeService;)V

    iput-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService;->mCommandReceiver:Landroid/content/BroadcastReceiver;

    .line 609
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/upgrade/service/UpgradeService;)Lcn/nubia/upgrade/http/HttpDownloadManager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/service/UpgradeService;

    .prologue
    .line 40
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService;->mHttpDownloadManager:Lcn/nubia/upgrade/http/HttpDownloadManager;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/upgrade/service/UpgradeService;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/service/UpgradeService;

    .prologue
    .line 40
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/nubia/upgrade/service/UpgradeService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/service/UpgradeService;

    .prologue
    .line 40
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcn/nubia/upgrade/service/UpgradeService;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/upgrade/service/UpgradeService;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcn/nubia/upgrade/service/UpgradeService;->installApk(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcn/nubia/upgrade/service/UpgradeService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/service/UpgradeService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcn/nubia/upgrade/service/UpgradeService;->slientInstall(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcn/nubia/upgrade/service/UpgradeService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/service/UpgradeService;

    .prologue
    .line 40
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService;->mServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcn/nubia/upgrade/service/UpgradeService;)Lcn/nubia/upgrade/service/UpgradeService$DownloadCallback;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/service/UpgradeService;

    .prologue
    .line 40
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService;->mDownloadCallback:Lcn/nubia/upgrade/service/UpgradeService$DownloadCallback;

    return-object v0
.end method

.method static synthetic access$1500(Lcn/nubia/upgrade/service/UpgradeService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/service/UpgradeService;

    .prologue
    .line 40
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService;->mAuthId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcn/nubia/upgrade/service/UpgradeService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/service/UpgradeService;

    .prologue
    .line 40
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService;->mAuthKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcn/nubia/upgrade/service/UpgradeService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/upgrade/service/UpgradeService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcn/nubia/upgrade/service/UpgradeService;->handleDownComplete(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcn/nubia/upgrade/service/UpgradeService;)Lcn/nubia/upgrade/service/UpgradeService$UIHandler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/service/UpgradeService;

    .prologue
    .line 40
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService;->mHandler:Lcn/nubia/upgrade/service/UpgradeService$UIHandler;

    return-object v0
.end method

.method static synthetic access$1900(Lcn/nubia/upgrade/service/UpgradeService;)Lcn/nubia/upgrade/service/DownloadBinderProxy;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/service/UpgradeService;

    .prologue
    .line 40
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService;->mDownloadBinderProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy;

    return-object v0
.end method

.method static synthetic access$1902(Lcn/nubia/upgrade/service/UpgradeService;Lcn/nubia/upgrade/service/DownloadBinderProxy;)Lcn/nubia/upgrade/service/DownloadBinderProxy;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/upgrade/service/UpgradeService;
    .param p1, "x1"    # Lcn/nubia/upgrade/service/DownloadBinderProxy;

    .prologue
    .line 40
    iput-object p1, p0, Lcn/nubia/upgrade/service/UpgradeService;->mDownloadBinderProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/upgrade/service/UpgradeService;)Landroid/app/Notification$Builder;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/service/UpgradeService;

    .prologue
    .line 40
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService;->mBuilder:Landroid/app/Notification$Builder;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/upgrade/service/UpgradeService;)Lcn/nubia/upgrade/http/DownloadRequest;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/service/UpgradeService;

    .prologue
    .line 40
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/upgrade/service/UpgradeService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/service/UpgradeService;

    .prologue
    .line 40
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService;->mSubNotification:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/upgrade/service/UpgradeService;)Landroid/app/Notification;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/service/UpgradeService;

    .prologue
    .line 40
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService;->mNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$502(Lcn/nubia/upgrade/service/UpgradeService;Landroid/app/Notification;)Landroid/app/Notification;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/upgrade/service/UpgradeService;
    .param p1, "x1"    # Landroid/app/Notification;

    .prologue
    .line 40
    iput-object p1, p0, Lcn/nubia/upgrade/service/UpgradeService;->mNotification:Landroid/app/Notification;

    return-object p1
.end method

.method static synthetic access$600(Lcn/nubia/upgrade/service/UpgradeService;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/service/UpgradeService;

    .prologue
    .line 40
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/upgrade/service/UpgradeService;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/upgrade/service/UpgradeService;

    .prologue
    .line 40
    invoke-direct {p0}, Lcn/nubia/upgrade/service/UpgradeService;->startNotification()V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/upgrade/service/UpgradeService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/service/UpgradeService;

    .prologue
    .line 40
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService;->mDstApkFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcn/nubia/upgrade/service/UpgradeService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/upgrade/service/UpgradeService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcn/nubia/upgrade/service/UpgradeService;->mDstApkFilePath:Ljava/lang/String;

    return-object p1
.end method

.method private handleDownComplete(Ljava/lang/String;)V
    .locals 12
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 489
    iget-object v7, p0, Lcn/nubia/upgrade/service/UpgradeService;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-virtual {v7}, Lcn/nubia/upgrade/http/DownloadRequest;->getIspatch()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 491
    invoke-static {p1}, Lcn/nubia/upgrade/util/MD5Util;->getFileMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 492
    .local v4, "md5Patch":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 493
    iget-object v7, p0, Lcn/nubia/upgrade/service/UpgradeService;->mServiceHandler:Landroid/os/Handler;

    const/16 v8, 0x65

    const-wide/16 v10, 0x7d0

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 607
    .end local v4    # "md5Patch":Ljava/lang/String;
    :goto_0
    return-void

    .line 497
    .restart local v4    # "md5Patch":Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lcn/nubia/upgrade/service/UpgradeService;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-virtual {v7}, Lcn/nubia/upgrade/http/DownloadRequest;->getCheckSumPatch()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 498
    const/4 v5, 0x0

    .line 500
    .local v5, "originPath":Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcn/nubia/upgrade/service/UpgradeService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v8, p0, Lcn/nubia/upgrade/service/UpgradeService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v5, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 502
    new-instance v0, Lcom/zupgrade/sdk/util/Bsdiff;

    invoke-direct {v0}, Lcom/zupgrade/sdk/util/Bsdiff;-><init>()V

    .line 503
    .local v0, "bsdiff":Lcom/zupgrade/sdk/util/Bsdiff;
    iget-object v7, p0, Lcn/nubia/upgrade/service/UpgradeService;->mDstApkFilePath:Ljava/lang/String;

    invoke-virtual {v0, v5, v7, p1}, Lcom/zupgrade/sdk/util/Bsdiff;->applyPatchToOldApk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 505
    .local v6, "patchFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 506
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 509
    :cond_1
    iget-object v7, p0, Lcn/nubia/upgrade/service/UpgradeService;->mDstApkFilePath:Ljava/lang/String;

    invoke-static {v7}, Lcn/nubia/upgrade/util/MD5Util;->getFileMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 510
    .local v3, "md5Apk":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 511
    iget-object v7, p0, Lcn/nubia/upgrade/service/UpgradeService;->mServiceHandler:Landroid/os/Handler;

    const/16 v8, 0x65

    const-wide/16 v10, 0x7d0

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 542
    .end local v0    # "bsdiff":Lcom/zupgrade/sdk/util/Bsdiff;
    .end local v3    # "md5Apk":Ljava/lang/String;
    .end local v6    # "patchFile":Ljava/io/File;
    :catch_0
    move-exception v7

    .line 606
    .end local v4    # "md5Patch":Ljava/lang/String;
    .end local v5    # "originPath":Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v7, p0, Lcn/nubia/upgrade/service/UpgradeService;->mServiceHandler:Landroid/os/Handler;

    const/16 v8, 0x65

    const-wide/16 v10, 0x7d0

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 516
    .restart local v0    # "bsdiff":Lcom/zupgrade/sdk/util/Bsdiff;
    .restart local v3    # "md5Apk":Ljava/lang/String;
    .restart local v4    # "md5Patch":Ljava/lang/String;
    .restart local v5    # "originPath":Ljava/lang/String;
    .restart local v6    # "patchFile":Ljava/io/File;
    :cond_3
    :try_start_1
    iget-object v7, p0, Lcn/nubia/upgrade/service/UpgradeService;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-virtual {v7}, Lcn/nubia/upgrade/http/DownloadRequest;->getCheckSumNew()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 518
    iget-object v7, p0, Lcn/nubia/upgrade/service/UpgradeService;->mDownloadBinderProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy;

    if-eqz v7, :cond_2

    .line 519
    iget-object v7, p0, Lcn/nubia/upgrade/service/UpgradeService;->mDownloadBinderProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy;

    iget-object v8, p0, Lcn/nubia/upgrade/service/UpgradeService;->mDstApkFilePath:Ljava/lang/String;

    invoke-interface {v7, v8}, Lcn/nubia/upgrade/service/DownloadBinderProxy;->onDownloadComplete(Ljava/lang/String;)V

    goto :goto_1

    .line 524
    :cond_4
    new-instance v2, Ljava/io/File;

    iget-object v7, p0, Lcn/nubia/upgrade/service/UpgradeService;->mDstApkFilePath:Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 525
    .local v2, "errorApkFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 526
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 530
    :cond_5
    :try_start_2
    iget-object v7, p0, Lcn/nubia/upgrade/service/UpgradeService;->mDownloadBinderProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy;

    if-eqz v7, :cond_2

    .line 531
    iget-object v7, p0, Lcn/nubia/upgrade/service/UpgradeService;->mDownloadBinderProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy;

    const/16 v8, 0x3ed

    invoke-interface {v7, v8}, Lcn/nubia/upgrade/service/DownloadBinderProxy;->onDownloadError(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 534
    :catch_1
    move-exception v1

    .line 536
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 537
    const/4 v7, 0x0

    iput-object v7, p0, Lcn/nubia/upgrade/service/UpgradeService;->mDownloadBinderProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 547
    .end local v0    # "bsdiff":Lcom/zupgrade/sdk/util/Bsdiff;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "errorApkFile":Ljava/io/File;
    .end local v3    # "md5Apk":Ljava/lang/String;
    .end local v5    # "originPath":Ljava/lang/String;
    .end local v6    # "patchFile":Ljava/io/File;
    :cond_6
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 548
    .restart local v6    # "patchFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 549
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 552
    :cond_7
    iget-object v7, p0, Lcn/nubia/upgrade/service/UpgradeService;->mDownloadBinderProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy;

    if-eqz v7, :cond_2

    .line 554
    :try_start_4
    iget-object v7, p0, Lcn/nubia/upgrade/service/UpgradeService;->mDownloadBinderProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy;

    const/16 v8, 0x3ed

    invoke-interface {v7, v8}, Lcn/nubia/upgrade/service/DownloadBinderProxy;->onDownloadError(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 556
    :catch_2
    move-exception v1

    .line 558
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 559
    const/4 v7, 0x0

    iput-object v7, p0, Lcn/nubia/upgrade/service/UpgradeService;->mDownloadBinderProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy;

    goto :goto_1

    .line 568
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v4    # "md5Patch":Ljava/lang/String;
    .end local v6    # "patchFile":Ljava/io/File;
    :cond_8
    invoke-static {p1}, Lcn/nubia/upgrade/util/MD5Util;->getFileMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 569
    .restart local v3    # "md5Apk":Ljava/lang/String;
    if-nez v3, :cond_9

    .line 571
    iget-object v7, p0, Lcn/nubia/upgrade/service/UpgradeService;->mServiceHandler:Landroid/os/Handler;

    const/16 v8, 0x65

    const-wide/16 v10, 0x7d0

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 574
    :cond_9
    iget-object v7, p0, Lcn/nubia/upgrade/service/UpgradeService;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-virtual {v7}, Lcn/nubia/upgrade/http/DownloadRequest;->getCheckSumNew()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 577
    :try_start_5
    iget-object v7, p0, Lcn/nubia/upgrade/service/UpgradeService;->mDownloadBinderProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy;

    if-eqz v7, :cond_2

    .line 578
    iget-object v7, p0, Lcn/nubia/upgrade/service/UpgradeService;->mDownloadBinderProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy;

    invoke-interface {v7, p1}, Lcn/nubia/upgrade/service/DownloadBinderProxy;->onDownloadComplete(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_1

    .line 580
    :catch_3
    move-exception v1

    .line 582
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 583
    const/4 v7, 0x0

    iput-object v7, p0, Lcn/nubia/upgrade/service/UpgradeService;->mDownloadBinderProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy;

    goto/16 :goto_1

    .line 588
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_a
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 589
    .restart local v2    # "errorApkFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 590
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 593
    :cond_b
    :try_start_6
    iget-object v7, p0, Lcn/nubia/upgrade/service/UpgradeService;->mDownloadBinderProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy;

    if-eqz v7, :cond_2

    .line 594
    iget-object v7, p0, Lcn/nubia/upgrade/service/UpgradeService;->mDownloadBinderProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy;

    const/16 v8, 0x3ed

    invoke-interface {v7, v8}, Lcn/nubia/upgrade/service/DownloadBinderProxy;->onDownloadError(I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_1

    .line 597
    :catch_4
    move-exception v1

    .line 599
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 600
    const/4 v7, 0x0

    iput-object v7, p0, Lcn/nubia/upgrade/service/UpgradeService;->mDownloadBinderProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy;

    goto/16 :goto_1
.end method

.method private installApk(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 461
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 462
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 463
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 464
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 465
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 470
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private slientInstall(Ljava/lang/String;)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 473
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pm install -r "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, "cmd":Ljava/lang/String;
    invoke-static {v0}, Lcn/nubia/upgrade/util/CommonUtils;->doExec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 475
    .local v1, "result":Ljava/lang/String;
    const-string v2, "UpgradeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doExec:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/upgrade/util/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Success"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 477
    :cond_0
    const-string v2, "UpgradeService"

    const-string v3, "SlientInstall PACH ERROR!!!<installApk>"

    invoke-static {v2, v3}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const/4 v2, 0x0

    .line 481
    :goto_0
    return v2

    .line 480
    :cond_1
    const-string v2, "UpgradeService"

    const-string v3, "SlientInstall PACH Success!!!<installApk>"

    invoke-static {v2, v3}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private startNotification()V
    .locals 6

    .prologue
    .line 216
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcn/nubia/upgrade/service/UpgradeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcn/nubia/upgrade/service/UpgradeService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 219
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/nubia/upgrade/service/UpgradeService;->mBuilder:Landroid/app/Notification$Builder;

    .line 220
    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeService;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v2}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getIconId()I

    move-result v2

    if-lez v2, :cond_0

    .line 221
    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeService;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcn/nubia/upgrade/service/UpgradeService;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v3}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getIconId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 228
    :cond_0
    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeService;->mBuilder:Landroid/app/Notification$Builder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 229
    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeService;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v2}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getNotificationTitle()Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "title":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 231
    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeService;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 236
    :goto_0
    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeService;->mSubNotification:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 237
    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeService;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcn/nubia/upgrade/service/UpgradeService;->mSubNotification:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 239
    :cond_1
    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeService;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 240
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 241
    .local v0, "code":I
    const/16 v2, 0x10

    if-lt v0, v2, :cond_3

    .line 242
    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeService;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/upgrade/service/UpgradeService;->mNotification:Landroid/app/Notification;

    .line 247
    :goto_1
    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v3, 0x3

    iget-object v4, p0, Lcn/nubia/upgrade/service/UpgradeService;->mNotification:Landroid/app/Notification;

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 248
    return-void

    .line 233
    .end local v0    # "code":I
    :cond_2
    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeService;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcn/nubia/upgrade/service/UpgradeService;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v3}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 244
    .restart local v0    # "code":I
    :cond_3
    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeService;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/upgrade/service/UpgradeService;->mNotification:Landroid/app/Notification;

    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 254
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 103
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 104
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "command_pause"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeService;->mCommandReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcn/nubia/upgrade/service/UpgradeService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0}, Lcn/nubia/upgrade/service/UpgradeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/upgrade/service/UpgradeService;->mContext:Landroid/content/Context;

    .line 107
    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/upgrade/service/UpgradeService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 108
    new-instance v2, Lcn/nubia/upgrade/service/UpgradeService$DownloadCallback;

    invoke-direct {v2, p0}, Lcn/nubia/upgrade/service/UpgradeService$DownloadCallback;-><init>(Lcn/nubia/upgrade/service/UpgradeService;)V

    iput-object v2, p0, Lcn/nubia/upgrade/service/UpgradeService;->mDownloadCallback:Lcn/nubia/upgrade/service/UpgradeService$DownloadCallback;

    .line 109
    new-instance v2, Lcn/nubia/upgrade/http/HttpDownloadManager;

    invoke-direct {v2, p0}, Lcn/nubia/upgrade/http/HttpDownloadManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/nubia/upgrade/service/UpgradeService;->mHttpDownloadManager:Lcn/nubia/upgrade/http/HttpDownloadManager;

    .line 110
    new-instance v2, Lcn/nubia/upgrade/service/UpgradeService$UIHandler;

    invoke-direct {v2, p0}, Lcn/nubia/upgrade/service/UpgradeService$UIHandler;-><init>(Lcn/nubia/upgrade/service/UpgradeService;)V

    iput-object v2, p0, Lcn/nubia/upgrade/service/UpgradeService;->mHandler:Lcn/nubia/upgrade/service/UpgradeService$UIHandler;

    .line 111
    new-instance v1, Ljava/lang/Thread;

    const/4 v2, 0x0

    const-string v3, "DownAndInstall"

    invoke-direct {v1, v2, p0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 112
    .local v1, "thr":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 115
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 259
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 260
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService;->mCommandReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcn/nubia/upgrade/service/UpgradeService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 262
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService;->mHttpDownloadManager:Lcn/nubia/upgrade/http/HttpDownloadManager;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService;->mHttpDownloadManager:Lcn/nubia/upgrade/http/HttpDownloadManager;

    invoke-virtual {v0}, Lcn/nubia/upgrade/http/HttpDownloadManager;->releaseDownload()V

    .line 267
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService;->mServiceLooper:Landroid/os/Looper;

    if-nez v0, :cond_1

    .line 268
    monitor-enter p0

    .line 270
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 276
    :cond_1
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 278
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_2

    .line 279
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 287
    :goto_2
    const-string v0, "UpgradeService"

    const-string v1, ":UpgradeService onDestroy over"

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    return-void

    .line 281
    :cond_2
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcn/nubia/upgrade/service/UpgradeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 283
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_2

    .line 271
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 120
    :goto_0
    iget-object v9, p0, Lcn/nubia/upgrade/service/UpgradeService;->mServiceHandler:Landroid/os/Handler;

    if-nez v9, :cond_0

    .line 121
    monitor-enter p0

    .line 123
    const-wide/16 v10, 0x64

    :try_start_0
    invoke-virtual {p0, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 124
    :catch_0
    move-exception v5

    .line 126
    .local v5, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 132
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :cond_0
    if-eqz p1, :cond_4

    .line 133
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 134
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 135
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    .line 136
    .local v7, "parcelConfig":Landroid/os/Parcel;
    const-string v9, "ConfigurationData"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 137
    .local v2, "byteConfig":[B
    const/4 v9, 0x0

    array-length v10, v2

    invoke-virtual {v7, v2, v9, v10}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 138
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 139
    sget-object v9, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    iput-object v9, p0, Lcn/nubia/upgrade/service/UpgradeService;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    .line 140
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 141
    iget-object v9, p0, Lcn/nubia/upgrade/service/UpgradeService;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v9}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getNotificationContent()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcn/nubia/upgrade/service/UpgradeService;->mSubNotification:Ljava/lang/String;

    .line 142
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 143
    .local v4, "code":I
    const/16 v9, 0x12

    if-lt v4, v9, :cond_3

    .line 144
    const-string v9, "downLoadBinderProxy"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/upgrade/service/DownloadBinderProxy;

    move-result-object v9

    iput-object v9, p0, Lcn/nubia/upgrade/service/UpgradeService;->mDownloadBinderProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy;

    .line 175
    :goto_2
    iget-object v9, p0, Lcn/nubia/upgrade/service/UpgradeService;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    if-nez v9, :cond_1

    .line 176
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v8

    .line 177
    .local v8, "parcelRequest":Landroid/os/Parcel;
    const-string v9, "downloadRequest"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 178
    .local v3, "byteRequest":[B
    const/4 v9, 0x0

    array-length v10, v3

    invoke-virtual {v8, v3, v9, v10}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 179
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 180
    sget-object v9, Lcn/nubia/upgrade/http/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/nubia/upgrade/http/DownloadRequest;

    iput-object v9, p0, Lcn/nubia/upgrade/service/UpgradeService;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    .line 181
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    .line 185
    .end local v3    # "byteRequest":[B
    .end local v8    # "parcelRequest":Landroid/os/Parcel;
    :cond_1
    const-string v9, "debug"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Lcn/nubia/upgrade/service/UpgradeService;->mDebug:Z

    .line 186
    iget-boolean v9, p0, Lcn/nubia/upgrade/service/UpgradeService;->mDebug:Z

    invoke-static {v9}, Lcn/nubia/upgrade/constants/HttpConstants;->debug(Z)V

    .line 187
    iget-boolean v9, p0, Lcn/nubia/upgrade/service/UpgradeService;->mDebug:Z

    sput-boolean v9, Lcn/nubia/upgrade/util/Ulog;->debug:Z

    .line 189
    const-string v9, "authid"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcn/nubia/upgrade/service/UpgradeService;->mAuthId:Ljava/lang/String;

    .line 190
    const-string v9, "authkey"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcn/nubia/upgrade/service/UpgradeService;->mAuthKey:Ljava/lang/String;

    .line 203
    iget-object v9, p0, Lcn/nubia/upgrade/service/UpgradeService;->mServiceHandler:Landroid/os/Handler;

    const/16 v10, 0x64

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 211
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "byteConfig":[B
    .end local v4    # "code":I
    .end local v7    # "parcelConfig":Landroid/os/Parcel;
    :cond_2
    :goto_3
    const/4 v9, 0x1

    return v9

    .line 147
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "byteConfig":[B
    .restart local v4    # "code":I
    .restart local v7    # "parcelConfig":Landroid/os/Parcel;
    :cond_3
    const-string v9, "UpgradeService"

    const-string v10, "onstartCommand sdk<18"

    invoke-static {v9, v10}, Lcn/nubia/upgrade/util/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const/4 v1, 0x0

    .line 150
    .local v1, "bundleReflect":Ljava/lang/Class;
    :try_start_3
    const-string v9, "android.os.Bundle"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 152
    const-string v9, "getIBinder"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v1, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 154
    .local v6, "method":Ljava/lang/reflect/Method;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "downLoadBinderProxy"

    aput-object v11, v9, v10

    invoke-virtual {v6, v0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/IBinder;

    invoke-static {v9}, Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/upgrade/service/DownloadBinderProxy;

    move-result-object v9

    iput-object v9, p0, Lcn/nubia/upgrade/service/UpgradeService;->mDownloadBinderProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_2

    .line 157
    .end local v6    # "method":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v5

    .line 159
    .local v5, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v5}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_2

    .line 160
    .end local v5    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v5

    .line 162
    .local v5, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v5}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto/16 :goto_2

    .line 163
    .end local v5    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v5

    .line 165
    .local v5, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v5}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_2

    .line 166
    .end local v5    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v5

    .line 168
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_2

    .line 169
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v5

    .line 171
    .local v5, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_2

    .line 207
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "bundleReflect":Ljava/lang/Class;
    .end local v2    # "byteConfig":[B
    .end local v4    # "code":I
    .end local v5    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v7    # "parcelConfig":Landroid/os/Parcel;
    :cond_4
    const-string v9, "UpgradeService"

    const-string v10, ":UpgradeService Restart!!!"

    invoke-static {v9, v10}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v9, p0, Lcn/nubia/upgrade/service/UpgradeService;->mServiceHandler:Landroid/os/Handler;

    const/16 v10, 0x65

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3
.end method

.method public run()V
    .locals 2

    .prologue
    .line 362
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 363
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService;->mServiceLooper:Landroid/os/Looper;

    .line 364
    new-instance v0, Lcn/nubia/upgrade/service/UpgradeService$ServiceHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/upgrade/service/UpgradeService$ServiceHandler;-><init>(Lcn/nubia/upgrade/service/UpgradeService;Lcn/nubia/upgrade/service/UpgradeService$1;)V

    iput-object v0, p0, Lcn/nubia/upgrade/service/UpgradeService;->mServiceHandler:Landroid/os/Handler;

    .line 365
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 367
    return-void
.end method
