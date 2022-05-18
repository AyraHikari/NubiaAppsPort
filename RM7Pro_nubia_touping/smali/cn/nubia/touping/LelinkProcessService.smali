.class public Lcn/nubia/touping/LelinkProcessService;
.super Landroid/app/Service;
.source "LelinkProcessService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/touping/LelinkProcessService$SettingValueChangedObserver;,
        Lcn/nubia/touping/LelinkProcessService$ServiceHandler;
    }
.end annotation


# static fields
.field private static final ACTION_USAGE_STATS_UPDATE:Ljava/lang/String; = "cn.nubia.applearning.action.USAGE_STATS_UPDATE"

.field private static ACTIVITY_KEY_NAME:Ljava/lang/String; = null

.field private static final APP_MIRROR_STATUS:Ljava/lang/String; = "app_mirror_status"

.field private static final CLASS_NAME:Ljava/lang/String; = "android.app.NubiaSysState"

.field public static CURRENT_FROM:Ljava/lang/String; = null

.field private static final DEVICE_IDLE_NAME:Ljava/lang/String; = "deviceIdle"

.field public static final FROM_KEY:Ljava/lang/String; = "FROM_KEY"

.field public static final FROM_WIRE:Ljava/lang/String; = "FROM_WIRE"

.field public static final FROM_WIRELESS:Ljava/lang/String; = "FROM_WIRELESS"

.field private static final MSG_COME_IN_SMALL_MIRROR:I = 0x63

.field private static final MSG_DUMP_PROCESS_ADJ_SWAPPNESS:I = 0x1

.field private static final MSG_INIT_DEFAULT_PRESTART_LIST:I = 0x7

.field private static final MSG_REGISTE_APP_STATE:I = 0x3

.field private static final MSG_SET_WIFI:I = 0x5

.field private static final MSG_UPDATE_APP_USAGE_TO_DB:I = 0x6

.field private static final MSG_USAGE_STATS_UPDATE:I = 0x0

.field private static final NUBIA_SMALL_WINDOW_OPEN_NAME:Ljava/lang/String; = "app_mirror_list"

.field private static PACKAGE_KEY_NAME:Ljava/lang/String; = null

.field private static final REGISTER_METHOD_NAME:Ljava/lang/String; = "registerReceiverHandler"

.field private static final SYS_STATE_ACTIVITY_PAUSE:I = 0x7d2

.field private static final SYS_STATE_ACTIVITY_RESUME:I = 0x7d1

.field private static final SYS_STATE_ACTIVITY_STOP:I = 0x7d3

.field private static final SYS_STATE_APP_START:I = 0x834

.field private static final SYS_STATE_APP_STOP:I = 0x835

.field private static final SYS_STATE_DOZE:I = 0x837

.field private static final TAG:Ljava/lang/String; = "LelinkProcessService"

.field private static final UNREGISTER_METHOD_NAME:Ljava/lang/String; = "unregisterReceiver"

.field private static bitRateKeep:I

.field static pause_app:Ljava/lang/String;

.field static pause_package:Ljava/lang/String;


# instance fields
.field private activityResumeTimeSave:J

.field private app_small_mirror_appName:Ljava/lang/String;

.field private app_small_mirror_package:Ljava/lang/String;

.field private last_nubia_small_window_open_name:Ljava/lang/String;

.field private mNubiaSysState:Ljava/lang/Object;

.field private mRegister:Ljava/lang/reflect/Method;

.field private mServiceHandler:Lcn/nubia/touping/LelinkProcessService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private mSettingValueChangedObserver:Lcn/nubia/touping/LelinkProcessService$SettingValueChangedObserver;

.field private mUnregister:Ljava/lang/reflect/Method;

