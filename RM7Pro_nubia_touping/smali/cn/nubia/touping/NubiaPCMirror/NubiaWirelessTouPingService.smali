.class public Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;
.super Landroid/app/Service;
.source "NubiaWirelessTouPingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$SettingValueChangedObserver;,
        Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$ServiceHandler;,
        Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$MyBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_START:Ljava/lang/String; = "action.start.NubiaWirelessTouPingService"

.field private static final ACTION_STOP:Ljava/lang/String; = "action.stop.NubiaWirelessTouPingService"

.field public static final ACTION_STOP_TOUPING:Ljava/lang/String; = "action.stop.NubiaWirelessTouPingForIntentBroadcastReceiver"

.field private static final ACTION_USAGE_STATS_UPDATE:Ljava/lang/String; = "cn.nubia.applearning.action.USAGE_STATS_UPDATE"

.field private static ACTIVITY_KEY_NAME:Ljava/lang/String; = null

.field private static final APP_MIRROR_STATUS:Ljava/lang/String; = "app_mirror_status"

.field private static final CHANNEL_ID:Ljava/lang/String; = "nubia_channel_id"

.field private static final CLASS_NAME:Ljava/lang/String; = "android.app.NubiaSysState"

.field private static final DEVICE_IDLE_NAME:Ljava/lang/String; = "deviceIdle"

.field public static IS_TOP_GAME_QUICK_MODE:Z = false

.field private static final MSG_COME_IN_SMALL_MIRROR:I = 0x63

.field private static final MSG_DUMP_PROCESS_ADJ_SWAPPNESS:I = 0x1

.field private static final MSG_INIT_DEFAULT_PRESTART_LIST:I = 0x7

.field private static final MSG_REGISTE_APP_STATE:I = 0x3

.field private static final MSG_SET_WIFI:I = 0x5

.field private static final MSG_UPDATE_APP_USAGE_TO_DB:I = 0x6

.field private static final MSG_USAGE_STATS_UPDATE:I = 0x0

.field private static final NOTIFICATION_ID:I = 0x1

.field private static final NUBIA_SMALL_WINDOW_OPEN_NAME:Ljava/lang/String; = "app_mirror_list"

.field private static PACKAGE_KEY_NAME:Ljava/lang/String; = null

.field private static final REGISTER_METHOD_NAME:Ljava/lang/String; = "registerReceiverHandler"

.field private static final SYS_STATE_ACTIVITY_PAUSE:I = 0x7d2

.field private static final SYS_STATE_ACTIVITY_RESUME:I = 0x7d1

.field private static final SYS_STATE_ACTIVITY_STOP:I = 0x7d3

.field private static final SYS_STATE_APP_START:I = 0x834

.field private static final SYS_STATE_APP_STOP:I = 0x835

.field private static final SYS_STATE_DOZE:I = 0x837

.field private static final TAG:Ljava/lang/String; = "NubiaWirelessTouPingService"

.field public static TOP_GAME_LOW_DELAY_LIST:Ljava/util/ArrayList; = null

.field private static final UNREGISTER_METHOD_NAME:Ljava/lang/String; = "unregisterReceiver"

.field public static app_small_mirror_appName:Ljava/lang/String; = null

.field public static app_small_mirror_package:Ljava/lang/String; = null

.field private static bitRateKeep:I = 0x0

.field public static flagForWiredTouPing:Z = false

.field private static lastTimeSave:J = 0x0L

.field public static mNubiaWirelessTouPingService:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService; = null

.field private static mediaProjection:Landroid/media/projection/MediaProjection; = null

.field static pause_app:Ljava/lang/String; = null

.field static pause_package:Ljava/lang/String; = null

.field private static final pip_pkg:Ljava/lang/String; = "pip_pkg"


# instance fields
.field private activityResumeTimeSave:J

.field private allGameSpacePackageName:Ljava/lang/String;

.field private app_small_mirror_activityName:Ljava/lang/String;

.field private last_nubia_small_window_open_name:Ljava/lang/String;

.field private lastactivityName:Ljava/lang/String;

.field private lastpackageName:Ljava/lang/String;

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field mMyBroadcastReceiver:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$MyBroadcastReceiver;

