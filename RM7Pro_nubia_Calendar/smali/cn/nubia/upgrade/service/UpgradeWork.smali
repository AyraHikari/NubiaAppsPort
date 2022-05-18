.class Lcn/nubia/upgrade/service/UpgradeWork;
.super Ljava/lang/Object;
.source "UpgradeWork.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/upgrade/service/UpgradeWork$WorkListener;,
        Lcn/nubia/upgrade/service/UpgradeWork$DownloadCallback;,
        Lcn/nubia/upgrade/service/UpgradeWork$ServiceHandler;,
        Lcn/nubia/upgrade/service/UpgradeWork$UIHandler;
    }
.end annotation


# static fields
.field private static final DOWNLOAD_PROGRESS_MSG:I = 0x67

.field private static final MSG_CHECK_INSTALL:I = 0x64

.field private static final MSG_DOWNLOAD_COMPLETE:I = 0x66

.field private static final MSG_KILL_SERVICE:I = 0x65

.field private static final NOTIFICATION_ID:I = 0x3

.field private static final START_NOTIFICATION:I = 0x2710

.field private static final VERSION_N:I = 0x18


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAuthId:Ljava/lang/String;

.field private mAuthKey:Ljava/lang/String;

.field private mBuilder:Landroid/app/Notification$Builder;

.field private mCommandReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDownloadBinderProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy;

.field private mDownloadCallback:Lcn/nubia/upgrade/service/UpgradeWork$DownloadCallback;

.field private mDstApkFilePath:Ljava/lang/String;

.field private mHandler:Lcn/nubia/upgrade/service/UpgradeWork$UIHandler;

.field private mHttpDownloadManager:Lcn/nubia/upgrade/http/HttpDownloadManager;

.field private mInstallResultReceiver:Landroid/content/BroadcastReceiver;

.field private mNotification:Landroid/app/Notification;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

.field private volatile mServiceHandler:Landroid/os/Handler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private mSubNotification:Ljava/lang/String;

.field mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

