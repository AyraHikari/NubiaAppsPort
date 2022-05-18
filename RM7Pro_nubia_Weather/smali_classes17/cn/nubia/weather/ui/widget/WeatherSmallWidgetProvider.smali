.class public Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider;
.super Lcn/nubia/weather/ui/widget/WidgetProvider;
.source "WeatherSmallWidgetProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WeatherSmallWidgetProvider"

.field private static lastWEATHER_UPDATE:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    const-wide/16 v0, 0x0

    sput-wide v0, Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider;->lastWEATHER_UPDATE:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcn/nubia/weather/ui/widget/WidgetProvider;-><init>()V

    return-void
.end method

.method private static initRemoteView(Landroid/content/Context;I)Landroid/widget/RemoteViews;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gray"    # I

    .prologue
    .line 185
    const-string v4, "nubia.widget.NubiaWeatherTextClock"

    invoke-static {v4}, Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider;->isFontClassExisted(Ljava/lang/String;)Z

    move-result v2

    .line 186
    .local v2, "isNubiaWeatherTextClockExist":Z
    const-string v4, "nubia.widget.NubiaWeatherTextView"

    invoke-static {v4}, Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider;->isFontClassExisted(Ljava/lang/String;)Z

    move-result v1

    .line 187
    .local v1, "isNubiaTextViewExist":Z
    const-string v4, "nubia.widget.NubiaTextClock"

    invoke-static {v4}, Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider;->isFontClassExisted(Ljava/lang/String;)Z

    move-result v0

    .line 188
    .local v0, "isNubiaTextClockExist":Z
    const/4 v3, 0x0

    .line 189
    .local v3, "remoteViews":Landroid/widget/RemoteViews;
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 190
    const/16 v4, 0xbe

    if-le p1, v4, :cond_0

    .line 191
    new-instance v3, Landroid/widget/RemoteViews;

    .end local v3    # "remoteViews":Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f030069

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 201
    .restart local v3    # "remoteViews":Landroid/widget/RemoteViews;
    :goto_0
    return-object v3

    .line 193
    :cond_0
    new-instance v3, Landroid/widget/RemoteViews;

    .end local v3    # "remoteViews":Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f030068

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local v3    # "remoteViews":Landroid/widget/RemoteViews;
    goto :goto_0

    .line 195
    :cond_1
    if-eqz v0, :cond_2

    .line 196
    new-instance v3, Landroid/widget/RemoteViews;

    .end local v3    # "remoteViews":Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f03006b

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local v3    # "remoteViews":Landroid/widget/RemoteViews;
    goto :goto_0

    .line 198
    :cond_2
    new-instance v3, Landroid/widget/RemoteViews;

    .end local v3    # "remoteViews":Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f03006a

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local v3    # "remoteViews":Landroid/widget/RemoteViews;
    goto :goto_0
.end method


