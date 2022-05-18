.class public Lcn/nubia/upgrade/api/NubiaUpgradeManager;
.super Ljava/lang/Object;
.source "NubiaUpgradeManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NubiaUpgradeManager"

.field private static sUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;


# instance fields
.field private defaultDownloadPath:Ljava/lang/String;

.field private mAuthId:Ljava/lang/String;

.field private mAuthKey:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDebug:Z

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

.field private mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "authId"    # Ljava/lang/String;
    .param p3, "authKey"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownLoadListeners:Ljava/util/ArrayList;

    .line 40
    iput-boolean v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDebug:Z

    .line 41
    const-string v1, ""

    iput-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->defaultDownloadPath:Ljava/lang/String;

    .line 58
    new-instance v1, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;

    invoke-direct {v1, p0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;-><init>(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)V

    iput-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;

    .line 144
    iput-object p2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mAuthId:Ljava/lang/String;

    .line 145
    iput-object p3, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mAuthKey:Ljava/lang/String;

    .line 146
    new-instance v1, Lcn/nubia/upgrade/http/HttpRequestManager;

    invoke-direct {v1}, Lcn/nubia/upgrade/http/HttpRequestManager;-><init>()V

    iput-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mRequestManager:Lcn/nubia/upgrade/http/HttpRequestManager;

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mContext:Landroid/content/Context;

    .line 148
    invoke-static {}, Lcn/nubia/upgrade/util/CommonUtils;->getInstance()Lcn/nubia/upgrade/util/CommonUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcn/nubia/upgrade/util/CommonUtils;->getDefaultPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->defaultDownloadPath:Ljava/lang/String;

    .line 149
    new-instance v0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    invoke-direct {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;-><init>()V

    .line 150
    .local v0, "builder":Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    iput-boolean v2, v0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mAllowMobileNetwork:Z

    .line 151
    const-string v1, "Upgrade"

    iput-object v1, v0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mAppName:Ljava/lang/String;

    .line 152
    iput-boolean v2, v0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mShowNotification:Z

    .line 153
    iput-boolean v2, v0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mSlientDownload:Z

    .line 154
    iput-boolean v2, v0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mSlientInstall:Z

    .line 155
    const-wide/16 v2, 0x3e8

    iput-wide v2, v0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mNotificationUpdateOffset:J

    .line 156
    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->getConfiguration(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    .line 159
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/http/DownloadRequest;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownLoadListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/upgrade/api/NubiaUpgradeManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authId"    # Ljava/lang/String;
    .param p2, "authKey"    # Ljava/lang/String;

    .prologue
    .line 163
    const-class v1, Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    monitor-enter v1

    .line 164
    :try_start_0
    sget-object v0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->sUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->sUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    .line 169
    :cond_0
    sget-object v0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->sUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    monitor-exit v1

    return-object v0

    .line 170
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

    .line 446
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    if-nez v2, :cond_1

    .line 453
    :cond_0
    :goto_0
    return v1

    .line 449
    :cond_1
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-virtual {v2}, Lcn/nubia/upgrade/http/DownloadRequest;->getState()Lcn/nubia/upgrade/http/DownloadRequest$State;

    move-result-object v0

    .line 450
    .local v0, "state":Lcn/nubia/upgrade/http/DownloadRequest$State;
    sget-object v2, Lcn/nubia/upgrade/http/DownloadRequest$State;->PREPARE:Lcn/nubia/upgrade/http/DownloadRequest$State;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcn/nubia/upgrade/http/DownloadRequest$State;->RUNNING:Lcn/nubia/upgrade/http/DownloadRequest$State;

    if-ne v0, v2, :cond_0

    .line 451
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private startApkDown(Landroid/content/Context;Lcn/nubia/upgrade/http/DownloadRequest;Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "downloadRequest"    # Lcn/nubia/upgrade/http/DownloadRequest;
    .param p3, "proxy"    # Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;

    .prologue
    .line 292
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcn/nubia/upgrade/http/DownloadRequest;->getUrl()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 295
    :cond_0
    :try_start_0
    const-string v11, "NubiaUpgradeManager"

    const-string v12, "Start ApkDown error Url empty"

    invoke-static {v11, v12}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v11, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;

    const/16 v12, 0x3eb

    invoke-virtual {v11, v12}, Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;->onDownloadError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :goto_0
    return-void

    .line 297
    :catch_0
    move-exception v7

    .line 299
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 303
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcn/nubia/upgrade/http/DownloadRequest;->getDownloadPath()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcn/nubia/upgrade/http/DownloadRequest;->getDownloadPath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 305
    :cond_2
    iget-object v11, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->defaultDownloadPath:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcn/nubia/upgrade/http/DownloadRequest;->setDownLoadPath(Ljava/lang/String;)V

    .line 307
    :cond_3
    iget-object v11, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    if-nez v11, :cond_4

    .line 308
    move-object/from16 v0, p2

    iput-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    .line 309
    iget-object v11, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    sget-object v12, Lcn/nubia/upgrade/http/DownloadRequest$State;->PREPARE:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v12, v11, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 312
    :cond_4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    .line 313
    .local v9, "parcelConfig":Landroid/os/Parcel;
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 314
    iget-object v11, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    const/4 v12, 0x0

    invoke-virtual {v11, v9, v12}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 315
    invoke-virtual {v9}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    .line 316
    .local v3, "byteConfig":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 318
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    .line 319
    .local v10, "parcelRequest":Landroid/os/Parcel;
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Lcn/nubia/upgrade/http/DownloadRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 320
    invoke-virtual {v10}, Landroid/os/Parcel;->marshall()[B

    move-result-object v4

    .line 321
    .local v4, "byteRequest":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 323
    new-instance v6, Landroid/content/Intent;

    const-class v11, Lcn/nubia/upgrade/service/UpgradeService;

    move-object/from16 v0, p1

    invoke-direct {v6, v0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 324
    .local v6, "downIntent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 325
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v11, "ConfigurationData"

    invoke-virtual {v1, v11, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 326
    const-string v11, "downloadRequest"

    invoke-virtual {v1, v11, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 328
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 329
    .local v5, "code":I
    const/16 v11, 0x12

    if-lt v5, v11, :cond_5

    .line 330
    const-string v11, "downLoadBinderProxy"

    move-object/from16 v0, p3

    invoke-virtual {v1, v11, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 358
    :goto_1
    const-string v11, "debug"

    iget-boolean v12, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDebug:Z

    invoke-virtual {v1, v11, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 359
    const-string v11, "authid"

    iget-object v12, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mAuthId:Ljava/lang/String;

    invoke-virtual {v1, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string v11, "authkey"

    iget-object v12, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mAuthKey:Ljava/lang/String;

    invoke-virtual {v1, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-virtual {v6, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 363
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 332
    :cond_5
    const-string v11, "NubiaUpgradeManager"

    const-string v12, "startApkDown sdk<18"

    invoke-static {v11, v12}, Lcn/nubia/upgrade/util/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const/4 v2, 0x0

    .line 335
    .local v2, "bundleReflect":Ljava/lang/Class;
    :try_start_1
    const-string v11, "android.os.Bundle"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 337
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

    .line 339
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

    .line 341
    .end local v8    # "method":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v7

    .line 343
    .local v7, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v7}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 344
    .end local v7    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v7

    .line 346
    .local v7, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v7}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 347
    .end local v7    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v7

    .line 349
    .local v7, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v7}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 350
    .end local v7    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v7

    .line 352
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 353
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v7

    .line 355
    .local v7, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v7}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public addDownLoadListener(Lcn/nubia/upgrade/http/IDownLoadListener;)V
    .locals 2
    .param p1, "downLoadListener"    # Lcn/nubia/upgrade/http/IDownLoadListener;

    .prologue
    .line 374
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownLoadListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 376
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownLoadListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    :cond_0
    return-void
.end method

.method public debug(Z)V
    .locals 0
    .param p1, "debug"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDebug:Z

    .line 54
    invoke-static {p1}, Lcn/nubia/upgrade/constants/HttpConstants;->debug(Z)V

    .line 55
    sput-boolean p1, Lcn/nubia/upgrade/util/Ulog;->debug:Z

    .line 56
    return-void
.end method

.method public getVersion(Landroid/content/Context;Lcn/nubia/upgrade/http/IGetVersionListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcn/nubia/upgrade/http/IGetVersionListener;

    .prologue
    .line 195
    const-string v0, "NubiaUpgradeManager"

    const-string v1, "getVersion() start"

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mRequestManager:Lcn/nubia/upgrade/http/HttpRequestManager;

    iget-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mAuthId:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mAuthKey:Ljava/lang/String;

    new-instance v3, Lcn/nubia/upgrade/api/NubiaUpgradeManager$2;

    invoke-direct {v3, p0, p2, p1}, Lcn/nubia/upgrade/api/NubiaUpgradeManager$2;-><init>(Lcn/nubia/upgrade/api/NubiaUpgradeManager;Lcn/nubia/upgrade/http/IGetVersionListener;Landroid/content/Context;)V

    invoke-virtual {v0, p1, v1, v2, v3}, Lcn/nubia/upgrade/http/HttpRequestManager;->getVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/upgrade/http/IGetVersionListener;)V

    .line 233
    return-void
.end method

.method public install(Landroid/content/Context;Lcn/nubia/upgrade/model/VersionData;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcn/nubia/upgrade/model/VersionData;

    .prologue
    .line 400
    if-nez p2, :cond_0

    .line 401
    const-string v2, "NubiaUpgradeManager"

    const-string v3, "Install VersionData Null !!!"

    invoke-static {v2, v3}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :goto_0
    return-void

    .line 404
    :cond_0
    new-instance v1, Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-direct {v1}, Lcn/nubia/upgrade/http/DownloadRequest;-><init>()V

    .line 405
    .local v1, "downloadRequest":Lcn/nubia/upgrade/http/DownloadRequest;
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getApkUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/upgrade/http/DownloadRequest;->setApkUrl(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getFileSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcn/nubia/upgrade/http/DownloadRequest;->setFileSize(J)V

    .line 407
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v2}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/upgrade/http/DownloadRequest;->setAppName(Ljava/lang/String;)V

    .line 408
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v2}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getDownloadPath()Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, "downloadApkPath":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 410
    :cond_1
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->defaultDownloadPath:Ljava/lang/String;

    .line 413
    :cond_2
    invoke-virtual {v1, v0}, Lcn/nubia/upgrade/http/DownloadRequest;->setDownLoadPath(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getToVersionCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/upgrade/http/DownloadRequest;->setDstVersion(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getFromVersionCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/upgrade/http/DownloadRequest;->setFromVersion(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumNew()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/upgrade/http/DownloadRequest;->setCheckSumNew(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumPatch()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/upgrade/http/DownloadRequest;->setCheckSumPatch(Ljava/lang/String;)V

    .line 418
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v2}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getDownloadStorageLimit()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcn/nubia/upgrade/http/DownloadRequest;->setStorageLimit(J)V

    .line 420
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumPatch()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumPatch()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 422
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/nubia/upgrade/http/DownloadRequest;->setIsPatch(Z)V

    .line 427
    :goto_1
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;

    invoke-direct {p0, p1, v1, v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->startApkDown(Landroid/content/Context;Lcn/nubia/upgrade/http/DownloadRequest;Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;)V

    goto :goto_0

    .line 424
    :cond_4
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/nubia/upgrade/http/DownloadRequest;->setIsPatch(Z)V

    goto :goto_1
.end method

.method public isApkExist(Lcn/nubia/upgrade/model/VersionData;)Z
    .locals 5
    .param p1, "data"    # Lcn/nubia/upgrade/model/VersionData;

    .prologue
    .line 469
    iget-object v3, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v3}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getDownloadPath()Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, "downloadApkPath":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 472
    :cond_0
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->defaultDownloadPath:Ljava/lang/String;

    .line 474
    :cond_1
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 475
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 477
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumNew()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 478
    .local v2, "filePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 479
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    return v3
.end method

.method public pauseDownload()V
    .locals 3

    .prologue
    .line 436
    invoke-direct {p0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->isUpgrading()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 437
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 438
    .local v0, "pauseIntent":Landroid/content/Intent;
    const-string v1, "command_pause"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    const-string v1, "NubiaUpgradeManager"

    const-string v2, "Pause Action Invoked!"

    invoke-static {v1, v2}, Lcn/nubia/upgrade/util/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iget-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 443
    .end local v0    # "pauseIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public removeDownloadListener(Lcn/nubia/upgrade/http/IDownLoadListener;)V
    .locals 1
    .param p1, "downLoadListener"    # Lcn/nubia/upgrade/http/IDownLoadListener;

    .prologue
    .line 382
    if-eqz p1, :cond_0

    .line 383
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownLoadListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 386
    :cond_0
    return-void
.end method

.method public setConfiguration(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;)V
    .locals 0
    .param p1, "configuration"    # Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    .prologue
    .line 46
    if-eqz p1, :cond_0

    .line 47
    iput-object p1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    .line 50
    :cond_0
    return-void
.end method

.method public startApkDown(Landroid/content/Context;Lcn/nubia/upgrade/model/VersionData;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcn/nubia/upgrade/model/VersionData;

    .prologue
    .line 245
    if-nez p2, :cond_0

    .line 246
    const-string v4, "NubiaUpgradeManager"

    const-string v5, "startApkDown VersionData Null !!!"

    invoke-static {v4, v5}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :goto_0
    return-void

    .line 249
    :cond_0
    new-instance v1, Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-direct {v1}, Lcn/nubia/upgrade/http/DownloadRequest;-><init>()V

    .line 251
    .local v1, "downloadRequest":Lcn/nubia/upgrade/http/DownloadRequest;
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getApkUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/nubia/upgrade/http/DownloadRequest;->setApkUrl(Ljava/lang/String;)V

    .line 252
    iget-object v4, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v4}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/nubia/upgrade/http/DownloadRequest;->setAppName(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getFileSize()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcn/nubia/upgrade/http/DownloadRequest;->setFileSize(J)V

    .line 254
    iget-object v4, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v4}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getDownloadPath()Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "downloadApkPath":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 256
    :cond_1
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->defaultDownloadPath:Ljava/lang/String;

    .line 258
    :cond_2
    invoke-virtual {v1, v0}, Lcn/nubia/upgrade/http/DownloadRequest;->setDownLoadPath(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getToVersionCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/nubia/upgrade/http/DownloadRequest;->setDstVersion(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getFromVersionCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/nubia/upgrade/http/DownloadRequest;->setFromVersion(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumNew()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/nubia/upgrade/http/DownloadRequest;->setCheckSumNew(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumPatch()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/nubia/upgrade/http/DownloadRequest;->setCheckSumPatch(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumPatch()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumPatch()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 265
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcn/nubia/upgrade/http/DownloadRequest;->setIsPatch(Z)V

    .line 269
    :goto_1
    iget-object v4, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v4}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getDownloadStorageLimit()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcn/nubia/upgrade/http/DownloadRequest;->setStorageLimit(J)V

    .line 272
    invoke-virtual {p0, p2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->isApkExist(Lcn/nubia/upgrade/model/VersionData;)Z

    move-result v3

    .line 273
    .local v3, "isApkFileExist":Z
    if-eqz v3, :cond_5

    .line 275
    :try_start_0
    iget-object v4, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

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

    invoke-virtual {v4, v5}, Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;->onDownloadComplete(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 277
    :catch_0
    move-exception v2

    .line 279
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 267
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "isApkFileExist":Z
    :cond_4
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcn/nubia/upgrade/http/DownloadRequest;->setIsPatch(Z)V

    goto :goto_1

    .line 283
    .restart local v3    # "isApkFileExist":Z
    :cond_5
    iget-object v4, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;

    invoke-direct {p0, p1, v1, v4}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->startApkDown(Landroid/content/Context;Lcn/nubia/upgrade/http/DownloadRequest;Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;)V

    goto/16 :goto_0
.end method

.method protected startForceUpgrade(Landroid/content/Context;Lcn/nubia/upgrade/http/IDownLoadListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "downLoadListener"    # Lcn/nubia/upgrade/http/IDownLoadListener;

    .prologue
    .line 180
    return-void
.end method
