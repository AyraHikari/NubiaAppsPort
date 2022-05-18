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
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "secretKey"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownLoadListeners:Ljava/util/ArrayList;

    .line 49
    const-string v1, ""

    iput-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->defaultDownloadPath:Ljava/lang/String;

    .line 98
    new-instance v1, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;

    invoke-direct {v1, p0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;-><init>(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)V

    iput-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;

    .line 56
    iput-object p2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mAppKey:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mSecretKey:Ljava/lang/String;

    .line 58
    new-instance v1, Lcn/nubia/upgrade/http/HttpRequestManager;

    invoke-direct {v1}, Lcn/nubia/upgrade/http/HttpRequestManager;-><init>()V

    iput-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mRequestManager:Lcn/nubia/upgrade/http/HttpRequestManager;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mContext:Landroid/content/Context;

    .line 60
    invoke-static {}, Lcn/nubia/upgrade/util/CommonUtils;->getInstance()Lcn/nubia/upgrade/util/CommonUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcn/nubia/upgrade/util/CommonUtils;->getDefaultPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->defaultDownloadPath:Ljava/lang/String;

    .line 61
    new-instance v0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    invoke-direct {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;-><init>()V

    .line 62
    .local v0, "builder":Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    invoke-virtual {v0, v2}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setAllowMobileNetwork(Z)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    .line 63
    const-string v1, "Upgrade"

    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setAppName(Ljava/lang/String;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    .line 64
    invoke-virtual {v0, v2}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setShowNotification(Z)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    .line 65
    invoke-virtual {v0, v2}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setSilentDownload(Z)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    .line 66
    invoke-virtual {v0, v2}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setSilentInstall(Z)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    .line 67
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setNotificationUpdateOffset(J)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    .line 68
    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->build()Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/http/DownloadRequest;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    .prologue
    .line 38
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    .prologue
    .line 38
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    .prologue
    .line 38
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownLoadListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/model/VersionData;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    .prologue
    .line 38
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mVersionData:Lcn/nubia/upgrade/model/VersionData;

    return-object v0
.end method

.method static synthetic access$302(Lcn/nubia/upgrade/api/NubiaUpgradeManager;Lcn/nubia/upgrade/model/VersionData;)Lcn/nubia/upgrade/model/VersionData;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/upgrade/api/NubiaUpgradeManager;
    .param p1, "x1"    # Lcn/nubia/upgrade/model/VersionData;

    .prologue
    .line 38
    iput-object p1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mVersionData:Lcn/nubia/upgrade/model/VersionData;

    return-object p1
.end method

.method static synthetic access$400(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    .prologue
    .line 38
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    .prologue
    .line 38
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mAppKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    .prologue
    .line 38
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mSecretKey:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/upgrade/api/NubiaUpgradeManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "secretKey"    # Ljava/lang/String;

    .prologue
    .line 239
    const-class v1, Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    monitor-enter v1

    .line 240
    :try_start_0
    sget-object v0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->sUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->sUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    .line 242
    new-instance v0, Lcn/nubia/upgrade/api/NubiaUpgradeManager$2;

    invoke-direct {v0, p0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager$2;-><init>(Landroid/content/Context;)V

    .line 251
    invoke-virtual {v0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager$2;->start()V

    .line 253
    :cond_0
    sget-object v0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->sUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    monitor-exit v1

    return-object v0

    .line 254
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
    const/4 v1, 0x0

    .line 518
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    if-nez v2, :cond_1

    .line 525
    :cond_0
    :goto_0
    return v1

    .line 521
    :cond_1
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-virtual {v2}, Lcn/nubia/upgrade/http/DownloadRequest;->getState()Lcn/nubia/upgrade/http/DownloadRequest$State;

    move-result-object v0

    .line 522
    .local v0, "state":Lcn/nubia/upgrade/http/DownloadRequest$State;
    sget-object v2, Lcn/nubia/upgrade/http/DownloadRequest$State;->PREPARE:Lcn/nubia/upgrade/http/DownloadRequest$State;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcn/nubia/upgrade/http/DownloadRequest$State;->RUNNING:Lcn/nubia/upgrade/http/DownloadRequest$State;

    if-ne v0, v2, :cond_0

    .line 523
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private startDownload(Landroid/content/Context;Lcn/nubia/upgrade/http/DownloadRequest;Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;I)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "downloadRequest"    # Lcn/nubia/upgrade/http/DownloadRequest;
    .param p3, "proxy"    # Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;
    .param p4, "cmd"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 371
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcn/nubia/upgrade/http/DownloadRequest;->getUrl()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 373
    :cond_0
    :try_start_0
    const-string v11, "NubiaUpgradeManager"

    const-string v12, "cancel download, because download url is empty."

    invoke-static {v11, v12}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v11, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;

    const/16 v12, 0x3eb

    invoke-virtual {v11, v12}, Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;->onDownloadError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    :goto_0
    return-void

    .line 375
    :catch_0
    move-exception v7

    .line 376
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 380
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcn/nubia/upgrade/http/DownloadRequest;->getDownloadPath()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 381
    invoke-virtual/range {p2 .. p2}, Lcn/nubia/upgrade/http/DownloadRequest;->getDownloadPath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 383
    :cond_2
    iget-object v11, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->defaultDownloadPath:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcn/nubia/upgrade/http/DownloadRequest;->setDownLoadPath(Ljava/lang/String;)V

    .line 386
    :cond_3
    iget-object v11, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    if-nez v11, :cond_4

    .line 387
    move-object/from16 v0, p2

    iput-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    .line 388
    iget-object v11, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    sget-object v12, Lcn/nubia/upgrade/http/DownloadRequest$State;->PREPARE:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v12, v11, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 392
    :cond_4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    .line 393
    .local v9, "parcelConfig":Landroid/os/Parcel;
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 394
    iget-object v11, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    const/4 v12, 0x0

    invoke-virtual {v11, v9, v12}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 395
    invoke-virtual {v9}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    .line 396
    .local v3, "byteConfig":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 398
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    .line 399
    .local v10, "parcelRequest":Landroid/os/Parcel;
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Lcn/nubia/upgrade/http/DownloadRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 400
    invoke-virtual {v10}, Landroid/os/Parcel;->marshall()[B

    move-result-object v4

    .line 401
    .local v4, "byteRequest":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 403
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 404
    .local v6, "downIntent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 405
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v11, "ConfigurationData"

    invoke-virtual {v1, v11, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 406
    const-string v11, "downloadRequest"

    invoke-virtual {v1, v11, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 408
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 409
    .local v5, "code":I
    const/16 v11, 0x12

    if-lt v5, v11, :cond_5

    .line 410
    const-string v11, "downLoadBinderProxy"

    move-object/from16 v0, p3

    invoke-virtual {v1, v11, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 433
    :goto_1
    const-string v11, "authid"

    iget-object v12, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mAppKey:Ljava/lang/String;

    invoke-virtual {v1, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string v11, "authkey"

    iget-object v12, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mSecretKey:Ljava/lang/String;

    invoke-virtual {v1, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const-string v11, "cmd"

    move/from16 v0, p4

    invoke-virtual {v1, v11, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 437
    invoke-virtual {v6, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 439
    iget-object v11, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    move-object/from16 v0, p1

    invoke-static {v0, v6, v11}, Lcn/nubia/upgrade/service/UpgradeScheduler;->schedule(Landroid/content/Context;Landroid/content/Intent;Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;)V

    goto/16 :goto_0

    .line 412
    :cond_5
    const-string v11, "NubiaUpgradeManager"

    const-string v12, "android build sdk version < 18."

    invoke-static {v11, v12}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const/4 v2, 0x0

    .line 415
    .local v2, "bundleReflect":Ljava/lang/Class;
    :try_start_1
    const-string v11, "android.os.Bundle"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 417
    const-string v11, "putIBinder"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    const-class v14, Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-class v14, Landroid/os/IBinder;

    aput-object v14, v12, v13

    invoke-virtual {v2, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 419
    .local v8, "method":Ljava/lang/reflect/Method;
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "downLoadBinderProxy"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object p3, v11, v12

    invoke-virtual {v8, v1, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_1

    .line 421
    .end local v8    # "method":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v7

    .line 422
    .local v7, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v7}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 423
    .end local v7    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v7

    .line 424
    .local v7, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v7}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 425
    .end local v7    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v7

    .line 426
    .local v7, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v7}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 427
    .end local v7    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v7

    .line 428
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 429
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v7

    .line 430
    .local v7, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v7}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public addDownLoadListener(Lcn/nubia/upgrade/http/IDownLoadListener;)V
    .locals 2
    .param p1, "listener"    # Lcn/nubia/upgrade/http/IDownLoadListener;

    .prologue
    .line 448
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownLoadListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 449
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownLoadListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    :cond_0
    return-void
.end method

.method public debug(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 94
    invoke-static {p1}, Lcn/nubia/upgrade/constants/HttpConstants;->debug(Z)V

    .line 95
    invoke-static {p1}, Lcn/nubia/upgrade/util/NuLog;->debug(Z)V

    .line 96
    return-void
.end method

.method public getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 568
    invoke-static {p1}, Lcn/nubia/upgrade/util/CommonUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSDKVersionInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    const-string v0, "versionName:V1.5.4, versionCode:1101"

    return-object v0
.end method

.method public getVersion(Landroid/content/Context;Lcn/nubia/upgrade/http/IGetVersionListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcn/nubia/upgrade/http/IGetVersionListener;

    .prologue
    .line 277
    const-string v0, "NubiaUpgradeManager"

    invoke-virtual {p0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->getSDKVersionInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/NuLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mAppKey:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mSecretKey:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcn/nubia/upgrade/util/ReportUtils;->checkInstallEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mRequestManager:Lcn/nubia/upgrade/http/HttpRequestManager;

    iget-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mAppKey:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mSecretKey:Ljava/lang/String;

    new-instance v3, Lcn/nubia/upgrade/api/NubiaUpgradeManager$3;

    invoke-direct {v3, p0, p2, p1}, Lcn/nubia/upgrade/api/NubiaUpgradeManager$3;-><init>(Lcn/nubia/upgrade/api/NubiaUpgradeManager;Lcn/nubia/upgrade/http/IGetVersionListener;Landroid/content/Context;)V

    invoke-virtual {v0, p1, v1, v2, v3}, Lcn/nubia/upgrade/http/HttpRequestManager;->getVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/upgrade/http/IGetVersionListener;)V

    .line 318
    return-void
.end method

.method public install(Landroid/content/Context;Lcn/nubia/upgrade/model/VersionData;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcn/nubia/upgrade/model/VersionData;

    .prologue
    .line 471
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v2}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->isSilentDownload()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p2, :cond_0

    .line 472
    iget-object p2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mVersionData:Lcn/nubia/upgrade/model/VersionData;

    .line 475
    :cond_0
    if-nez p2, :cond_1

    .line 476
    const-string v2, "NubiaUpgradeManager"

    const-string v3, "fail to install!!! because versionData is null. "

    invoke-static {v2, v3}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    :goto_0
    return-void

    .line 479
    :cond_1
    new-instance v1, Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-direct {v1}, Lcn/nubia/upgrade/http/DownloadRequest;-><init>()V

    .line 480
    .local v1, "downloadRequest":Lcn/nubia/upgrade/http/DownloadRequest;
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getApkUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/upgrade/http/DownloadRequest;->setApkUrl(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getFileSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcn/nubia/upgrade/http/DownloadRequest;->setFileSize(J)V

    .line 482
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/upgrade/http/DownloadRequest;->setAppName(Ljava/lang/String;)V

    .line 483
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v2}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getDownloadPath()Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, "downloadApkPath":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 485
    :cond_2
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->defaultDownloadPath:Ljava/lang/String;

    .line 488
    :cond_3
    invoke-virtual {v1, v0}, Lcn/nubia/upgrade/http/DownloadRequest;->setDownLoadPath(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getToVersionCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/upgrade/http/DownloadRequest;->setDstVersion(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getFromVersionCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/upgrade/http/DownloadRequest;->setFromVersion(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumNew()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/upgrade/http/DownloadRequest;->setCheckSumNew(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumPatch()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/upgrade/http/DownloadRequest;->setCheckSumPatch(Ljava/lang/String;)V

    .line 493
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    .line 494
    invoke-virtual {v2}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getDownloadStorageLimit()J

    move-result-wide v2

    .line 493
    invoke-virtual {v1, v2, v3}, Lcn/nubia/upgrade/http/DownloadRequest;->setStorageLimit(J)V

    .line 495
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumPatch()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 496
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumPatch()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 497
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/nubia/upgrade/http/DownloadRequest;->setIsPatch(Z)V

    .line 502
    :goto_1
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;

    const/4 v3, 0x2

    invoke-direct {p0, p1, v1, v2, v3}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->startDownload(Landroid/content/Context;Lcn/nubia/upgrade/http/DownloadRequest;Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;I)V

    goto :goto_0

    .line 499
    :cond_5
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/nubia/upgrade/http/DownloadRequest;->setIsPatch(Z)V

    goto :goto_1
.end method

.method public isApkExist(Lcn/nubia/upgrade/model/VersionData;)Z
    .locals 7
    .param p1, "data"    # Lcn/nubia/upgrade/model/VersionData;

    .prologue
    .line 537
    iget-object v5, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v5}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getDownloadPath()Ljava/lang/String;

    move-result-object v0

    .line 539
    .local v0, "downloadApkPath":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 540
    :cond_0
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->defaultDownloadPath:Ljava/lang/String;

    .line 542
    :cond_1
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 543
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 545
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumNew()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 546
    .local v3, "filePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 548
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    .line 550
    .local v1, "exist":Z
    if-eqz v1, :cond_3

    .line 551
    invoke-static {v3}, Lcn/nubia/upgrade/util/MD5Util;->getFileMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 552
    .local v4, "md5File":Ljava/lang/String;
    if-nez v4, :cond_4

    .line 553
    const/4 v1, 0x0

    .line 559
    .end local v4    # "md5File":Ljava/lang/String;
    :cond_3
    :goto_0
    return v1

    .line 555
    .restart local v4    # "md5File":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumNew()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public pauseDownload()V
    .locals 3

    .prologue
    .line 509
    invoke-direct {p0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->isUpgrading()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 510
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 511
    .local v0, "pauseIntent":Landroid/content/Intent;
    const-string v1, "command_pause"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 512
    const-string v1, "NubiaUpgradeManager"

    const-string v2, "pause downloading."

    invoke-static {v1, v2}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 515
    .end local v0    # "pauseIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public removeDownloadListener(Lcn/nubia/upgrade/http/IDownLoadListener;)V
    .locals 1
    .param p1, "listener"    # Lcn/nubia/upgrade/http/IDownLoadListener;

    .prologue
    .line 459
    if-eqz p1, :cond_0

    .line 460
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownLoadListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 462
    :cond_0
    return-void
.end method

.method public setConfiguration(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;)V
    .locals 2
    .param p1, "configuration"    # Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    .prologue
    .line 78
    if-eqz p1, :cond_0

    .line 79
    iput-object p1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    const-string v0, "NubiaUpgradeManager"

    const-string v1, "configuration is null, cancel setup."

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startDownload(Landroid/content/Context;Lcn/nubia/upgrade/model/VersionData;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcn/nubia/upgrade/model/VersionData;

    .prologue
    const/4 v6, 0x1

    .line 331
    if-nez p2, :cond_0

    .line 332
    const-string v4, "NubiaUpgradeManager"

    const-string v5, "cancel download, because versionData is null."

    invoke-static {v4, v5}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :goto_0
    return-void

    .line 336
    :cond_0
    new-instance v1, Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-direct {v1}, Lcn/nubia/upgrade/http/DownloadRequest;-><init>()V

    .line 337
    .local v1, "downloadRequest":Lcn/nubia/upgrade/http/DownloadRequest;
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getApkUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/nubia/upgrade/http/DownloadRequest;->setApkUrl(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/nubia/upgrade/http/DownloadRequest;->setAppName(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getFileSize()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcn/nubia/upgrade/http/DownloadRequest;->setFileSize(J)V

    .line 340
    iget-object v4, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v4}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getDownloadPath()Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, "downloadApkPath":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 342
    :cond_1
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->defaultDownloadPath:Ljava/lang/String;

    .line 344
    :cond_2
    invoke-virtual {v1, v0}, Lcn/nubia/upgrade/http/DownloadRequest;->setDownLoadPath(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getToVersionCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/nubia/upgrade/http/DownloadRequest;->setDstVersion(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getFromVersionCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/nubia/upgrade/http/DownloadRequest;->setFromVersion(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumNew()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/nubia/upgrade/http/DownloadRequest;->setCheckSumNew(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumPatch()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/nubia/upgrade/http/DownloadRequest;->setCheckSumPatch(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumPatch()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumPatch()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 350
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcn/nubia/upgrade/http/DownloadRequest;->setIsPatch(Z)V

    .line 354
    :goto_1
    iget-object v4, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v4}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getDownloadStorageLimit()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcn/nubia/upgrade/http/DownloadRequest;->setStorageLimit(J)V

    .line 356
    invoke-virtual {p0, p2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->isApkExist(Lcn/nubia/upgrade/model/VersionData;)Z

    move-result v3

    .line 357
    .local v3, "isApkFileExist":Z
    if-eqz v3, :cond_5

    .line 359
    :try_start_0
    iget-object v4, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    invoke-virtual {v1}, Lcn/nubia/upgrade/http/DownloadRequest;->getDownloadPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumNew()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    .line 359
    invoke-virtual {v4, v5, v6}, Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;->onDownloadComplete(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 361
    :catch_0
    move-exception v2

    .line 362
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 352
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "isApkFileExist":Z
    :cond_4
    invoke-virtual {v1, v6}, Lcn/nubia/upgrade/http/DownloadRequest;->setIsPatch(Z)V

    goto :goto_1

    .line 365
    .restart local v3    # "isApkFileExist":Z
    :cond_5
    iget-object v4, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;

    invoke-direct {p0, p1, v1, v4, v6}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->startDownload(Landroid/content/Context;Lcn/nubia/upgrade/http/DownloadRequest;Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;I)V

    goto/16 :goto_0
.end method