# virtual methods
.method protected getWeatherDate(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    .line 138
    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->initWeatherDataSync(Landroid/content/Context;)Z

    .line 139
    const/4 v2, 0x0

    .line 140
    .local v2, "grayValue":I
    invoke-static {p1}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getWallColor(Landroid/content/Context;)I

    move-result v2

    .line 141
    invoke-static {p1, v2}, Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider;->initRemoteView(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object v7

    .line 142
    .local v7, "remoteViews":Landroid/widget/RemoteViews;
    if-nez v7, :cond_0

    .line 170
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-static {p1, v7}, Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider;->updateDigitalClockView(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 146
    invoke-virtual {p0, p1, v7}, Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider;->updateWeather(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 148
    new-instance v4, Landroid/content/Intent;

    const-class v8, Lcn/nubia/weather/ui/activity/HomeActivity;

    invoke-direct {v4, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    .local v4, "intentWeather":Landroid/content/Intent;
    const-string v8, "WIDGET_ACTION"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    invoke-static {p1, v10, v4, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 151
    .local v6, "piW":Landroid/app/PendingIntent;
    const v8, 0x7f100163

    invoke-virtual {v7, v8, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 153
    const/4 v3, 0x0

    .line 154
    .local v3, "intentDeskClock":Landroid/content/Intent;
    invoke-static {p1}, Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider;->IsDeskClcokNewInent(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 155
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intentDeskClock":Landroid/content/Intent;
    const-string v8, "cn.nubia.intent.action.NUBIA.TIMEMANAGER"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    .restart local v3    # "intentDeskClock":Landroid/content/Intent;
    :goto_1
    const-string v8, "deskclock.select.tab"

    const/4 v9, 0x1

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 160
    invoke-static {p1, v10, v3, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 161
    .local v5, "piD":Landroid/app/PendingIntent;
    const v8, 0x7f100169

    invoke-virtual {v7, v8, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 163
    invoke-static {p1}, Lcn/nubia/weather/utils/CommonUtil;->isExistCalendarIntent(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 164
    invoke-static {}, Lcn/nubia/weather/utils/CommonUtil;->getCalendarLauncherIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-static {p1, v10, v8, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 165
    .local v0, "calendarPendingIntent":Landroid/app/PendingIntent;
    const v8, 0x7f100162

    invoke-virtual {v7, v8, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 168
    .end local v0    # "calendarPendingIntent":Landroid/app/PendingIntent;
    :cond_1
    new-instance v1, Landroid/content/ComponentName;

    const-class v8, Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider;

    invoke-direct {v1, p1, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v8

    invoke-virtual {v8, v1, v7}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    goto :goto_0

    .line 157
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

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x0

    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.intent.action.NUBIA.WEATHER.UPDATE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 29
    .local v2, "currentTime":J
    const/4 v5, 0x0

    .line 30
    .local v5, "updateFlag":I
    if-eqz p2, :cond_0

    .line 31
    const-string v6, "weather_update"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 32
    const-string v6, "WeatherSmallWidgetProvider"

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

    .line 34
    :cond_0
    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    .line 35
    sget-wide v6, Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider;->lastWEATHER_UPDATE:J

    sub-long v6, v2, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/32 v8, 0x927c0

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 36
    const-string v6, "WeatherSmallWidgetProvider"

    const-string v7, " WEATHER_UPDATE  return "

    invoke-static {v6, v7}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .end local v2    # "currentTime":J
    .end local v5    # "updateFlag":I
    :goto_0
    return-void

    .line 40
    .restart local v2    # "currentTime":J
    .restart local v5    # "updateFlag":I
    :cond_1
    sput-wide v2, Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider;->lastWEATHER_UPDATE:J

    .line 42
    .end local v2    # "currentTime":J
    .end local v5    # "updateFlag":I
    :cond_2
    const-string v6, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "com.nubia.themechanged"

    .line 43
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 44
    :cond_3
    const-string v6, "WeatherSmallWidgetProvider"

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

    .line 45
    move-object v1, p1

    .line 46
    .local v1, "con":Landroid/content/Context;
    new-instance v6, Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider$1;

    invoke-direct {v6, p0, v1}, Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider$1;-><init>(Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider;Landroid/content/Context;)V

    new-array v7, v10, [Ljava/lang/Void;

    .line 52
    invoke-virtual {v6, v7}, Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 54
    .end local v1    # "con":Landroid/content/Context;
    :cond_4
    const-string v6, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "com.nubia.themechanged"

    .line 55
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "android.intent.action.NUBIA.WEATHER.UPDATE"

    .line 56
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "android.intent.action.DATE_CHANGED"

    .line 57
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "android.intent.action.TIMEZONE_CHANGED"

    .line 58
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "android.intent.action.TIME_SET"

    .line 59
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "android.intent.action.LOCALE_CHANGED"

    .line 60
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 61
    :cond_5
    move-object v4, p1

    .line 62
    .local v4, "iContext":Landroid/content/Context;
    new-instance v6, Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider$2;

    invoke-direct {v6, p0, v4}, Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider$2;-><init>(Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider;Landroid/content/Context;)V

    new-array v7, v10, [Ljava/lang/Void;

    .line 72
    invoke-virtual {v6, v7}, Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 75
    .end local v4    # "iContext":Landroid/content/Context;
    :cond_6
    const-string v6, "WeatherSmallWidgetProvider"

    const-string v7, " WEATHER_UPDATE  END "

    invoke-static {v6, v7}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-super {p0, p1, p2}, Lcn/nubia/weather/ui/widget/WidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method protected setWidgetColor(Landroid/content/Context;[I[II)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loc1"    # [I
    .param p3, "loc2"    # [I
    .param p4, "appWidgetId"    # I

    .prologue
    .line 80
    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->initWeatherDataSync(Landroid/content/Context;)Z

    .line 81
    const/4 v3, 0x0

    .line 82
    .local v3, "grayValue":I
    invoke-static {p1}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getWallColor(Landroid/content/Context;)I

    move-result v3

    .line 83
    invoke-static {p1, v3}, Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider;->initRemoteView(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object v8

    .line 84
    .local v8, "remoteViews":Landroid/widget/RemoteViews;
    if-nez v8, :cond_0

    .line 135
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-static {p1, v8}, Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider;->updateDigitalClockView(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0068

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 90
    .local v9, "widgetColor":I
    const/16 v10, 0xbe

    if-le v3, v10, :cond_1

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0069

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 94
    :cond_1
    const v10, 0x7f10016a

    invoke-virtual {v8, v10, v9}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 95
    const v10, 0x7f100161

    invoke-virtual {v8, v10, v9}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 96
    const v10, 0x7f10016c

    invoke-virtual {v8, v10, v9}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 97
    const v10, 0x7f100165

    invoke-virtual {v8, v10, v9}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 98
    const v10, 0x7f100164

    invoke-virtual {v8, v10, v9}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 99
    const v10, 0x7f100162

    invoke-virtual {v8, v10, v9}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 100
    const v10, 0x7f100160

    invoke-virtual {v8, v10, v9}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 102
    new-instance v5, Landroid/content/Intent;

    const-class v10, Lcn/nubia/weather/ui/activity/HomeActivity;

    invoke-direct {v5, p1, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    .local v5, "intentWeather":Landroid/content/Intent;
    const-string v10, "WIDGET_ACTION"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {p1, v10, v5, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 105
    .local v7, "piW":Landroid/app/PendingIntent;
    const v10, 0x7f100163

    invoke-virtual {v8, v10, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 106
    const v10, 0x7f10016b

    invoke-virtual {v8, v10, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 108
    const/4 v4, 0x0

    .line 109
    .local v4, "intentDeskClock":Landroid/content/Intent;
    invoke-static {p1}, Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider;->IsDeskClcokNewInent(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 110
    new-instance v4, Landroid/content/Intent;

    .end local v4    # "intentDeskClock":Landroid/content/Intent;
    const-string v10, "cn.nubia.intent.action.NUBIA.TIMEMANAGER"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .restart local v4    # "intentDeskClock":Landroid/content/Intent;
    :goto_1
    const-string v10, "deskclock.select.tab"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {p1, v10, v4, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 116
    .local v6, "piD":Landroid/app/PendingIntent;
    const v10, 0x7f100169

    invoke-virtual {v8, v10, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 118
    invoke-static {p1}, Lcn/nubia/weather/utils/CommonUtil;->isExistCalendarIntent(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 119
    const/4 v10, 0x0

    invoke-static {}, Lcn/nubia/weather/utils/CommonUtil;->getCalendarLauncherIntent()Landroid/content/Intent;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {p1, v10, v11, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 120
    .local v1, "calendarPendingIntent":Landroid/app/PendingIntent;
    const v10, 0x7f100162

    invoke-virtual {v8, v10, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 123
    .end local v1    # "calendarPendingIntent":Landroid/app/PendingIntent;
    :cond_2
    invoke-virtual {p0, p1, v8}, Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider;->updateWeather(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 124
    const/4 v10, -0x1

    move/from16 v0, p4

    if-ne v0, v10, :cond_4

    .line 125
    new-instance v2, Landroid/content/ComponentName;

    const-class v10, Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider;

    invoke-direct {v2, p1, v10}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    .local v2, "componentName":Landroid/content/ComponentName;
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v10

    invoke-virtual {v10, v2, v8}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 129
    const-string v10, "WeatherSmallWidgetProvider"

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

    .line 112
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v6    # "piD":Landroid/app/PendingIntent;
    :cond_3
    new-instance v4, Landroid/content/Intent;

    .end local v4    # "intentDeskClock":Landroid/content/Intent;
    const-string v10, "android.intent.action.NUBIA.TIMEMANAGER"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v4    # "intentDeskClock":Landroid/content/Intent;
    goto :goto_1

    .line 131
    .restart local v6    # "piD":Landroid/app/PendingIntent;
    :cond_4
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v10

    move/from16 v0, p4

    invoke-virtual {v10, v0, v8}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 132
    const-string v10, "WeatherSmallWidgetProvider"

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
