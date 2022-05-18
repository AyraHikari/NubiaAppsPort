.class public Lcom/zte/statistics/sdk/ZTEStatistics;
.super Ljava/lang/Object;
.source "ZTEStatistics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/statistics/sdk/ZTEStatistics$AfterSdkSucInit;,
        Lcom/zte/statistics/sdk/ZTEStatistics$JniCallbackProxy;
    }
.end annotation


# static fields
.field public static final sync:[Ljava/lang/Byte;


# instance fields
.field public cdOrder:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 53
    new-array v0, v0, [Ljava/lang/Byte;

    sput-object v0, Lcom/zte/statistics/sdk/ZTEStatistics;->sync:[Ljava/lang/Byte;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/zte/statistics/sdk/ZTEStatistics;->cdOrder:Ljava/util/concurrent/CountDownLatch;

    .line 93
    invoke-static {p1}, Lcom/zte/statistics/sdk/db/DatabaseManager;->initializeInstance(Landroid/content/Context;)V

    .line 94
    sput-boolean v1, Lcom/zte/statistics/sdk/GlobalInfo;->initialized_db:Z

    return-void
.end method

.method static synthetic access$000(Lcom/zte/statistics/sdk/ZTEStatistics;Landroid/content/Context;)Lcom/zte/statistics/sdk/ZTEStatistics$AfterSdkSucInit;
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/zte/statistics/sdk/ZTEStatistics;->defaultAfterSdkSucInit(Landroid/content/Context;)Lcom/zte/statistics/sdk/ZTEStatistics$AfterSdkSucInit;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/zte/statistics/sdk/ZTEStatistics;Landroid/content/Context;Lcom/zte/statistics/sdk/ZTEStatistics$AfterSdkSucInit;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/zte/statistics/sdk/ZTEStatistics;->handleSdkConfig(Landroid/content/Context;Lcom/zte/statistics/sdk/ZTEStatistics$AfterSdkSucInit;)V

    return-void
.end method

.method private addDebugInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string p0, ""

    .line 163
    :try_start_0
    new-instance v0, Lcom/zte/statistics/sdk/module/metric/MetricPayload;

    sget-object v1, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->LAUNCH:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    invoke-direct {v0, v1, p1}, Lcom/zte/statistics/sdk/module/metric/MetricPayload;-><init>(Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;Landroid/content/Context;)V

    const-string v1, "true"

    const-string v2, "debug"

    .line 164
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/statistics/sdk/module/metric/MetricPayload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lcom/zte/statistics/sdk/offline/ActionManager;->getEventNum()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "event_num"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/statistics/sdk/module/metric/MetricPayload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    .line 166
    invoke-static {p1}, Lcom/zte/statistics/sdk/util/Util;->isAbroadBranch(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "true"

    goto :goto_0

    :cond_0
    const-string v1, "false"

    :goto_0
    const-string v2, "abroad"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/statistics/sdk/module/metric/MetricPayload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    .line 167
    invoke-static {p1}, Lcom/zte/statistics/sdk/util/Util;->isUserExpSetEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "true"

    goto :goto_1

    :cond_1
    const-string v1, "false"

    :goto_1
    const-string v2, "user_enable"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/statistics/sdk/module/metric/MetricPayload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lcom/zte/statistics/sdk/util/Util;->isPhoneRoot()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "true"

    goto :goto_2

    :cond_2
    const-string v1, "false"

    :goto_2
    const-string v2, "root"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/statistics/sdk/module/metric/MetricPayload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    .line 169
    invoke-static {p1}, Lcom/zte/statistics/sdk/util/Util;->allowStatistic(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "true"

    goto :goto_3

    :cond_3
    const-string p1, "false"

    :goto_3
    const-string v1, "allow_static"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/zte/statistics/sdk/module/metric/MetricPayload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0}, Lcom/zte/statistics/sdk/module/metric/MetricPayload;->getAsJSON()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 172
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-object p0
.end method

.method private defaultAfterSdkSucInit(Landroid/content/Context;)Lcom/zte/statistics/sdk/ZTEStatistics$AfterSdkSucInit;
    .locals 1

    .line 294
    new-instance v0, Lcom/zte/statistics/sdk/ZTEStatistics$2;

    invoke-direct {v0, p0, p1}, Lcom/zte/statistics/sdk/ZTEStatistics$2;-><init>(Lcom/zte/statistics/sdk/ZTEStatistics;Landroid/content/Context;)V

    return-object v0
.end method

.method private genDeviceInfo(Landroid/content/Context;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x4
    .end annotation

    .line 344
    :try_start_0
    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object p0, Lcom/zte/statistics/sdk/GlobalInfo;->model:Ljava/lang/String;

    .line 345
    invoke-static {}, Lcom/zte/statistics/sdk/util/Util;->getMfvVersion()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/zte/statistics/sdk/GlobalInfo;->mfvVersion:Ljava/lang/String;

    .line 346
    invoke-static {}, Lcom/zte/statistics/sdk/util/Util;->getInnerDeviceName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/zte/statistics/sdk/GlobalInfo;->innerModel:Ljava/lang/String;

    .line 347
    invoke-static {}, Lcom/zte/statistics/sdk/util/Util;->getInternalVersion()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/zte/statistics/sdk/GlobalInfo;->innerVersion:Ljava/lang/String;

    .line 348
    sget-object p0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object p0, Lcom/zte/statistics/sdk/GlobalInfo;->os_version:Ljava/lang/String;

    .line 349
    sget-object p0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    sput-object p0, Lcom/zte/statistics/sdk/GlobalInfo;->os_id:Ljava/lang/String;

    .line 350
    sget-object p0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object p0, Lcom/zte/statistics/sdk/GlobalInfo;->manufacturer:Ljava/lang/String;

    .line 351
    sget-object p0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sput-object p0, Lcom/zte/statistics/sdk/GlobalInfo;->brand:Ljava/lang/String;

    .line 352
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/zte/statistics/sdk/GlobalInfo;->language:Ljava/lang/String;

    .line 353
    invoke-static {p1}, Lcom/zte/statistics/sdk/util/Util;->getDisplayResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/zte/statistics/sdk/GlobalInfo;->resolutions:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 355
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/zte/statistics/sdk/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private genMetaData(Landroid/content/Context;)V
    .locals 4

    const/4 p0, 0x0

    .line 376
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 377
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 379
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 380
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "zte_appuid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v0, :cond_0

    .line 382
    :try_start_1
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "zte_appuid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 384
    :catch_0
    :try_start_2
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "zte_appuid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 387
    :goto_0
    :try_start_3
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "marketinfo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 388
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "marketinfo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :cond_1
    move-object v1, p0

    .line 390
    :goto_1
    :try_start_4
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "appDescription"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 391
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "appDescription"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    move-object p0, p1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    move-object v1, p0

    goto :goto_2

    :cond_2
    move-object v0, p0

    move-object v1, v0

    goto :goto_3

    :catch_3
    move-exception p1

    move-object v0, p0

    move-object v1, v0

    .line 395
    :goto_2
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_3
    :goto_3
    if-eqz v1, :cond_4

    const-string p1, ""

    .line 397
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    const-string v1, "preload"

    .line 400
    :cond_5
    sget-object p1, Lcom/zte/statistics/sdk/GlobalInfo;->appid:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_9

    const-string p1, "No ZTEStatistics appid specified. "

    if-eqz v0, :cond_6

    const-string v3, ""

    .line 402
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 403
    :cond_6
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1, v3}, Lcom/zte/statistics/sdk/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 405
    :cond_7
    sget-object p1, Lcom/zte/statistics/sdk/GlobalInfo;->appid:Ljava/lang/String;

    if-eqz p1, :cond_8

    sget-object p1, Lcom/zte/statistics/sdk/GlobalInfo;->appid:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v3, 0x2

    if-ge p1, v3, :cond_9

    .line 406
    :cond_8
    sput-object v0, Lcom/zte/statistics/sdk/GlobalInfo;->appid:Ljava/lang/String;

    .line 409
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "appid="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/zte/statistics/sdk/GlobalInfo;->appid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/zte/statistics/sdk/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    sput-object v1, Lcom/zte/statistics/sdk/GlobalInfo;->market:Ljava/lang/String;

    .line 411
    sput-object p0, Lcom/zte/statistics/sdk/GlobalInfo;->msg:Ljava/lang/String;

    return-void
.end method

.method private genPackageInfo(Landroid/content/Context;)V
    .locals 1

    const/4 p0, 0x0

    .line 317
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 318
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 319
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lcom/zte/statistics/sdk/GlobalInfo;->versionName:Ljava/lang/String;

    .line 320
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/zte/statistics/sdk/GlobalInfo;->versionCode:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 322
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p1, p0}, Lcom/zte/statistics/sdk/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private getUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 360
    invoke-static {p1}, Lcom/zte/statistics/sdk/comm/PrefercenUtil;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 361
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    .line 363
    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x9

    const/16 v2, 0xd

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xe

    const/16 v2, 0x12

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x13

    const/16 v2, 0x17

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x18

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UUID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 366
    invoke-static {p1, p0}, Lcom/zte/statistics/sdk/comm/PrefercenUtil;->setUUID(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private handleSdkConfig(Landroid/content/Context;Lcom/zte/statistics/sdk/ZTEStatistics$AfterSdkSucInit;)V
    .locals 4

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 153
    invoke-static {p1}, Lcom/zte/statistics/sdk/comm/PrefercenUtil;->getLastSDKTime(Landroid/content/Context;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x15180

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 154
    invoke-static {p1}, Lcom/zte/statistics/sdk/util/Util;->isNetworkRoaming(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/zte/statistics/sdk/ZTEStatistics;->initSdkSendConfig(Landroid/content/Context;Lcom/zte/statistics/sdk/ZTEStatistics$AfterSdkSucInit;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 157
    invoke-interface {p2}, Lcom/zte/statistics/sdk/ZTEStatistics$AfterSdkSucInit;->doWork()V

    :cond_1
    :goto_0
    return-void
.end method

.method private initImeiSelf(Landroid/content/Context;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const-string v0, "phone"

    .line 58
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string v1, ""

    .line 61
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-le v2, v3, :cond_0

    .line 62
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v1, v0

    goto :goto_1

    .line 64
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    :goto_1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/zte/statistics/sdk/ZTEStatistics;->cdOrder:Ljava/util/concurrent/CountDownLatch;

    .line 70
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    const-string p0, "initImeiSelf from app or sdk"

    .line 71
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/zte/statistics/sdk/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    invoke-static {p1, v1}, Lcom/zte/statistics/sdk/comm/PrefercenUtil;->setImei(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 75
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.zte.statisticsjni.ZTEStatisticsJni"

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.zte.statisticsjni.JniCallback"

    .line 77
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 78
    new-instance v4, Lcom/zte/statistics/sdk/ZTEStatistics$JniCallbackProxy;

    iget-object v5, p0, Lcom/zte/statistics/sdk/ZTEStatistics;->cdOrder:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v4, p0, p1, v5}, Lcom/zte/statistics/sdk/ZTEStatistics$JniCallbackProxy;-><init>(Lcom/zte/statistics/sdk/ZTEStatistics;Landroid/content/Context;Ljava/util/concurrent/CountDownLatch;)V

    .line 79
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Class;

    aput-object v1, v6, v3

    invoke-static {v5, v6, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "getImeiExternal"

    const/4 v6, 0x2

    .line 81
    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v3

    aput-object v1, v7, v2

    invoke-virtual {v0, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 82
    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v3

    aput-object v4, v5, v2

    invoke-virtual {v1, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object p0, p0, Lcom/zte/statistics/sdk/ZTEStatistics;->cdOrder:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v0, 0x3

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 85
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 88
    :goto_2
    invoke-static {p1}, Lcom/zte/statistics/sdk/comm/PrefercenUtil;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, ""

    .line 89
    invoke-static {p1, p0}, Lcom/zte/statistics/sdk/comm/PrefercenUtil;->setImei(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private initInternal(Landroid/content/Context;)Z
    .locals 8

    .line 123
    invoke-static {p1}, Lcom/zte/statistics/sdk/comm/SendProxy;->getInstance(Landroid/content/Context;)Lcom/zte/statistics/sdk/comm/SendProxy;

    .line 124
    new-instance v7, Ljava/util/GregorianCalendar;

    const/16 v1, 0x7d0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .line 125
    new-instance v0, Ljava/util/SimpleTimeZone;

    const-string v1, "GMT"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 126
    invoke-virtual {v7}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    sput-wide v0, Lcom/zte/statistics/sdk/GlobalInfo;->criterion:J

    .line 127
    invoke-direct {p0, p1}, Lcom/zte/statistics/sdk/ZTEStatistics;->genMetaData(Landroid/content/Context;)V

    .line 128
    sget-object v0, Lcom/zte/statistics/sdk/GlobalInfo;->appid:Ljava/lang/String;

    if-nez v0, :cond_0

    return v2

    .line 131
    :cond_0
    invoke-direct {p0, p1}, Lcom/zte/statistics/sdk/ZTEStatistics;->genDeviceInfo(Landroid/content/Context;)V

    .line 132
    invoke-direct {p0, p1}, Lcom/zte/statistics/sdk/ZTEStatistics;->genPackageInfo(Landroid/content/Context;)V

    .line 134
    invoke-static {}, Lcom/zte/statistics/sdk/ExceptionModule;->getInstance()Lcom/zte/statistics/sdk/ExceptionModule;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/zte/statistics/sdk/ExceptionModule;->setReportUncaughtExceptions(Z)V

    .line 136
    new-instance v0, Lcom/zte/statistics/sdk/db/dao/DeviceDao;

    invoke-direct {v0}, Lcom/zte/statistics/sdk/db/dao/DeviceDao;-><init>()V

    .line 137
    invoke-virtual {v0}, Lcom/zte/statistics/sdk/db/dao/DeviceDao;->update()J

    .line 139
    sget-boolean v0, Lcom/zte/statistics/sdk/GlobalInfo;->pureInit:Z

    if-nez v0, :cond_1

    .line 140
    new-instance v0, Lcom/zte/statistics/sdk/db/dao/DailyDao;

    invoke-direct {v0}, Lcom/zte/statistics/sdk/db/dao/DailyDao;-><init>()V

    .line 141
    invoke-virtual {v0, p1}, Lcom/zte/statistics/sdk/db/dao/DailyDao;->update(Landroid/content/Context;)J

    const/4 v0, 0x0

    .line 142
    invoke-direct {p0, p1, v0}, Lcom/zte/statistics/sdk/ZTEStatistics;->handleSdkConfig(Landroid/content/Context;Lcom/zte/statistics/sdk/ZTEStatistics$AfterSdkSucInit;)V

    :cond_1
    const/4 p0, 0x1

    .line 144
    sput-boolean p0, Lcom/zte/statistics/sdk/GlobalInfo;->initialized:Z

    return p0
.end method

.method private initSdkFlagFromServer(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 177
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "ev"

    .line 178
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    sput-boolean p2, Lcom/zte/statistics/sdk/GlobalInfo$SDKConfig;->eventsSendFlag:Z

    const-string p2, "pv"

    .line 179
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    sput-boolean p2, Lcom/zte/statistics/sdk/GlobalInfo$SDKConfig;->pvSendFlag:Z

    const-string p2, "ex"

    .line 180
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    sput-boolean p2, Lcom/zte/statistics/sdk/GlobalInfo$SDKConfig;->exceptionSendFlag:Z

    const-string p2, "la"

    .line 181
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    sput-boolean p2, Lcom/zte/statistics/sdk/GlobalInfo$SDKConfig;->launchSendFlag:Z

    const-string p2, "ev"

    .line 182
    sget-boolean v0, Lcom/zte/statistics/sdk/GlobalInfo$SDKConfig;->eventsSendFlag:Z

    invoke-static {p1, p2, v0}, Lcom/zte/statistics/sdk/comm/PrefercenUtil;->setSDKConfigBooleanFlag(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string p2, "ex"

    .line 183
    sget-boolean v0, Lcom/zte/statistics/sdk/GlobalInfo$SDKConfig;->exceptionSendFlag:Z

    invoke-static {p1, p2, v0}, Lcom/zte/statistics/sdk/comm/PrefercenUtil;->setSDKConfigBooleanFlag(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string p2, "la"

    .line 184
    sget-boolean v0, Lcom/zte/statistics/sdk/GlobalInfo$SDKConfig;->launchSendFlag:Z

    invoke-static {p1, p2, v0}, Lcom/zte/statistics/sdk/comm/PrefercenUtil;->setSDKConfigBooleanFlag(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string p2, "pv"

    .line 185
    sget-boolean v0, Lcom/zte/statistics/sdk/GlobalInfo$SDKConfig;->pvSendFlag:Z

    invoke-static {p1, p2, v0}, Lcom/zte/statistics/sdk/comm/PrefercenUtil;->setSDKConfigBooleanFlag(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string p2, "ns"

    .line 186
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    const-string p2, "ns"

    .line 187
    invoke-static {p1, p2, p0}, Lcom/zte/statistics/sdk/comm/PrefercenUtil;->setSDKConfigBooleanFlag(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private initSdkSendConfig(Landroid/content/Context;Lcom/zte/statistics/sdk/ZTEStatistics$AfterSdkSucInit;)V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, " initSDKSendConfig starting..."

    .line 191
    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/zte/statistics/sdk/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    invoke-virtual {p0, p1}, Lcom/zte/statistics/sdk/ZTEStatistics;->waitBindService(Landroid/content/Context;)V

    .line 193
    new-instance v1, Lcom/zte/statistics/sdk/db/dao/DailyDao;

    invoke-direct {v1}, Lcom/zte/statistics/sdk/db/dao/DailyDao;-><init>()V

    .line 194
    invoke-virtual {v1, p1}, Lcom/zte/statistics/sdk/db/dao/DailyDao;->getJsonString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initSDKSendConfig json="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/statistics/sdk/Log;->s(Ljava/lang/String;)V

    .line 196
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 197
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "did"

    .line 198
    sget-object v4, Lcom/zte/statistics/sdk/GlobalInfo;->did:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "model"

    .line 199
    sget-object v4, Lcom/zte/statistics/sdk/GlobalInfo;->model:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "sdkVersion"

    const-string v4, "5.0.5"

    .line 200
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "appid"

    .line 201
    sget-object v4, Lcom/zte/statistics/sdk/GlobalInfo;->appid:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "market"

    .line 202
    sget-object v4, Lcom/zte/statistics/sdk/GlobalInfo;->market:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "appVersion"

    .line 203
    sget-object v4, Lcom/zte/statistics/sdk/GlobalInfo;->versionCode:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "appVerName"

    .line 204
    sget-object v4, Lcom/zte/statistics/sdk/GlobalInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "wifi"

    .line 205
    invoke-static {p1}, Lcom/zte/statistics/sdk/util/Util;->getWifiInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 206
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 209
    :cond_0
    new-instance v3, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;

    invoke-direct {v3, p1}, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;-><init>(Landroid/content/Context;)V

    .line 210
    invoke-virtual {v3, p1, v2}, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;->sendRequest(Landroid/content/Context;Ljava/lang/String;)Lcom/zte/statistics/sdk/obj/ResponseObj;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 212
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " initSDKSendConfig responseCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/zte/statistics/sdk/obj/ResponseObj;->getCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/zte/statistics/sdk/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    invoke-virtual {v2}, Lcom/zte/statistics/sdk/obj/ResponseObj;->getCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_5

    .line 214
    invoke-virtual {v2}, Lcom/zte/statistics/sdk/obj/ResponseObj;->getBody()Ljava/lang/String;

    move-result-object v2

    .line 215
    invoke-direct {p0, p1, v2}, Lcom/zte/statistics/sdk/ZTEStatistics;->initSdkFlagFromServer(Landroid/content/Context;Ljava/lang/String;)V

    const-string p0, "ns"

    .line 216
    invoke-static {p1, p0, v0}, Lcom/zte/statistics/sdk/comm/PrefercenUtil;->getSDKConfigBooleanFlag(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSDKSendConfig no_send_flag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zte/statistics/sdk/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    invoke-static {p1}, Lcom/zte/statistics/sdk/comm/PrefercenUtil;->setLastSDKTime(Landroid/content/Context;)V

    .line 220
    invoke-virtual {v1}, Lcom/zte/statistics/sdk/db/dao/DailyDao;->deleteRecord()I

    if-nez p0, :cond_1

    .line 221
    sget-boolean p1, Lcom/zte/statistics/sdk/GlobalInfo$SDKConfig;->eventsSendFlag:Z

    if-nez p1, :cond_2

    .line 222
    :cond_1
    new-instance p1, Lcom/zte/statistics/sdk/db/dao/EventsDao;

    invoke-direct {p1}, Lcom/zte/statistics/sdk/db/dao/EventsDao;-><init>()V

    const/4 v1, 0x0

    .line 223
    invoke-virtual {p1, v1}, Lcom/zte/statistics/sdk/db/dao/EventsDao;->deleteRecord(Ljava/lang/String;)V

    :cond_2
    if-nez p0, :cond_3

    .line 225
    sget-boolean p0, Lcom/zte/statistics/sdk/GlobalInfo$SDKConfig;->launchSendFlag:Z

    if-nez p0, :cond_4

    .line 226
    :cond_3
    new-instance p0, Lcom/zte/statistics/sdk/db/dao/DailyDao;

    invoke-direct {p0}, Lcom/zte/statistics/sdk/db/dao/DailyDao;-><init>()V

    .line 227
    invoke-virtual {p0}, Lcom/zte/statistics/sdk/db/dao/DailyDao;->deleteRecord()I

    :cond_4
    if-eqz p2, :cond_5

    .line 230
    invoke-interface {p2}, Lcom/zte/statistics/sdk/ZTEStatistics$AfterSdkSucInit;->doWork()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "error initSDKSendConfig."

    .line 235
    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p0, p2}, Lcom/zte/statistics/sdk/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    const-string p1, " sdkConfig: ev="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/zte/statistics/sdk/GlobalInfo$SDKConfig;->eventsSendFlag:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " pv="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/zte/statistics/sdk/GlobalInfo$SDKConfig;->pvSendFlag:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " ex="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/zte/statistics/sdk/GlobalInfo$SDKConfig;->exceptionSendFlag:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " la="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/zte/statistics/sdk/GlobalInfo$SDKConfig;->launchSendFlag:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/zte/statistics/sdk/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " sdkConfig: ev="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p2, Lcom/zte/statistics/sdk/GlobalInfo$SDKConfig;->eventsSendFlag:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " pv="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p2, Lcom/zte/statistics/sdk/GlobalInfo$SDKConfig;->pvSendFlag:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " ex="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p2, Lcom/zte/statistics/sdk/GlobalInfo$SDKConfig;->exceptionSendFlag:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " la="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p2, Lcom/zte/statistics/sdk/GlobalInfo$SDKConfig;->launchSendFlag:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/zte/statistics/sdk/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 263
    :try_start_0
    invoke-static {}, Lcom/zte/statistics/sdk/comm/SendProxy;->getInstance()Lcom/zte/statistics/sdk/comm/SendProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/statistics/sdk/comm/SendProxy;->destroy()V

    const-string p0, "SendProxy_destroy"

    const/4 v0, 0x0

    .line 264
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/zte/statistics/sdk/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public enableLog(Z)V
    .locals 0

    .line 327
    sput-boolean p1, Lcom/zte/statistics/sdk/Log;->S_LOGGABLE:Z

    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 101
    invoke-static {p1}, Lcom/zte/statistics/sdk/util/Util;->allowStatistic(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GlobalInfo.init begin = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/zte/statistics/sdk/GlobalInfo;->pureInit:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/zte/statistics/sdk/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    .line 105
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    invoke-static {p1, p2}, Lcom/zte/statistics/sdk/comm/PrefercenUtil;->setImei(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_1
    invoke-direct {p0, p1}, Lcom/zte/statistics/sdk/ZTEStatistics;->initImeiSelf(Landroid/content/Context;)V

    .line 110
    :goto_0
    invoke-static {p1}, Lcom/zte/statistics/sdk/comm/PrefercenUtil;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 111
    sput-object p2, Lcom/zte/statistics/sdk/GlobalInfo;->did:Ljava/lang/String;

    .line 117
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 118
    sput-object p3, Lcom/zte/statistics/sdk/GlobalInfo;->appid:Ljava/lang/String;

    .line 120
    :cond_2
    invoke-direct {p0, p1}, Lcom/zte/statistics/sdk/ZTEStatistics;->initInternal(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public initPure(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    .line 97
    sput-boolean v0, Lcom/zte/statistics/sdk/GlobalInfo;->pureInit:Z

    .line 98
    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/statistics/sdk/ZTEStatistics;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isInitFin()Z
    .locals 1

    .line 148
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " isInitFin GlobalInfo.initialized= "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/zte/statistics/sdk/GlobalInfo;->initialized:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/zte/statistics/sdk/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    sget-boolean p0, Lcom/zte/statistics/sdk/GlobalInfo;->initialized:Z

    return p0
.end method

.method public notifyDaily(Landroid/content/Context;)V
    .locals 2

    .line 243
    invoke-static {p1}, Lcom/zte/statistics/sdk/util/Util;->allowStatistic(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 246
    :cond_0
    invoke-static {p1}, Lcom/zte/statistics/sdk/comm/SendProxy;->getInstance(Landroid/content/Context;)Lcom/zte/statistics/sdk/comm/SendProxy;

    .line 248
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zte/statistics/sdk/ZTEStatistics$1;

    invoke-direct {v1, p0, p1}, Lcom/zte/statistics/sdk/ZTEStatistics$1;-><init>(Lcom/zte/statistics/sdk/ZTEStatistics;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 257
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public prepareEvent(Landroid/content/Context;)Lcom/zte/statistics/sdk/obj/ChainedEventObj;
    .locals 0

    .line 289
    invoke-static {p1}, Lcom/zte/statistics/sdk/comm/SendProxy;->getInstance(Landroid/content/Context;)Lcom/zte/statistics/sdk/comm/SendProxy;

    .line 290
    new-instance p0, Lcom/zte/statistics/sdk/obj/ChainedEventObj;

    invoke-direct {p0, p1}, Lcom/zte/statistics/sdk/obj/ChainedEventObj;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public setAppUserExpFlag(Landroid/content/Context;Z)V
    .locals 0

    const/4 p0, 0x0

    .line 337
    invoke-static {p1, p0}, Lcom/zte/statistics/sdk/comm/PrefercenUtil;->setFollowSysUserExp(Landroid/content/Context;Z)V

    .line 338
    invoke-static {p1, p2}, Lcom/zte/statistics/sdk/comm/PrefercenUtil;->setFollowAppUserExp(Landroid/content/Context;Z)V

    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    .line 331
    sput-boolean p1, Lcom/zte/statistics/sdk/GlobalInfo;->open_debug:Z

    return-void
.end method

.method public waitBindService(Landroid/content/Context;)V
    .locals 2

    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x3

    if-ge p0, v0, :cond_1

    .line 304
    invoke-static {p1}, Lcom/zte/statistics/sdk/comm/SendProxy;->getInstance(Landroid/content/Context;)Lcom/zte/statistics/sdk/comm/SendProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/statistics/sdk/comm/SendProxy;->getMyBinder()Lcom/zte/zms/INetProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const-wide/16 v0, 0x1f4

    .line 308
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 310
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    return-void
.end method
