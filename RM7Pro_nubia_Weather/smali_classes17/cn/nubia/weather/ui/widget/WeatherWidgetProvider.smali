.class public Lcn/nubia/weather/ui/widget/WeatherWidgetProvider;
.super Lcn/nubia/weather/ui/widget/WidgetProvider;
.source "WeatherWidgetProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WeatherWidgetProvider"

.field private static lastWEATHER_UPDATE:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    const-wide/16 v0, 0x0

    sput-wide v0, Lcn/nubia/weather/ui/widget/WeatherWidgetProvider;->lastWEATHER_UPDATE:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcn/nubia/weather/ui/widget/WidgetProvider;-><init>()V

    return-void
.end method

.method private static initRemoteView(Landroid/content/Context;I)Landroid/widget/RemoteViews;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gray"    # I

    .prologue
    .line 307
    const-string v4, "nubia.widget.NubiaWeatherTextClock"

    invoke-static {v4}, Lcn/nubia/weather/ui/widget/WeatherWidgetProvider;->isFontClassExisted(Ljava/lang/String;)Z

    move-result v2

    .line 308
    .local v2, "isNubiaWeatherTextClockExist":Z
    const-string v4, "nubia.widget.NubiaWeatherTextView"

    invoke-static {v4}, Lcn/nubia/weather/ui/widget/WeatherWidgetProvider;->isFontClassExisted(Ljava/lang/String;)Z

    move-result v1

    .line 309
    .local v1, "isNubiaTextViewExist":Z
    const-string v4, "nubia.widget.NubiaTextClock"

    invoke-static {v4}, Lcn/nubia/weather/ui/widget/WeatherWidgetProvider;->isFontClassExisted(Ljava/lang/String;)Z

    move-result v0

    .line 310
    .local v0, "isNubiaTextClockExist":Z
    const/4 v3, 0x0

    .line 311
    .local v3, "remoteViews":Landroid/widget/RemoteViews;
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 312
    const/16 v4, 0xbe

    if-le p1, v4, :cond_0

    .line 313
    new-instance v3, Landroid/widget/RemoteViews;

    .end local v3    # "remoteViews":Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f030065

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 323
    .restart local v3    # "remoteViews":Landroid/widget/RemoteViews;
    :goto_0
    return-object v3

    .line 315
    :cond_0
    new-instance v3, Landroid/widget/RemoteViews;

    .end local v3    # "remoteViews":Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f030064

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local v3    # "remoteViews":Landroid/widget/RemoteViews;
    goto :goto_0

    .line 317
    :cond_1
    if-eqz v0, :cond_2

    .line 318
    new-instance v3, Landroid/widget/RemoteViews;

    .end local v3    # "remoteViews":Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f030067

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local v3    # "remoteViews":Landroid/widget/RemoteViews;
    goto :goto_0

    .line 320
    :cond_2
    new-instance v3, Landroid/widget/RemoteViews;

    .end local v3    # "remoteViews":Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f030066

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local v3    # "remoteViews":Landroid/widget/RemoteViews;
    goto :goto_0
.end method

