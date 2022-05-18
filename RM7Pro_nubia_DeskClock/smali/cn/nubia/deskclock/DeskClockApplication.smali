.class public Lcn/nubia/deskclock/DeskClockApplication;
.super Landroid/app/Application;
.source "DeskClockApplication.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeskClockApplication"

.field public static globalApplicationContext:Landroid/app/Application;

.field private static mInstance:Lcn/nubia/deskclock/DeskClockApplication;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeviceContext:Landroid/content/Context;

.field private mDinMediumFonts:Landroid/graphics/Typeface;

.field private mInitSharedPreAndReyunAndFonts:Ljava/lang/Runnable;

.field private mNubiaFonts:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/deskclock/DeskClockApplication;->globalApplicationContext:Landroid/app/Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 72
    new-instance v0, Lcn/nubia/deskclock/DeskClockApplication$1;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/DeskClockApplication$1;-><init>(Lcn/nubia/deskclock/DeskClockApplication;)V

    iput-object v0, p0, Lcn/nubia/deskclock/DeskClockApplication;->mInitSharedPreAndReyunAndFonts:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/deskclock/DeskClockApplication;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/DeskClockApplication;

    .prologue
    .line 21
    invoke-direct {p0}, Lcn/nubia/deskclock/DeskClockApplication;->initNubiaFonts()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/deskclock/DeskClockApplication;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/DeskClockApplication;

    .prologue
    .line 21
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClockApplication;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/deskclock/DeskClockApplication;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/DeskClockApplication;

    .prologue
    .line 21
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClockApplication;->mDeviceContext:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcn/nubia/deskclock/DeskClockApplication;
    .locals 2

    .prologue
    .line 48
    const-class v0, Lcn/nubia/deskclock/DeskClockApplication;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcn/nubia/deskclock/DeskClockApplication;->mInstance:Lcn/nubia/deskclock/DeskClockApplication;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private initNubiaFonts()V
    .locals 3

    .prologue
    .line 52
    iget-object v1, p0, Lcn/nubia/deskclock/DeskClockApplication;->mNubiaFonts:Landroid/graphics/Typeface;

    if-nez v1, :cond_0

    .line 54
    :try_start_0
    iget-object v1, p0, Lcn/nubia/deskclock/DeskClockApplication;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/nubia_bold.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/deskclock/DeskClockApplication;->mNubiaFonts:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private intiDinMediumFonts()V
    .locals 3

    .prologue
    .line 62
    iget-object v1, p0, Lcn/nubia/deskclock/DeskClockApplication;->mDinMediumFonts:Landroid/graphics/Typeface;

    if-nez v1, :cond_0

    .line 64
    :try_start_0
    iget-object v1, p0, Lcn/nubia/deskclock/DeskClockApplication;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/DIN_Medium.otf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/deskclock/DeskClockApplication;->mDinMediumFonts:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getAlarmRingtoneSharedPref()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 160
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClockApplication;->mContext:Landroid/content/Context;

    const-string v1, "alarm_ringtone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 163
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClockApplication;->mDeviceContext:Landroid/content/Context;

    const-string v1, "alarm_ringtone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method public getAlarmsPrefereceSharedPref()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 128
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClockApplication;->mContext:Landroid/content/Context;

    const-string v1, "AlarmClock"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 131
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClockApplication;->mDeviceContext:Landroid/content/Context;

    const-string v1, "AlarmClock"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method public getAlarmsUpdateSharedPref()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 144
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClockApplication;->mContext:Landroid/content/Context;

    const-string v1, "alarmDataBeforeUptate"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 147
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClockApplication;->mDeviceContext:Landroid/content/Context;

    const-string v1, "alarmDataBeforeUptate"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method public getDefaultSharedPref()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 120
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClockApplication;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClockApplication;->mDeviceContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method public getDinMediumFonts()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClockApplication;->mDinMediumFonts:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getDirectBootContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClockApplication;->mDeviceContext:Landroid/content/Context;

    return-object v0
.end method

.method public getLastSnoozeSharedPref()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 136
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClockApplication;->mContext:Landroid/content/Context;

    const-string v1, "last_snooze_time_millis"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 139
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClockApplication;->mDeviceContext:Landroid/content/Context;

    const-string v1, "last_snooze_time_millis"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method public getNubiaFonts()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClockApplication;->mNubiaFonts:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getStopWatchSharedPref()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 152
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClockApplication;->mContext:Landroid/content/Context;

    const-string v1, "stopwatch_sharedpref"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 155
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClockApplication;->mDeviceContext:Landroid/content/Context;

    const-string v1, "stopwatch_sharedpref"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 36
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 37
    const-string v0, "DeskClockApplication"

    const-string v1, " DeskClockApplication [onCreate] "

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    sput-object p0, Lcn/nubia/deskclock/DeskClockApplication;->globalApplicationContext:Landroid/app/Application;

    .line 39
    sput-object p0, Lcn/nubia/deskclock/DeskClockApplication;->mInstance:Lcn/nubia/deskclock/DeskClockApplication;

    .line 40
    invoke-virtual {p0}, Lcn/nubia/deskclock/DeskClockApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/DeskClockApplication;->mContext:Landroid/content/Context;

    .line 41
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreN()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClockApplication;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/DeskClockApplication;->mDeviceContext:Landroid/content/Context;

    .line 44
    :cond_0
    invoke-static {}, Lcn/nubia/deskclock/util/ThreadPool;->getInstance()Lcn/nubia/deskclock/util/ThreadPool;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/deskclock/DeskClockApplication;->mInitSharedPreAndReyunAndFonts:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/util/ThreadPool;->addTask(Ljava/lang/Runnable;)V

    .line 45
    return-void
.end method
