.class public Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;
.super Landroid/app/Service;
.source "MiracastTouPingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$SettingValueChangedObserver;,
        Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$ServiceHandler;
    }
.end annotation


# static fields
.field private static final ACTION_USAGE_STATS_UPDATE:Ljava/lang/String; = "cn.nubia.applearning.action.USAGE_STATS_UPDATE"

.field private static final ACTION_WIFI_DISPLAY_STATUS_CHANGED:Ljava/lang/String; = "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

.field private static final ACTION_WIFI_DISPLAY_WFD_DISCONNECT:Ljava/lang/String; = "android.server.display.wfd.DISCONNECT"

.field private static ACTIVITY_KEY_NAME:Ljava/lang/String; = null

.field private static final APP_MIRROR_STATUS:Ljava/lang/String; = "app_mirror_status"

.field private static final CHANGE_ALL:I = -0x1

.field private static final CHANGE_ROUTES:I = 0x2

.field private static final CHANGE_SETTINGS:I = 0x1

.field private static final CHANGE_WIFI_DISPLAY_STATUS:I = 0x4

.field private static final CHANNEL_ID:Ljava/lang/String; = "nubia_channel_id"

.field private static final CLASS_NAME:Ljava/lang/String; = "android.app.NubiaSysState"

.field private static final DEVICE_IDLE_NAME:Ljava/lang/String; = "deviceIdle"

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

.field private static final ROUTE_TYPE_REMOTE_DISPLAY:I = 0x4

.field private static final STOP_CURRENT_SERVICE:Ljava/lang/String; = "MiracastTouPingService_STOP_CURRENT_SERVICE"

.field private static final SYS_STATE_ACTIVITY_PAUSE:I = 0x7d2

.field private static final SYS_STATE_ACTIVITY_RESUME:I = 0x7d1

.field private static final SYS_STATE_ACTIVITY_STOP:I = 0x7d3

.field private static final SYS_STATE_APP_START:I = 0x834

.field private static final SYS_STATE_APP_STOP:I = 0x835

.field private static final SYS_STATE_DOZE:I = 0x837

.field private static final TAG:Ljava/lang/String; = "MiracastTouPingService"

.field private static final UNREGISTER_METHOD_NAME:Ljava/lang/String; = "unregisterReceiver"

.field private static final WIFI_DISPLAY_CERTIFICATION_ON:Ljava/lang/String; = "wifi_display_certification_on"

.field private static final WIFI_DISPLAY_ON:Ljava/lang/String; = "wifi_display_on"

.field private static final WIFI_DISPLAY_WPS_CONFIG:Ljava/lang/String; = "wifi_display_wps_config"

.field private static mMiracastTouPingService:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

.field static pause_app:Ljava/lang/String;

.field static pause_package:Ljava/lang/String;


# instance fields
.field private activityResumeTimeSave:J

.field private app_small_mirror_appName:Ljava/lang/String;

.field private app_small_mirror_package:Ljava/lang/String;

.field private last_nubia_small_window_open_name:Ljava/lang/String;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mHandler:Landroid/os/Handler;

.field private mNubiaSysState:Ljava/lang/Object;

.field private mPendingChanges:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegister:Ljava/lang/reflect/Method;

.field private mRouter:Landroid/media/MediaRouter;

.field private final mRouterCallback:Landroid/media/MediaRouter$Callback;

.field private mServiceHandler:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private mSettingValueChangedObserver:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$SettingValueChangedObserver;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mStarted:Z

.field private mUnregister:Ljava/lang/reflect/Method;

.field private final mUpdateRunnable:Ljava/lang/Runnable;

.field private mWifiDisplayCertificationOn:Z

.field private mWifiDisplayOnSetting:Z

.field private mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWpsConfig:I