.method private isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 300
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 301
    .local v1, "manager":Landroid/content/pm/PackageManager;
    const/high16 v2, 0x10000

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 303
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isNubiaSearchAvilible(Landroid/content/Context;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 282
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 283
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 285
    .local v3, "pinfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 289
    :goto_0
    if-nez v3, :cond_0

    move v4, v5

    .line 296
    :goto_1
    return v4

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 292
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 293
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v6, "cn.nubia.browser"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 294
    const/4 v4, 0x1

    goto :goto_1

    .line 292
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move v4, v5

    .line 296
    goto :goto_1
.end method

.method private updateTime(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "remoteViews"    # Landroid/widget/RemoteViews;

    .prologue
    const v5, 0x7f100162

    const v4, 0x7f100160

    const v3, 0x7f090160

    const v2, 0x7f090060

    .line 328
    const-string v0, "setFormat12Hour"

    .line 329
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 328
    invoke-virtual {p2, v5, v0, v1}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 330
    const-string v0, "setFormat24Hour"

    .line 331
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 330
    invoke-virtual {p2, v5, v0, v1}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 332
    const-string v0, "setFormat12Hour"

    .line 333
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 332
    invoke-virtual {p2, v4, v0, v1}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 334
    const-string v0, "setFormat24Hour"

    .line 335
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 334
    invoke-virtual {p2, v4, v0, v1}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 336
    return-void
.end method


# virtual methods
.method protected getWeatherDate(Landroid/content/Context;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 204
    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->initWeatherDataSync(Landroid/content/Context;)Z

    .line 205
    const/4 v4, 0x0

    .line 206
    .local v4, "grayValue":I
    invoke-static/range {p1 .. p1}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getWallColor(Landroid/content/Context;)I

    move-result v4

    .line 207
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcn/nubia/weather/ui/widget/WeatherWidgetProvider;->initRemoteView(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object v13

    .line 208
    .local v13, "remoteViews":Landroid/widget/RemoteViews;
    if-nez v13, :cond_0

    .line 279
    :goto_0
    return-void

    .line 211
    :cond_0
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcn/nubia/weather/ui/widget/WeatherWidgetProvider;->updateDigitalClockView(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 219
    new-instance v8, Landroid/content/Intent;

    const-class v14, Lcn/nubia/weather/ui/activity/HomeActivity;

    move-object/from16 v0, p1

    invoke-direct {v8, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 220
    .local v8, "intentWeather":Landroid/content/Intent;
    const-string v14, "WIDGET_ACTION"

    invoke-virtual {v8, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v14, v8, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 222
    .local v12, "piW":Landroid/app/PendingIntent;
    const v14, 0x7f100163

    invoke-virtual {v13, v14, v12}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 224
    const/4 v6, 0x0

    .line 225
    .local v6, "intentDeskClock":Landroid/content/Intent;
    invoke-static/range {p1 .. p1}, Lcn/nubia/weather/ui/widget/WeatherWidgetProvider;->IsDeskClcokNewInent(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 226
    new-instance v6, Landroid/content/Intent;

    .end local v6    # "intentDeskClock":Landroid/content/Intent;
    const-string v14, "cn.nubia.intent.action.NUBIA.TIMEMANAGER"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 230
    .restart local v6    # "intentDeskClock":Landroid/content/Intent;
    :goto_1
    const-string v14, "deskclock.select.tab"

    const/4 v15, 0x1

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 231
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v14, v6, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 232
    .local v10, "piD":Landroid/app/PendingIntent;
    const v14, 0x7f100169

    invoke-virtual {v13, v14, v10}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 234
    invoke-static/range {p1 .. p1}, Lcn/nubia/weather/utils/CommonUtil;->isExistCalendarIntent(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 235
    const/4 v14, 0x0

    invoke-static {}, Lcn/nubia/weather/utils/CommonUtil;->getCalendarLauncherIntent()Landroid/content/Intent;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v14, v15, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 236
    .local v2, "calendarPendingIntent":Landroid/app/PendingIntent;
    const v14, 0x7f100162

    invoke-virtual {v13, v14, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 241
    .end local v2    # "calendarPendingIntent":Landroid/app/PendingIntent;
    :cond_1
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 242
    .local v5, "intentBrowserSearch":Landroid/content/Intent;
    const-string v14, "cn.nubia.browser"

    const-string v15, "com.android.browser.SearchActivity"

    invoke-virtual {v5, v14, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    const-string v14, "callFromWidget"

    const/4 v15, 0x1

    invoke-virtual {v5, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 257
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v14, v5, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 258
    .local v9, "piBrowser":Landroid/app/PendingIntent;
    const v14, 0x7f10016f

    invoke-virtual {v13, v14, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 261
    invoke-direct/range {p0 .. p1}, Lcn/nubia/weather/ui/widget/WeatherWidgetProvider;->isNubiaSearchAvilible(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 262
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 263
    .local v7, "intentQRcode":Landroid/content/Intent;
    const-string v14, "cn.nubia.browser"

    const-string v15, "com.android.browser.qrcode.CaptureActivity"

    invoke-virtual {v7, v14, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    const/high16 v14, 0x20000000

    invoke-virtual {v7, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 266
    const-string v14, "callFromWidget"

    const/4 v15, 0x1

    invoke-virtual {v7, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 273
    :cond_2
    :goto_2
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v14, v7, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 274
    .local v11, "piQRcode":Landroid/app/PendingIntent;
    const v14, 0x7f100170

    invoke-virtual {v13, v14, v11}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 275
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcn/nubia/weather/ui/widget/WeatherWidgetProvider;->updateTime(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 276
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13}, Lcn/nubia/weather/ui/widget/WeatherWidgetProvider;->updateWeather(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 277
    new-instance v3, Landroid/content/ComponentName;

    const-class v14, Lcn/nubia/weather/ui/widget/WeatherWidgetProvider;

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v14}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 278
    .local v3, "componentName":Landroid/content/ComponentName;
    invoke-static/range {p1 .. p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v14

    invoke-virtual {v14, v3, v13}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    goto/16 :goto_0

    .line 228
    .end local v3    # "componentName":Landroid/content/ComponentName;
    .end local v5    # "intentBrowserSearch":Landroid/content/Intent;
    .end local v7    # "intentQRcode":Landroid/content/Intent;
    .end local v9    # "piBrowser":Landroid/app/PendingIntent;
    .end local v10    # "piD":Landroid/app/PendingIntent;
    .end local v11    # "piQRcode":Landroid/app/PendingIntent;
    :cond_3
    new-instance v6, Landroid/content/Intent;

    .end local v6    # "intentDeskClock":Landroid/content/Intent;
    const-string v14, "android.intent.action.NUBIA.TIMEMANAGER"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v6    # "intentDeskClock":Landroid/content/Intent;
    goto/16 :goto_1

    .line 268
    .restart local v5    # "intentBrowserSearch":Landroid/content/Intent;
    .restart local v9    # "piBrowser":Landroid/app/PendingIntent;
    .restart local v10    # "piD":Landroid/app/PendingIntent;
    :cond_4
    new-instance v7, Landroid/content/Intent;

    const-string v14, "com.tencent.tmsbrowser.zxing.SCAN"

    invoke-direct {v7, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 269
    .restart local v7    # "intentQRcode":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7}, Lcn/nubia/weather/ui/widget/WeatherWidgetProvider;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 270
    const-string v14, "com.android.browser.action.zxing.SCAN"

    invoke-virtual {v7, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x0

    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.intent.action.NUBIA.WEATHER.UPDATE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 33
    .local v2, "currentTime":J
    const/4 v5, 0x0

    .line 34
    .local v5, "updateFlag":I
    if-eqz p2, :cond_0

    .line 35
    const-string v6, "weather_update"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 36
    const-string v6, "WeatherWidgetProvider"

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

    .line 38
    :cond_0
    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    .line 39
    sget-wide v6, Lcn/nubia/weather/ui/widget/WeatherWidgetProvider;->lastWEATHER_UPDATE:J

    sub-long v6, v2, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/32 v8, 0x927c0

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 40
    const-string v6, "WeatherWidgetProvider"

    const-string v7, " WEATHER_UPDATE  return "

    invoke-static {v6, v7}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .end local v2    # "currentTime":J
    .end local v5    # "updateFlag":I
    :goto_0
    return-void

    .line 44
    .restart local v2    # "currentTime":J
    .restart local v5    # "updateFlag":I
    :cond_1
    sput-wide v2, Lcn/nubia/weather/ui/widget/WeatherWidgetProvider;->lastWEATHER_UPDATE:J

    .line 46
    .end local v2    # "currentTime":J
    .end local v5    # "updateFlag":I
    :cond_2
    const-string v6, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "com.nubia.themechanged"

    .line 47
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 48
    :cond_3
    const-string v6, "WeatherWidgetProvider"

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

    .line 49
    move-object v1, p1

    .line 50
    .local v1, "con":Landroid/content/Context;
    new-instance v6, Lcn/nubia/weather/ui/widget/WeatherWidgetProvider$1;

    invoke-direct {v6, p0, v1}, Lcn/nubia/weather/ui/widget/WeatherWidgetProvider$1;-><init>(Lcn/nubia/weather/ui/widget/WeatherWidgetProvider;Landroid/content/Context;)V

    new-array v7, v10, [Ljava/lang/Void;

    .line 56
    invoke-virtual {v6, v7}, Lcn/nubia/weather/ui/widget/WeatherWidgetProvider$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 58
    .end local v1    # "con":Landroid/content/Context;
    :cond_4
    const-string v6, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "com.nubia.themechanged"

    .line 59
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "android.intent.action.NUBIA.WEATHER.UPDATE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "android.intent.action.DATE_CHANGED"

    .line 60
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "android.intent.action.TIMEZONE_CHANGED"

    .line 61
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "android.intent.action.TIME_SET"

    .line 62
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "android.intent.action.LOCALE_CHANGED"

    .line 63
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 64
    :cond_5
    move-object v4, p1

    .line 65
    .local v4, "iContext":Landroid/content/Context;
    new-instance v6, Lcn/nubia/weather/ui/widget/WeatherWidgetProvider$2;

    invoke-direct {v6, p0, v4}, Lcn/nubia/weather/ui/widget/WeatherWidgetProvider$2;-><init>(Lcn/nubia/weather/ui/widget/WeatherWidgetProvider;Landroid/content/Context;)V

    new-array v7, v10, [Ljava/lang/Void;

    .line 76
    invoke-virtual {v6, v7}, Lcn/nubia/weather/ui/widget/WeatherWidgetProvider$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 78
    .end local v4    # "iContext":Landroid/content/Context;
    :cond_6
    const-string v6, "WeatherWidgetProvider"

    const-string v7, " WEATHER_UPDATE  END "

    invoke-static {v6, v7}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-super {p0, p1, p2}, Lcn/nubia/weather/ui/widget/WidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method protected setWidgetColor(Landroid/content/Context;[I[II)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loc1"    # [I
    .param p3, "loc2"    # [I
    .param p4, "appWidgetId"    # I

    .prologue
    .line 83
    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->initWeatherDataSync(Landroid/content/Context;)Z

    .line 84
    const/4 v6, 0x0

    .line 85
    .local v6, "grayValue":I
    invoke-static/range {p1 .. p1}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getWallColor(Landroid/content/Context;)I

    move-result v6

    .line 86
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcn/nubia/weather/ui/widget/WeatherWidgetProvider;->initRemoteView(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object v15

    .line 87
    .local v15, "remoteViews":Landroid/widget/RemoteViews;
    if-nez v15, :cond_0

    .line 200
    :goto_0
    return-void

    .line 90
    :cond_0
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcn/nubia/weather/ui/widget/WeatherWidgetProvider;->updateDigitalClockView(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 92
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0c0068

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v16

    .line 93
    .local v16, "widgetColor":I
    const-string v17, "WeatherWidgetProvider"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "setWidgetColor, location1: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    aget v19, p2, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ,"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x1

    aget v19, p2, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "; location2: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    aget v19, p3, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ,"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x1

    aget v19, p3, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const/16 v17, 0xbe

    move/from16 v0, v17

    if-le v6, v0, :cond_3

    .line 96
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0c0069

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v16

    .line 97
    const v17, 0x7f10016a

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 98
    const v17, 0x7f100161

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 99
    const v17, 0x7f100162

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 100
    const v17, 0x7f100160

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 101
    const v17, 0x7f10016c

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 102
    const v17, 0x7f100165

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 104
    const v17, 0x7f10016f

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 105
    const v17, 0x7f100164

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 106
    const v17, 0x7f10016e

    const v18, 0x7f0202a3

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 107
    const v17, 0x7f100170

    const v18, 0x7f02029f

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 108
    const v17, 0x7f10016d

    const-string v18, "setBackgroundResource"

    const v19, 0x7f0202a2

    move/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v15, v0, v1, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 135
    :goto_1
    new-instance v10, Landroid/content/Intent;

    const-class v17, Lcn/nubia/weather/ui/activity/HomeActivity;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    .local v10, "intentWeather":Landroid/content/Intent;
    const-string v17, "WIDGET_ACTION"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v10, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 138
    .local v14, "piW":Landroid/app/PendingIntent;
    const v17, 0x7f100163

    move/from16 v0, v17

    invoke-virtual {v15, v0, v14}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 139
    const v17, 0x7f10016b

    move/from16 v0, v17

    invoke-virtual {v15, v0, v14}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 140
    const/4 v8, 0x0

    .line 141
    .local v8, "intentDeskClock":Landroid/content/Intent;
    invoke-static/range {p1 .. p1}, Lcn/nubia/weather/ui/widget/WeatherWidgetProvider;->IsDeskClcokNewInent(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 142
    new-instance v8, Landroid/content/Intent;

    .end local v8    # "intentDeskClock":Landroid/content/Intent;
    const-string v17, "cn.nubia.intent.action.NUBIA.TIMEMANAGER"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    .restart local v8    # "intentDeskClock":Landroid/content/Intent;
    :goto_2
    const-string v17, "deskclock.select.tab"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 148
    .local v12, "piD":Landroid/app/PendingIntent;
    const v17, 0x7f100169

    move/from16 v0, v17

    invoke-virtual {v15, v0, v12}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 150
    invoke-static/range {p1 .. p1}, Lcn/nubia/weather/utils/CommonUtil;->isExistCalendarIntent(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 151
    const/16 v17, 0x0

    invoke-static {}, Lcn/nubia/weather/utils/CommonUtil;->getCalendarLauncherIntent()Landroid/content/Intent;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 152
    .local v4, "calendarPendingIntent":Landroid/app/PendingIntent;
    const v17, 0x7f100162

    move/from16 v0, v17

    invoke-virtual {v15, v0, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 157
    .end local v4    # "calendarPendingIntent":Landroid/app/PendingIntent;
    :cond_1
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 158
    .local v7, "intentBrowserSearch":Landroid/content/Intent;
    const-string v17, "cn.nubia.browser"

    const-string v18, "com.android.browser.SearchActivity"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const-string v17, "callFromWidget"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 172
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcn/nubia/weather/ui/widget/WeatherWidgetProvider;->updateTime(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 173
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcn/nubia/weather/ui/widget/WeatherWidgetProvider;->updateWeather(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 174
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 175
    .local v11, "piBrowser":Landroid/app/PendingIntent;
    const v17, 0x7f10016f

    move/from16 v0, v17

    invoke-virtual {v15, v0, v11}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 178
    invoke-direct/range {p0 .. p1}, Lcn/nubia/weather/ui/widget/WeatherWidgetProvider;->isNubiaSearchAvilible(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 179
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 180
    .local v9, "intentQRcode":Landroid/content/Intent;
    const-string v17, "cn.nubia.browser"

    const-string v18, "com.android.browser.qrcode.CaptureActivity"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const/high16 v17, 0x20000000

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 183
    const-string v17, "callFromWidget"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 190
    :cond_2
    :goto_3
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v9, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 191
    .local v13, "piQRcode":Landroid/app/PendingIntent;
    const v17, 0x7f100170

    move/from16 v0, v17

    invoke-virtual {v15, v0, v13}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 192
    const/16 v17, -0x1

    move/from16 v0, p4

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 193
    new-instance v5, Landroid/content/ComponentName;

    const-class v17, Lcn/nubia/weather/ui/widget/WeatherWidgetProvider;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    .local v5, "componentName":Landroid/content/ComponentName;
    invoke-static/range {p1 .. p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v15}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 195
    const-string v17, "WeatherWidgetProvider"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "update remoteViews "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 112
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .end local v7    # "intentBrowserSearch":Landroid/content/Intent;
    .end local v8    # "intentDeskClock":Landroid/content/Intent;
    .end local v9    # "intentQRcode":Landroid/content/Intent;
    .end local v10    # "intentWeather":Landroid/content/Intent;
    .end local v11    # "piBrowser":Landroid/app/PendingIntent;
    .end local v12    # "piD":Landroid/app/PendingIntent;
    .end local v13    # "piQRcode":Landroid/app/PendingIntent;
    .end local v14    # "piW":Landroid/app/PendingIntent;
    :cond_3
    const v17, 0x7f10016a

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 113
    const v17, 0x7f100161

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 114
    const v17, 0x7f100162

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 115
    const v17, 0x7f100160

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 116
    const v17, 0x7f10016c

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 117
    const v17, 0x7f100165

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 119
    const v17, 0x7f10016f

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 120
    const v17, 0x7f100164

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 121
    const v17, 0x7f10016e

    const v18, 0x7f0202a0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 122
    const v17, 0x7f100170

    const v18, 0x7f02029e

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 123
    const v17, 0x7f10016d

    const-string v18, "setBackgroundResource"

    const v19, 0x7f0202a1

    move/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v15, v0, v1, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto/16 :goto_1

    .line 144
    .restart local v8    # "intentDeskClock":Landroid/content/Intent;
    .restart local v10    # "intentWeather":Landroid/content/Intent;
    .restart local v14    # "piW":Landroid/app/PendingIntent;
    :cond_4
    new-instance v8, Landroid/content/Intent;

    .end local v8    # "intentDeskClock":Landroid/content/Intent;
    const-string v17, "android.intent.action.NUBIA.TIMEMANAGER"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v8    # "intentDeskClock":Landroid/content/Intent;
    goto/16 :goto_2

    .line 185
    .restart local v7    # "intentBrowserSearch":Landroid/content/Intent;
    .restart local v11    # "piBrowser":Landroid/app/PendingIntent;
    .restart local v12    # "piD":Landroid/app/PendingIntent;
    :cond_5
    new-instance v9, Landroid/content/Intent;

    const-string v17, "com.tencent.tmsbrowser.zxing.SCAN"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    .restart local v9    # "intentQRcode":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9}, Lcn/nubia/weather/ui/widget/WeatherWidgetProvider;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 187
    const-string v17, "com.android.browser.action.zxing.SCAN"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3

    .line 197
    .restart local v13    # "piQRcode":Landroid/app/PendingIntent;
    :cond_6
    invoke-static/range {p1 .. p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p4

    invoke-virtual {v0, v1, v15}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 198
    const-string v17, "WeatherWidgetProvider"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "update remoteViews "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
