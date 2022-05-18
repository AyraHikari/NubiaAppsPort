.class public Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "WeatherVerticalWidgetProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WeatherVerticalWidgetProvider"

.field private static lastWEATHER_UPDATE:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const-wide/16 v0, 0x0

    sput-wide v0, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider;->lastWEATHER_UPDATE:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private static initRemoteView(Landroid/content/Context;I)Landroid/widget/RemoteViews;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gray"    # I

    .prologue
    .line 245
    const-string v4, "nubia.widget.NubiaWeatherVerticalTextClock"

    invoke-static {v4}, Lcn/nubia/weather/ui/widget/WidgetProvider;->isFontClassExisted(Ljava/lang/String;)Z

    move-result v2

    .line 246
    .local v2, "isNubiaWeatherTextClockExist":Z
    const-string v4, "nubia.widget.NubiaWeatherTextView"

    invoke-static {v4}, Lcn/nubia/weather/ui/widget/WidgetProvider;->isFontClassExisted(Ljava/lang/String;)Z

    move-result v1

    .line 247
    .local v1, "isNubiaTextViewExist":Z
    const-string v4, "nubia.widget.NubiaTextClock"

    invoke-static {v4}, Lcn/nubia/weather/ui/widget/WidgetProvider;->isFontClassExisted(Ljava/lang/String;)Z

    move-result v0

    .line 248
    .local v0, "isNubiaTextClockExist":Z
    const/4 v3, 0x0

    .line 249
    .local v3, "remoteViews":Landroid/widget/RemoteViews;
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 250
    const/16 v4, 0xbe

    if-le p1, v4, :cond_0

    .line 251
    new-instance v3, Landroid/widget/RemoteViews;

    .end local v3    # "remoteViews":Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f030061

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 264
    .restart local v3    # "remoteViews":Landroid/widget/RemoteViews;
    :goto_0
    return-object v3

    .line 254
    :cond_0
    new-instance v3, Landroid/widget/RemoteViews;

    .end local v3    # "remoteViews":Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f030060

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local v3    # "remoteViews":Landroid/widget/RemoteViews;
    goto :goto_0

    .line 257
    :cond_1
    if-eqz v0, :cond_2

    .line 258
    new-instance v3, Landroid/widget/RemoteViews;

    .end local v3    # "remoteViews":Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f030063

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local v3    # "remoteViews":Landroid/widget/RemoteViews;
    goto :goto_0

    .line 261
    :cond_2
    new-instance v3, Landroid/widget/RemoteViews;

    .end local v3    # "remoteViews":Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f030062

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local v3    # "remoteViews":Landroid/widget/RemoteViews;
    goto :goto_0
.end method

