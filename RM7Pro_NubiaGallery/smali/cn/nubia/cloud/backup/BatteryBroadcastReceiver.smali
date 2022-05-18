.class public Lcn/nubia/cloud/backup/BatteryBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryBroadcastReceiver.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentLevel:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcn/nubia/cloud/backup/BatteryBroadcastReceiver;->mCurrentLevel:I

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcn/nubia/cloud/backup/BatteryBroadcastReceiver;->mContext:Landroid/content/Context;

    return-void
.end method

.method private setBatteryCharging()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcn/nubia/cloud/backup/BatteryBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/cloud/backup/Backup;->getInstance(Landroid/content/Context;)Lcn/nubia/cloud/backup/Backup;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/cloud/backup/Backup;->setCharging(Z)V

    return-void
.end method

.method private setBatteryDisCharging()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcn/nubia/cloud/backup/BatteryBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/cloud/backup/Backup;->getInstance(Landroid/content/Context;)Lcn/nubia/cloud/backup/Backup;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/cloud/backup/Backup;->setDisCharging()V

    return-void
.end method


# virtual methods
.method public getCurrentLevel()I
    .locals 1

    .line 34
    iget v0, p0, Lcn/nubia/cloud/backup/BatteryBroadcastReceiver;->mCurrentLevel:I

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 15
    iput-object p1, p0, Lcn/nubia/cloud/backup/BatteryBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 17
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    const-string v0, "status"

    .line 19
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x2

    const-string v0, "BatteryBroadcastReceiver"

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    const-string p1, " discharging............"

    .line 26
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-direct {p0}, Lcn/nubia/cloud/backup/BatteryBroadcastReceiver;->setBatteryDisCharging()V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, " charging............"

    .line 22
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-direct {p0}, Lcn/nubia/cloud/backup/BatteryBroadcastReceiver;->setBatteryCharging()V

    :cond_2
    :goto_1
    return-void
.end method
