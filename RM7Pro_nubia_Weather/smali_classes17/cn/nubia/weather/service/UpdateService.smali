.class public Lcn/nubia/weather/service/UpdateService;
.super Landroid/app/job/JobService;
.source "UpdateService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UpdateService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static hasNubiaJobExtra()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 156
    :try_start_0
    const-class v3, Landroid/app/job/JobInfo$Builder;

    const-string v4, "setNubiaOrder"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    return v1

    .line 157
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_0
    move-exception v0

    .restart local v0    # "e":Ljava/lang/NoSuchMethodException;
    move v1, v2

    .line 158
    goto :goto_0
.end method

.method private setNextAlarm()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 124
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Lcn/nubia/weather/service/UpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 126
    .local v0, "manager":Landroid/app/AlarmManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0x6ddd00

    add-long v4, v6, v8

    .line 127
    .local v4, "triggerTime":J
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcn/nubia/weather/utils/AlarmReceiver;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    .local v1, "newIntent":Landroid/content/Intent;
    const-string v3, "cn.nubia.weather.TYPE_UPDATE_ALL_CITY_WEATHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    invoke-static {p0, v10, v1, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 130
    .local v2, "pi":Landroid/app/PendingIntent;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 131
    const-string v3, "UpdateService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Next UpdateService will be startted at time ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v3, "LAST_UPDATE_ALARM_TIME"

    invoke-static {p0, v3, v4, v5}, Lcn/nubia/weather/utils/PreferenceUtils;->setSettingLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 133
    return-void
.end method

.method public static setNubiaOrder(Landroid/app/job/JobInfo$Builder;Ljava/lang/String;)V
    .locals 9
    .param p0, "builder"    # Landroid/app/job/JobInfo$Builder;
    .param p1, "orderName"    # Ljava/lang/String;

    .prologue
    .line 143
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "setNubiaOrder"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 144
    .local v2, "method":Ljava/lang/reflect/Method;
    const-class v4, Landroid/app/job/JobInfo;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 145
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .line 146
    .local v3, "order":I
    const-string v4, "UpdateService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setNubiaOrder order = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "order":I
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 150
    const-string v4, "UpdateService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setNubiaOrder order = Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static startJobService(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    const-string v3, "UpdateService"

    const-string v4, "start update jobService"

    invoke-static {v3, v4}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    const/4 v3, 0x0

    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcn/nubia/weather/service/UpdateService;

    invoke-direct {v4, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, v3, v4}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 167
    .local v0, "builder":Landroid/app/job/JobInfo$Builder;
    const-wide/16 v4, 0x64

    invoke-virtual {v0, v4, v5}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    .line 168
    invoke-static {}, Lcn/nubia/weather/service/UpdateService;->hasNubiaJobExtra()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 169
    const-string v3, "UpdateService"

    const-string v4, "hasNubiaJobExtra()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v3, "IS_NUBIA"

    invoke-static {v0, v3}, Lcn/nubia/weather/service/UpdateService;->setNubiaOrder(Landroid/app/job/JobInfo$Builder;Ljava/lang/String;)V

    .line 172
    :cond_0
    const-string v3, "jobscheduler"

    .line 173
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobScheduler;

    .line 174
    .local v2, "scheduler":Landroid/app/job/JobScheduler;
    const-string v3, "UpdateService"

    const-string v4, "Schedule JobService"

    invoke-static {v3, v4}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :try_start_0
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v1

    .line 178
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "UpdateService"

    const-string v4, "schedule update JobService exception"

    invoke-static {v3, v4}, Lcn/nubia/weather/utils/ZLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    .line 73
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 138
    invoke-super {p0}, Landroid/app/job/JobService;->onDestroy()V

    .line 139
    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3
    .param p1, "arg0"    # Landroid/app/job/JobParameters;

    .prologue
    const/4 v2, 0x1

    .line 77
    const-string v0, "UpdateService"

    const-string v1, "UpdateService start"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/weather/app/WeatherApplication;->isSupportUpdate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    invoke-virtual {p0}, Lcn/nubia/weather/service/UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/weather/utils/NetUtil;->getNetworkContectState(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    const-string v0, "UpdateService"

    const-string v1, "No network"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcn/nubia/weather/service/UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/weather/service/WeatherJobService;->startJobService(Landroid/content/Context;)V

    .line 97
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcn/nubia/weather/service/UpdateService;->setNextAlarm()V

    .line 104
    :goto_1
    const-string v0, "UpdateService"

    const-string v1, "UpdateService stopSelf"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/nubia/weather/service/UpdateService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 107
    return v2

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/weather/service/UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/weather/permission/PermissionRequestUtil;->checkPermissionsInBackground(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcn/nubia/weather/service/UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/weather/presenter/OverAllControl;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/presenter/OverAllControl;

    move-result-object v0

    .line 93
    invoke-virtual {v0, v2}, Lcn/nubia/weather/presenter/OverAllControl;->appStartUpdate(Z)V

    goto :goto_0

    .line 99
    :cond_2
    const-string v0, "UpdateService"

    const-string v1, "update is unabled"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/app/job/JobParameters;

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method