.field private small_mirror_startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-string v0, "FROM_WIRELESS"

    sput-object v0, Lcn/nubia/touping/LelinkProcessService;->CURRENT_FROM:Ljava/lang/String;

    .line 71
    const-string v0, "packageName"

    sput-object v0, Lcn/nubia/touping/LelinkProcessService;->PACKAGE_KEY_NAME:Ljava/lang/String;

    .line 72
    const-string v0, "activityName"

    sput-object v0, Lcn/nubia/touping/LelinkProcessService;->ACTIVITY_KEY_NAME:Ljava/lang/String;

    .line 328
    const-string v0, ""

    sput-object v0, Lcn/nubia/touping/LelinkProcessService;->pause_package:Ljava/lang/String;

    .line 329
    const-string v0, ""

    sput-object v0, Lcn/nubia/touping/LelinkProcessService;->pause_app:Ljava/lang/String;

    .line 393
    const/high16 v0, 0x700000

    sput v0, Lcn/nubia/touping/LelinkProcessService;->bitRateKeep:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 58
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 100
    iput-wide v0, p0, Lcn/nubia/touping/LelinkProcessService;->activityResumeTimeSave:J

    .line 413
    iput-wide v0, p0, Lcn/nubia/touping/LelinkProcessService;->small_mirror_startTime:J

    .line 414
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/touping/LelinkProcessService;->app_small_mirror_package:Ljava/lang/String;

    .line 415
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/touping/LelinkProcessService;->app_small_mirror_appName:Ljava/lang/String;

    .line 497
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/touping/LelinkProcessService;->last_nubia_small_window_open_name:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/touping/LelinkProcessService;)J
    .locals 2
    .param p0, "x0"    # Lcn/nubia/touping/LelinkProcessService;

    .prologue
    .line 58
    invoke-direct {p0}, Lcn/nubia/touping/LelinkProcessService;->dealWithTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcn/nubia/touping/LelinkProcessService;->PACKAGE_KEY_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/nubia/touping/LelinkProcessService;)Lcn/nubia/touping/LelinkProcessService$ServiceHandler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/LelinkProcessService;

    .prologue
    .line 58
    iget-object v0, p0, Lcn/nubia/touping/LelinkProcessService;->mServiceHandler:Lcn/nubia/touping/LelinkProcessService$ServiceHandler;

    return-object v0
.end method