.field private mNubiaSysState:Ljava/lang/Object;

.field private mRegister:Ljava/lang/reflect/Method;

.field private mServiceHandler:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private mSettingValueChangedObserver:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$SettingValueChangedObserver;

.field private mUnregister:Ljava/lang/reflect/Method;

.field public myHandle:Landroid/os/Handler;

.field private pipPackageString:Ljava/lang/String;

.field private small_mirror_startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    sput-boolean v2, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->TOP_GAME_LOW_DELAY_LIST:Ljava/util/ArrayList;

    .line 96
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->TOP_GAME_LOW_DELAY_LIST:Ljava/util/ArrayList;

    const-string v1, "com.tencent.tmgp.pubgmhd"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->TOP_GAME_LOW_DELAY_LIST:Ljava/util/ArrayList;

    const-string v1, "com.tencent.tmgp.sgame"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->TOP_GAME_LOW_DELAY_LIST:Ljava/util/ArrayList;

    const-string v1, "com.tencent.tmgp.speedmobile"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->TOP_GAME_LOW_DELAY_LIST:Ljava/util/ArrayList;

    const-string v1, "com.tencent.tmgp.WePop"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->TOP_GAME_LOW_DELAY_LIST:Ljava/util/ArrayList;

    const-string v1, "com.tencent.tmgp.cod"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->TOP_GAME_LOW_DELAY_LIST:Ljava/util/ArrayList;

    const-string v1, "com.tencent.ig"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->TOP_GAME_LOW_DELAY_LIST:Ljava/util/ArrayList;

    const-string v1, "com.tencent.tmgp.cf"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->TOP_GAME_LOW_DELAY_LIST:Ljava/util/ArrayList;

    const-string v1, "com.riotgames.league.wildrift"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->TOP_GAME_LOW_DELAY_LIST:Ljava/util/ArrayList;

    const-string v1, "com.tencent.lolm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->TOP_GAME_LOW_DELAY_LIST:Ljava/util/ArrayList;

    const-string v1, "com.riotgames.league.wildriftvn"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->TOP_GAME_LOW_DELAY_LIST:Ljava/util/ArrayList;

    const-string v1, "com.riotgames.league.wildrifttw"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->TOP_GAME_LOW_DELAY_LIST:Ljava/util/ArrayList;

    const-string v1, "com.rekoo.pubgm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    sput-boolean v2, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->IS_TOP_GAME_QUICK_MODE:Z

    .line 365
    const-string v0, "packageName"

    sput-object v0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->PACKAGE_KEY_NAME:Ljava/lang/String;

    .line 366
    const-string v0, "activityName"

    sput-object v0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->ACTIVITY_KEY_NAME:Ljava/lang/String;

    .line 439
    const-string v0, ""

    sput-object v0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->pause_package:Ljava/lang/String;

    .line 440
    const-string v0, ""

    sput-object v0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->pause_app:Ljava/lang/String;

    .line 468
    const/high16 v0, 0x700000

    sput v0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->bitRateKeep:I

    .line 721
    const-wide/16 v0, 0x0

    sput-wide v0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->lastTimeSave:J

    .line 874
    const-string v0, ""

    sput-object v0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->app_small_mirror_package:Ljava/lang/String;

    .line 876
    const-string v0, ""

    sput-object v0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->app_small_mirror_appName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 80
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 112
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$1;

    invoke-direct {v0, p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$1;-><init>(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;)V

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->myHandle:Landroid/os/Handler;

    .line 233
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$MyBroadcastReceiver;

    invoke-direct {v0, p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$MyBroadcastReceiver;-><init>(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;)V

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->mMyBroadcastReceiver:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$MyBroadcastReceiver;

    .line 442
    iput-wide v2, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->activityResumeTimeSave:J

    .line 543
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->pipPackageString:Ljava/lang/String;

    .line 714
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->allGameSpacePackageName:Ljava/lang/String;

    .line 715
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->lastpackageName:Ljava/lang/String;

    .line 716
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->lastactivityName:Ljava/lang/String;

    .line 873
    iput-wide v2, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->small_mirror_startTime:J

    .line 875
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->app_small_mirror_activityName:Ljava/lang/String;

    .line 946
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->last_nubia_small_window_open_name:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;)J
    .locals 2
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    .prologue
    .line 80
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->dealWithTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    .prologue
    .line 80
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->getPipPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    .prologue
    .line 80
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->allGameSpacePackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100()J
    .locals 2

    .prologue
    .line 80
    sget-wide v0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->lastTimeSave:J

    return-wide v0
.end method

.method static synthetic access$1102(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 80
    sput-wide p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->lastTimeSave:J

    return-wide p0
.end method

.method static synthetic access$1200(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    .prologue
    .line 80
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->getGameSpacePackageName()V

    return-void
.end method

.method static synthetic access$1302(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->lastpackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1402(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->lastactivityName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    .prologue
    .line 80
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->isLockScreenOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1602(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;J)J
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;
    .param p1, "x1"    # J

    .prologue
    .line 80
    iput-wide p1, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->small_mirror_startTime:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;)Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$ServiceHandler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    .prologue
    .line 80
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->mServiceHandler:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$ServiceHandler;

    return-object v0
.end method

.method static synthetic access$1800(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->getAppNameSmallMirror(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    .prologue
    .line 80
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->last_nubia_small_window_open_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1902(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->last_nubia_small_window_open_name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->PACKAGE_KEY_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->ACTIVITY_KEY_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->isPipPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->isBackExpandigVision(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    .prologue
    .line 80
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->setCurrentSmallMirrorPackage()V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$802(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;J)J
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;
    .param p1, "x1"    # J

    .prologue
    .line 80
    iput-wide p1, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->activityResumeTimeSave:J

    return-wide p1
.end method

.method static synthetic access$900(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    .prologue
    .line 80
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->reflect()V

    return-void
.end method

.method private createClickPendingIntent()Landroid/app/PendingIntent;
    .locals 5

    .prologue
    .line 278
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 279
    .local v0, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "cn.nubia.touping.HomeActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 280
    const/high16 v2, 0x18200000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 281
    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 282
    .local v1, "stopPendingIntent":Landroid/app/PendingIntent;
    return-object v1
.end method

.method private createNotification()Landroid/app/Notification;
    .locals 2

    .prologue
    .line 251
    new-instance v0, Landroid/app/Notification$Builder;

    const-string v1, "nubia_channel_id"

    invoke-direct {v0, p0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 252
    .local v0, "notificationBuilder":Landroid/app/Notification$Builder;
    const v1, 0x7f080016

    invoke-virtual {p0, v1}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 253
    const v1, 0x7f0800a5

    invoke-virtual {p0, v1}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 254
    const v1, 0x7f02006c

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 255
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->createStopAction()Landroid/app/Notification$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 256
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->createClickPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 257
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    return-object v1
.end method

.method private createStopAction()Landroid/app/Notification$Action;
    .locals 7

    .prologue
    .line 261
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->createStopIntent()Landroid/content/Intent;

    move-result-object v2

    .line 262
    .local v2, "stopIntent":Landroid/content/Intent;
    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {p0, v5, v2, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 263
    .local v3, "stopPendingIntent":Landroid/app/PendingIntent;
    const v5, 0x7f02006d

    invoke-static {p0, v5}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    .line 264
    .local v1, "stopIcon":Landroid/graphics/drawable/Icon;
    const v5, 0x7f08009e

    invoke-virtual {p0, v5}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 265
    .local v4, "stopString":Ljava/lang/String;
    new-instance v0, Landroid/app/Notification$Action$Builder;

    invoke-direct {v0, v1, v4, v3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 266
    .local v0, "actionBuilder":Landroid/app/Notification$Action$Builder;
    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v5

    return-object v5
.end method

.method private createStopIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 272
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 273
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "action.stop.NubiaWirelessTouPingService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    return-object v0
.end method

.method private dealWithTime()J
    .locals 8

    .prologue
    .line 444
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 445
    .local v0, "currentTime":J
    iget-wide v6, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->activityResumeTimeSave:J

    sub-long v6, v0, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 447
    .local v2, "durationTime":J
    const-wide/16 v6, 0x3e8

    div-long v4, v2, v6

    .line 448
    .local v4, "temp":J
    const-wide/16 v6, 0x1

    cmp-long v6, v4, v6

    if-ltz v6, :cond_0

    .line 449
    move-wide v2, v4

    .line 453
    :goto_0
    return-wide v2

    .line 451
    :cond_0
    const-wide/16 v2, 0x1

    goto :goto_0
.end method

.method private getAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 684
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 685
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 686
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 690
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v3

    .line 687
    :catch_0
    move-exception v1

    .line 688
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 690
    const-string v3, ""

    goto :goto_0
.end method

.method private getAppNameSmallMirror(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 694
    const-string v2, ""

    .line 696
    .local v2, "appName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 697
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 698
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 699
    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 700
    .local v1, "appLabel":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 701
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 707
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "appLabel":Ljava/lang/CharSequence;
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-object v2

    .line 704
    :catch_0
    move-exception v3

    .line 705
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getCurrentTopPackageInfo()V
    .locals 8

    .prologue
    .line 852
    :try_start_0
    sget-object v5, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->pause_package:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 853
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 854
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 855
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 856
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v4, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 857
    .local v4, "resultPackageName":Ljava/lang/String;
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 858
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 859
    .local v2, "index":I
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 861
    .end local v2    # "index":I
    :cond_0
    sput-object v4, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->pause_package:Ljava/lang/String;

    .line 862
    sget-object v5, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->pause_package:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->pause_app:Ljava/lang/String;

    .line 864
    .end local v4    # "resultPackageName":Ljava/lang/String;
    :cond_1
    const-string v5, "NubiaWirelessTouPingService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pause_package = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->pause_package:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    const-string v5, "NubiaWirelessTouPingService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pause_app = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->pause_app:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 870
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_2
    :goto_0
    return-void

    .line 867
    :catch_0
    move-exception v1

    .line 868
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getGameSpacePackageName()V
    .locals 12

    .prologue
    .line 803
    :try_start_0
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 804
    .local v11, "stringBuffer":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 805
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .line 806
    .local v9, "cursor":Landroid/database/Cursor;
    const-string v2, "content://cn.nubia.gamelauncher.db.AppAddProvider/appadd?notify=false"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 807
    .local v1, "urlPath":Landroid/net/Uri;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 808
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 809
    const-string v2, "component"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 810
    .local v7, "componentIndex":I
    :cond_0
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 811
    invoke-interface {v9, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 812
    .local v8, "componet":Ljava/lang/String;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 813
    const-string v2, ","

    invoke-virtual {v8, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 814
    .local v6, "componentArrary":[Ljava/lang/String;
    if-eqz v6, :cond_0

    array-length v2, v6

    if-lez v2, :cond_0

    .line 815
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-object v3, v6, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 826
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "urlPath":Landroid/net/Uri;
    .end local v6    # "componentArrary":[Ljava/lang/String;
    .end local v7    # "componentIndex":I
    .end local v8    # "componet":Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v11    # "stringBuffer":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v10

    .line 827
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 828
    const-string v2, ""

    iput-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->allGameSpacePackageName:Ljava/lang/String;

    .line 830
    .end local v10    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 820
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v1    # "urlPath":Landroid/net/Uri;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "stringBuffer":Ljava/lang/StringBuffer;
    :cond_1
    if-eqz v9, :cond_2

    .line 821
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 822
    const/4 v9, 0x0

    .line 824
    :cond_2
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->allGameSpacePackageName:Ljava/lang/String;

    .line 825
    const-string v2, "NubiaWirelessTouPingService9090"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allGameSpacePackageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->allGameSpacePackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static getMediaProjection()Landroid/media/projection/MediaProjection;
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->mediaProjection:Landroid/media/projection/MediaProjection;

    return-object v0
.end method

.method private getNotificationManager()Landroid/app/NotificationManager;
    .locals 1

    .prologue
    .line 248
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method private getPipPackageName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 591
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pip_pkg"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->pipPackageString:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    :goto_0
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->pipPackageString:Ljava/lang/String;

    return-object v1

    .line 592
    :catch_0
    move-exception v0

    .line 593
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getRealBitRate()I
    .locals 5

    .prologue
    .line 471
    :try_start_0
    const-class v1, Landroid/media/MediaCodec;

    .line 472
    .local v1, "classInfo":Ljava/lang/Class;
    const-string v4, "nubiaRealBitRate"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 473
    .local v3, "file":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 474
    .local v0, "bitRate":I
    sput v0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->bitRateKeep:I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 481
    .end local v0    # "bitRate":I
    .end local v3    # "file":Ljava/lang/reflect/Field;
    :goto_0
    return v0

    .line 476
    :catch_0
    move-exception v2

    .line 477
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v2}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 481
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    :goto_1
    sget v0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->bitRateKeep:I

    goto :goto_0

    .line 478
    :catch_1
    move-exception v2

    .line 479
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getRemoteSupportGameList()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 174
    :try_start_0
    sget-object v4, Lcn/nubia/touping/TouPingApplication;->sContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://cn.nubia.gamehelper.db.recordmotion"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "tp_list"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 175
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "apps"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 176
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 177
    sget-object v4, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->TOP_GAME_LOW_DELAY_LIST:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 178
    sget-object v4, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->TOP_GAME_LOW_DELAY_LIST:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 180
    :cond_0
    const-string v4, "NubiaTouping"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "after getRemoteList list = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " TOP_LIST = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->TOP_GAME_LOW_DELAY_LIST:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-object v2

    .line 182
    :catch_0
    move-exception v1

    .line 183
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "Touping"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " getRemoteSupportGameList e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 185
    goto :goto_0
.end method

.method public static getmNubiaWirelessTouPingService()Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->mNubiaWirelessTouPingService:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    return-object v0
.end method

.method private isBackExpandigVision(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;

    .prologue
    .line 558
    :try_start_0
    const-string v1, "android"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "cn.nubia.server.display.AppSizeActivity"

    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 559
    const-string v1, "NubiaWirelessTouPingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0088 android:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    const/4 v1, 0x1

    .line 565
    :goto_0
    return v1

    .line 562
    :catch_0
    move-exception v0

    .line 563
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 565
    .end local v0    # "exception":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isLockScreenOn()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 789
    :try_start_0
    const-string v3, "keyguard"

    invoke-virtual {p0, v3}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 790
    .local v1, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 791
    const/4 v2, 0x1

    .line 798
    .end local v1    # "keyguardManager":Landroid/app/KeyguardManager;
    :cond_0
    :goto_0
    return v2

    .line 795
    :catch_0
    move-exception v0

    .line 796
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isPipPackage(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 546
    :try_start_0
    const-string v1, "NubiaWirelessTouPingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0088 pipPackageString:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->pipPackageString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->pipPackageString:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->pipPackageString:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 548
    const/4 v1, 0x1

    .line 553
    :goto_0
    return v1

    .line 550
    :catch_0
    move-exception v0

    .line 551
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 553
    .end local v0    # "exception":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private reflect()V
    .locals 8

    .prologue
    .line 392
    :try_start_0
    const-string v3, "android.app.NubiaSysState"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 393
    .local v0, "cl":Ljava/lang/Class;
    const-string v3, "registerReceiverHandler"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/os/Handler;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->mRegister:Ljava/lang/reflect/Method;

    .line 394
    const-string v3, "unregisterReceiver"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->mUnregister:Ljava/lang/reflect/Method;

    .line 395
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 396
    .local v1, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->mNubiaSysState:Ljava/lang/Object;

    .line 397
    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->mRegister:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->mNubiaSysState:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->mServiceHandler:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$ServiceHandler;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    const-string v3, "NubiaWirelessTouPingService"

    const-string v4, "register success!"

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 410
    .end local v0    # "cl":Ljava/lang/Class;
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;
    :goto_0
    return-void

    .line 399
    :catch_0
    move-exception v2

    .line 400
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string v3, "NubiaWirelessTouPingService"

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

    .line 401
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    .line 402
    .local v2, "e":Ljava/lang/InstantiationException;
    const-string v3, "NubiaWirelessTouPingService"

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

    .line 403
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v2

    .line 404
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "NubiaWirelessTouPingService"

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

    .line 405
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    .line 406
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "NubiaWirelessTouPingService"

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

    .line 407
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v2

    .line 408
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "NubiaWirelessTouPingService"

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

    .line 949
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$SettingValueChangedObserver;

    invoke-direct {v0, p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$SettingValueChangedObserver;-><init>(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;)V

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->mSettingValueChangedObserver:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$SettingValueChangedObserver;

    .line 950
    invoke-virtual {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "app_mirror_status"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->mSettingValueChangedObserver:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$SettingValueChangedObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 951
    invoke-virtual {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "app_mirror_list"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->mSettingValueChangedObserver:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$SettingValueChangedObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 952
    invoke-virtual {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pip_pkg"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->mSettingValueChangedObserver:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$SettingValueChangedObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 953
    return-void
.end method

.method private regiterReceiver()V
    .locals 2

    .prologue
    .line 220
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 221
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    const-string v1, "nubia_Mirror_hasFocusView"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->mMyBroadcastReceiver:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$MyBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 226
    return-void
.end method

.method private sendBroadcastForRefresh(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 332
    if-nez p1, :cond_0

    .line 337
    :goto_0
    return-void

    .line 333
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 334
    .local v0, "intentBroadcastReceiver":Landroid/content/Intent;
    const-string v1, "action.stop.NubiaWirelessTouPingForIntentBroadcastReceiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private setCurrentSmallMirrorPackage()V
    .locals 4

    .prologue
    .line 880
    invoke-virtual {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "app_mirror_list"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 881
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 882
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 883
    .local v0, "index":I
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->app_small_mirror_package:Ljava/lang/String;

    .line 884
    sget-object v2, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->app_small_mirror_package:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->getAppNameSmallMirror(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->app_small_mirror_appName:Ljava/lang/String;

    .line 886
    .end local v0    # "index":I
    :cond_0
    return-void
.end method

.method public static setMediaProjection(Landroid/media/projection/MediaProjection;)V
    .locals 1
    .param p0, "mediaProjectionTemp"    # Landroid/media/projection/MediaProjection;

    .prologue
    .line 161
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->mediaProjection:Landroid/media/projection/MediaProjection;

    if-eqz v0, :cond_0

    .line 162
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->mediaProjection:Landroid/media/projection/MediaProjection;

    .line 164
    :cond_0
    sput-object p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->mediaProjection:Landroid/media/projection/MediaProjection;

    .line 165
    return-void
.end method

.method public static startMediaCodec(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flagForWiredTouPingTemp"    # Z

    .prologue
    .line 312
    sput-boolean p1, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    .line 313
    if-nez p0, :cond_0

    .line 317
    :goto_0
    return-void

    .line 314
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 315
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "action.start.NubiaWirelessTouPingService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private startMonitor()V
    .locals 3

    .prologue
    .line 964
    const-string v1, "display"

    invoke-virtual {p0, v1}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 965
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    if-nez v1, :cond_0

    .line 966
    new-instance v1, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$6;

    invoke-direct {v1, p0, v0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$6;-><init>(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;Landroid/hardware/display/DisplayManager;)V

    iput-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 996
    :cond_0
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 997
    invoke-static {}, Lcn/nubia/touping/Utils/PhoneInfo;->getPhoneScreenRefreshRate()I

    move-result v1

    invoke-static {v1}, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString;->sendCurrentPhoneRateNum(I)V

    .line 998
    return-void
.end method

.method public static stopMediaCodec(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 321
    if-nez p0, :cond_0

    .line 329
    :goto_0
    return-void

    .line 322
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 323
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "action.stop.NubiaWirelessTouPingService"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    invoke-virtual {p0, v1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 325
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 327
    const-string v2, "NubiaWirelessTouPingService"

    const-string v3, "stopMediaCodec exception"

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopMonitor()V
    .locals 3

    .prologue
    .line 1002
    :try_start_0
    const-string v2, "display"

    invoke-virtual {p0, v2}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 1003
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    if-eqz v2, :cond_0

    .line 1004
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 1005
    const/4 v2, 0x0

    iput-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1010
    .end local v0    # "displayManager":Landroid/hardware/display/DisplayManager;
    :cond_0
    :goto_0
    return-void

    .line 1007
    :catch_0
    move-exception v1

    .line 1008
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private unRegisterSettingValueChanged()V
    .locals 2

    .prologue
    .line 956
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->mSettingValueChangedObserver:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$SettingValueChangedObserver;

    if-eqz v0, :cond_0

    .line 957
    invoke-virtual {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->mSettingValueChangedObserver:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$SettingValueChangedObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 959
    :cond_0
    return-void
.end method

.method private unreflect()V
    .locals 4

    .prologue
    .line 416
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->mUnregister:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 418
    :try_start_0
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->mUnregister:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->mNubiaSysState:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    const-string v1, "NubiaWirelessTouPingService"

    const-string v2, "unregister success!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 420
    :catch_0
    move-exception v0

    .line 421
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "NubiaWirelessTouPingService"

    const-string v2, "unregister fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 423
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 424
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "NubiaWirelessTouPingService"

    const-string v2, "unregister fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 426
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 427
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "NubiaWirelessTouPingService"

    const-string v2, "unregister fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method private unregiterReceiver()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->mMyBroadcastReceiver:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$MyBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->mMyBroadcastReceiver:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$MyBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 231
    :cond_0
    return-void
.end method


# virtual methods
.method public isSmall_Mittot_Status()Z
    .locals 5

    .prologue
    .line 459
    :try_start_0
    const-string v2, "1"

    invoke-virtual {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "app_mirror_status"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 465
    :goto_0
    return v1

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 463
    const-string v2, "NubiaWirelessTouPingService"

    const-string v3, "flag_small_window = exception"

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 190
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 195
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 196
    sput-object p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->mNubiaWirelessTouPingService:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    .line 197
    sput-boolean v6, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->IS_TOP_GAME_QUICK_MODE:Z

    .line 198
    const-string v3, "Touping"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NubiaWirelessTouPingService  onCreate IS_TOP_GAME_QUICK_MODE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->IS_TOP_GAME_QUICK_MODE:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->createNotification()Landroid/app/Notification;

    move-result-object v1

    .line 201
    .local v1, "notification":Landroid/app/Notification;
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v3, "nubia_channel_id"

    const v4, 0x7f080016

    invoke-virtual {p0, v4}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 202
    .local v0, "channel":Landroid/app/NotificationChannel;
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 204
    const/4 v3, 0x1

    const/16 v4, 0x20

    invoke-virtual {p0, v3, v1, v4}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->startForeground(ILandroid/app/Notification;I)V

    .line 206
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "LelinkProcessService"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 207
    .local v2, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 208
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->mServiceLooper:Landroid/os/Looper;

    .line 209
    new-instance v3, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$ServiceHandler;

    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v3, p0, v4}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$ServiceHandler;-><init>(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->mServiceHandler:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$ServiceHandler;

    .line 210
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->reflect()V

    .line 211
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->regiterReceiver()V

    .line 212
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->regiseterSettingValueChanged()V

    .line 213
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->activityResumeTimeSave:J

    .line 214
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->startMonitor()V

    .line 215
    invoke-virtual {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->setNubiaTouPingP2pPackageList2System()V

    .line 216
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 288
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 289
    const/4 v0, 0x0

    sput-boolean v0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->IS_TOP_GAME_QUICK_MODE:Z

    .line 290
    const-string v0, "Touping"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NubiaWirelessTouPingService  onCreate IS_TOP_GAME_QUICK_MODE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->IS_TOP_GAME_QUICK_MODE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->startThreadRunableWhenStop()V

    .line 292
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->unreflect()V

    .line 293
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->mServiceLooper:Landroid/os/Looper;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 295
    iput-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->mServiceLooper:Landroid/os/Looper;

    .line 297
    :cond_0
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->myHandle:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->myHandle:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 300
    :cond_1
    sput-object v3, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->mNubiaWirelessTouPingService:Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;

    .line 301
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->mediaProjection:Landroid/media/projection/MediaProjection;

    if-eqz v0, :cond_2

    .line 302
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->mediaProjection:Landroid/media/projection/MediaProjection;

    invoke-virtual {v0}, Landroid/media/projection/MediaProjection;->stop()V

    .line 303
    sput-object v3, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->mediaProjection:Landroid/media/projection/MediaProjection;

    .line 305
    :cond_2
    iput-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->allGameSpacePackageName:Ljava/lang/String;

    .line 306
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->unregiterReceiver()V

    .line 307
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->unRegisterSettingValueChanged()V

    .line 308
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->stopMonitor()V

    .line 309
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v4, 0x2

    .line 341
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "action":Ljava/lang/String;
    const-string v2, "action.stop.NubiaWirelessTouPingService"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 343
    invoke-static {}, Lcn/nubia/touping/Utils/PhoneInfo;->isMonkeyRunning()Z

    move-result v1

    .line 344
    .local v1, "isMonkeyRunning":Z
    if-nez v1, :cond_1

    .line 345
    invoke-static {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->stopNubiaTouPing(Landroid/content/Context;)V

    .line 346
    const-string v2, "NubiaWirelessTouPingService777"

    const-string v3, "stoplist"

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-direct {p0, p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->sendBroadcastForRefresh(Landroid/content/Context;)V

    .line 348
    invoke-virtual {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->stopSelf()V

    .line 358
    .end local v1    # "isMonkeyRunning":Z
    :cond_0
    :goto_0
    return v4

    .line 351
    .restart local v1    # "isMonkeyRunning":Z
    :cond_1
    const-string v2, "NubiaWirelessTouPingService"

    const-string v3, "isMonkeyRunning clicked notification to stop mirror"

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 353
    .end local v1    # "isMonkeyRunning":Z
    :cond_2
    const-string v2, "action.start.NubiaWirelessTouPingService"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 354
    sget-object v2, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->mediaProjection:Landroid/media/projection/MediaProjection;

    invoke-static {p0, v2}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->startNubiaTouPing(Landroid/content/Context;Landroid/media/projection/MediaProjection;)V

    goto :goto_0
.end method

.method public sendCurrentPackageInfo()V
    .locals 2

    .prologue
    .line 718
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->lastpackageName:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->lastactivityName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->sendCurrentPackageNameAndActivityName(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    return-void
.end method

.method public sendCurrentPackageNameAndActivityName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;

    .prologue
    .line 723
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$5;

    invoke-direct {v1, p0, p1, p2}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$5;-><init>(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 785
    return-void
.end method

.method public setNubiaTouPingP2pPackageList2System()V
    .locals 2

    .prologue
    .line 570
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$4;

    invoke-direct {v1, p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$4;-><init>(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 587
    return-void
.end method

.method public startThreadRunable(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "cast_package"    # Ljava/lang/String;
    .param p2, "cast_app"    # Ljava/lang/String;
    .param p3, "small_window"    # Z

    .prologue
    .line 485
    sget-boolean v0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->startThreadRunableForUSBCollectData(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 517
    :goto_0
    return-void

    .line 489
    :cond_0
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$2;-><init>(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public startThreadRunableForUSBCollectData(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "cast_package"    # Ljava/lang/String;
    .param p2, "cast_app"    # Ljava/lang/String;
    .param p3, "small_window"    # Z

    .prologue
    .line 520
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$3;

    invoke-direct {v1, p0, p1, p2}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService$3;-><init>(Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 540
    return-void
.end method

.method public startThreadRunableWhenStop()V
    .locals 6

    .prologue
    .line 834
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->isSmall_Mittot_Status()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 836
    sget-object v3, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->app_small_mirror_package:Ljava/lang/String;

    sget-object v4, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->app_small_mirror_appName:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v5}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->startThreadRunable(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 837
    const-string v3, "NubiaWirelessTouPingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adddot when stop collectAPP:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->app_small_mirror_package:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    :goto_0
    return-void

    .line 839
    :cond_0
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->getCurrentTopPackageInfo()V

    .line 840
    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->pause_package:Ljava/lang/String;

    .line 841
    .local v1, "cast_packageTemp":Ljava/lang/String;
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->pause_app:Ljava/lang/String;

    .line 842
    .local v0, "cast_appTemp":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v3}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->startThreadRunable(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 843
    const-string v3, "NubiaWirelessTouPingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adddot when stop collectAPP:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->pause_package:Ljava/lang/String;

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

    .line 845
    .end local v0    # "cast_appTemp":Ljava/lang/String;
    .end local v1    # "cast_packageTemp":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 846
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
