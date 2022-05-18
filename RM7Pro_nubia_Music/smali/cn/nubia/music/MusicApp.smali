.class public Lcn/nubia/music/MusicApp;
.super Landroid/app/Application;
.source "MusicApp.java"


# static fields
.field public static instance:Landroid/app/Application;

.field private static mStatusBarHeight:I

.field public static volatile sTimerBegin:J

.field public static sTimerInterVal:J


# instance fields
.field private mExitReceiver:Landroid/content/BroadcastReceiver;

.field private mUnmountReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 37
    sput-wide v0, Lcn/nubia/music/MusicApp;->sTimerBegin:J

    .line 41
    sput-wide v0, Lcn/nubia/music/MusicApp;->sTimerInterVal:J

    .line 43
    const/4 v0, 0x0

    sput v0, Lcn/nubia/music/MusicApp;->mStatusBarHeight:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 168
    new-instance v0, Lcn/nubia/music/MusicApp$3;

    invoke-direct {v0, p0}, Lcn/nubia/music/MusicApp$3;-><init>(Lcn/nubia/music/MusicApp;)V

    iput-object v0, p0, Lcn/nubia/music/MusicApp;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 175
    new-instance v0, Lcn/nubia/music/MusicApp$4;

    invoke-direct {v0, p0}, Lcn/nubia/music/MusicApp$4;-><init>(Lcn/nubia/music/MusicApp;)V

    iput-object v0, p0, Lcn/nubia/music/MusicApp;->mExitReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/music/MusicApp;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcn/nubia/music/MusicApp;->initStorageMgr()V

    return-void
.end method

.method private static calcStatusBarHeight(Landroid/content/Context;)I
    .locals 4

    .prologue
    .line 190
    const/16 v0, 0x32

    .line 192
    :try_start_0
    const-string v1, "com.android.internal.R$dimen"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 193
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 194
    const-string v3, "status_bar_height"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 195
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 196
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 200
    :goto_0
    return v0

    .line 197
    :catch_0
    move-exception v1

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private cancelLastTimed()V
    .locals 4

    .prologue
    .line 113
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcn/nubia/music/MusicApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 114
    new-instance v1, Landroid/content/Intent;

    const-string v2, "cn.nubia.music.timer.closemusic"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    const/4 v2, 0x1

    const/high16 v3, 0x8000000

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 117
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 118
    return-void
.end method

.method private closeAndroidPDialog()V
    .locals 4

    .prologue
    .line 62
    :try_start_0
    const-string v0, "android.content.pm.PackageParser$Package"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 63
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 64
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 66
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 67
    const-string v1, "currentActivityThread"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 68
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 69
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 70
    const-string v2, "mHiddenApiWarningShown"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 71
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 72
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private doBackground()V
    .locals 1

    .prologue
    .line 138
    new-instance v0, Lcn/nubia/music/MusicApp$1;

    invoke-direct {v0, p0}, Lcn/nubia/music/MusicApp$1;-><init>(Lcn/nubia/music/MusicApp;)V

    invoke-static {v0}, Lcn/nubia/music/utils/ThreadHelper;->postInNewThread(Ljava/lang/Runnable;)V

    .line 147
    invoke-direct {p0}, Lcn/nubia/music/MusicApp;->initStorageMgr()V

    .line 148
    return-void
.end method

.method private getCurrentVersion()V
    .locals 3

    .prologue
    .line 93
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/music/MusicApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 94
    invoke-virtual {p0}, Lcn/nubia/music/MusicApp;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 96
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v1, Lcn/nubia/music/constants/FusionCode;->VERSION_CODE:I

    .line 97
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lcn/nubia/music/constants/FusionCode;->VERSION_NAME:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getStatusBarHeight()I
    .locals 1

    .prologue
    .line 204
    sget v0, Lcn/nubia/music/MusicApp;->mStatusBarHeight:I

    return v0
.end method

.method private init()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 79
    invoke-static {p0}, Lcom/a/a/a;->a(Landroid/app/Application;)Lcom/a/a/b;

    .line 80
    sput-wide v0, Lcn/nubia/music/MusicApp;->sTimerInterVal:J

    .line 81
    sput-wide v0, Lcn/nubia/music/MusicApp;->sTimerBegin:J

    .line 82
    invoke-direct {p0}, Lcn/nubia/music/MusicApp;->cancelLastTimed()V

    .line 83
    invoke-direct {p0}, Lcn/nubia/music/MusicApp;->registerReceivers()V

    .line 84
    invoke-static {}, Lcn/nubia/music/utils/CTA;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    invoke-static {p0}, Lcn/nubia/music/third/StatisticsEvent;->init(Landroid/content/Context;)V

    .line 87
    :cond_0
    invoke-static {p0}, Lcn/nubia/music/MusicApp;->calcStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcn/nubia/music/MusicApp;->mStatusBarHeight:I

    .line 88
    invoke-direct {p0}, Lcn/nubia/music/MusicApp;->getCurrentVersion()V

    .line 89
    return-void
.end method

.method private initStorageMgr()V
    .locals 1

    .prologue
    .line 152
    new-instance v0, Lcn/nubia/music/MusicApp$2;

    invoke-direct {v0, p0}, Lcn/nubia/music/MusicApp$2;-><init>(Lcn/nubia/music/MusicApp;)V

    invoke-static {v0}, Lcn/nubia/music/utils/ThreadHelper;->postInNewThread(Ljava/lang/Runnable;)V

    .line 158
    return-void
.end method

.method private registerReceivers()V
    .locals 2

    .prologue
    .line 121
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 122
    const-string v1, "cn.nubia.music.preset.service.exit"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcn/nubia/music/MusicApp;->mExitReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcn/nubia/music/MusicApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 127
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcn/nubia/music/MusicApp;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcn/nubia/music/MusicApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 135
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 108
    invoke-static {p1}, Landroid/support/multidex/a;->a(Landroid/content/Context;)V

    .line 109
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 49
    sput-object p0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    .line 50
    invoke-static {}, Lcn/nubia/music/utils/ProcessHelper;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-direct {p0}, Lcn/nubia/music/MusicApp;->init()V

    .line 54
    invoke-direct {p0}, Lcn/nubia/music/MusicApp;->doBackground()V

    goto :goto_0
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 163
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 164
    iget-object v0, p0, Lcn/nubia/music/MusicApp;->mExitReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcn/nubia/music/MusicApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 165
    iget-object v0, p0, Lcn/nubia/music/MusicApp;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcn/nubia/music/MusicApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 166
    return-void
.end method
