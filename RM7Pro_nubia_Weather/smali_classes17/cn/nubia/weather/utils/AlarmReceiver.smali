.class public Lcn/nubia/weather/utils/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AlarmReceiveer"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private startUpdateService(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-static {p1}, Lcn/nubia/weather/service/UpdateService;->startJobService(Landroid/content/Context;)V

    .line 43
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 17
    const-string v0, "AlarmReceiveer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlarmReceiver onReceive Action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    const-string v0, "jobServiceKey"

    const-wide/16 v2, 0x0

    invoke-static {p1, v0, v2, v3}, Lcn/nubia/weather/utils/PreferenceUtils;->setSettingLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 20
    invoke-direct {p0, p1}, Lcn/nubia/weather/utils/AlarmReceiver;->startUpdateService(Landroid/content/Context;)V

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 22
    :cond_1
    const-string v0, "cn.nubia.weather.TYPE_UPDATE_ALL_CITY_WEATHER"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23
    invoke-direct {p0, p1}, Lcn/nubia/weather/utils/AlarmReceiver;->startUpdateService(Landroid/content/Context;)V

    goto :goto_0

    .line 25
    :cond_2
    const-string v0, "cn.nubia.weather.START_UPDATE_SERVICE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/weather/app/WeatherApplication;->getIsUpdateEnabled()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 27
    invoke-direct {p0, p1}, Lcn/nubia/weather/utils/AlarmReceiver;->startUpdateService(Landroid/content/Context;)V

    goto :goto_0
.end method