.method static synthetic access$1100(Lcn/nubia/touping/LelinkProcessService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/LelinkProcessService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcn/nubia/touping/LelinkProcessService;->getAppNameSmallMirror(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcn/nubia/touping/LelinkProcessService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/LelinkProcessService;

    .prologue
    .line 58
    iget-object v0, p0, Lcn/nubia/touping/LelinkProcessService;->last_nubia_small_window_open_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcn/nubia/touping/LelinkProcessService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/LelinkProcessService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcn/nubia/touping/LelinkProcessService;->last_nubia_small_window_open_name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcn/nubia/touping/LelinkProcessService;)J
    .locals 2
    .param p0, "x0"    # Lcn/nubia/touping/LelinkProcessService;

    .prologue
    .line 58
    invoke-direct {p0}, Lcn/nubia/touping/LelinkProcessService;->dealWithTime_Small_Mirror()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcn/nubia/touping/LelinkProcessService;->ACTIVITY_KEY_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/touping/LelinkProcessService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/LelinkProcessService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcn/nubia/touping/LelinkProcessService;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$402(Lcn/nubia/touping/LelinkProcessService;J)J
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/LelinkProcessService;
    .param p1, "x1"    # J

    .prologue
    .line 58
    iput-wide p1, p0, Lcn/nubia/touping/LelinkProcessService;->activityResumeTimeSave:J

    return-wide p1
.end method

.method static synthetic access$500(Lcn/nubia/touping/LelinkProcessService;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/LelinkProcessService;

    .prologue
    .line 58
    invoke-direct {p0}, Lcn/nubia/touping/LelinkProcessService;->reflect()V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/touping/LelinkProcessService;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/LelinkProcessService;

    .prologue
    .line 58
    invoke-direct {p0}, Lcn/nubia/touping/LelinkProcessService;->setCurrentSmallMirrorPackage()V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/touping/LelinkProcessService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/LelinkProcessService;

    .prologue
    .line 58
    iget-object v0, p0, Lcn/nubia/touping/LelinkProcessService;->app_small_mirror_package:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcn/nubia/touping/LelinkProcessService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/LelinkProcessService;

    .prologue
    .line 58
    iget-object v0, p0, Lcn/nubia/touping/LelinkProcessService;->app_small_mirror_appName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcn/nubia/touping/LelinkProcessService;J)J
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/LelinkProcessService;
    .param p1, "x1"    # J

    .prologue
    .line 58
    iput-wide p1, p0, Lcn/nubia/touping/LelinkProcessService;->small_mirror_startTime:J

    return-wide p1
.end method

.method private dealWithTime()J
    .locals 8

    .prologue
    .line 288
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 289
    .local v0, "currentTime":J
    iget-wide v6, p0, Lcn/nubia/touping/LelinkProcessService;->activityResumeTimeSave:J

    sub-long v6, v0, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 291
    .local v2, "durationTime":J
    const-wide/16 v6, 0x3e8

    div-long v4, v2, v6

    .line 292
    .local v4, "temp":J
    const-wide/16 v6, 0x1

    cmp-long v6, v4, v6

    if-ltz v6, :cond_0

    .line 293
    move-wide v2, v4

    .line 297
    :goto_0
    return-wide v2

    .line 295
    :cond_0
    const-wide/16 v2, 0x1

    goto :goto_0
.end method

.method private dealWithTime_Small_Mirror()J
    .locals 8

    .prologue
    .line 512
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 513
    .local v0, "currentTime":J
    iget-wide v6, p0, Lcn/nubia/touping/LelinkProcessService;->small_mirror_startTime:J

    sub-long v6, v0, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 515
    .local v2, "durationTime":J
    const-wide/16 v6, 0x3e8

    div-long v4, v2, v6

    .line 516
    .local v4, "temp":J
    const-wide/16 v6, 0x1

    cmp-long v6, v4, v6

    if-ltz v6, :cond_0

    .line 517
    move-wide v2, v4

    .line 521
    :goto_0
    return-wide v2

    .line 519
    :cond_0
    const-wide/16 v2, 0x1

    goto :goto_0
.end method

.method private getAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 302
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/touping/LelinkProcessService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 303
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 304
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 308
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v3

    .line 305
    :catch_0
    move-exception v1

    .line 306
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 308
    const-string v3, ""

    goto :goto_0
.end method

.method private getAppNameSmallMirror(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 312
    const-string v2, ""

    .line 314
    .local v2, "appName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/touping/LelinkProcessService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 315
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 316
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 318
    .local v1, "appLabel":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 319
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 325
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "appLabel":Ljava/lang/CharSequence;
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-object v2

    .line 322
    :catch_0
    move-exception v3

    .line 323
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getCurrentTopPackageInfo()V
    .locals 8

    .prologue
    .line 198
    :try_start_0
    sget-object v5, Lcn/nubia/touping/LelinkProcessService;->pause_package:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 199
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Lcn/nubia/touping/LelinkProcessService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 200
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 201
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 202
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v4, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 203
    .local v4, "resultPackageName":Ljava/lang/String;
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 204
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 205
    .local v2, "index":I
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 207
    .end local v2    # "index":I
    :cond_0
    sput-object v4, Lcn/nubia/touping/LelinkProcessService;->pause_package:Ljava/lang/String;

    .line 208
    sget-object v5, Lcn/nubia/touping/LelinkProcessService;->pause_package:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcn/nubia/touping/LelinkProcessService;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcn/nubia/touping/LelinkProcessService;->pause_app:Ljava/lang/String;

    .line 210
    .end local v4    # "resultPackageName":Ljava/lang/String;
    :cond_1
    const-string v5, "LelinkProcessService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pause_package = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcn/nubia/touping/LelinkProcessService;->pause_package:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v5, "LelinkProcessService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pause_app = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcn/nubia/touping/LelinkProcessService;->pause_app:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_2
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v1

    .line 214
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getRealBitRate()I
    .locals 5

    .prologue
    .line 396
    :try_start_0
    const-class v1, Landroid/media/MediaCodec;

    .line 397
    .local v1, "classInfo":Ljava/lang/Class;
    const-string v4, "nubiaRealBitRate"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 398
    .local v3, "file":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 399
    .local v0, "bitRate":I
    sput v0, Lcn/nubia/touping/LelinkProcessService;->bitRateKeep:I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 406
    .end local v0    # "bitRate":I
    .end local v3    # "file":Ljava/lang/reflect/Field;
    :goto_0
    return v0

    .line 401
    :catch_0
    move-exception v2

    .line 402
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v2}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 406
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    :goto_1
    sget v0, Lcn/nubia/touping/LelinkProcessService;->bitRateKeep:I

    goto :goto_0

    .line 403
    :catch_1
    move-exception v2

    .line 404
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private reflect()V
    .locals 8

    .prologue
    .line 153
    :try_start_0
    const-string v3, "android.app.NubiaSysState"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 154
    .local v0, "cl":Ljava/lang/Class;
    const-string v3, "registerReceiverHandler"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/os/Handler;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/touping/LelinkProcessService;->mRegister:Ljava/lang/reflect/Method;

    .line 155
    const-string v3, "unregisterReceiver"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/touping/LelinkProcessService;->mUnregister:Ljava/lang/reflect/Method;

    .line 156
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 157
    .local v1, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/touping/LelinkProcessService;->mNubiaSysState:Ljava/lang/Object;

    .line 158
    iget-object v3, p0, Lcn/nubia/touping/LelinkProcessService;->mRegister:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcn/nubia/touping/LelinkProcessService;->mNubiaSysState:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcn/nubia/touping/LelinkProcessService;->mServiceHandler:Lcn/nubia/touping/LelinkProcessService$ServiceHandler;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v3, "LelinkProcessService"

    const-string v4, "register success!"

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 171
    .end local v0    # "cl":Ljava/lang/Class;
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v2

    .line 161
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string v3, "LelinkProcessService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "register error!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 162
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    .line 163
    .local v2, "e":Ljava/lang/InstantiationException;
    const-string v3, "LelinkProcessService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "register error!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/InstantiationException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 164
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v2

    .line 165
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "LelinkProcessService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "register error!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 166
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    .line 167
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "LelinkProcessService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "register error!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 168
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v2

    .line 169
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "LelinkProcessService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "register error!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private regiseterSettingValueChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 500
    new-instance v0, Lcn/nubia/touping/LelinkProcessService$SettingValueChangedObserver;

    invoke-direct {v0, p0}, Lcn/nubia/touping/LelinkProcessService$SettingValueChangedObserver;-><init>(Lcn/nubia/touping/LelinkProcessService;)V

    iput-object v0, p0, Lcn/nubia/touping/LelinkProcessService;->mSettingValueChangedObserver:Lcn/nubia/touping/LelinkProcessService$SettingValueChangedObserver;

    .line 501
    invoke-virtual {p0}, Lcn/nubia/touping/LelinkProcessService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "app_mirror_status"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/touping/LelinkProcessService;->mSettingValueChangedObserver:Lcn/nubia/touping/LelinkProcessService$SettingValueChangedObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 502
    invoke-virtual {p0}, Lcn/nubia/touping/LelinkProcessService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "app_mirror_list"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/touping/LelinkProcessService;->mSettingValueChangedObserver:Lcn/nubia/touping/LelinkProcessService$SettingValueChangedObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 503
    return-void
.end method

.method private setCurrentSmallMirrorPackage()V
    .locals 4

    .prologue
    .line 435
    invoke-virtual {p0}, Lcn/nubia/touping/LelinkProcessService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "app_mirror_list"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 436
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 437
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 438
    .local v0, "index":I
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/touping/LelinkProcessService;->app_small_mirror_package:Ljava/lang/String;

    .line 439
    iget-object v2, p0, Lcn/nubia/touping/LelinkProcessService;->app_small_mirror_package:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcn/nubia/touping/LelinkProcessService;->getAppNameSmallMirror(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/touping/LelinkProcessService;->app_small_mirror_appName:Ljava/lang/String;

    .line 441
    .end local v0    # "index":I
    :cond_0
    return-void
.end method

.method private unRegisterSettingValueChanged()V
    .locals 2

    .prologue
    .line 506
    iget-object v0, p0, Lcn/nubia/touping/LelinkProcessService;->mSettingValueChangedObserver:Lcn/nubia/touping/LelinkProcessService$SettingValueChangedObserver;

    if-eqz v0, :cond_0

    .line 507
    invoke-virtual {p0}, Lcn/nubia/touping/LelinkProcessService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/touping/LelinkProcessService;->mSettingValueChangedObserver:Lcn/nubia/touping/LelinkProcessService$SettingValueChangedObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 509
    :cond_0
    return-void
.end method

.method private unreflect()V
    .locals 4

    .prologue
    .line 177
    iget-object v1, p0, Lcn/nubia/touping/LelinkProcessService;->mUnregister:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 179
    :try_start_0
    iget-object v1, p0, Lcn/nubia/touping/LelinkProcessService;->mUnregister:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcn/nubia/touping/LelinkProcessService;->mNubiaSysState:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v1, "LelinkProcessService"

    const-string v2, "unregister success!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "LelinkProcessService"

    const-string v2, "unregister fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 184
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "LelinkProcessService"

    const-string v2, "unregister fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 187
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "LelinkProcessService"

    const-string v2, "unregister fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public isSmall_Mittot_Status()Z
    .locals 5

    .prologue
    .line 422
    :try_start_0
    const-string v2, "1"

    invoke-virtual {p0}, Lcn/nubia/touping/LelinkProcessService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "app_mirror_status"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 428
    :goto_0
    return v1

    .line 424
    :catch_0
    move-exception v0

    .line 425
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 426
    const-string v2, "LelinkProcessService"

    const-string v3, "flag_small_window = exception"

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 109
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 110
    const-string v1, "LelinkProcessService"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LelinkProcessService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 113
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/touping/LelinkProcessService;->mServiceLooper:Landroid/os/Looper;

    .line 114
    new-instance v1, Lcn/nubia/touping/LelinkProcessService$ServiceHandler;

    iget-object v2, p0, Lcn/nubia/touping/LelinkProcessService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcn/nubia/touping/LelinkProcessService$ServiceHandler;-><init>(Lcn/nubia/touping/LelinkProcessService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcn/nubia/touping/LelinkProcessService;->mServiceHandler:Lcn/nubia/touping/LelinkProcessService$ServiceHandler;

    .line 115
    invoke-direct {p0}, Lcn/nubia/touping/LelinkProcessService;->reflect()V

    .line 116
    invoke-direct {p0}, Lcn/nubia/touping/LelinkProcessService;->regiseterSettingValueChanged()V

    .line 117
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/touping/LelinkProcessService;->activityResumeTimeSave:J

    .line 118
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/touping/LelinkProcessService;->small_mirror_startTime:J

    .line 119
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 136
    const-string v0, "LelinkProcessService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcn/nubia/touping/LelinkProcessService;->startThreadRunableWhenStop()V

    .line 140
    invoke-direct {p0}, Lcn/nubia/touping/LelinkProcessService;->unreflect()V

    .line 141
    invoke-direct {p0}, Lcn/nubia/touping/LelinkProcessService;->unRegisterSettingValueChanged()V

    .line 142
    iget-object v0, p0, Lcn/nubia/touping/LelinkProcessService;->mServiceLooper:Landroid/os/Looper;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcn/nubia/touping/LelinkProcessService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/touping/LelinkProcessService;->mServiceLooper:Landroid/os/Looper;

    .line 146
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 123
    if-eqz p1, :cond_0

    const-string v0, "FROM_KEY"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const-string v0, "FROM_WIRELESS"

    const-string v1, "FROM_KEY"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    const-string v0, "FROM_WIRELESS"

    sput-object v0, Lcn/nubia/touping/LelinkProcessService;->CURRENT_FROM:Ljava/lang/String;

    .line 130
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0

    .line 127
    :cond_1
    const-string v0, "FROM_WIRE"

    sput-object v0, Lcn/nubia/touping/LelinkProcessService;->CURRENT_FROM:Ljava/lang/String;

    goto :goto_0
.end method

.method public startThreadRunable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "cast_package"    # Ljava/lang/String;
    .param p2, "cast_app"    # Ljava/lang/String;

    .prologue
    .line 237
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcn/nubia/touping/LelinkProcessService;->startThreadRunable(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 238
    return-void
.end method

.method public startThreadRunable(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "cast_package"    # Ljava/lang/String;
    .param p2, "cast_app"    # Ljava/lang/String;
    .param p3, "small_window"    # Z

    .prologue
    .line 241
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcn/nubia/touping/LelinkProcessService$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/nubia/touping/LelinkProcessService$1;-><init>(Lcn/nubia/touping/LelinkProcessService;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 285
    return-void
.end method

.method public startThreadRunableWhenStop()V
    .locals 6

    .prologue
    .line 220
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/touping/LelinkProcessService;->isSmall_Mittot_Status()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 222
    iget-object v3, p0, Lcn/nubia/touping/LelinkProcessService;->app_small_mirror_package:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/touping/LelinkProcessService;->app_small_mirror_appName:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v5}, Lcn/nubia/touping/LelinkProcessService;->startThreadRunable_Small_Mirror(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 223
    const-string v3, "LelinkProcessService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adddot when stop collectAPP:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/touping/LelinkProcessService;->app_small_mirror_package:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :goto_0
    return-void

    .line 225
    :cond_0
    invoke-direct {p0}, Lcn/nubia/touping/LelinkProcessService;->getCurrentTopPackageInfo()V

    .line 226
    sget-object v1, Lcn/nubia/touping/LelinkProcessService;->pause_package:Ljava/lang/String;

    .line 227
    .local v1, "cast_packageTemp":Ljava/lang/String;
    sget-object v0, Lcn/nubia/touping/LelinkProcessService;->pause_app:Ljava/lang/String;

    .line 228
    .local v0, "cast_appTemp":Ljava/lang/String;
    invoke-virtual {p0, v1, v0}, Lcn/nubia/touping/LelinkProcessService;->startThreadRunable(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v3, "LelinkProcessService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adddot when stop collectAPP:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcn/nubia/touping/LelinkProcessService;->pause_package:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 231
    .end local v0    # "cast_appTemp":Ljava/lang/String;
    .end local v1    # "cast_packageTemp":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 232
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startThreadRunable_Small_Mirror(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "cast_package"    # Ljava/lang/String;
    .param p2, "cast_app"    # Ljava/lang/String;
    .param p3, "small_window"    # Z

    .prologue
    .line 526
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcn/nubia/touping/LelinkProcessService$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/nubia/touping/LelinkProcessService$2;-><init>(Lcn/nubia/touping/LelinkProcessService;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 570
    return-void
.end method