.field private small_mirror_startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const-string v0, "packageName"

    sput-object v0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->PACKAGE_KEY_NAME:Ljava/lang/String;

    .line 86
    const-string v0, "activityName"

    sput-object v0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->ACTIVITY_KEY_NAME:Ljava/lang/String;

    .line 226
    const-string v0, ""

    sput-object v0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->pause_package:Ljava/lang/String;

    .line 227
    const-string v0, ""

    sput-object v0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->pause_app:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mHandler:Landroid/os/Handler;

    .line 111
    iput-wide v2, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->activityResumeTimeSave:J

    .line 141
    const/4 v0, 0x4

    iput v0, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mWpsConfig:I

    .line 300
    iput-wide v2, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->small_mirror_startTime:J

    .line 301
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->app_small_mirror_package:Ljava/lang/String;

    .line 302
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->app_small_mirror_appName:Ljava/lang/String;

    .line 512
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->last_nubia_small_window_open_name:Ljava/lang/String;

    .line 604
    new-instance v0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$3;

    invoke-direct {v0, p0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$3;-><init>(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;)V

    iput-object v0, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 628
    new-instance v0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$4;-><init>(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 636
    new-instance v0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$5;

    invoke-direct {v0, p0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$5;-><init>(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;)V

    iput-object v0, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    .line 676
    new-instance v0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$6;

    invoke-direct {v0, p0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$6;-><init>(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;)V

    iput-object v0, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mUpdateRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->PACKAGE_KEY_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->ACTIVITY_KEY_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;J)J
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;
    .param p1, "x1"    # J

    .prologue
    .line 51
    iput-wide p1, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->small_mirror_startTime:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;)Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$ServiceHandler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    .prologue
    .line 51
    iget-object v0, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mServiceHandler:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$ServiceHandler;

    return-object v0
.end method

.method static synthetic access$1200(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->getAppNameSmallMirror(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    .prologue
    .line 51
    iget-object v0, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->last_nubia_small_window_open_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->last_nubia_small_window_open_name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;
    .param p1, "x1"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->scheduleUpdate(I)V

    return-void
.end method

.method static synthetic access$1500(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    .prologue
    .line 51
    invoke-direct {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->changeNotifcation()V

    return-void
.end method

.method static synthetic access$1600(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    .prologue
    .line 51
    iget v0, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mPendingChanges:I

    return v0
.end method

.method static synthetic access$1602(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;
    .param p1, "x1"    # I

    .prologue
    .line 51
    iput p1, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mPendingChanges:I

    return p1
.end method

.method static synthetic access$1700(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;
    .param p1, "x1"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->update(I)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;J)J
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;
    .param p1, "x1"    # J

    .prologue
    .line 51
    iput-wide p1, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->activityResumeTimeSave:J

    return-wide p1
.end method

.method static synthetic access$400(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    .prologue
    .line 51
    invoke-direct {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->reflect()V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    .prologue
    .line 51
    invoke-direct {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->setCurrentSmallMirrorPackage()V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    .prologue
    .line 51
    iget-object v0, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->app_small_mirror_package:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    .prologue
    .line 51
    iget-object v0, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->app_small_mirror_appName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;)J
    .locals 2
    .param p0, "x0"    # Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    .prologue
    .line 51
    invoke-direct {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->dealWithTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$900(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;)J
    .locals 2
    .param p0, "x0"    # Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    .prologue
    .line 51
    invoke-direct {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->dealWithTime_Small_Mirror()J

    move-result-wide v0

    return-wide v0
.end method

.method private addCollectedData()V
    .locals 4

    .prologue
    .line 162
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LelinkProcessService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 163
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 164
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mServiceLooper:Landroid/os/Looper;

    .line 165
    new-instance v1, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$ServiceHandler;

    iget-object v2, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$ServiceHandler;-><init>(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mServiceHandler:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$ServiceHandler;

    .line 166
    invoke-direct {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->reflect()V

    .line 167
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->activityResumeTimeSave:J

    .line 168
    invoke-direct {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->regiseterSettingValueChanged()V

    .line 169
    return-void
.end method

.method private changeNotifcation()V
    .locals 2

    .prologue
    .line 852
    const-string v0, "MiracastTouPingService"

    const-string v1, "changleitest123 changeNotifcation 00000"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->stopForeground(Z)V

    .line 855
    const-string v0, "MiracastTouPingService"

    const-string v1, "changleitest123 changeNotifcation 11111"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    invoke-direct {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->createShowNotification()V

    .line 857
    const-string v0, "MiracastTouPingService"

    const-string v1, "changleitest123 changeNotifcation 22222"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    return-void
.end method

.method private createClickPendingIntent()Landroid/app/PendingIntent;
    .locals 5

    .prologue
    .line 910
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 911
    .local v0, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "cn.nubia.touping.HomeActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 912
    const/high16 v2, 0x18200000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 913
    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 914
    .local v1, "stopPendingIntent":Landroid/app/PendingIntent;
    return-object v1
.end method

.method private createNotification()Landroid/app/Notification;
    .locals 2

    .prologue
    .line 885
    new-instance v0, Landroid/app/Notification$Builder;

    const-string v1, "nubia_channel_id"

    invoke-direct {v0, p0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 886
    .local v0, "notificationBuilder":Landroid/app/Notification$Builder;
    const v1, 0x7f080016

    invoke-virtual {p0, v1}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 887
    const v1, 0x7f0800a5

    invoke-virtual {p0, v1}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 888
    const v1, 0x7f02006f

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 889
    invoke-direct {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->createStopAction()Landroid/app/Notification$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 890
    invoke-direct {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->createClickPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 891
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    return-object v1
.end method

.method private createNotification_search()Landroid/app/Notification;
    .locals 2

    .prologue
    .line 864
    new-instance v0, Landroid/app/Notification$Builder;

    const-string v1, "nubia_channel_id"

    invoke-direct {v0, p0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 865
    .local v0, "notificationBuilder":Landroid/app/Notification$Builder;
    const v1, 0x7f080016

    invoke-virtual {p0, v1}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 866
    const v1, 0x7f0800a4

    invoke-virtual {p0, v1}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 867
    const v1, 0x7f02006f

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 868
    invoke-direct {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->createStopAction_search()Landroid/app/Notification$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 869
    invoke-direct {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->createClickPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 870
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    return-object v1
.end method

.method private createShowNotification()V
    .locals 5

    .prologue
    .line 838
    invoke-direct {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->createNotification()Landroid/app/Notification;

    move-result-object v1

    .line 840
    .local v1, "notification":Landroid/app/Notification;
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v2, "nubia_channel_id"

    const v3, 0x7f08009e

    invoke-virtual {p0, v3}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 841
    .local v0, "channel":Landroid/app/NotificationChannel;
    invoke-direct {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 843
    const/4 v2, 0x1

    const/16 v3, 0x20

    invoke-virtual {p0, v2, v1, v3}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->startForeground(ILandroid/app/Notification;I)V

    .line 844
    return-void
.end method

.method private createShowNotification_search()V
    .locals 5

    .prologue
    .line 832
    invoke-direct {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->createNotification_search()Landroid/app/Notification;

    move-result-object v1

    .line 833
    .local v1, "notification":Landroid/app/Notification;
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v2, "nubia_channel_id"

    const v3, 0x7f08009e

    invoke-virtual {p0, v3}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 834
    .local v0, "channel":Landroid/app/NotificationChannel;
    invoke-direct {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 835
    const/4 v2, 0x1

    const/16 v3, 0x20

    invoke-virtual {p0, v2, v1, v3}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->startForeground(ILandroid/app/Notification;I)V

    .line 836
    return-void
.end method

.method private createStopAction()Landroid/app/Notification$Action;
    .locals 7

    .prologue
    .line 895
    invoke-direct {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->createStopIntent()Landroid/content/Intent;

    move-result-object v2

    .line 896
    .local v2, "stopIntent":Landroid/content/Intent;
    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {p0, v5, v2, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 897
    .local v3, "stopPendingIntent":Landroid/app/PendingIntent;
    const v5, 0x7f02006f

    invoke-static {p0, v5}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    .line 898
    .local v1, "stopIcon":Landroid/graphics/drawable/Icon;
    const v5, 0x7f08009e

    invoke-virtual {p0, v5}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 899
    .local v4, "stopString":Ljava/lang/String;
    new-instance v0, Landroid/app/Notification$Action$Builder;

    invoke-direct {v0, v1, v4, v3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 900
    .local v0, "actionBuilder":Landroid/app/Notification$Action$Builder;
    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v5

    return-object v5
.end method

.method private createStopAction_search()Landroid/app/Notification$Action;
    .locals 7

    .prologue
    .line 874
    invoke-direct {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->createStopIntent()Landroid/content/Intent;

    move-result-object v2

    .line 875
    .local v2, "stopIntent":Landroid/content/Intent;
    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {p0, v5, v2, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 876
    .local v3, "stopPendingIntent":Landroid/app/PendingIntent;
    const v5, 0x7f02006f

    invoke-static {p0, v5}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    .line 877
    .local v1, "stopIcon":Landroid/graphics/drawable/Icon;
    const v5, 0x7f08009f

    invoke-virtual {p0, v5}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 878
    .local v4, "stopString":Ljava/lang/String;
    new-instance v0, Landroid/app/Notification$Action$Builder;

    invoke-direct {v0, v1, v4, v3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 879
    .local v0, "actionBuilder":Landroid/app/Notification$Action$Builder;
    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v5

    return-object v5
.end method

.method private createStopIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 904
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 905
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "MiracastTouPingService_STOP_CURRENT_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 906
    return-object v0
.end method

.method private dealWithTime()J
    .locals 8

    .prologue
    .line 172
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 173
    .local v0, "currentTime":J
    iget-wide v6, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->activityResumeTimeSave:J

    sub-long v6, v0, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 175
    .local v2, "durationTime":J
    const-wide/16 v6, 0x3e8

    div-long v4, v2, v6

    .line 176
    .local v4, "temp":J
    const-wide/16 v6, 0x1

    cmp-long v6, v4, v6

    if-ltz v6, :cond_0

    .line 177
    move-wide v2, v4

    .line 181
    :goto_0
    return-wide v2

    .line 179
    :cond_0
    const-wide/16 v2, 0x1

    goto :goto_0
.end method

.method private dealWithTime_Small_Mirror()J
    .locals 8

    .prologue
    .line 185
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 186
    .local v0, "currentTime":J
    iget-wide v6, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->small_mirror_startTime:J

    sub-long v6, v0, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 188
    .local v2, "durationTime":J
    const-wide/16 v6, 0x3e8

    div-long v4, v2, v6

    .line 189
    .local v4, "temp":J
    const-wide/16 v6, 0x1

    cmp-long v6, v4, v6

    if-ltz v6, :cond_0

    .line 190
    move-wide v2, v4

    .line 194
    :goto_0
    return-wide v2

    .line 192
    :cond_0
    const-wide/16 v2, 0x1

    goto :goto_0
.end method

.method private findWifiDisplay(Ljava/lang/String;)Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;
    .locals 3
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 774
    invoke-static {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastWifiDisplayStatusUtils;->getWifiDisplayStatus(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 775
    invoke-static {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastWifiDisplayStatusUtils;->getDisplays(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;

    .line 776
    .local v0, "display":Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;
    invoke-virtual {v0}, Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;->getmDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 781
    .end local v0    # "display":Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 199
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 200
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 201
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 205
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v3

    .line 202
    :catch_0
    move-exception v1

    .line 203
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 205
    const-string v3, ""

    goto :goto_0
.end method

.method private getAppNameSmallMirror(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 209
    const-string v2, ""

    .line 211
    .local v2, "appName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 212
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 213
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 215
    .local v1, "appLabel":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 216
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 222
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "appLabel":Ljava/lang/CharSequence;
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-object v2

    .line 219
    :catch_0
    move-exception v3

    .line 220
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getCurrentTopPackageInfo()V
    .locals 8

    .prologue
    .line 363
    :try_start_0
    sget-object v5, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->pause_package:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 364
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 365
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 366
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 367
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v4, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 368
    .local v4, "resultPackageName":Ljava/lang/String;
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 369
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 370
    .local v2, "index":I
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 372
    .end local v2    # "index":I
    :cond_0
    sput-object v4, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->pause_package:Ljava/lang/String;

    .line 373
    sget-object v5, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->pause_package:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->pause_app:Ljava/lang/String;

    .line 375
    .end local v4    # "resultPackageName":Ljava/lang/String;
    :cond_1
    const-string v5, "MiracastTouPingService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pause_package = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->pause_package:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string v5, "MiracastTouPingService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pause_app = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->pause_app:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_2
    :goto_0
    return-void

    .line 378
    :catch_0
    move-exception v1

    .line 379
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getMiracastTouPingService()Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mMiracastTouPingService:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    return-object v0
.end method

.method private getNotificationManager()Landroid/app/NotificationManager;
    .locals 1

    .prologue
    .line 847
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 528
    const-string v0, "media_router"

    invoke-virtual {p0, v0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    iput-object v0, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mRouter:Landroid/media/MediaRouter;

    .line 529
    iget-object v0, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mRouter:Landroid/media/MediaRouter;

    invoke-static {v0}, Lcn/nubia/touping/MiracastTouPing/MiracastRouterUtils;->setRouterGroupId(Landroid/media/MediaRouter;)Z

    .line 530
    const-string v0, "display"

    invoke-virtual {p0, v0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 531
    const-string v0, "wifip2p"

    invoke-virtual {p0, v0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 532
    iget-object v0, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 533
    sput-object p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mMiracastTouPingService:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    .line 534
    return-void
.end method

.method private reflect()V
    .locals 8

    .prologue
    .line 318
    :try_start_0
    const-string v3, "android.app.NubiaSysState"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 319
    .local v0, "cl":Ljava/lang/Class;
    const-string v3, "registerReceiverHandler"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/os/Handler;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mRegister:Ljava/lang/reflect/Method;

    .line 320
    const-string v3, "unregisterReceiver"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mUnregister:Ljava/lang/reflect/Method;

    .line 321
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 322
    .local v1, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mNubiaSysState:Ljava/lang/Object;

    .line 323
    iget-object v3, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mRegister:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mNubiaSysState:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mServiceHandler:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$ServiceHandler;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-string v3, "MiracastTouPingService"

    const-string v4, "register success!"

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 336
    .end local v0    # "cl":Ljava/lang/Class;
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;
    :goto_0
    return-void

    .line 325
    :catch_0
    move-exception v2

    .line 326
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string v3, "MiracastTouPingService"

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

    .line 327
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    .line 328
    .local v2, "e":Ljava/lang/InstantiationException;
    const-string v3, "MiracastTouPingService"

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

    .line 329
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v2

    .line 330
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "MiracastTouPingService"

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

    .line 331
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    .line 332
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "MiracastTouPingService"

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

    .line 333
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v2

    .line 334
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "MiracastTouPingService"

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

    .line 515
    new-instance v0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$SettingValueChangedObserver;

    invoke-direct {v0, p0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$SettingValueChangedObserver;-><init>(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;)V

    iput-object v0, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mSettingValueChangedObserver:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$SettingValueChangedObserver;

    .line 516
    invoke-virtual {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "app_mirror_status"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mSettingValueChangedObserver:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$SettingValueChangedObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 517
    invoke-virtual {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "app_mirror_list"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mSettingValueChangedObserver:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$SettingValueChangedObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 518
    return-void
.end method

.method private scheduleUpdate(I)V
    .locals 2
    .param p1, "changes"    # I

    .prologue
    .line 686
    iget-boolean v0, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mStarted:Z

    if-eqz v0, :cond_1

    .line 687
    iget v0, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mPendingChanges:I

    if-nez v0, :cond_0

    .line 688
    iget-object v0, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 690
    :cond_0
    iget v0, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mPendingChanges:I

    or-int/2addr v0, p1

    iput v0, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mPendingChanges:I

    .line 692
    :cond_1
    return-void
.end method

.method private sendDataList2Show(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 768
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;>;"
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.MIRACAST.NubiaWirelessTouPingForDeviceList"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 769
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "MiracastDataList"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 770
    invoke-virtual {p0, v0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->sendBroadcast(Landroid/content/Intent;)V

    .line 771
    return-void
.end method

.method private setCurrentSmallMirrorPackage()V
    .locals 4

    .prologue
    .line 292
    invoke-virtual {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "app_mirror_list"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 295
    .local v0, "index":I
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->app_small_mirror_package:Ljava/lang/String;

    .line 296
    iget-object v2, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->app_small_mirror_package:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->getAppNameSmallMirror(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->app_small_mirror_appName:Ljava/lang/String;

    .line 298
    .end local v0    # "index":I
    :cond_0
    return-void
.end method

.method private startSearch()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 538
    iput-boolean v5, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mStarted:Z

    .line 539
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 540
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 541
    const-string v1, "android.server.display.wfd.DISCONNECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 542
    iget-object v1, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 544
    invoke-virtual {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 545
    invoke-virtual {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_certification_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 546
    invoke-virtual {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_wps_config"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 548
    iget-object v1, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mRouter:Landroid/media/MediaRouter;

    const/4 v2, 0x4

    iget-object v3, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    invoke-virtual {v1, v2, v3, v5}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 551
    invoke-virtual {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_on"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 552
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->update(I)V

    .line 553
    return-void
.end method

.method public static stopMiracastTouPingService()V
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mMiracastTouPingService:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    if-eqz v0, :cond_0

    .line 124
    sget-object v0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mMiracastTouPingService:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    invoke-virtual {v0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->stopSelf()V

    .line 126
    :cond_0
    return-void
.end method

.method private stopSearch()V
    .locals 3

    .prologue
    .line 556
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mStarted:Z

    .line 558
    :try_start_0
    iget-object v1, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 571
    :goto_1
    iget-object v1, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mRouter:Landroid/media/MediaRouter;

    iget-object v2, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    invoke-virtual {v1, v2}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 572
    invoke-direct {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->unscheduleUpdate()V

    .line 573
    return-void

    .line 559
    :catch_0
    move-exception v0

    .line 560
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 561
    const-string v1, "MiracastTouPingService"

    const-string v2, "unregisterReceiver exception"

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 566
    .end local v0    # "exception":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 567
    .restart local v0    # "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 568
    const-string v1, "MiracastTouPingService"

    const-string v2, "getContentResolver().unregisterContentObserver(mSettingsObserver) exception"

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private unRegisterSettingValueChanged()V
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mSettingValueChangedObserver:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$SettingValueChangedObserver;

    if-eqz v0, :cond_0

    .line 522
    invoke-virtual {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mSettingValueChangedObserver:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$SettingValueChangedObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 524
    :cond_0
    return-void
.end method

.method private unreflect()V
    .locals 4

    .prologue
    .line 342
    iget-object v1, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mUnregister:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 344
    :try_start_0
    iget-object v1, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mUnregister:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mNubiaSysState:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    const-string v1, "MiracastTouPingService"

    const-string v2, "unregister success!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "MiracastTouPingService"

    const-string v2, "unregister fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 349
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 350
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "MiracastTouPingService"

    const-string v2, "unregister fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 352
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 353
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "MiracastTouPingService"

    const-string v2, "unregister fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method private unscheduleUpdate()V
    .locals 2

    .prologue
    .line 695
    iget v0, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mPendingChanges:I

    if-eqz v0, :cond_0

    .line 696
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mPendingChanges:I

    .line 697
    iget-object v0, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 699
    :cond_0
    return-void
.end method

.method private update(I)V
    .locals 9
    .param p1, "changes"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 703
    const/4 v2, 0x0

    .line 705
    .local v2, "invalidateOptions":Z
    const-string v7, "MiracastTouPingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changed update 0000000 = ((changes & CHANGE_SETTINGS) != 0) = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_3

    move v4, v5

    :goto_0
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_0

    .line 709
    const-string v4, "MiracastTouPingService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changed update 0000000 = changes = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    invoke-virtual {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "wifi_display_on"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mWifiDisplayOnSetting:Z

    .line 711
    invoke-virtual {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "wifi_display_certification_on"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_5

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mWifiDisplayCertificationOn:Z

    .line 712
    invoke-virtual {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "wifi_display_wps_config"

    const/4 v8, 0x4

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mWpsConfig:I

    .line 714
    const/4 v2, 0x1

    .line 717
    :cond_0
    const-string v4, "MiracastTouPingService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changed update 111111 = ((changes & CHANGE_WIFI_DISPLAY_STATUS) != 0) = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    and-int/lit8 v8, p1, 0x4

    if-eqz v8, :cond_6

    :goto_3
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    and-int/lit8 v4, p1, 0x4

    if-eqz v4, :cond_1

    .line 723
    const/4 v2, 0x1

    .line 748
    :cond_1
    const-string v4, "MiracastTouPingService"

    const-string v5, "changed update 44444 add display  0000"

    invoke-static {v4, v5}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    const/4 v0, 0x3

    .line 750
    .local v0, "FEATURE_STATE_ON":I
    invoke-static {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastWifiDisplayStatusUtils;->getWifiDisplayStatus(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-static {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastWifiDisplayStatusUtils;->getFeatureState(Landroid/content/Context;)I

    move-result v4

    if-ne v4, v0, :cond_8

    .line 752
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 753
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;>;"
    invoke-static {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastWifiDisplayStatusUtils;->getDisplays(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;

    .line 754
    .local v1, "display":Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;
    const-string v5, "MiracastTouPingService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "changed update 44444 add display = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    invoke-virtual {v1}, Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;->ismIsAvailable()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;->ismCanConnect()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 756
    const-string v5, "MiracastTouPingService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "changed update 44444 add display.getmDeviceName() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;->getmDeviceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .end local v0    # "FEATURE_STATE_ON":I
    .end local v1    # "display":Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;>;"
    :cond_3
    move v4, v6

    .line 705
    goto/16 :goto_0

    :cond_4
    move v4, v6

    .line 710
    goto/16 :goto_1

    :cond_5
    move v4, v6

    .line 711
    goto/16 :goto_2

    :cond_6
    move v5, v6

    .line 717
    goto/16 :goto_3

    .line 761
    .restart local v0    # "FEATURE_STATE_ON":I
    .restart local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;>;"
    :cond_7
    const-string v4, "MiracastTouPingService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changed update 44444 add display  list.size() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    invoke-direct {p0, v3}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->sendDataList2Show(Ljava/util/ArrayList;)V

    .line 764
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;>;"
    :cond_8
    return-void
.end method


# virtual methods
.method public getCurrentLinkStatus(Ljava/lang/String;)I
    .locals 8
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 787
    :try_start_0
    iget-object v5, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v5}, Landroid/media/MediaRouter;->getRouteCount()I

    move-result v3

    .line 788
    .local v3, "routeCount":I
    const-string v5, "MiracastTouPingService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCurrentLinkStatus routeCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 790
    iget-object v5, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v5, v1}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    .line 791
    .local v2, "route":Landroid/media/MediaRouter$RouteInfo;
    if-eqz v2, :cond_1

    const/4 v5, 0x4

    invoke-static {v2, v5}, Lcn/nubia/touping/MiracastTouPing/MiracastRouterInfoUtils;->matchesTypes(Landroid/media/MediaRouter$RouteInfo;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 792
    invoke-static {v2}, Lcn/nubia/touping/MiracastTouPing/MiracastRouterInfoUtils;->getDeviceAddress(Landroid/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->findWifiDisplay(Ljava/lang/String;)Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;

    move-result-object v4

    .line 793
    .local v4, "wifiDisplay":Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;
    const-string v5, "MiracastTouPingService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCurrentLinkStatus changed update 33333 add i = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   wifiDisplay = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    if-eqz v4, :cond_1

    .line 795
    const-string v5, "MiracastTouPingService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCurrentLinkStatus changed update 33333 add i = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   wifiDisplay.toString() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    const-string v5, "MiracastTouPingService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCurrentLinkStatus MiracastRouterInfoUtils.isSelected(route) = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Lcn/nubia/touping/MiracastTouPing/MiracastRouterInfoUtils;->isSelected(Landroid/media/MediaRouter$RouteInfo;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    const-string v5, "MiracastTouPingService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCurrentLinkStatus deviceAddress.equals(wifiDisplay.getmDeviceAddress()) = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;->getmDeviceAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    invoke-static {v2}, Lcn/nubia/touping/MiracastTouPing/MiracastRouterInfoUtils;->isSelected(Landroid/media/MediaRouter$RouteInfo;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;->getmDeviceAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastWifiDisplayStatusUtils;->getCurrentTouPingStatus(Landroid/content/Context;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 800
    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result v5

    if-nez v5, :cond_0

    .line 801
    const-string v5, "MiracastTouPingService"

    const-string v6, "getCurrentLinkStatus changed update 33333 add has connected"

    invoke-static {v5, v6}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 803
    const/4 v5, 0x2

    .line 815
    .end local v1    # "i":I
    .end local v2    # "route":Landroid/media/MediaRouter$RouteInfo;
    .end local v3    # "routeCount":I
    .end local v4    # "wifiDisplay":Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;
    :goto_1
    return v5

    .line 805
    .restart local v1    # "i":I
    .restart local v2    # "route":Landroid/media/MediaRouter$RouteInfo;
    .restart local v3    # "routeCount":I
    .restart local v4    # "wifiDisplay":Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;
    :cond_0
    const/4 v5, 0x1

    goto :goto_1

    .line 789
    .end local v4    # "wifiDisplay":Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 811
    .end local v1    # "i":I
    .end local v2    # "route":Landroid/media/MediaRouter$RouteInfo;
    .end local v3    # "routeCount":I
    :catch_0
    move-exception v0

    .line 812
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 813
    const-string v5, "MiracastTouPingService"

    const-string v6, "changed update getCurrentLinkStatus = EXCEPTION"

    invoke-static {v5, v6}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    .end local v0    # "exception":Ljava/lang/Exception;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public isSmall_Mittot_Status()Z
    .locals 5

    .prologue
    .line 307
    :try_start_0
    const-string v2, "1"

    invoke-virtual {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "app_mirror_status"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 313
    :goto_0
    return v1

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 311
    const-string v2, "MiracastTouPingService"

    const-string v3, "flag_small_window = exception"

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 149
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 154
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 155
    invoke-direct {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->addCollectedData()V

    .line 156
    invoke-direct {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->initData()V

    .line 157
    invoke-direct {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->startSearch()V

    .line 158
    invoke-direct {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->createShowNotification_search()V

    .line 159
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 590
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 591
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->stopForeground(Z)V

    .line 592
    invoke-direct {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->stopSearch()V

    .line 593
    invoke-virtual {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->startThreadRunableWhenStop()V

    .line 594
    invoke-direct {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->unreflect()V

    .line 595
    invoke-direct {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->unRegisterSettingValueChanged()V

    .line 596
    iget-object v0, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mServiceLooper:Landroid/os/Looper;

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 598
    iput-object v1, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mServiceLooper:Landroid/os/Looper;

    .line 600
    :cond_0
    sput-object v1, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->mMiracastTouPingService:Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    .line 601
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 577
    if-nez p1, :cond_0

    .line 578
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    .line 585
    :goto_0
    return v1

    .line 580
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 581
    .local v0, "action":Ljava/lang/String;
    const-string v1, "MiracastTouPingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartCommand action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const-string v1, "MiracastTouPingService_STOP_CURRENT_SERVICE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 583
    invoke-static {p0}, Lcn/nubia/touping/MiracastTouPing/OperateMiracastUtils;->stopMiracastTouPing(Landroid/content/Context;)V

    .line 585
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    goto :goto_0
.end method

.method public startThreadRunable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "cast_package"    # Ljava/lang/String;
    .param p2, "cast_app"    # Ljava/lang/String;

    .prologue
    .line 402
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->startThreadRunable(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 403
    return-void
.end method

.method public startThreadRunable(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "cast_package"    # Ljava/lang/String;
    .param p2, "cast_app"    # Ljava/lang/String;
    .param p3, "small_window"    # Z

    .prologue
    .line 406
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$1;-><init>(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 430
    return-void
.end method

.method public startThreadRunableWhenStop()V
    .locals 6

    .prologue
    .line 385
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->isSmall_Mittot_Status()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 387
    iget-object v3, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->app_small_mirror_package:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->app_small_mirror_appName:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v5}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->startThreadRunable_Small_Mirror(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 388
    const-string v3, "MiracastTouPingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adddot when stop collectAPP:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->app_small_mirror_package:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :goto_0
    return-void

    .line 390
    :cond_0
    invoke-direct {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->getCurrentTopPackageInfo()V

    .line 391
    sget-object v1, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->pause_package:Ljava/lang/String;

    .line 392
    .local v1, "cast_packageTemp":Ljava/lang/String;
    sget-object v0, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->pause_app:Ljava/lang/String;

    .line 393
    .local v0, "cast_appTemp":Ljava/lang/String;
    invoke-virtual {p0, v1, v0}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->startThreadRunable(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v3, "MiracastTouPingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adddot when stop collectAPP:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->pause_package:Ljava/lang/String;

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

    .line 396
    .end local v0    # "cast_appTemp":Ljava/lang/String;
    .end local v1    # "cast_packageTemp":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 397
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
    .line 433
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService$2;-><init>(Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 456
    return-void
.end method
