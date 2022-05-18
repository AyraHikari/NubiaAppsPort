.class public Lcn/nubia/upgrade/api/NubiaUpgradeManager;
.super Ljava/lang/Object;
.source "NubiaUpgradeManager.java"


# static fields
.field private static final SILENT_DOWNLOAD:I = 0x1

.field private static final SILENT_UPGRADE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "NubiaUpgradeManager"

.field private static sUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;


# instance fields
.field private defaultDownloadPath:Ljava/lang/String;

.field private mAppKey:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDownLoadListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/upgrade/http/IDownLoadListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;

.field private mDownloadRequest:Lcn/nubia/upgrade/http/DownloadRequest;

.field private mRequestManager:Lcn/nubia/upgrade/http/HttpRequestManager;

.field private mSecretKey:Ljava/lang/String;

.field private mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

.field private mVersionData:Lcn/nubia/upgrade/model/VersionData;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownLoadListeners:Ljava/util/ArrayList;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->defaultDownloadPath:Ljava/lang/String;

    .line 97
    new-instance v0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;

    invoke-direct {v0, p0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;-><init>(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)V

    iput-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;

    .line 55
    iput-object p2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mAppKey:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mSecretKey:Ljava/lang/String;

    .line 57
    new-instance v0, Lcn/nubia/upgrade/http/HttpRequestManager;

    invoke-direct {v0}, Lcn/nubia/upgrade/http/HttpRequestManager;-><init>()V

    iput-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mRequestManager:Lcn/nubia/upgrade/http/HttpRequestManager;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mContext:Landroid/content/Context;

    .line 59
    invoke-static {}, Lcn/nubia/upgrade/util/CommonUtils;->getInstance()Lcn/nubia/upgrade/util/CommonUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/upgrade/util/CommonUtils;->getDefaultPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->defaultDownloadPath:Ljava/lang/String;

    .line 60
    new-instance v0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    invoke-direct {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;-><init>()V

    .line 61
    invoke-virtual {v0, v2}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setAllowMobileNetwork(Z)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    .line 62
    const-string v1, "Upgrade"

    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setAppName(Ljava/lang/String;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    .line 63
    invoke-virtual {v0, v2}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setShowNotification(Z)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    .line 64
    invoke-virtual {v0, v2}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setSilentDownload(Z)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    .line 65
    invoke-virtual {v0, v2}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setSilentInstall(Z)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    .line 66
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setNotificationUpdateOffset(J)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    .line 67
    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->build()Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/http/DownloadRequest;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownLoadListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/model/VersionData;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mVersionData:Lcn/nubia/upgrade/model/VersionData;

    return-object v0
.end method

.method static synthetic access$302(Lcn/nubia/upgrade/api/NubiaUpgradeManager;Lcn/nubia/upgrade/model/VersionData;)Lcn/nubia/upgrade/model/VersionData;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mVersionData:Lcn/nubia/upgrade/model/VersionData;

    return-object p1
.end method

.method static synthetic access$400(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mAppKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mSecretKey:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/upgrade/api/NubiaUpgradeManager;
    .locals 2

    .prologue
    .line 238
    const-class v1, Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    monitor-enter v1

    .line 239
    :try_start_0
    sget-object v0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->sUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->sUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    .line 242
    :cond_0
    sget-object v0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->sUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    monitor-exit v1

    return-object v0

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isUpgrading()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 508
    iget-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    if-nez v1, :cond_1

    .line 515
    :cond_0
    :goto_0
    return v0

    .line 511
    :cond_1
    iget-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-virtual {v1}, Lcn/nubia/upgrade/http/DownloadRequest;->getState()Lcn/nubia/upgrade/http/DownloadRequest$State;

    move-result-object v1

    .line 512
    sget-object v2, Lcn/nubia/upgrade/http/DownloadRequest$State;->PREPARE:Lcn/nubia/upgrade/http/DownloadRequest$State;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcn/nubia/upgrade/http/DownloadRequest$State;->RUNNING:Lcn/nubia/upgrade/http/DownloadRequest$State;

    if-ne v1, v2, :cond_0

    .line 513
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private startDownload(Landroid/content/Context;Lcn/nubia/upgrade/http/DownloadRequest;Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;I)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 361
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcn/nubia/upgrade/http/DownloadRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    :cond_0
    :try_start_0
    const-string v0, "NubiaUpgradeManager"

    const-string v1, "cancel download, because download url is empty."

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;->onDownloadError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    :goto_0
    return-void

    .line 365
    :catch_0
    move-exception v0

    .line 366
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 370
    :cond_1
    invoke-virtual {p2}, Lcn/nubia/upgrade/http/DownloadRequest;->getDownloadPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 371
    invoke-virtual {p2}, Lcn/nubia/upgrade/http/DownloadRequest;->getDownloadPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 373
    :cond_2
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->defaultDownloadPath:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcn/nubia/upgrade/http/DownloadRequest;->setDownLoadPath(Ljava/lang/String;)V

    .line 376
    :cond_3
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    if-nez v0, :cond_4

    .line 377
    iput-object p2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    .line 378
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    sget-object v1, Lcn/nubia/upgrade/http/DownloadRequest$State;->PREPARE:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v1, v0, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 382
    :cond_4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 383
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 384
    iget-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v1, v0, v2}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 385
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    .line 386
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 388
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 389
    invoke-virtual {p2, v0, v2}, Lcn/nubia/upgrade/http/DownloadRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 390
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    .line 391
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 393
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 394
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 395
    const-string v0, "ConfigurationData"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 396
    const-string v0, "downloadRequest"

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 398
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 399
    const/16 v1, 0x12

    if-lt v0, v1, :cond_5

    .line 400
    const-string v0, "downLoadBinderProxy"

    invoke-virtual {v4, v0, p3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 423
    :goto_1
    const-string v0, "authid"

    iget-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mAppKey:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string v0, "authkey"

    iget-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mSecretKey:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const-string v0, "cmd"

    invoke-virtual {v4, v0, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 427
    invoke-virtual {v3, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 429
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-static {p1, v3, v0}, Lcn/nubia/upgrade/service/UpgradeScheduler;->schedule(Landroid/content/Context;Landroid/content/Intent;Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;)V

    goto/16 :goto_0

    .line 402
    :cond_5
    const-string v0, "NubiaUpgradeManager"

    const-string v1, "android build sdk version < 18."

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    :try_start_1
    const-string v0, "android.os.Bundle"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 407
    const-string v1, "putIBinder"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x1

    const-class v6, Landroid/os/IBinder;

    aput-object v6, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 409
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v5, "downLoadBinderProxy"

    aput-object v5, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-virtual {v0, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_1

    .line 411
    :catch_1
    move-exception v0

    .line 412
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 413
    :catch_2
    move-exception v0

    .line 414
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 415
    :catch_3
    move-exception v0

    .line 416
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 417
    :catch_4
    move-exception v0

    .line 418
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 419
    :catch_5
    move-exception v0

    .line 420
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public addDownLoadListener(Lcn/nubia/upgrade/http/IDownLoadListener;)V
    .locals 2

    .prologue
    .line 438
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownLoadListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 439
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownLoadListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    :cond_0
    return-void
.end method

.method public debug(Z)V
    .locals 0

    .prologue
    .line 93
    invoke-static {p1}, Lcn/nubia/upgrade/constants/HttpConstants;->debug(Z)V

    .line 94
    invoke-static {p1}, Lcn/nubia/upgrade/util/NuLog;->debug(Z)V

    .line 95
    return-void
.end method

.method public getSDKVersionInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    const-string v0, "versionName:V1.5.2, versionCode:1061"

    return-object v0
.end method

.method public getVersion(Landroid/content/Context;Lcn/nubia/upgrade/http/IGetVersionListener;)V
    .locals 4

    .prologue
    .line 266
    const-string v0, "NubiaUpgradeManager"

    invoke-virtual {p0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->getSDKVersionInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/NuLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mAppKey:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mSecretKey:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcn/nubia/upgrade/util/ReportUtils;->checkInstallEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mRequestManager:Lcn/nubia/upgrade/http/HttpRequestManager;

    iget-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mAppKey:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mSecretKey:Ljava/lang/String;

    new-instance v3, Lcn/nubia/upgrade/api/NubiaUpgradeManager$2;

    invoke-direct {v3, p0, p2, p1}, Lcn/nubia/upgrade/api/NubiaUpgradeManager$2;-><init>(Lcn/nubia/upgrade/api/NubiaUpgradeManager;Lcn/nubia/upgrade/http/IGetVersionListener;Landroid/content/Context;)V

    invoke-virtual {v0, p1, v1, v2, v3}, Lcn/nubia/upgrade/http/HttpRequestManager;->getVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/upgrade/http/IGetVersionListener;)V

    .line 308
    return-void
.end method

.method public install(Landroid/content/Context;Lcn/nubia/upgrade/model/VersionData;)V
    .locals 4

    .prologue
    .line 461
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->isSilentDownload()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 462
    iget-object p2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mVersionData:Lcn/nubia/upgrade/model/VersionData;

    .line 465
    :cond_0
    if-nez p2, :cond_1

    .line 466
    const-string v0, "NubiaUpgradeManager"

    const-string v1, "fail to install!!! because versionData is null. "

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    :goto_0
    return-void

    .line 469
    :cond_1
    new-instance v1, Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-direct {v1}, Lcn/nubia/upgrade/http/DownloadRequest;-><init>()V

    .line 470
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getApkUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/nubia/upgrade/http/DownloadRequest;->setApkUrl(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getFileSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcn/nubia/upgrade/http/DownloadRequest;->setFileSize(J)V

    .line 472
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/nubia/upgrade/http/DownloadRequest;->setAppName(Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getDownloadPath()Ljava/lang/String;

    move-result-object v0

    .line 474
    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 475
    :cond_2
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->defaultDownloadPath:Ljava/lang/String;

    .line 478
    :cond_3
    invoke-virtual {v1, v0}, Lcn/nubia/upgrade/http/DownloadRequest;->setDownLoadPath(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getToVersionCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/nubia/upgrade/http/DownloadRequest;->setDstVersion(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getFromVersionCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/nubia/upgrade/http/DownloadRequest;->setFromVersion(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumNew()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/nubia/upgrade/http/DownloadRequest;->setCheckSumNew(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumPatch()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/nubia/upgrade/http/DownloadRequest;->setCheckSumPatch(Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    .line 484
    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getDownloadStorageLimit()J

    move-result-wide v2

    .line 483
    invoke-virtual {v1, v2, v3}, Lcn/nubia/upgrade/http/DownloadRequest;->setStorageLimit(J)V

    .line 485
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumPatch()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 486
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumPatch()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 487
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcn/nubia/upgrade/http/DownloadRequest;->setIsPatch(Z)V

    .line 492
    :goto_1
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;

    const/4 v2, 0x2

    invoke-direct {p0, p1, v1, v0, v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->startDownload(Landroid/content/Context;Lcn/nubia/upgrade/http/DownloadRequest;Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;I)V

    goto :goto_0

    .line 489
    :cond_5
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcn/nubia/upgrade/http/DownloadRequest;->setIsPatch(Z)V

    goto :goto_1
.end method

.method public isApkExist(Lcn/nubia/upgrade/model/VersionData;)Z
    .locals 2

    .prologue
    .line 527
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getDownloadPath()Ljava/lang/String;

    move-result-object v0

    .line 529
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 530
    :cond_0
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->defaultDownloadPath:Ljava/lang/String;

    .line 532
    :cond_1
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 533
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 535
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumNew()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 536
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 538
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 540
    if-eqz v0, :cond_3

    .line 541
    invoke-static {v1}, Lcn/nubia/upgrade/util/MD5Util;->getFileMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 542
    if-nez v0, :cond_4

    .line 543
    const/4 v0, 0x0

    .line 549
    :cond_3
    :goto_0
    return v0

    .line 545
    :cond_4
    invoke-virtual {p1}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumNew()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public pauseDownload()V
    .locals 3

    .prologue
    .line 499
    invoke-direct {p0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->isUpgrading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 501
    const-string v1, "command_pause"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    const-string v1, "NubiaUpgradeManager"

    const-string v2, "pause downloading."

    invoke-static {v1, v2}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iget-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 505
    :cond_0
    return-void
.end method

.method public removeDownloadListener(Lcn/nubia/upgrade/http/IDownLoadListener;)V
    .locals 1

    .prologue
    .line 449
    if-eqz p1, :cond_0

    .line 450
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownLoadListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 452
    :cond_0
    return-void
.end method

.method public setConfiguration(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;)V
    .locals 2

    .prologue
    .line 77
    if-eqz p1, :cond_0

    .line 78
    iput-object p1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    const-string v0, "NubiaUpgradeManager"

    const-string v1, "configuration is null, cancel setup."

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startDownload(Landroid/content/Context;Lcn/nubia/upgrade/model/VersionData;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 321
    if-nez p2, :cond_0

    .line 322
    const-string v0, "NubiaUpgradeManager"

    const-string v1, "cancel download, because versionData is null."

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :goto_0
    return-void

    .line 326
    :cond_0
    new-instance v1, Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-direct {v1}, Lcn/nubia/upgrade/http/DownloadRequest;-><init>()V

    .line 327
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getApkUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/nubia/upgrade/http/DownloadRequest;->setApkUrl(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/nubia/upgrade/http/DownloadRequest;->setAppName(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getFileSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcn/nubia/upgrade/http/DownloadRequest;->setFileSize(J)V

    .line 330
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getDownloadPath()Ljava/lang/String;

    move-result-object v0

    .line 331
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 332
    :cond_1
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->defaultDownloadPath:Ljava/lang/String;

    .line 334
    :cond_2
    invoke-virtual {v1, v0}, Lcn/nubia/upgrade/http/DownloadRequest;->setDownLoadPath(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getToVersionCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/nubia/upgrade/http/DownloadRequest;->setDstVersion(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getFromVersionCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/nubia/upgrade/http/DownloadRequest;->setFromVersion(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumNew()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/nubia/upgrade/http/DownloadRequest;->setCheckSumNew(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumPatch()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/nubia/upgrade/http/DownloadRequest;->setCheckSumPatch(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumPatch()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumPatch()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 340
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcn/nubia/upgrade/http/DownloadRequest;->setIsPatch(Z)V

    .line 344
    :goto_1
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getDownloadStorageLimit()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcn/nubia/upgrade/http/DownloadRequest;->setStorageLimit(J)V

    .line 346
    invoke-virtual {p0, p2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->isApkExist(Lcn/nubia/upgrade/model/VersionData;)Z

    move-result v0

    .line 347
    if-eqz v0, :cond_5

    .line 349
    :try_start_0
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 350
    invoke-virtual {v1}, Lcn/nubia/upgrade/http/DownloadRequest;->getDownloadPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumNew()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 349
    invoke-virtual {v0, v1, v2}, Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;->onDownloadComplete(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 351
    :catch_0
    move-exception v0

    .line 352
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 342
    :cond_4
    invoke-virtual {v1, v4}, Lcn/nubia/upgrade/http/DownloadRequest;->setIsPatch(Z)V

    goto :goto_1

    .line 355
    :cond_5
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;

    invoke-direct {p0, p1, v1, v0, v4}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->startDownload(Landroid/content/Context;Lcn/nubia/upgrade/http/DownloadRequest;Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;I)V

    goto/16 :goto_0
.end method