.field private mWorkListener:Lcn/nubia/upgrade/service/UpgradeWork$WorkListener;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "UpgradeWork"

    iput-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->TAG:Ljava/lang/String;

    .line 74
    iput-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mAuthId:Ljava/lang/String;

    .line 75
    iput-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mAuthKey:Ljava/lang/String;

    .line 79
    new-instance v0, Lcn/nubia/upgrade/util/InstallUtil$InstallResultReceiver;

    invoke-direct {v0}, Lcn/nubia/upgrade/util/InstallUtil$InstallResultReceiver;-><init>()V

    iput-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mInstallResultReceiver:Landroid/content/BroadcastReceiver;

    .line 80
    new-instance v0, Lcn/nubia/upgrade/service/UpgradeWork$1;

    invoke-direct {v0, p0}, Lcn/nubia/upgrade/service/UpgradeWork$1;-><init>(Lcn/nubia/upgrade/service/UpgradeWork;)V

    iput-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mCommandReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/http/HttpDownloadManager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/service/UpgradeWork;

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mHttpDownloadManager:Lcn/nubia/upgrade/http/HttpDownloadManager;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/upgrade/service/UpgradeWork;)Landroid/app/Notification$Builder;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/service/UpgradeWork;

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mBuilder:Landroid/app/Notification$Builder;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/nubia/upgrade/service/UpgradeWork;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/upgrade/service/UpgradeWork;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcn/nubia/upgrade/service/UpgradeWork;->normalInstall(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcn/nubia/upgrade/service/UpgradeWork;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/service/UpgradeWork;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcn/nubia/upgrade/service/UpgradeWork;->silentInstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcn/nubia/upgrade/service/UpgradeWork;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/service/UpgradeWork;

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/service/UpgradeWork$DownloadCallback;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/service/UpgradeWork;

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mDownloadCallback:Lcn/nubia/upgrade/service/UpgradeWork$DownloadCallback;

    return-object v0
.end method

.method static synthetic access$1400(Lcn/nubia/upgrade/service/UpgradeWork;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/service/UpgradeWork;

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mAuthId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcn/nubia/upgrade/service/UpgradeWork;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/service/UpgradeWork;

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mAuthKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcn/nubia/upgrade/service/UpgradeWork;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/upgrade/service/UpgradeWork;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcn/nubia/upgrade/service/UpgradeWork;->handleDownComplete(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/service/UpgradeWork$UIHandler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/service/UpgradeWork;

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mHandler:Lcn/nubia/upgrade/service/UpgradeWork$UIHandler;

    return-object v0
.end method

.method static synthetic access$1800(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/service/DownloadBinderProxy;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/service/UpgradeWork;

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mDownloadBinderProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy;

    return-object v0
.end method

.method static synthetic access$1802(Lcn/nubia/upgrade/service/UpgradeWork;Lcn/nubia/upgrade/service/DownloadBinderProxy;)Lcn/nubia/upgrade/service/DownloadBinderProxy;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/upgrade/service/UpgradeWork;
    .param p1, "x1"    # Lcn/nubia/upgrade/service/DownloadBinderProxy;

    .prologue
    .line 45
    iput-object p1, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mDownloadBinderProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy;

    return-object p1
.end method

.method static synthetic access$1900(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/service/UpgradeWork$WorkListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/service/UpgradeWork;

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mWorkListener:Lcn/nubia/upgrade/service/UpgradeWork$WorkListener;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/upgrade/service/UpgradeWork;)Lcn/nubia/upgrade/http/DownloadRequest;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/service/UpgradeWork;

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/upgrade/service/UpgradeWork;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/service/UpgradeWork;

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mSubNotification:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/upgrade/service/UpgradeWork;)Landroid/app/Notification;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/service/UpgradeWork;

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$402(Lcn/nubia/upgrade/service/UpgradeWork;Landroid/app/Notification;)Landroid/app/Notification;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/upgrade/service/UpgradeWork;
    .param p1, "x1"    # Landroid/app/Notification;

    .prologue
    .line 45
    iput-object p1, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mNotification:Landroid/app/Notification;

    return-object p1
.end method

.method static synthetic access$500(Lcn/nubia/upgrade/service/UpgradeWork;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/service/UpgradeWork;

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/upgrade/service/UpgradeWork;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/upgrade/service/UpgradeWork;

    .prologue
    .line 45
    invoke-direct {p0}, Lcn/nubia/upgrade/service/UpgradeWork;->startNotification()V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/upgrade/service/UpgradeWork;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/service/UpgradeWork;

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mDstApkFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcn/nubia/upgrade/service/UpgradeWork;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/upgrade/service/UpgradeWork;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mDstApkFilePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcn/nubia/upgrade/service/UpgradeWork;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/service/UpgradeWork;

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcn/nubia/upgrade/service/UpgradeWork;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/service/UpgradeWork;

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private generateBinderProxy(Landroid/os/Bundle;)Lcn/nubia/upgrade/service/DownloadBinderProxy;
    .locals 9
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 151
    const/4 v4, 0x0

    .line 152
    .local v4, "proxy":Lcn/nubia/upgrade/service/DownloadBinderProxy;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 153
    .local v1, "code":I
    const/16 v5, 0x12

    if-lt v1, v5, :cond_0

    .line 154
    const-string v5, "downLoadBinderProxy"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/upgrade/service/DownloadBinderProxy;

    move-result-object v4

    .line 174
    :goto_0
    return-object v4

    .line 156
    :cond_0
    iget-object v5, p0, Lcn/nubia/upgrade/service/UpgradeWork;->TAG:Ljava/lang/String;

    const-string v6, "Build.VERSION.SDK_INT < 18"

    invoke-static {v5, v6}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :try_start_0
    const-string v5, "android.os.Bundle"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 159
    .local v0, "bundleReflect":Ljava/lang/Class;
    const-string v5, "getIBinder"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 160
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "downLoadBinderProxy"

    aput-object v7, v5, v6

    invoke-virtual {v3, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    invoke-static {v5}, Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/upgrade/service/DownloadBinderProxy;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v4

    goto :goto_0

    .line 162
    .end local v0    # "bundleReflect":Ljava/lang/Class;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 163
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 164
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 165
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 166
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v2

    .line 167
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 168
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    .line 169
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 170
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v2

    .line 171
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method private handleDownComplete(Ljava/lang/String;)V
    .locals 12
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 450
    iget-object v7, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-virtual {v7}, Lcn/nubia/upgrade/http/DownloadRequest;->getIsPatch()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 451
    invoke-static {p1}, Lcn/nubia/upgrade/util/MD5Util;->getFileMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 452
    .local v4, "md5Patch":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 453
    iget-object v7, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mServiceHandler:Landroid/os/Handler;

    const/16 v8, 0x65

    const-wide/16 v10, 0x7d0

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 548
    .end local v4    # "md5Patch":Ljava/lang/String;
    :goto_0
    return-void

    .line 457
    .restart local v4    # "md5Patch":Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-virtual {v7}, Lcn/nubia/upgrade/http/DownloadRequest;->getCheckSumPatch()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 458
    const/4 v5, 0x0

    .line 460
    .local v5, "originPath":Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v8, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mContext:Landroid/content/Context;

    .line 461
    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 460
    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v5, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 462
    new-instance v0, Lcom/zupgrade/sdk/util/Bsdiff;

    invoke-direct {v0}, Lcom/zupgrade/sdk/util/Bsdiff;-><init>()V

    .line 463
    .local v0, "bsdiff":Lcom/zupgrade/sdk/util/Bsdiff;
    iget-object v7, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mDstApkFilePath:Ljava/lang/String;

    invoke-virtual {v0, v5, v7, p1}, Lcom/zupgrade/sdk/util/Bsdiff;->applyPatchToOldApk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 465
    .local v6, "patchFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 466
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 469
    :cond_1
    iget-object v7, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mDstApkFilePath:Ljava/lang/String;

    invoke-static {v7}, Lcn/nubia/upgrade/util/MD5Util;->getFileMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 470
    .local v3, "md5Apk":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 471
    iget-object v7, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mServiceHandler:Landroid/os/Handler;

    const/16 v8, 0x65

    const-wide/16 v10, 0x7d0

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 495
    .end local v0    # "bsdiff":Lcom/zupgrade/sdk/util/Bsdiff;
    .end local v3    # "md5Apk":Ljava/lang/String;
    .end local v6    # "patchFile":Ljava/io/File;
    :catch_0
    move-exception v7

    .line 547
    .end local v4    # "md5Patch":Ljava/lang/String;
    .end local v5    # "originPath":Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v7, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mServiceHandler:Landroid/os/Handler;

    const/16 v8, 0x65

    const-wide/16 v10, 0x7d0

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 476
    .restart local v0    # "bsdiff":Lcom/zupgrade/sdk/util/Bsdiff;
    .restart local v3    # "md5Apk":Ljava/lang/String;
    .restart local v4    # "md5Patch":Ljava/lang/String;
    .restart local v5    # "originPath":Ljava/lang/String;
    .restart local v6    # "patchFile":Ljava/io/File;
    :cond_3
    :try_start_1
    iget-object v7, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-virtual {v7}, Lcn/nubia/upgrade/http/DownloadRequest;->getCheckSumNew()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 477
    iget-object v7, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mDownloadBinderProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy;

    if-eqz v7, :cond_2

    .line 478
    iget-object v7, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mDownloadBinderProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy;

    iget-object v8, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mDstApkFilePath:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Lcn/nubia/upgrade/service/DownloadBinderProxy;->onDownloadComplete(Ljava/lang/String;Z)V

    goto :goto_1

    .line 481
    :cond_4
    new-instance v2, Ljava/io/File;

    iget-object v7, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mDstApkFilePath:Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 482
    .local v2, "errorApkFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 483
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 487
    :cond_5
    :try_start_2
    iget-object v7, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mDownloadBinderProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy;

    if-eqz v7, :cond_2

    .line 488
    iget-object v7, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mDownloadBinderProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy;

    const/16 v8, 0x3ed

    invoke-interface {v7, v8}, Lcn/nubia/upgrade/service/DownloadBinderProxy;->onDownloadError(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 490
    :catch_1
    move-exception v1

    .line 491
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 492
    const/4 v7, 0x0

    iput-object v7, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mDownloadBinderProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 499
    .end local v0    # "bsdiff":Lcom/zupgrade/sdk/util/Bsdiff;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "errorApkFile":Ljava/io/File;
    .end local v3    # "md5Apk":Ljava/lang/String;
    .end local v5    # "originPath":Ljava/lang/String;
    .end local v6    # "patchFile":Ljava/io/File;
    :cond_6
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 500
    .restart local v6    # "patchFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 501
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 504
    :cond_7
    iget-object v7, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mDownloadBinderProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy;

    if-eqz v7, :cond_2

    .line 506
    :try_start_4
    iget-object v7, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mDownloadBinderProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy;

    const/16 v8, 0x3ed

    invoke-interface {v7, v8}, Lcn/nubia/upgrade/service/DownloadBinderProxy;->onDownloadError(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 507
    :catch_2
    move-exception v1

    .line 508
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 509
    const/4 v7, 0x0

    iput-object v7, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mDownloadBinderProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy;

    goto :goto_1

    .line 517
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v4    # "md5Patch":Ljava/lang/String;
    .end local v6    # "patchFile":Ljava/io/File;
    :cond_8
    invoke-static {p1}, Lcn/nubia/upgrade/util/MD5Util;->getFileMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 518
    .restart local v3    # "md5Apk":Ljava/lang/String;
    if-nez v3, :cond_9

    .line 519
    iget-object v7, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mServiceHandler:Landroid/os/Handler;

    const/16 v8, 0x65

    const-wide/16 v10, 0x7d0

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 522
    :cond_9
    iget-object v7, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-virtual {v7}, Lcn/nubia/upgrade/http/DownloadRequest;->getCheckSumNew()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 524
    :try_start_5
    iget-object v7, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mDownloadBinderProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy;

    if-eqz v7, :cond_2

    .line 525
    iget-object v7, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mDownloadBinderProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy;

    const/4 v8, 0x0

    invoke-interface {v7, p1, v8}, Lcn/nubia/upgrade/service/DownloadBinderProxy;->onDownloadComplete(Ljava/lang/String;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_1

    .line 527
    :catch_3
    move-exception v1

    .line 528
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 529
    const/4 v7, 0x0

    iput-object v7, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mDownloadBinderProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy;

    goto/16 :goto_1

    .line 533
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_a
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 534
    .restart local v2    # "errorApkFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 535
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 538
    :cond_b
    :try_start_6
    iget-object v7, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mDownloadBinderProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy;

    if-eqz v7, :cond_2

    .line 539
    iget-object v7, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mDownloadBinderProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy;

    const/16 v8, 0x3ed

    invoke-interface {v7, v8}, Lcn/nubia/upgrade/service/DownloadBinderProxy;->onDownloadError(I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_1

    .line 541
    :catch_4
    move-exception v1

    .line 542
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 543
    const/4 v7, 0x0

    iput-object v7, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mDownloadBinderProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy;

    goto/16 :goto_1
.end method

.method private normalInstall(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 389
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 390
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 391
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 393
    .local v2, "intent":Landroid/content/Intent;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_1

    .line 394
    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 395
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".FileProvider"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 399
    .local v1, "fileUri":Landroid/net/Uri;
    :goto_0
    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    const-string v3, "android.intent.extra.NOT_UNKNOWN_SOURCE"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 401
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 402
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 404
    .end local v1    # "fileUri":Landroid/net/Uri;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 397
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .restart local v1    # "fileUri":Landroid/net/Uri;
    goto :goto_0
.end method

.method private registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 1
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 675
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 676
    return-void
.end method

.method private silentInstall(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 417
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_1

    .line 419
    invoke-static {p1, p2}, Lcn/nubia/upgrade/util/InstallUtil;->installAPI28(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 442
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 422
    goto :goto_0

    .line 425
    :cond_1
    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "chmod"

    aput-object v4, v3, v2

    const-string v4, "666"

    aput-object v4, v3, v1

    aput-object p2, v3, v5

    invoke-static {v3}, Lcn/nubia/upgrade/util/CommonUtils;->doExec([Ljava/lang/String;)Ljava/lang/String;

    .line 427
    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "pm"

    aput-object v4, v3, v2

    const-string v4, "install"

    aput-object v4, v3, v1

    const-string v4, "--user"

    aput-object v4, v3, v5

    const-string v4, "0"

    aput-object v4, v3, v6

    const/4 v4, 0x4

    const-string v5, "-r"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "-i"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    iget-object v5, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mContext:Landroid/content/Context;

    .line 434
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    aput-object p2, v3, v4

    .line 427
    invoke-static {v3}, Lcn/nubia/upgrade/util/CommonUtils;->doExec([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, "result":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "Success"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 438
    :cond_2
    iget-object v1, p0, Lcn/nubia/upgrade/service/UpgradeWork;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(silent install FAIL)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/nubia/upgrade/util/NuLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 439
    goto :goto_0

    .line 441
    :cond_3
    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeWork;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(silent install SUCCESS)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/upgrade/util/NuLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private startNotification()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 198
    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v2}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getIconId()I

    move-result v2

    if-gtz v2, :cond_0

    .line 199
    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeWork;->TAG:Ljava/lang/String;

    const-string v3, "start notification fail, iconId invalid!"

    invoke-static {v2, v3}, Lcn/nubia/upgrade/util/NuLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mNotificationManager:Landroid/app/NotificationManager;

    .line 204
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mBuilder:Landroid/app/Notification$Builder;

    .line 205
    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v3}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getIconId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 207
    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mBuilder:Landroid/app/Notification$Builder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 208
    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v2}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getNotificationTitle()Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "title":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 210
    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v2}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getAppName()Ljava/lang/String;

    move-result-object v1

    .line 212
    :cond_1
    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 213
    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mSubNotification:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 214
    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mSubNotification:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 216
    :cond_2
    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 217
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 218
    .local v0, "code":I
    const/16 v2, 0x10

    if-lt v0, v2, :cond_3

    .line 219
    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mNotification:Landroid/app/Notification;

    .line 223
    :goto_1
    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeWork;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startNotification title:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " contentText:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mSubNotification:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v3, 0x3

    iget-object v4, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mNotification:Landroid/app/Notification;

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 221
    :cond_3
    iget-object v2, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mNotification:Landroid/app/Notification;

    goto :goto_1
.end method

.method private unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 679
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 680
    return-void
.end method


# virtual methods
.method public getDownloadCallingPid(Landroid/os/Bundle;)I
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 182
    if-eqz p1, :cond_0

    .line 183
    invoke-direct {p0, p1}, Lcn/nubia/upgrade/service/UpgradeWork;->generateBinderProxy(Landroid/os/Bundle;)Lcn/nubia/upgrade/service/DownloadBinderProxy;

    move-result-object v1

    .line 184
    .local v1, "proxy":Lcn/nubia/upgrade/service/DownloadBinderProxy;
    if-eqz v1, :cond_0

    .line 186
    :try_start_0
    invoke-interface {v1}, Lcn/nubia/upgrade/service/DownloadBinderProxy;->onDownloadCallingPid()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 193
    .end local v1    # "proxy":Lcn/nubia/upgrade/service/DownloadBinderProxy;
    :goto_0
    return v2

    .line 187
    .restart local v1    # "proxy":Lcn/nubia/upgrade/service/DownloadBinderProxy;
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 193
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "proxy":Lcn/nubia/upgrade/service/DownloadBinderProxy;
    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "jobName"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mContext:Landroid/content/Context;

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/nubia/upgrade/service/UpgradeWork;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/upgrade/service/UpgradeWork;->TAG:Ljava/lang/String;

    .line 98
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 99
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "command_pause"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    iget-object v3, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mCommandReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v3, v0}, Lcn/nubia/upgrade/service/UpgradeWork;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 102
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 103
    .local v2, "installResultFilter":Landroid/content/IntentFilter;
    const-string v3, "cn.nubia.upgrade.action.InstallResultReceiver"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    iget-object v3, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mInstallResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v3, v2}, Lcn/nubia/upgrade/service/UpgradeWork;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 106
    iget-object v3, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 107
    new-instance v3, Lcn/nubia/upgrade/service/UpgradeWork$DownloadCallback;

    invoke-direct {v3, p0}, Lcn/nubia/upgrade/service/UpgradeWork$DownloadCallback;-><init>(Lcn/nubia/upgrade/service/UpgradeWork;)V

    iput-object v3, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mDownloadCallback:Lcn/nubia/upgrade/service/UpgradeWork$DownloadCallback;

    .line 108
    new-instance v3, Lcn/nubia/upgrade/http/HttpDownloadManager;

    iget-object v4, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcn/nubia/upgrade/http/HttpDownloadManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mHttpDownloadManager:Lcn/nubia/upgrade/http/HttpDownloadManager;

    .line 109
    new-instance v3, Lcn/nubia/upgrade/service/UpgradeWork$UIHandler;

    invoke-direct {v3, p0}, Lcn/nubia/upgrade/service/UpgradeWork$UIHandler;-><init>(Lcn/nubia/upgrade/service/UpgradeWork;)V

    iput-object v3, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mHandler:Lcn/nubia/upgrade/service/UpgradeWork$UIHandler;

    .line 110
    new-instance v1, Landroid/os/HandlerThread;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-DownloadAndInstall"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 111
    .local v1, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 112
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mServiceLooper:Landroid/os/Looper;

    .line 113
    new-instance v3, Lcn/nubia/upgrade/service/UpgradeWork$ServiceHandler;

    iget-object v4, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v3, p0, v4}, Lcn/nubia/upgrade/service/UpgradeWork$ServiceHandler;-><init>(Lcn/nubia/upgrade/service/UpgradeWork;Landroid/os/Looper;)V

    iput-object v3, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mServiceHandler:Landroid/os/Handler;

    .line 114
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 228
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mCommandReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcn/nubia/upgrade/service/UpgradeWork;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 229
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mInstallResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcn/nubia/upgrade/service/UpgradeWork;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 231
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mHttpDownloadManager:Lcn/nubia/upgrade/http/HttpDownloadManager;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mHttpDownloadManager:Lcn/nubia/upgrade/http/HttpDownloadManager;

    invoke-virtual {v0}, Lcn/nubia/upgrade/http/HttpDownloadManager;->releaseDownload()V

    .line 235
    :cond_0
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 237
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 244
    :goto_0
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->TAG:Ljava/lang/String;

    const-string v1, ":UpgradeWork onDestroy."

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/NuLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void

    .line 240
    :cond_1
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mNotificationManager:Landroid/app/NotificationManager;

    .line 241
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 117
    if-eqz p1, :cond_2

    .line 118
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 119
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 120
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 121
    .local v3, "parcelConfig":Landroid/os/Parcel;
    const-string v5, "ConfigurationData"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 122
    .local v1, "byteConfig":[B
    array-length v5, v1

    invoke-virtual {v3, v1, v6, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 123
    invoke-virtual {v3, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 124
    sget-object v5, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    iput-object v5, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    .line 126
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 127
    iget-object v5, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v5}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getNotificationContent()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mSubNotification:Ljava/lang/String;

    .line 128
    invoke-direct {p0, v0}, Lcn/nubia/upgrade/service/UpgradeWork;->generateBinderProxy(Landroid/os/Bundle;)Lcn/nubia/upgrade/service/DownloadBinderProxy;

    move-result-object v5

    iput-object v5, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mDownloadBinderProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy;

    .line 130
    iget-object v5, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    if-nez v5, :cond_0

    .line 131
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 132
    .local v4, "parcelRequest":Landroid/os/Parcel;
    const-string v5, "downloadRequest"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 133
    .local v2, "byteRequest":[B
    array-length v5, v2

    invoke-virtual {v4, v2, v6, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 134
    invoke-virtual {v4, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 135
    sget-object v5, Lcn/nubia/upgrade/http/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/upgrade/http/DownloadRequest;

    iput-object v5, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    .line 136
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 139
    .end local v2    # "byteRequest":[B
    .end local v4    # "parcelRequest":Landroid/os/Parcel;
    :cond_0
    const-string v5, "authid"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mAuthId:Ljava/lang/String;

    .line 140
    const-string v5, "authkey"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mAuthKey:Ljava/lang/String;

    .line 142
    iget-object v5, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mServiceHandler:Landroid/os/Handler;

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 148
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "byteConfig":[B
    .end local v3    # "parcelConfig":Landroid/os/Parcel;
    :cond_1
    :goto_0
    return-void

    .line 145
    :cond_2
    iget-object v5, p0, Lcn/nubia/upgrade/service/UpgradeWork;->TAG:Ljava/lang/String;

    const-string v6, ":UpgradeWork Restart!!!"

    invoke-static {v5, v6}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v5, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mServiceHandler:Landroid/os/Handler;

    const/16 v6, 0x65

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setWorkListener(Lcn/nubia/upgrade/service/UpgradeWork$WorkListener;)V
    .locals 0
    .param p1, "l"    # Lcn/nubia/upgrade/service/UpgradeWork$WorkListener;

    .prologue
    .line 683
    iput-object p1, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mWorkListener:Lcn/nubia/upgrade/service/UpgradeWork$WorkListener;

    .line 684
    return-void
.end method

.method public stopSelf()V
    .locals 2

    .prologue
    .line 663
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mWorkListener:Lcn/nubia/upgrade/service/UpgradeWork$WorkListener;

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcn/nubia/upgrade/service/UpgradeWork;->mHandler:Lcn/nubia/upgrade/service/UpgradeWork$UIHandler;

    new-instance v1, Lcn/nubia/upgrade/service/UpgradeWork$2;

    invoke-direct {v1, p0}, Lcn/nubia/upgrade/service/UpgradeWork$2;-><init>(Lcn/nubia/upgrade/service/UpgradeWork;)V

    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/service/UpgradeWork$UIHandler;->post(Ljava/lang/Runnable;)Z

    .line 671
    :cond_0
    return-void
.end method
