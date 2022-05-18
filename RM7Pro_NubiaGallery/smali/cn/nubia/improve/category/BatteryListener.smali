.class public Lcn/nubia/improve/category/BatteryListener;
.super Ljava/lang/Object;
.source "BatteryListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/improve/category/BatteryListener$BatteryBroadcastReceiver;,
        Lcn/nubia/improve/category/BatteryListener$BatteryStateListener;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BatteryListener"


# instance fields
.field private mBatteryStateListener:Lcn/nubia/improve/category/BatteryListener$BatteryStateListener;

.field private mContext:Landroid/content/Context;

.field private mIsPowerConnect:Z

.field private mReceiver:Lcn/nubia/improve/category/BatteryListener$BatteryBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Gallery"

    const/4 v1, 0x3

    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcn/nubia/improve/category/BatteryListener;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcn/nubia/improve/category/BatteryListener;->mIsPowerConnect:Z

    .line 19
    iput-object p1, p0, Lcn/nubia/improve/category/BatteryListener;->mContext:Landroid/content/Context;

    .line 20
    new-instance p1, Lcn/nubia/improve/category/BatteryListener$BatteryBroadcastReceiver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcn/nubia/improve/category/BatteryListener$BatteryBroadcastReceiver;-><init>(Lcn/nubia/improve/category/BatteryListener;Lcn/nubia/improve/category/BatteryListener$1;)V

    iput-object p1, p0, Lcn/nubia/improve/category/BatteryListener;->mReceiver:Lcn/nubia/improve/category/BatteryListener$BatteryBroadcastReceiver;

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 10
    sget-boolean v0, Lcn/nubia/improve/category/BatteryListener;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcn/nubia/improve/category/BatteryListener;)Z
    .locals 0

    .line 10
    iget-boolean p0, p0, Lcn/nubia/improve/category/BatteryListener;->mIsPowerConnect:Z

    return p0
.end method

.method static synthetic access$202(Lcn/nubia/improve/category/BatteryListener;Z)Z
    .locals 0

    .line 10
    iput-boolean p1, p0, Lcn/nubia/improve/category/BatteryListener;->mIsPowerConnect:Z

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/improve/category/BatteryListener;)Lcn/nubia/improve/category/BatteryListener$BatteryStateListener;
    .locals 0

    .line 10
    iget-object p0, p0, Lcn/nubia/improve/category/BatteryListener;->mBatteryStateListener:Lcn/nubia/improve/category/BatteryListener$BatteryStateListener;

    return-object p0
.end method


# virtual methods
.method public register(Lcn/nubia/improve/category/BatteryListener$BatteryStateListener;)V
    .locals 2

    .line 29
    iput-object p1, p0, Lcn/nubia/improve/category/BatteryListener;->mBatteryStateListener:Lcn/nubia/improve/category/BatteryListener$BatteryStateListener;

    .line 30
    iget-object p1, p0, Lcn/nubia/improve/category/BatteryListener;->mReceiver:Lcn/nubia/improve/category/BatteryListener$BatteryBroadcastReceiver;

    if-eqz p1, :cond_0

    .line 31
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 33
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 34
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcn/nubia/improve/category/BatteryListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/improve/category/BatteryListener;->mReceiver:Lcn/nubia/improve/category/BatteryListener$BatteryBroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string p1, "BatteryListener"

    const-string v0, "txh register done"

    .line 36
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public unregister()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcn/nubia/improve/category/BatteryListener;->mReceiver:Lcn/nubia/improve/category/BatteryListener$BatteryBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 42
    iget-object v1, p0, Lcn/nubia/improve/category/BatteryListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string v0, "BatteryListener"

    const-string v1, "txh unregister done"

    .line 43
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