.method private isHPJYVersion()Z
    .locals 9

    .prologue
    .line 442
    const/4 v3, 0x0

    .line 443
    .local v3, "get":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    .line 445
    .local v4, "version":Ljava/lang/String;
    :try_start_0
    const-string v5, "android.os.SystemProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 446
    .local v1, "cls":Ljava/lang/Class;
    const-string v5, "get"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 447
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "persist.sys.nubia.theme_devices"

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    .end local v1    # "cls":Ljava/lang/Class;
    :goto_0
    const-string v5, "WeatherVerticalWidgetProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isHPJYVersion: version : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const-string v5, "6692"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    return v5

    .line 448
    :catch_0
    move-exception v2

    .line 449
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static updateDigitalClockView(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;

    .prologue
    const v2, 0x7f100161

    .line 402
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 403
    .local v0, "is24HourFormat":Z
    if-eqz v0, :cond_0

    .line 404
    const/16 v1, 0x8

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 408
    :goto_0
    return-void

    .line 406
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0
.end method


# virtual methods
.method protected IsDeskClcokNewInent(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 356
    const/4 v0, 0x0

    .line 357
    .local v0, "flag":Z
    new-instance v1, Landroid/content/Intent;

    const-string v3, "cn.nubia.intent.action.NUBIA.TIMEMANAGER"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 358
    .local v1, "newIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 359
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 360
    const/4 v0, 0x1

    .line 362
    :cond_0
    return v0
.end method

.method protected getWeatherDate(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    .line 366
    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->initWeatherDataSync(Landroid/content/Context;)Z

    .line 367
    const/4 v2, 0x0

    .line 368
    .local v2, "grayValue":I
    invoke-static {p1}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getWallColor(Landroid/content/Context;)I

    move-result v2

    .line 369
    invoke-static {p1, v2}, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider;->initRemoteView(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object v7

    .line 370
    .local v7, "remoteViews":Landroid/widget/RemoteViews;
    if-nez v7, :cond_0

    .line 399
    :goto_0
    return-void

    .line 373
    :cond_0
    invoke-virtual {p0, p1, v7}, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider;->updateWeather(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 375
    new-instance v4, Landroid/content/Intent;

    const-class v8, Lcn/nubia/weather/ui/activity/HomeActivity;

    invoke-direct {v4, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 376
    .local v4, "intentWeather":Landroid/content/Intent;
    const-string v8, "WIDGET_ACTION"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    invoke-static {p1, v10, v4, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 378
    .local v6, "piW":Landroid/app/PendingIntent;
    const v8, 0x7f100163

    invoke-virtual {v7, v8, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 380
    const/4 v3, 0x0

    .line 381
    .local v3, "intentDeskClock":Landroid/content/Intent;
    invoke-virtual {p0, p1}, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider;->IsDeskClcokNewInent(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 382
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intentDeskClock":Landroid/content/Intent;
    const-string v8, "cn.nubia.intent.action.NUBIA.TIMEMANAGER"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 386
    .restart local v3    # "intentDeskClock":Landroid/content/Intent;
    :goto_1
    const-string v8, "deskclock.select.tab"

    const/4 v9, 0x1

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 387
    invoke-static {p1, v10, v3, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 388
    .local v5, "piD":Landroid/app/PendingIntent;
    const v8, 0x7f10015d

    invoke-virtual {v7, v8, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 389
    const v8, 0x7f10015e

    invoke-virtual {v7, v8, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 391
    invoke-static {p1}, Lcn/nubia/weather/utils/CommonUtil;->isExistCalendarIntent(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 392
    invoke-static {}, Lcn/nubia/weather/utils/CommonUtil;->getCalendarLauncherIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-static {p1, v10, v8, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 393
    .local v0, "calendarPendingIntent":Landroid/app/PendingIntent;
    const v8, 0x7f100162

    invoke-virtual {v7, v8, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 396
    .end local v0    # "calendarPendingIntent":Landroid/app/PendingIntent;
    :cond_1
    new-instance v1, Landroid/content/ComponentName;

    const-class v8, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider;

    invoke-direct {v1, p1, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 398
    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v8

    invoke-virtual {v8, v1, v7}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    goto :goto_0

    .line 384
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v5    # "piD":Landroid/app/PendingIntent;
    :cond_2
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intentDeskClock":Landroid/content/Intent;
    const-string v8, "android.intent.action.NUBIA.TIMEMANAGER"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v3    # "intentDeskClock":Landroid/content/Intent;
    goto :goto_1
.end method

.method public onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetId"    # I
    .param p4, "newOptions"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1, p2, p3, p4}, Landroid/appwidget/AppWidgetProvider;->onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V

    .line 39
    new-instance v0, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider$1;

    invoke-direct {v0, p0, p4, p1, p3}, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider$1;-><init>(Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider;Landroid/os/Bundle;Landroid/content/Context;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 66
    invoke-virtual {v0, v1}, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 67
    return-void
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetIds"    # [I

    .prologue
    .line 71
    const-string v1, "WeatherVerticalWidgetProvider"

    const-string v2, "onDeleted"

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    array-length v2, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v0, p2, v1

    .line 73
    .local v0, "appWidgetId":I
    const-string v3, "WeatherVerticalWidgetProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DELETE WID"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WID"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcn/nubia/weather/utils/PreferenceUtils;->removePrefString(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    .end local v0    # "appWidgetId":I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 77
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    const-string v0, "WeatherVerticalWidgetProvider"

    const-string v1, "onDisabled"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 91
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    const-string v0, "WeatherVerticalWidgetProvider"

    const-string v1, "onEnabled"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance v0, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider$2;

    invoke-direct {v0, p0, p1}, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider$2;-><init>(Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 102
    invoke-virtual {v0, v1}, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 112
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 113
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x0

    .line 117
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.intent.action.NUBIA.WEATHER.UPDATE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 120
    .local v2, "currentTime":J
    const/4 v5, 0x0

    .line 121
    .local v5, "updateFlag":I
    if-eqz p2, :cond_0

    .line 122
    const-string v6, "weather_update"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 123
    const-string v6, "WeatherVerticalWidgetProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " WEATHER_UPDATE  updateFlag : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_0
    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    .line 126
    sget-wide v6, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider;->lastWEATHER_UPDATE:J

    sub-long v6, v2, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/32 v8, 0x927c0

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 127
    const-string v6, "WeatherVerticalWidgetProvider"

    const-string v7, " WEATHER_UPDATE  return "

    invoke-static {v6, v7}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .end local v2    # "currentTime":J
    .end local v5    # "updateFlag":I
    :goto_0
    return-void

    .line 131
    .restart local v2    # "currentTime":J
    .restart local v5    # "updateFlag":I
    :cond_1
    sput-wide v2, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider;->lastWEATHER_UPDATE:J

    .line 133
    .end local v2    # "currentTime":J
    .end local v5    # "updateFlag":I
    :cond_2
    const-string v6, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "com.nubia.themechanged"

    .line 134
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 135
    :cond_3
    const-string v6, "WeatherVerticalWidgetProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onRecevice "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    move-object v1, p1

    .line 137
    .local v1, "con":Landroid/content/Context;
    new-instance v6, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider$3;

    invoke-direct {v6, p0, v1}, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider$3;-><init>(Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider;Landroid/content/Context;)V

    new-array v7, v10, [Ljava/lang/Void;

    .line 143
    invoke-virtual {v6, v7}, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 145
    .end local v1    # "con":Landroid/content/Context;
    :cond_4
    const-string v6, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "com.nubia.themechanged"

    .line 146
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "android.intent.action.NUBIA.WEATHER.UPDATE"

    .line 147
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "android.intent.action.DATE_CHANGED"

    .line 148
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "android.intent.action.TIMEZONE_CHANGED"

    .line 149
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "android.intent.action.TIME_SET"

    .line 150
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "android.intent.action.LOCALE_CHANGED"

    .line 151
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 152
    :cond_5
    move-object v4, p1

    .line 153
    .local v4, "iContext":Landroid/content/Context;
    new-instance v6, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider$4;

    invoke-direct {v6, p0, v4}, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider$4;-><init>(Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider;Landroid/content/Context;)V

    new-array v7, v10, [Ljava/lang/Void;

    .line 164
    invoke-virtual {v6, v7}, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 166
    .end local v4    # "iContext":Landroid/content/Context;
    :cond_6
    const-string v6, "WeatherVerticalWidgetProvider"

    const-string v7, " WEATHER_UPDATE  END "

    invoke-static {v6, v7}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 173
    const-string v0, "WeatherVerticalWidgetProvider"

    const-string v1, "onUpdate"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    new-instance v0, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider$5;

    invoke-direct {v0, p0, p1, p3}, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider$5;-><init>(Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider;Landroid/content/Context;[I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 180
    invoke-virtual {v0, v1}, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 181
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 182
    return-void
.end method

.method protected reverseWithRecordedLocs(Landroid/content/Context;[IZ)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetIds"    # [I
    .param p3, "updateTextClock"    # Z

    .prologue
    .line 326
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v19, v0

    const/4 v2, 0x0

    move/from16 v18, v2

    :goto_0
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    aget v6, p2, v18

    .line 327
    .local v6, "appWidgetId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 328
    .local v17, "tempLoc":Ljava/lang/String;
    if-eqz v17, :cond_1

    const-string v2, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 329
    const-string v2, " "

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 330
    .local v16, "locStrs":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 331
    .local v4, "loc1":[I
    const/4 v5, 0x0

    .line 333
    .local v5, "loc2":[I
    const/4 v2, 0x2

    :try_start_0
    new-array v14, v2, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-object v3, v16, v3

    .line 334
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v14, v2

    const/4 v2, 0x1

    const/4 v3, 0x1

    aget-object v3, v16, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v14, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    .end local v4    # "loc1":[I
    .local v14, "loc1":[I
    const/4 v2, 0x2

    :try_start_1
    new-array v15, v2, [I

    const/4 v2, 0x0

    const/4 v3, 0x2

    aget-object v3, v16, v3

    .line 337
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v15, v2

    const/4 v2, 0x1

    const/4 v3, 0x3

    aget-object v3, v16, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v15, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v5    # "loc2":[I
    .local v15, "loc2":[I
    move-object v5, v15

    .end local v15    # "loc2":[I
    .restart local v5    # "loc2":[I
    move-object v4, v14

    .line 342
    .end local v14    # "loc1":[I
    .restart local v4    # "loc1":[I
    :goto_1
    const/4 v2, 0x0

    aget v2, v5, v2

    const/4 v3, 0x0

    aget v3, v4, v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_0

    const/4 v2, 0x1

    aget v2, v5, v2

    const/4 v3, 0x1

    aget v3, v4, v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_0

    .line 343
    const-string v2, "WeatherVerticalWidgetProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setWidgetColor with  locs for WID"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v7, p3

    .line 344
    invoke-virtual/range {v2 .. v7}, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider;->setWidgetColor(Landroid/content/Context;[I[IIZ)V

    .line 326
    .end local v4    # "loc1":[I
    .end local v5    # "loc2":[I
    .end local v16    # "locStrs":[Ljava/lang/String;
    :goto_2
    add-int/lit8 v2, v18, 0x1

    move/from16 v18, v2

    goto/16 :goto_0

    .line 339
    .restart local v4    # "loc1":[I
    .restart local v5    # "loc2":[I
    .restart local v16    # "locStrs":[Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 340
    .local v13, "e":Ljava/lang/Exception;
    :goto_3
    const-string v2, "WeatherVerticalWidgetProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parse widget locs failed : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/weather/utils/ZLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 346
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v2, "WeatherVerticalWidgetProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid locs stored in tempLoc for WID"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/weather/utils/ZLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 349
    .end local v4    # "loc1":[I
    .end local v5    # "loc2":[I
    .end local v16    # "locStrs":[Ljava/lang/String;
    :cond_1
    const-string v2, "WeatherVerticalWidgetProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setWidgetColor with empty locs for WID"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const/4 v2, 0x2

    new-array v9, v2, [I

    const/4 v2, 0x2

    new-array v10, v2, [I

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move v11, v6

    move/from16 v12, p3

    invoke-virtual/range {v7 .. v12}, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider;->setWidgetColor(Landroid/content/Context;[I[IIZ)V

    goto :goto_2

    .line 353
    .end local v6    # "appWidgetId":I
    .end local v17    # "tempLoc":Ljava/lang/String;
    :cond_2
    return-void

    .line 339
    .restart local v5    # "loc2":[I
    .restart local v6    # "appWidgetId":I
    .restart local v14    # "loc1":[I
    .restart local v16    # "locStrs":[Ljava/lang/String;
    .restart local v17    # "tempLoc":Ljava/lang/String;
    :catch_1
    move-exception v13

    move-object v4, v14

    .end local v14    # "loc1":[I
    .restart local v4    # "loc1":[I
    goto :goto_3
.end method

.method protected setWidgetColor(Landroid/content/Context;[I[IIZ)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loc1"    # [I
    .param p3, "loc2"    # [I
    .param p4, "appWidgetId"    # I
    .param p5, "updateTextClock"    # Z

    .prologue
    .line 186
    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->initWeatherDataSync(Landroid/content/Context;)Z

    .line 187
    const/4 v3, 0x0

    .line 188
    .local v3, "grayValue":I
    invoke-static {p1}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getWallColor(Landroid/content/Context;)I

    move-result v3

    .line 189
    invoke-static {p1, v3}, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider;->initRemoteView(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object v8

    .line 190
    .local v8, "remoteViews":Landroid/widget/RemoteViews;
    if-nez v8, :cond_0

    .line 242
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-static {p1, v8}, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider;->updateDigitalClockView(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 195
    invoke-direct {p0}, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider;->isHPJYVersion()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c006a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 196
    .local v9, "widgetColor":I
    :goto_1
    const/16 v10, 0xbe

    if-le v3, v10, :cond_1

    .line 197
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0069

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 199
    :cond_1
    const v10, 0x7f10015d

    invoke-virtual {v8, v10, v9}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 200
    const v10, 0x7f10015e

    invoke-virtual {v8, v10, v9}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 201
    const v10, 0x7f100161

    invoke-virtual {v8, v10, v9}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 202
    const v10, 0x7f100165

    invoke-virtual {v8, v10, v9}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 203
    const v10, 0x7f100164

    invoke-virtual {v8, v10, v9}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 204
    const v10, 0x7f100162

    invoke-virtual {v8, v10, v9}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 205
    const v10, 0x7f100160

    invoke-virtual {v8, v10, v9}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 207
    new-instance v5, Landroid/content/Intent;

    const-class v10, Lcn/nubia/weather/ui/activity/HomeActivity;

    invoke-direct {v5, p1, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    .local v5, "intentWeather":Landroid/content/Intent;
    const-string v10, "WIDGET_ACTION"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {p1, v10, v5, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 210
    .local v7, "piW":Landroid/app/PendingIntent;
    const v10, 0x7f100163

    invoke-virtual {v8, v10, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 212
    const/4 v4, 0x0

    .line 213
    .local v4, "intentDeskClock":Landroid/content/Intent;
    invoke-static {p1}, Lcn/nubia/weather/ui/widget/WidgetProvider;->IsDeskClcokNewInent(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 214
    new-instance v4, Landroid/content/Intent;

    .end local v4    # "intentDeskClock":Landroid/content/Intent;
    const-string v10, "cn.nubia.intent.action.NUBIA.TIMEMANAGER"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 218
    .restart local v4    # "intentDeskClock":Landroid/content/Intent;
    :goto_2
    const-string v10, "deskclock.select.tab"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 219
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {p1, v10, v4, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 220
    .local v6, "piD":Landroid/app/PendingIntent;
    const v10, 0x7f10015d

    invoke-virtual {v8, v10, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 221
    const v10, 0x7f10015e

    invoke-virtual {v8, v10, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 222
    invoke-static {p1}, Lcn/nubia/weather/utils/CommonUtil;->isExistCalendarIntent(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 223
    const/4 v10, 0x0

    invoke-static {}, Lcn/nubia/weather/utils/CommonUtil;->getCalendarLauncherIntent()Landroid/content/Intent;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {p1, v10, v11, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 224
    .local v1, "calendarPendingIntent":Landroid/app/PendingIntent;
    const v10, 0x7f100162

    invoke-virtual {v8, v10, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 226
    .end local v1    # "calendarPendingIntent":Landroid/app/PendingIntent;
    :cond_2
    if-eqz p5, :cond_5

    .line 227
    invoke-static {p1, v8}, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider;->updateDigitalClockView(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 231
    :goto_3
    const/4 v10, -0x1

    move/from16 v0, p4

    if-ne v0, v10, :cond_6

    .line 232
    new-instance v2, Landroid/content/ComponentName;

    const-class v10, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider;

    invoke-direct {v2, p1, v10}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 234
    .local v2, "componentName":Landroid/content/ComponentName;
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v10

    invoke-virtual {v10, v2, v8}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 236
    const-string v10, "WeatherVerticalWidgetProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "update remoteViews "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 195
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v4    # "intentDeskClock":Landroid/content/Intent;
    .end local v5    # "intentWeather":Landroid/content/Intent;
    .end local v6    # "piD":Landroid/app/PendingIntent;
    .end local v7    # "piW":Landroid/app/PendingIntent;
    .end local v9    # "widgetColor":I
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0068

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    goto/16 :goto_1

    .line 216
    .restart local v4    # "intentDeskClock":Landroid/content/Intent;
    .restart local v5    # "intentWeather":Landroid/content/Intent;
    .restart local v7    # "piW":Landroid/app/PendingIntent;
    .restart local v9    # "widgetColor":I
    :cond_4
    new-instance v4, Landroid/content/Intent;

    .end local v4    # "intentDeskClock":Landroid/content/Intent;
    const-string v10, "android.intent.action.NUBIA.TIMEMANAGER"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v4    # "intentDeskClock":Landroid/content/Intent;
    goto :goto_2

    .line 229
    .restart local v6    # "piD":Landroid/app/PendingIntent;
    :cond_5
    invoke-virtual {p0, p1, v8}, Lcn/nubia/weather/ui/widget/WeatherVerticalWidgetProvider;->updateWeather(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    goto :goto_3

    .line 238
    :cond_6
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v10

    move/from16 v0, p4

    invoke-virtual {v10, v0, v8}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 239
    const-string v10, "WeatherVerticalWidgetProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "update remoteViews "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected updateWeather(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "remoteViews"    # Landroid/widget/RemoteViews;

    .prologue
    .line 268
    const-string v12, "WeatherVerticalWidgetProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateWeather begin"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v1

    .line 270
    .local v1, "WeatherCache":Lcn/nubia/weather/ui/widget/WidgetDataCache;
    iget-object v3, v1, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCity:Ljava/lang/String;

    .line 271
    .local v3, "cityName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090172

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 272
    .local v5, "ellipsis":Ljava/lang/String;
    iget-object v9, v1, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mWeatherType:Ljava/lang/String;

    .line 273
    .local v9, "weatherType":Ljava/lang/String;
    const-string v6, "--"

    .line 274
    .local v6, "noDataSign":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    const v12, 0x7f09018c

    .line 275
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 276
    :cond_0
    const v12, 0x7f100164

    const/16 v13, 0x8

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 277
    const v12, 0x7f100165

    const/16 v13, 0x8

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 322
    :goto_0
    return-void

    .line 279
    :cond_1
    if-eqz v9, :cond_2

    .line 280
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2

    .line 282
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f09018d

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 281
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 283
    :cond_2
    const-string v12, "WeatherVerticalWidgetProvider"

    const-string v13, " return  "

    invoke-static {v12, v13}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 286
    :cond_3
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 287
    const v12, 0x7f100164

    const/16 v13, 0x8

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 290
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 291
    .local v4, "cityNameLen":I
    iget-object v12, v1, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mWeatherType:Ljava/lang/String;

    .line 292
    invoke-static {v12}, Lcn/nubia/weather/utils/ParseUtil;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 291
    invoke-static {v12}, Lcn/nubia/weather/utils/WeatherStateUtils;->getWidgetWeatherType(I)I

    move-result v7

    .line 293
    .local v7, "resid":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 294
    .local v11, "weatherTypeStr":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v10

    .line 295
    .local v10, "weatherTypeLen":I
    const/4 v12, 0x7

    if-ne v4, v12, :cond_5

    .line 296
    const v12, 0x7f100164

    const/16 v13, 0x8

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 309
    :goto_1
    iget-object v12, v1, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCurrentTemp:Ljava/lang/String;

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    const-string v8, ""

    .line 311
    .local v8, "tempStr":Ljava/lang/String;
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f09004a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 312
    .local v2, "centigade":Ljava/lang/String;
    const v12, 0x7f100165

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "C"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 313
    const-string v12, "WeatherVerticalWidgetProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "tempStr = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 316
    const v12, 0x7f100165

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_0

    .line 297
    .end local v2    # "centigade":Ljava/lang/String;
    .end local v8    # "tempStr":Ljava/lang/String;
    :cond_5
    const/4 v12, 0x7

    if-le v4, v12, :cond_6

    .line 298
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x0

    const/4 v14, 0x7

    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 299
    const v12, 0x7f100164

    const/16 v13, 0x8

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_1

    .line 306
    :cond_6
    const v12, 0x7f100164

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 307
    const v12, 0x7f100164

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 309
    :cond_7
    iget-object v8, v1, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCurrentTemp:Ljava/lang/String;

    goto/16 :goto_2

    .line 318
    .restart local v2    # "centigade":Ljava/lang/String;
    .restart local v8    # "tempStr":Ljava/lang/String;
    :cond_8
    const v12, 0x7f100164

    const/16 v13, 0x8

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 319
    const v12, 0x7f100165

    const/16 v13, 0x8

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_0
.end method
