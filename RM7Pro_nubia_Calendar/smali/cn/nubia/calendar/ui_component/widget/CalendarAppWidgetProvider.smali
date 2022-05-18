.class public Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "CalendarAppWidgetProvider.java"


# static fields
.field static final EXTRA_EVENT_IDS:Ljava/lang/String; = "cn.nubia.calendar.EXTRA_EVENT_IDS"

.field static final LOGD:Z = true

.field static final TAG:Ljava/lang/String; = "CalendarAppWidgetProvider"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method static getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetProvider;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method static getLaunchFillInIntent(Landroid/content/Context;JJJZ)Landroid/content/Intent;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J
    .param p3, "start"    # J
    .param p5, "end"    # J
    .param p7, "allDay"    # Z

    .prologue
    .line 269
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 270
    .local v2, "fillInIntent":Landroid/content/Intent;
    const-string v1, "content://com.android.calendar/events"

    .line 271
    .local v1, "dataString":Ljava/lang/String;
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-eqz v3, :cond_0

    .line 272
    const-string v3, "DETAIL_VIEW"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 273
    const v3, 0x1000c000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 277
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 279
    const-class v3, Lcn/nubia/calendar/EventInfoActivity;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 284
    :goto_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 285
    .local v0, "data":Landroid/net/Uri;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 286
    const-string v3, "beginTime"

    invoke-virtual {v2, v3, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 287
    const-string v3, "endTime"

    invoke-virtual {v2, v3, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 288
    const-string v3, "allDay"

    invoke-virtual {v2, v3, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 290
    return-object v2

    .line 282
    .end local v0    # "data":Landroid/net/Uri;
    :cond_0
    const-class v3, Lcn/nubia/calendar/HomeActivity;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0
.end method

.method static getLaunchPendingIntentTemplate(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 247
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 248
    .local v0, "launchIntent":Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    const v1, 0x1000c000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 252
    const-class v1, Lcn/nubia/calendar/HomeActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 253
    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method static getUpdateIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 233
    new-instance v0, Landroid/content/Intent;

    .line 234
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->getWidgetScheduledUpdateAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 235
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "vnd.android.data/update"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private performUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I[J)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I
    .param p4, "changedEventIds"    # [J

    .prologue
    .line 163
    move-object/from16 v0, p3

    array-length v12, v0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v12, :cond_1

    aget v2, p3, v11

    .line 164
    .local v2, "appWidgetId":I
    new-instance v9, Landroid/content/Intent;

    const-class v13, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    .local v9, "updateIntent":Landroid/content/Intent;
    const-string v13, "appWidgetId"

    invoke-virtual {v9, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 168
    if-eqz p4, :cond_0

    .line 169
    const-string v13, "cn.nubia.calendar.EXTRA_EVENT_IDS"

    move-object/from16 v0, p4

    invoke-virtual {v9, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 171
    :cond_0
    const/4 v13, 0x1

    .line 172
    invoke-virtual {v9, v13}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v13

    .line 171
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 174
    new-instance v10, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f03002e

    invoke-direct {v10, v13, v14}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 178
    .local v10, "views":Landroid/widget/RemoteViews;
    new-instance v5, Landroid/text/format/Time;

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcn/nubia/calendar/util/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v13}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 179
    .local v5, "time":Landroid/text/format/Time;
    invoke-virtual {v5}, Landroid/text/format/Time;->setToNow()V

    .line 180
    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    .line 182
    .local v6, "millis":J
    const v13, 0x7f11007c

    const-string v14, "setFormat24Hour"

    const v15, 0x7f0c010f

    .line 183
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 182
    invoke-virtual {v10, v13, v14, v15}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 184
    const v13, 0x7f11007c

    const-string v14, "setFormat12Hour"

    const v15, 0x7f0c010f

    .line 185
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 184
    invoke-virtual {v10, v13, v14, v15}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 198
    const v13, 0x7f1100b4

    invoke-virtual {v10, v2, v13, v9}, Landroid/widget/RemoteViews;->setRemoteAdapter(IILandroid/content/Intent;)V

    .line 199
    const v13, 0x7f1100b4

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v13}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 203
    new-instance v3, Landroid/content/Intent;

    const-string v13, "android.intent.action.VIEW"

    invoke-direct {v3, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    .local v3, "launchCalendarIntent":Landroid/content/Intent;
    const-class v13, Lcn/nubia/calendar/HomeActivity;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v13}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 205
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "content://com.android.calendar/time/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 206
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 205
    invoke-virtual {v3, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 207
    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 208
    move-object/from16 v0, p1

    invoke-static {v0, v13, v3, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 210
    .local v4, "launchCalendarPendingIntent":Landroid/app/PendingIntent;
    const v13, 0x7f1100b3

    invoke-virtual {v10, v13, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 216
    invoke-static/range {p1 .. p1}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetProvider;->getLaunchPendingIntentTemplate(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v8

    .line 217
    .local v8, "updateEventIntent":Landroid/app/PendingIntent;
    const v13, 0x7f1100b4

    invoke-virtual {v10, v13, v8}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 219
    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v10}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 163
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 221
    .end local v2    # "appWidgetId":I
    .end local v3    # "launchCalendarIntent":Landroid/content/Intent;
    .end local v4    # "launchCalendarPendingIntent":Landroid/app/PendingIntent;
    .end local v5    # "time":Landroid/text/format/Time;
    .end local v6    # "millis":J
    .end local v8    # "updateEventIntent":Landroid/app/PendingIntent;
    .end local v9    # "updateIntent":Landroid/content/Intent;
    .end local v10    # "views":Landroid/widget/RemoteViews;
    :cond_1
    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    const-string v2, "alarm"

    .line 120
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 121
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-static {p1}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetProvider;->getUpdateIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 122
    .local v1, "pendingUpdate":Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 123
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 61
    const-string v2, "android.permission.READ_CALENDAR"

    invoke-static {p1, v2}, Lcn/nubia/calendar/util/PermissionUtils;->checkDontHavePermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "action":Ljava/lang/String;
    const-string v2, "CalendarAppWidgetProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AppWidgetProvider got the intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {p1}, Lcn/nubia/calendar/util/Utils;->getWidgetUpdateAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 81
    .local v1, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    invoke-static {p1}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetProvider;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    .line 78
    invoke-direct {p0, p1, v1, v2, v5}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetProvider;->performUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I[J)V

    goto :goto_0

    .line 88
    .end local v1    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    :cond_1
    const-string v2, "android.intent.action.PROVIDER_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.TIME_SET"

    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    .line 90
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.DATE_CHANGED"

    .line 91
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->UPDATE_WIDGET:Ljava/lang/String;

    .line 92
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 93
    invoke-static {p1}, Lcn/nubia/calendar/util/Utils;->getWidgetScheduledUpdateAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 95
    :cond_2
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 99
    .restart local v1    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    invoke-static {p1}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetProvider;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    .line 96
    invoke-direct {p0, p1, v1, v2, v5}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetProvider;->performUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I[J)V

    goto :goto_0

    .line 101
    .end local v1    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    :cond_3
    const-string v2, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 102
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetProvider;->stopCalendarAppWidgetService(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 104
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetProvider;->performUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I[J)V

    .line 135
    return-void
.end method

.method public stopCalendarAppWidgetService(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    .local v0, "service":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 111
    return-void
.end method
