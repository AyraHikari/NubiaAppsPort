.class public Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "WeatherPressWidgetProvider.java"


# static fields
.field protected static final DESKCLOCK:Ljava/lang/String; = "android.intent.action.NUBIA.TIMEMANAGER"

.field protected static final MESSAGE_UPDATE_WEATHER:I = 0x14000001

.field private static final TAG:Ljava/lang/String; = "WeatherPressWidgetProvider"

.field protected static final WEATHER_UPDATE:Ljava/lang/String; = "android.intent.action.NUBIA.WEATHER.UPDATE"

.field private static lastWEATHER_UPDATE:J


# instance fields
.field private mInfo:Landroid/content/pm/LauncherActivityInfo;

.field private mcontext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const-wide/16 v0, 0x0

    sput-wide v0, Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;->lastWEATHER_UPDATE:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;->mInfo:Landroid/content/pm/LauncherActivityInfo;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;->mcontext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;->getActivityList(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;->freshenUi(Landroid/content/Context;)V

    return-void
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 70
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 71
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 70
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 72
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 73
    .local v1, "c":Landroid/graphics/Canvas;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 74
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 75
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 76
    return-object v0
.end method

.method private freshenUi(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    const/4 v1, 0x0

    .line 112
    .local v1, "biticon":Landroid/graphics/Bitmap;
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;->initRemoteView(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v3

    .line 113
    .local v3, "remoteViews":Landroid/widget/RemoteViews;
    if-nez v3, :cond_0

    .line 129
    :goto_0
    return-void

    .line 117
    :cond_0
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v4}, Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;->getBadgedIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v4}, Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 121
    :goto_1
    if-eqz v1, :cond_1

    .line 122
    const v4, 0x7f100075

    invoke-virtual {v3, v4, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 124
    :cond_1
    invoke-virtual {p0, p1, v3}, Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;->updateWeather(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 125
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 126
    .local v0, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    new-instance v4, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v4, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    goto :goto_0

    .line 118
    .end local v0    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    :catch_0
    move-exception v2

    .line 119
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private getActivityList(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    const-string v5, "launcherapps"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    .line 89
    .local v0, "Launcher":Landroid/content/pm/LauncherApps;
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    .line 90
    .local v4, "user":Landroid/os/UserHandle;
    const-string v3, "cn.nubia.weather"

    .line 91
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    .line 92
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    const/4 v1, 0x0

    .line 93
    .local v1, "info":Landroid/content/pm/LauncherActivityInfo;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 94
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/LauncherActivityInfo;

    iput-object v5, p0, Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;->mInfo:Landroid/content/pm/LauncherActivityInfo;

    .line 96
    :cond_0
    return-void
.end method

.method private initRemoteView(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "remoteViews":Landroid/widget/RemoteViews;
    new-instance v0, Landroid/widget/RemoteViews;

    .end local v0    # "remoteViews":Landroid/widget/RemoteViews;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03001c

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 163
    .restart local v0    # "remoteViews":Landroid/widget/RemoteViews;
    return-object v0
.end method

.method private performUpdate(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    iput-object p1, p0, Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;->mcontext:Landroid/content/Context;

    .line 149
    new-instance v0, Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider$1;

    invoke-direct {v0, p0}, Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider$1;-><init>(Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 157
    invoke-virtual {v0, v1}, Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 158
    return-void
.end method

.method private setEmptyView(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "remoteViews"    # Landroid/widget/RemoteViews;

    .prologue
    const v1, 0x7f10008a

    .line 297
    const v0, 0x7f0900b6

    .line 298
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 297
    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 299
    const/4 v0, 0x0

    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 300
    const v0, 0x7f100077

    const/4 v1, 0x4

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 301
    return-void
.end method


# virtual methods
.method public getBadgedIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "density"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;->mInfo:Landroid/content/pm/LauncherActivityInfo;

    if-nez v0, :cond_0

    .line 81
    const/4 v0, 0x0

    .line 83
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;->mInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/LauncherActivityInfo;->getBadgedIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 101
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "action":Ljava/lang/String;
    const-string v5, "WeatherPressWidgetProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onRecevice "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v5, "android.intent.action.NUBIA.WEATHER.UPDATE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 44
    .local v2, "currentTime":J
    const-string v5, "WeatherPressWidgetProvider"

    const-string v6, " WEATHER_UPDATE "

    invoke-static {v5, v6}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const/4 v4, 0x0

    .line 46
    .local v4, "updateFlag":I
    if-eqz p2, :cond_0

    .line 47
    const-string v5, "weather_update"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 48
    const-string v5, "WeatherPressWidgetProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " WEATHER_UPDATE  updateFlag : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_0
    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 51
    sget-wide v6, Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;->lastWEATHER_UPDATE:J

    sub-long v6, v2, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/32 v8, 0x927c0

    cmp-long v5, v6, v8

    if-gez v5, :cond_1

    .line 52
    const-string v5, "WeatherPressWidgetProvider"

    const-string v6, " WEATHER_UPDATE  return "

    invoke-static {v5, v6}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .end local v2    # "currentTime":J
    .end local v4    # "updateFlag":I
    :goto_0
    return-void

    .line 56
    .restart local v2    # "currentTime":J
    .restart local v4    # "updateFlag":I
    :cond_1
    sput-wide v2, Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;->lastWEATHER_UPDATE:J

    .line 58
    .end local v2    # "currentTime":J
    .end local v4    # "updateFlag":I
    :cond_2
    const-string v5, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "android.intent.action.NUBIA.WEATHER.UPDATE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "android.intent.action.TIMEZONE_CHANGED"

    .line 59
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "android.intent.action.TIME_SET"

    .line 60
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "android.intent.action.LOCALE_CHANGED"

    .line 61
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 62
    :cond_3
    new-instance v1, Landroid/content/ComponentName;

    const-class v5, Lcn/nubia/weather/ui/widget/WeatherWidgetProvider;

    invoke-direct {v1, p1, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;->performUpdate(Landroid/content/Context;)V

    .line 65
    .end local v1    # "componentName":Landroid/content/ComponentName;
    :cond_4
    const-string v5, "WeatherPressWidgetProvider"

    const-string v6, " WEATHER_UPDATE  END "

    invoke-static {v5, v6}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;->performUpdate(Landroid/content/Context;)V

    .line 106
    return-void
.end method

.method protected updateWeather(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 28
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "remoteViews"    # Landroid/widget/RemoteViews;

    .prologue
    .line 168
    const/16 v22, 0x0

    .line 169
    .local v22, "tempArray":[Ljava/lang/Integer;
    const/16 v19, 0x0

    .line 170
    .local v19, "sixDates":[Ljava/util/Date;
    const/16 v20, 0x0

    .line 171
    .local v20, "sixHours":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 172
    .local v5, "hourWeatherIcon":[I
    new-instance v9, Landroid/content/Intent;

    const-class v25, Lcn/nubia/weather/ui/activity/HomeActivity;

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 173
    .local v9, "intentWeather":Landroid/content/Intent;
    const-string v25, "WIDGET_ACTION"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const/16 v17, 0x0

    .line 175
    .local v17, "piW":Landroid/app/PendingIntent;
    const/4 v4, 0x0

    .line 177
    .local v4, "gmtOffset":Ljava/lang/String;
    const/16 v25, 0x0

    const/16 v26, 0x0

    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v9, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 181
    :goto_0
    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCity:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    .line 182
    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCity:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "--"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 183
    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCity:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_0

    .line 184
    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCity:Ljava/lang/String;

    move-object/from16 v25, v0

    const v26, 0x7f09018c

    .line 185
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 184
    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 186
    :cond_0
    if-eqz v17, :cond_1

    .line 187
    const v25, 0x7f100074

    move-object/from16 v0, p2

    move/from16 v1, v25

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 189
    :cond_1
    const v25, 0x7f10008a

    const/16 v26, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 190
    const v25, 0x7f100077

    const/16 v26, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 191
    const v25, 0x7f10008a

    const v26, 0x7f0900ef

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p2

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 293
    :goto_1
    return-void

    .line 178
    :catch_0
    move-exception v3

    .line 179
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 194
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    if-eqz v17, :cond_3

    .line 195
    const v25, 0x7f100073

    move-object/from16 v0, p2

    move/from16 v1, v25

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 197
    :cond_3
    const v25, 0x7f100076

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const v27, 0x7f090140

    .line 199
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\u2014"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 200
    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCity:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 197
    move-object/from16 v0, p2

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 201
    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mTempArray:[Ljava/lang/Integer;

    move-object/from16 v22, v0

    .line 202
    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mSixDates:[Ljava/util/Date;

    move-object/from16 v19, v0

    .line 203
    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v4, v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mGmtOffset:Ljava/lang/String;

    .line 204
    const/16 v18, 0x0

    .line 205
    .local v18, "sixDateStrs":[Ljava/lang/String;
    const/4 v14, 0x0

    .line 206
    .local v14, "lastTimeStamp":Ljava/lang/String;
    const/16 v24, 0x0

    .line 207
    .local v24, "thisTimeStamp":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0900f6

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 208
    .local v16, "now":Ljava/lang/String;
    const/4 v13, 0x0

    .line 209
    .local v13, "lastTimeHasAmPmflag":Z
    const/4 v15, 0x0

    .line 210
    .local v15, "nextDoNotTrim":Z
    invoke-static {}, Lcn/nubia/weather/utils/LanguageUtil;->isChinese()Z

    move-result v12

    .line 211
    .local v12, "isChinse":Z
    invoke-static/range {p1 .. p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v25

    if-nez v25, :cond_5

    const/4 v10, 0x1

    .line 212
    .local v10, "is12Hour":Z
    :goto_2
    if-eqz v19, :cond_a

    .line 213
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    .line 214
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 215
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v6, v0, :cond_a

    .line 216
    if-nez v6, :cond_6

    .line 217
    move-object/from16 v24, v16

    .line 221
    :goto_4
    aput-object v24, v18, v6

    .line 222
    if-eqz v24, :cond_4

    if-eqz v14, :cond_4

    .line 223
    const/16 v25, 0x0

    const/16 v26, 0x2

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x2

    .line 224
    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    .line 223
    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_8

    .line 225
    if-eqz v15, :cond_7

    .line 226
    const/4 v15, 0x0

    .line 239
    :cond_4
    :goto_5
    move-object/from16 v14, v24

    .line 240
    aget-object v25, v18, v6

    aput-object v25, v20, v6

    .line 215
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 211
    .end local v6    # "i":I
    .end local v10    # "is12Hour":Z
    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    .line 219
    .restart local v6    # "i":I
    .restart local v10    # "is12Hour":Z
    :cond_6
    aget-object v25, v19, v6

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-static {v0, v1, v4}, Lcn/nubia/weather/utils/TimeUtils;->getHourStr(Landroid/content/Context;Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto :goto_4

    .line 228
    :cond_7
    const/16 v25, 0x2

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v18, v6

    .line 229
    const/4 v13, 0x0

    goto :goto_5

    .line 231
    :cond_8
    if-eqz v10, :cond_9

    if-eqz v12, :cond_9

    if-eqz v13, :cond_9

    .line 232
    const/16 v25, 0x2

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v18, v6

    .line 233
    const/4 v13, 0x0

    .line 234
    const/4 v15, 0x1

    goto :goto_5

    .line 236
    :cond_9
    const/4 v13, 0x1

    goto :goto_5

    .line 244
    .end local v6    # "i":I
    :cond_a
    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v5, v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mHourWeatherIcon:[I

    .line 248
    if-eqz v22, :cond_f

    if-eqz v20, :cond_f

    if-eqz v5, :cond_f

    .line 252
    const v25, 0x7f100079

    const/16 v26, 0x0

    aget-object v26, v20, v26

    move-object/from16 v0, p2

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 253
    const v25, 0x7f10007a

    const/16 v26, 0x1

    aget-object v26, v20, v26

    move-object/from16 v0, p2

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 254
    const v25, 0x7f10007b

    const/16 v26, 0x2

    aget-object v26, v20, v26

    move-object/from16 v0, p2

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 255
    const v25, 0x7f10007c

    const/16 v26, 0x3

    aget-object v26, v20, v26

    move-object/from16 v0, p2

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 256
    const v25, 0x7f10007d

    const/16 v26, 0x4

    aget-object v26, v20, v26

    move-object/from16 v0, p2

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 257
    const/16 v25, 0x5

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v23, v0

    fill-array-data v23, :array_0

    .line 261
    .local v23, "tempIds":[I
    const/16 v25, 0x5

    move/from16 v0, v25

    new-array v8, v0, [I

    fill-array-data v8, :array_1

    .line 265
    .local v8, "iconIds":[I
    const/4 v11, 0x1

    .line 266
    .local v11, "isAllNull":Z
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_6
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v25

    if-ge v6, v0, :cond_d

    .line 267
    aget-object v21, v22, v6

    .line 268
    .local v21, "temp":Ljava/lang/Integer;
    aget v7, v5, v6

    .line 269
    .local v7, "icon":I
    if-eqz v21, :cond_b

    .line 270
    aget v25, v23, v6

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\u00b0"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p2

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 271
    if-eqz v11, :cond_b

    .line 272
    const/4 v11, 0x0

    .line 275
    :cond_b
    if-nez v7, :cond_c

    .line 276
    aget v25, v8, v6

    const v26, 0x7f020254

    move-object/from16 v0, p2

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 266
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 278
    :cond_c
    aget v25, v8, v6

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_7

    .line 281
    .end local v7    # "icon":I
    .end local v21    # "temp":Ljava/lang/Integer;
    :cond_d
    if-eqz v11, :cond_e

    .line 282
    invoke-direct/range {p0 .. p2}, Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;->setEmptyView(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    goto/16 :goto_1

    .line 285
    :cond_e
    const v25, 0x7f10008a

    const/16 v26, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 286
    const v25, 0x7f100077

    const/16 v26, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_1

    .line 288
    .end local v6    # "i":I
    .end local v8    # "iconIds":[I
    .end local v11    # "isAllNull":Z
    .end local v23    # "tempIds":[I
    :cond_f
    invoke-direct/range {p0 .. p2}, Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;->setEmptyView(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    goto/16 :goto_1

    .line 257
    nop

    :array_0
    .array-data 4
        0x7f100085
        0x7f100086
        0x7f100087
        0x7f100088
        0x7f100089
    .end array-data

    .line 261
    :array_1
    .array-data 4
        0x7f10007f
        0x7f100080
        0x7f100081
        0x7f100082
        0x7f100083
    .end array-data
.end method
