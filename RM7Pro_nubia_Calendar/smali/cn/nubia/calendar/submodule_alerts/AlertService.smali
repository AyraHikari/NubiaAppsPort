.class public Lcn/nubia/calendar/submodule_alerts/AlertService;
.super Landroid/app/job/JobService;
.source "AlertService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/submodule_alerts/AlertService$ServiceHandler;,
        Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;,
        Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;,
        Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationMgrWrapper;,
        Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationWrapper;
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "action"

.field private static final ACTIVE_ALERTS_SELECTION:Ljava/lang/String; = "(state=?) AND minutes <>-1 AND alarmTime<="

.field private static final ACTIVE_ALERTS_SELECTION_ARGS:[Ljava/lang/String;

.field private static final ACTIVE_ALERTS_SORT:Ljava/lang/String; = "begin DESC, end DESC"

.field private static final ALERT_INDEX_ALARM_TIME:I = 0x7

.field private static final ALERT_INDEX_ALL_DAY:I = 0x6

.field private static final ALERT_INDEX_BEGIN:I = 0x9

.field private static final ALERT_INDEX_DESCRIPTION:I = 0xb

.field private static final ALERT_INDEX_END:I = 0xa

.field private static final ALERT_INDEX_EVENT_ID:I = 0x1

.field private static final ALERT_INDEX_EVENT_LOCATION:I = 0x4

.field private static final ALERT_INDEX_ID:I = 0x0

.field private static final ALERT_INDEX_MINUTES:I = 0x8

.field private static final ALERT_INDEX_SELF_ATTENDEE_STATUS:I = 0x5

.field private static final ALERT_INDEX_STATE:I = 0x2

.field private static final ALERT_INDEX_TITLE:I = 0x3

.field static final ALERT_PROJECTION:[Ljava/lang/String;

.field static final DEBUG:Z = false

.field private static final DISMISS_OLD_SELECTION:Ljava/lang/String; = "end<? AND state=?"

.field public static final JobParametersString:Ljava/lang/String; = "JobParameters"

.field public static final MAX_NOTIFICATIONS:I = 0x14

.field private static final MINUTE_MS:I = 0xea60

.field private static final MIN_DEPRIORITIZE_GRACE_PERIOD_MS:I = 0xdbba0

.field public static final PersistableBundleString:Ljava/lang/String; = "PersistableBundle"

.field private static final SORT_ORDER_ALARMTIME_ASC:Ljava/lang/String; = "alarmTime ASC"

.field private static final TAG:Ljava/lang/String; = "Calendar"

.field private static final WHERE_RESCHEDULE_MISSED_ALARMS:Ljava/lang/String; = "state=0 AND alarmTime<? AND alarmTime>? AND end>=?"

.field private static gLastEventId:J

.field private static gLastReceiveTime:J

.field private static sdf:Ljava/text/SimpleDateFormat;


# instance fields
.field private volatile mServiceHandler:Lcn/nubia/calendar/submodule_alerts/AlertService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 86
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/nubia/calendar/submodule_alerts/AlertService;->sdf:Ljava/text/SimpleDateFormat;

    .line 88
    sput-wide v6, Lcn/nubia/calendar/submodule_alerts/AlertService;->gLastReceiveTime:J

    .line 89
    sput-wide v6, Lcn/nubia/calendar/submodule_alerts/AlertService;->gLastEventId:J

    .line 94
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "event_id"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "state"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "selfAttendeeStatus"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "alarmTime"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "minutes"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "end"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "description"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/calendar/submodule_alerts/AlertService;->ALERT_PROJECTION:[Ljava/lang/String;

    .line 126
    new-array v0, v4, [Ljava/lang/String;

    .line 128
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sput-object v0, Lcn/nubia/calendar/submodule_alerts/AlertService;->ACTIVE_ALERTS_SELECTION_ARGS:[Ljava/lang/String;

    .line 126
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static GameModeHelper()V
    .locals 13

    .prologue
    const/4 v11, 0x0

    .line 255
    :try_start_0
    const-string v10, "cn.nubia.game.GameModeHelper"

    .line 256
    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 257
    .local v0, "cls":Ljava/lang/Class;
    const-string v10, "getDefault"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v0, v10, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 258
    .local v1, "defaultMothod":Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v1, v10, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 259
    .local v6, "object":Ljava/lang/Object;
    const-string v10, "IsOpenGameMode"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v0, v10, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 260
    .local v7, "openMethod":Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v7, v6, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 261
    .local v5, "isopenGameMode":Z
    const-string v10, "IsGameModeRunning"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v0, v10, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 262
    .local v8, "runMethod":Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v8, v6, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 263
    .local v3, "isModeRunning":Z
    const-string v10, "IsGameModeSubNoDisturbRunning"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v0, v10, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 264
    .local v9, "subNokeyDisturbMonth":Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v9, v6, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 265
    .local v4, "isSubNokeyRunning":Z
    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    const/4 v10, 0x1

    :goto_0
    sput-boolean v10, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->isOpenMasterSwitchGameMode:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    .end local v1    # "defaultMothod":Ljava/lang/reflect/Method;
    .end local v3    # "isModeRunning":Z
    .end local v4    # "isSubNokeyRunning":Z
    .end local v5    # "isopenGameMode":Z
    .end local v6    # "object":Ljava/lang/Object;
    .end local v7    # "openMethod":Ljava/lang/reflect/Method;
    .end local v8    # "runMethod":Ljava/lang/reflect/Method;
    .end local v9    # "subNokeyDisturbMonth":Ljava/lang/reflect/Method;
    :goto_1
    return-void

    .restart local v1    # "defaultMothod":Ljava/lang/reflect/Method;
    .restart local v3    # "isModeRunning":Z
    .restart local v4    # "isSubNokeyRunning":Z
    .restart local v5    # "isopenGameMode":Z
    .restart local v6    # "object":Ljava/lang/Object;
    .restart local v7    # "openMethod":Ljava/lang/reflect/Method;
    .restart local v8    # "runMethod":Ljava/lang/reflect/Method;
    .restart local v9    # "subNokeyDisturbMonth":Ljava/lang/reflect/Method;
    :cond_0
    move v10, v11

    .line 265
    goto :goto_0

    .line 267
    .end local v1    # "defaultMothod":Ljava/lang/reflect/Method;
    .end local v3    # "isModeRunning":Z
    .end local v4    # "isSubNokeyRunning":Z
    .end local v5    # "isopenGameMode":Z
    .end local v6    # "object":Ljava/lang/Object;
    .end local v7    # "openMethod":Ljava/lang/reflect/Method;
    .end local v8    # "runMethod":Ljava/lang/reflect/Method;
    .end local v9    # "subNokeyDisturbMonth":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 268
    .local v2, "e":Ljava/lang/Exception;
    sput-boolean v11, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->isOpenMasterSwitchGameMode:Z

    .line 269
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static addNotificationOptions(Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationWrapper;ZLjava/lang/String;ZLjava/lang/String;Z)V
    .locals 5
    .param p0, "nw"    # Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationWrapper;
    .param p1, "quietUpdate"    # Z
    .param p2, "tickerText"    # Ljava/lang/String;
    .param p3, "defaultVibrate"    # Z
    .param p4, "reminderRingtone"    # Ljava/lang/String;
    .param p5, "popup"    # Z

    .prologue
    const/4 v4, 0x1

    .line 1224
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationWrapper;->mNotification:Landroid/app/Notification;

    .line 1225
    .local v0, "notification":Landroid/app/Notification;
    iget v1, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 1226
    const-string v1, "dlc:"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "defaultVibrate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    iput-boolean p3, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationWrapper;->mVibrate:Z

    .line 1232
    if-nez p1, :cond_2

    .line 1234
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1235
    iput-object p2, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1242
    :cond_0
    if-eqz p3, :cond_1

    .line 1243
    iget v1, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 1251
    :cond_1
    if-eqz p5, :cond_3

    .line 1252
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1253
    iput v4, v0, Landroid/app/Notification;->defaults:I

    .line 1258
    :cond_2
    :goto_0
    return-void

    .line 1255
    :cond_3
    iput v4, v0, Landroid/app/Notification;->defaults:I

    goto :goto_0
.end method

.method private static buildMessageToSend(Landroid/content/Context;Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;

    .prologue
    .line 1065
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1066
    .local v2, "res":Landroid/content/res/Resources;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1067
    .local v1, "messageBuf":Ljava/lang/StringBuffer;
    sget-object v4, Lcn/nubia/calendar/submodule_alerts/AlertService;->sdf:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    iget-wide v6, p1, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->startMillis:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 1068
    .local v3, "startTime":Ljava/lang/String;
    sget-object v4, Lcn/nubia/calendar/submodule_alerts/AlertService;->sdf:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    iget-wide v6, p1, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->endMillis:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1069
    .local v0, "endTime":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "---"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1070
    iget-object v4, p1, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->location:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1071
    const v4, 0x7f0c0243

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p1, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->location:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1075
    :cond_0
    iget-object v4, p1, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->eventName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1076
    const v4, 0x7f0c012a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p1, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->eventName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1079
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method static dismissOldAlerts(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x0

    .line 328
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 329
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 330
    .local v2, "currentTime":J
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 331
    .local v1, "vals":Landroid/content/ContentValues;
    const-string v4, "state"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 332
    sget-object v4, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "end<? AND state=?"

    new-array v6, v6, [Ljava/lang/String;

    .line 337
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    const/4 v7, 0x1

    .line 338
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 332
    invoke-virtual {v0, v4, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 340
    return-void
.end method

.method private doTimeChanged()V
    .locals 4

    .prologue
    .line 1394
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_alerts/AlertService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1395
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Lcn/nubia/calendar/submodule_alerts/AlertService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "service":Ljava/lang/Object;
    move-object v1, v2

    .line 1396
    check-cast v1, Landroid/app/AlarmManager;

    .line 1398
    .local v1, "manager":Landroid/app/AlarmManager;
    invoke-static {v0, p0, v1}, Lcn/nubia/calendar/submodule_alerts/AlertService;->rescheduleMissedAlarms(Landroid/content/ContentResolver;Landroid/content/Context;Landroid/app/AlarmManager;)V

    .line 1399
    invoke-static {p0}, Lcn/nubia/calendar/submodule_alerts/AlertService;->updateAlertNotification(Landroid/content/Context;)Z

    .line 1400
    return-void
.end method

.method public static generateAlerts(Landroid/content/Context;Lcn/nubia/calendar/submodule_alerts/NotificationMgr;Landroid/content/SharedPreferences;Landroid/database/Cursor;JI)Z
    .locals 44
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nm"    # Lcn/nubia/calendar/submodule_alerts/NotificationMgr;
    .param p2, "prefs"    # Landroid/content/SharedPreferences;
    .param p3, "alertCursor"    # Landroid/database/Cursor;
    .param p4, "currentTime"    # J
    .param p6, "maxNotifications"    # I

    .prologue
    .line 425
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 426
    .local v8, "highPriorityEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 427
    .local v9, "mediumPriorityEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .local v10, "lowPriorityEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;>;"
    move-object/from16 v4, p3

    move-object/from16 v5, p0

    move-wide/from16 v6, p4

    .line 428
    invoke-static/range {v4 .. v10}, Lcn/nubia/calendar/submodule_alerts/AlertService;->processQuery(Landroid/database/Cursor;Landroid/content/Context;JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v39

    .line 431
    .local v39, "numFired":I
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v4, v5

    .line 432
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v4, v5

    if-nez v4, :cond_0

    .line 433
    invoke-interface/range {p1 .. p1}, Lcn/nubia/calendar/submodule_alerts/NotificationMgr;->cancelAll()V

    .line 434
    const/4 v4, 0x1

    .line 573
    :goto_0
    return v4

    .line 437
    :cond_0
    const-wide v40, 0x7fffffffffffffffL

    .line 438
    .local v40, "nextRefreshTime":J
    const/16 v24, 0x1

    .line 439
    .local v24, "currentNotificationId":I
    new-instance v22, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;

    if-nez v39, :cond_1

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Z)V

    .line 445
    .local v22, "notificationPrefs":Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;
    move/from16 v0, p6

    invoke-static {v8, v9, v10, v0}, Lcn/nubia/calendar/submodule_alerts/AlertService;->redistributeBuckets(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 453
    const/16 v38, 0x0

    .local v38, "i":I
    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v38

    if-ge v0, v4, :cond_2

    .line 454
    move/from16 v0, v38

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;

    .line 455
    .local v18, "info":Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;
    move-object/from16 v0, v18

    iget-wide v12, v0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->startMillis:J

    move-object/from16 v0, v18

    iget-boolean v14, v0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->allDay:Z

    move-object/from16 v0, v18

    iget-object v15, v0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->location:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->description:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v11, p0

    invoke-static/range {v11 .. v16}, Lcn/nubia/calendar/submodule_alerts/AlertUtils;->formatTimeLocation(Landroid/content/Context;JZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 460
    .local v12, "summaryText":Ljava/lang/String;
    move-object/from16 v0, v18

    iget-wide v4, v0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->eventId:J

    long-to-int v0, v4

    move/from16 v17, v0

    .line 461
    .local v17, "eventIdShow":I
    const/4 v14, 0x1

    move-object/from16 v11, v18

    move-object/from16 v13, p0

    move-object/from16 v15, v22

    move-object/from16 v16, p1

    invoke-static/range {v11 .. v17}, Lcn/nubia/calendar/submodule_alerts/AlertService;->postNotification(Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;Ljava/lang/String;Landroid/content/Context;ZLcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;Lcn/nubia/calendar/submodule_alerts/NotificationMgr;I)V

    .line 468
    move-object/from16 v0, v18

    move-wide/from16 v1, p4

    invoke-static {v0, v1, v2}, Lcn/nubia/calendar/submodule_alerts/AlertService;->getNextRefreshTime(Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;J)J

    move-result-wide v4

    .line 467
    move-wide/from16 v0, v40

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v40

    .line 453
    add-int/lit8 v38, v38, 0x1

    goto :goto_2

    .line 439
    .end local v12    # "summaryText":Ljava/lang/String;
    .end local v17    # "eventIdShow":I
    .end local v18    # "info":Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;
    .end local v22    # "notificationPrefs":Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;
    .end local v38    # "i":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 479
    .restart local v22    # "notificationPrefs":Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;
    .restart local v38    # "i":I
    :cond_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v38, v4, -0x1

    :goto_3
    if-ltz v38, :cond_3

    .line 480
    move/from16 v0, v38

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;

    .line 484
    .restart local v18    # "info":Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;
    move-object/from16 v0, v18

    iget-wide v4, v0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->startMillis:J

    move-object/from16 v0, v18

    iget-boolean v6, v0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->allDay:Z

    move-object/from16 v0, v18

    iget-object v7, v0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->location:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v6, v7}, Lcn/nubia/calendar/submodule_alerts/AlertUtils;->formatTimeLocation(Landroid/content/Context;JZLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 486
    .restart local v12    # "summaryText":Ljava/lang/String;
    const/16 v21, 0x0

    add-int/lit8 v36, v24, 0x1

    .end local v24    # "currentNotificationId":I
    .local v36, "currentNotificationId":I
    move-object/from16 v19, v12

    move-object/from16 v20, p0

    move-object/from16 v23, p1

    invoke-static/range {v18 .. v24}, Lcn/nubia/calendar/submodule_alerts/AlertService;->postNotification(Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;Ljava/lang/String;Landroid/content/Context;ZLcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;Lcn/nubia/calendar/submodule_alerts/NotificationMgr;I)V

    .line 492
    move-object/from16 v0, v18

    move-wide/from16 v1, p4

    invoke-static {v0, v1, v2}, Lcn/nubia/calendar/submodule_alerts/AlertService;->getNextRefreshTime(Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;J)J

    move-result-wide v4

    .line 491
    move-wide/from16 v0, v40

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v40

    .line 479
    add-int/lit8 v38, v38, -0x1

    move/from16 v24, v36

    .end local v36    # "currentNotificationId":I
    .restart local v24    # "currentNotificationId":I
    goto :goto_3

    .line 496
    .end local v12    # "summaryText":Ljava/lang/String;
    .end local v18    # "info":Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;
    :cond_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v42

    .line 497
    .local v42, "numLowPriority":I
    if-lez v42, :cond_5

    .line 499
    invoke-static {v10}, Lcn/nubia/calendar/submodule_alerts/AlertService;->getDigestTitle(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v37

    .line 501
    .local v37, "expiredDigestTitle":Ljava/lang/String;
    const/4 v4, 0x1

    move/from16 v0, v42

    if-ne v0, v4, :cond_4

    .line 503
    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;

    .line 504
    .restart local v18    # "info":Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;
    move-object/from16 v0, v18

    iget-wide v4, v0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->startMillis:J

    move-object/from16 v0, v18

    iget-boolean v6, v0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->allDay:Z

    move-object/from16 v0, v18

    iget-object v7, v0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->location:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v6, v7}, Lcn/nubia/calendar/submodule_alerts/AlertUtils;->formatTimeLocation(Landroid/content/Context;JZLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 506
    .restart local v12    # "summaryText":Ljava/lang/String;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->eventName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->startMillis:J

    move-wide/from16 v28, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->endMillis:J

    move-wide/from16 v30, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->eventId:J

    move-wide/from16 v32, v0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v25, p0

    move-object/from16 v27, v12

    invoke-static/range {v25 .. v35}, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->makeBasicNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJJIZ)Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationWrapper;

    move-result-object v25

    .line 518
    .end local v12    # "summaryText":Ljava/lang/String;
    .end local v18    # "info":Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;
    .local v25, "notification":Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationWrapper;
    :goto_4
    const/16 v26, 0x1

    .line 519
    invoke-static/range {v22 .. v22}, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;->access$000(Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;)Z

    move-result v28

    .line 520
    invoke-static/range {v22 .. v22}, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;->access$100(Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;)Ljava/lang/String;

    move-result-object v29

    .line 521
    invoke-static/range {v22 .. v22}, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;->access$200(Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;)Z

    move-result v30

    move-object/from16 v27, v37

    .line 518
    invoke-static/range {v25 .. v30}, Lcn/nubia/calendar/submodule_alerts/AlertService;->addNotificationOptions(Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationWrapper;ZLjava/lang/String;ZLjava/lang/String;Z)V

    .line 531
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-interface {v0, v4, v1}, Lcn/nubia/calendar/submodule_alerts/NotificationMgr;->notify(ILcn/nubia/calendar/submodule_alerts/AlertService$NotificationWrapper;)V

    .line 542
    .end local v25    # "notification":Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationWrapper;
    .end local v37    # "expiredDigestTitle":Ljava/lang/String;
    :goto_5
    move/from16 v0, v24

    move/from16 v1, p6

    if-gt v0, v1, :cond_6

    .line 543
    move/from16 v38, v24

    :goto_6
    move/from16 v0, v38

    move/from16 v1, p6

    if-gt v0, v1, :cond_6

    .line 544
    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-interface {v0, v1}, Lcn/nubia/calendar/submodule_alerts/NotificationMgr;->cancel(I)V

    .line 543
    add-int/lit8 v38, v38, 0x1

    goto :goto_6

    .line 513
    .restart local v37    # "expiredDigestTitle":Ljava/lang/String;
    :cond_4
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-static {v0, v10, v1, v4}, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->makeDigestNotification(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Z)Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationWrapper;

    move-result-object v25

    .restart local v25    # "notification":Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationWrapper;
    goto :goto_4

    .line 533
    .end local v25    # "notification":Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationWrapper;
    .end local v37    # "expiredDigestTitle":Ljava/lang/String;
    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lcn/nubia/calendar/submodule_alerts/NotificationMgr;->cancel(I)V

    goto :goto_5

    .line 554
    :cond_6
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v40, v4

    if-gez v4, :cond_8

    cmp-long v4, v40, p4

    if-lez v4, :cond_8

    .line 555
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v40

    invoke-static {v0, v4, v1, v2}, Lcn/nubia/calendar/submodule_alerts/AlertUtils;->scheduleNextNotificationRefresh(Landroid/content/Context;Landroid/app/AlarmManager;J)V

    .line 573
    :cond_7
    :goto_7
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 568
    :cond_8
    cmp-long v4, v40, p4

    if-gez v4, :cond_7

    .line 569
    const-string v4, "Calendar"

    const-string v5, "Illegal state: next notification refresh time found to be in the past."

    invoke-static {v4, v5}, Lcn/nubia/calendar/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method private static getDigestTitle(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 901
    .local p0, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 902
    .local v0, "digestTitle":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;

    .line 903
    .local v1, "eventInfo":Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;
    iget-object v3, v1, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->eventName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 904
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 905
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    :cond_1
    iget-object v3, v1, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->eventName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 910
    .end local v1    # "eventInfo":Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getEventRemindersTime(Landroid/content/Context;J)J
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # J

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 391
    const-wide/16 v8, 0x0

    .line 392
    .local v8, "reminders":J
    const/4 v6, 0x0

    .line 393
    .local v6, "cursor":Landroid/database/Cursor;
    const-string v3, "event_id = ? "

    .line 394
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v0, [Ljava/lang/String;

    .line 395
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 398
    .local v4, "selectionArgs":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "minutes"

    aput-object v7, v2, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 403
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 404
    :cond_0
    const-wide/16 v0, 0x1

    .line 408
    if-eqz v6, :cond_1

    .line 409
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 412
    :cond_1
    :goto_0
    return-wide v0

    .line 406
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v8

    .line 408
    if-eqz v6, :cond_3

    .line 409
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-wide v0, v8

    .line 412
    goto :goto_0

    .line 408
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 409
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 411
    :cond_4
    throw v0
.end method

.method private static getGracePeriodMs(JJ)J
    .locals 6
    .param p0, "beginTime"    # J
    .param p2, "endTime"    # J

    .prologue
    .line 896
    const-wide/32 v0, 0xdbba0

    sub-long v2, p2, p0

    const-wide/16 v4, 0x4

    div-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getInstanceStartAndEndTime(Landroid/content/Context;JJ)[J
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # J
    .param p3, "eventStartTimeMillis"    # J

    .prologue
    .line 1092
    const/4 v2, 0x2

    new-array v0, v2, [J

    move-object/from16 v16, v0

    .line 1093
    .local v16, "times":[J
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 1094
    .local v10, "nowTime":Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1095
    new-instance v11, Landroid/text/format/Time;

    invoke-direct {v11}, Landroid/text/format/Time;-><init>()V

    .line 1096
    .local v11, "startTime":Landroid/text/format/Time;
    move-wide/from16 v0, p3

    invoke-virtual {v11, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1097
    iget v2, v11, Landroid/text/format/Time;->hour:I

    iput v2, v10, Landroid/text/format/Time;->hour:I

    .line 1098
    iget v2, v11, Landroid/text/format/Time;->minute:I

    iput v2, v10, Landroid/text/format/Time;->minute:I

    .line 1099
    iget v2, v11, Landroid/text/format/Time;->second:I

    iput v2, v10, Landroid/text/format/Time;->second:I

    .line 1100
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v18

    const-wide/32 v20, 0xea60

    sub-long v14, v18, v20

    .line 1101
    .local v14, "timeStart":J
    const-wide/32 v18, 0x57b12c00

    add-long v12, v14, v18

    .line 1106
    .local v12, "timeEnd":J
    sget-object v2, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v17

    .line 1107
    .local v17, "uriBuilder":Landroid/net/Uri$Builder;
    move-object/from16 v0, v17

    invoke-static {v0, v14, v15}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 1108
    move-object/from16 v0, v17

    invoke-static {v0, v12, v13}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 1109
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 1110
    .local v3, "uri":Landroid/net/Uri;
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v18, "begin"

    aput-object v18, v4, v2

    const/4 v2, 0x1

    const-string v18, "end"

    aput-object v18, v4, v2

    .line 1113
    .local v4, "projection":[Ljava/lang/String;
    const-string v5, "event_id = ?"

    .line 1114
    .local v5, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 1115
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v6, v2

    .line 1117
    .local v6, "selectionArgs":[Ljava/lang/String;
    const-string v7, "end ASC"

    .line 1118
    .local v7, "sortOrder":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1120
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1122
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1123
    const/4 v2, 0x0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    aput-wide v18, v16, v2

    .line 1124
    const/4 v2, 0x1

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    aput-wide v18, v16, v2

    .line 1125
    const-string v2, "Calendar"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "times[0] = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcn/nubia/calendar/submodule_alerts/AlertService;->sdf:Ljava/text/SimpleDateFormat;

    const/16 v20, 0x0

    aget-wide v20, v16, v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " times[1]="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcn/nubia/calendar/submodule_alerts/AlertService;->sdf:Ljava/text/SimpleDateFormat;

    const/16 v20, 0x1

    aget-wide v20, v16, v20

    .line 1126
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1125
    move-object/from16 v0, v18

    invoke-static {v2, v0}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1131
    :cond_0
    if-eqz v8, :cond_1

    .line 1132
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1135
    :cond_1
    :goto_0
    return-object v16

    .line 1128
    :catch_0
    move-exception v9

    .line 1129
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1131
    if-eqz v8, :cond_1

    .line 1132
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1131
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_2

    .line 1132
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1134
    :cond_2
    throw v2
.end method

.method private static getNextRefreshTime(Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;J)J
    .locals 11
    .param p0, "info"    # Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;
    .param p1, "currentTime"    # J

    .prologue
    .line 662
    const-wide v2, 0x7fffffffffffffffL

    .line 663
    .local v2, "nextRefreshTime":J
    iget-wide v4, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->startMillis:J

    iget-wide v6, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->startMillis:J

    iget-wide v8, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->endMillis:J

    .line 664
    invoke-static {v6, v7, v8, v9}, Lcn/nubia/calendar/submodule_alerts/AlertService;->getGracePeriodMs(JJ)J

    move-result-wide v6

    add-long v0, v4, v6

    .line 665
    .local v0, "gracePeriodCutoff":J
    cmp-long v4, v0, p1

    if-lez v4, :cond_0

    .line 666
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 670
    :cond_0
    iget-wide v4, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->endMillis:J

    cmp-long v4, v4, p1

    if-lez v4, :cond_1

    iget-wide v4, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->endMillis:J

    cmp-long v4, v4, v0

    if-lez v4, :cond_1

    .line 671
    iget-wide v4, p0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->endMillis:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 673
    :cond_1
    return-wide v2
.end method

.method private static getTickerText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "eventName"    # Ljava/lang/String;
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 1184
    move-object v0, p0

    .line 1185
    .local v0, "tickerText":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1188
    :cond_0
    return-object v0
.end method

.method private static logEventIdsBumped(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 634
    .local p0, "list1":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;>;"
    .local p1, "list2":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 635
    .local v0, "ids":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    .line 636
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;

    .line 637
    .local v1, "info":Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;
    iget-wide v4, v1, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->eventId:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 638
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 641
    .end local v1    # "info":Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;
    :cond_0
    if-eqz p1, :cond_1

    .line 642
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;

    .line 643
    .restart local v1    # "info":Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;
    iget-wide v4, v1, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->eventId:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 644
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 647
    .end local v1    # "info":Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_2

    .line 648
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 650
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 651
    const-string v2, "Calendar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reached max postings, bumping event IDs {"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 653
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "} to digest."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 651
    invoke-static {v2, v3}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    :cond_3
    return-void
.end method

.method private static postNotification(Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;Ljava/lang/String;Landroid/content/Context;ZLcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;Lcn/nubia/calendar/submodule_alerts/NotificationMgr;I)V
    .locals 20
    .param p0, "info"    # Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;
    .param p1, "summaryText"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "highPriority"    # Z
    .param p4, "prefs"    # Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;
    .param p5, "notificationMgr"    # Lcn/nubia/calendar/submodule_alerts/NotificationMgr;
    .param p6, "notificationId"    # I

    .prologue
    .line 918
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->eventName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->location:Ljava/lang/String;

    invoke-static {v4, v5}, Lcn/nubia/calendar/submodule_alerts/AlertService;->getTickerText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 919
    .local v19, "tickerText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->eventName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->description:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->startMillis:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->endMillis:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->eventId:J

    .line 923
    invoke-static/range {p4 .. p4}, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;->access$200(Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;)Z

    move-result v13

    move-object/from16 v2, p2

    move-object/from16 v4, p1

    move/from16 v12, p6

    move/from16 v14, p3

    .line 920
    invoke-static/range {v2 .. v14}, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->makeExpandingNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJIZZ)Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationWrapper;

    move-result-object v2

    .line 925
    .local v2, "notification":Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationWrapper;
    const/4 v3, 0x1

    .line 926
    .local v3, "quietUpdate":Z
    const-string v6, ""

    .line 927
    .local v6, "ringtone":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->newAlert:Z

    if-eqz v4, :cond_0

    .line 928
    move-object/from16 v0, p4

    iget-boolean v3, v0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;->quietUpdate:Z

    .line 933
    invoke-static/range {p4 .. p4}, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;->access$100(Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;)Ljava/lang/String;

    move-result-object v6

    .line 936
    :cond_0
    invoke-static/range {p4 .. p4}, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;->access$000(Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;)Z

    move-result v5

    invoke-static/range {p4 .. p4}, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;->access$200(Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationPrefs;)Z

    move-result v7

    move-object/from16 v4, v19

    .line 935
    invoke-static/range {v2 .. v7}, Lcn/nubia/calendar/submodule_alerts/AlertService;->addNotificationOptions(Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationWrapper;ZLjava/lang/String;ZLjava/lang/String;Z)V

    .line 937
    sget-boolean v4, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->isOpenMasterSwitchGameMode:Z

    if-nez v4, :cond_1

    .line 938
    const-string v4, "ticker_notification"

    move-object/from16 v0, p5

    move/from16 v1, p6

    invoke-interface {v0, v4, v1, v2}, Lcn/nubia/calendar/submodule_alerts/NotificationMgr;->notify(Ljava/lang/String;ILcn/nubia/calendar/submodule_alerts/AlertService$NotificationWrapper;)V

    .line 955
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->newAlert:Z

    if-eqz v4, :cond_4

    .line 956
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->eventId:J

    move-object/from16 v0, p0

    iget v7, v0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->minutes:I

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5, v7}, Lcn/nubia/calendar/submodule_alerts/AlertService;->queryPhone(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v18

    .line 957
    .local v18, "phones":Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcn/nubia/calendar/submodule_alerts/AlertService;->buildMessageToSend(Landroid/content/Context;Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;)Ljava/lang/String;

    move-result-object v15

    .line 962
    .local v15, "message":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 963
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 964
    .local v16, "nowTime":J
    sget-wide v4, Lcn/nubia/calendar/submodule_alerts/AlertService;->gLastReceiveTime:J

    sub-long v4, v16, v4

    const-wide/16 v8, 0x2710

    cmp-long v4, v4, v8

    if-gtz v4, :cond_2

    sget-wide v4, Lcn/nubia/calendar/submodule_alerts/AlertService;->gLastEventId:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->eventId:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_3

    .line 966
    :cond_2
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-static {v0, v1, v15}, Lcn/nubia/calendar/submodule_alerts/AlertService;->sendSMSMessages(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    .end local v16    # "nowTime":J
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcn/nubia/calendar/submodule_alerts/AlertService;->gLastReceiveTime:J

    .line 970
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->eventId:J

    sput-wide v4, Lcn/nubia/calendar/submodule_alerts/AlertService;->gLastEventId:J

    .line 973
    .end local v15    # "message":Ljava/lang/String;
    .end local v18    # "phones":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method static processQuery(Landroid/database/Cursor;Landroid/content/Context;JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 52
    .param p0, "alertCursor"    # Landroid/database/Cursor;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "currentTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 691
    .local p4, "highPriorityEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;>;"
    .local p5, "mediumPriorityEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;>;"
    .local p6, "lowPriorityEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    .line 692
    .local v26, "cr":Landroid/content/ContentResolver;
    new-instance v29, Ljava/util/HashMap;

    invoke-direct/range {v29 .. v29}, Ljava/util/HashMap;-><init>()V

    .line 693
    .local v29, "eventIds":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;>;"
    const/16 v38, 0x0

    .line 695
    .local v38, "numFired":I
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v48

    if-eqz v48, :cond_11

    .line 696
    const/16 v48, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 697
    .local v22, "alertId":J
    const/16 v48, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 702
    .local v14, "eventId":J
    const/16 v48, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 703
    .local v18, "minutes":I
    const/16 v48, 0x3

    .line 704
    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 705
    .local v7, "eventName":Ljava/lang/String;
    const/16 v48, 0xb

    .line 706
    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 707
    .local v9, "description":Ljava/lang/String;
    const/16 v48, 0x4

    .line 708
    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 709
    .local v8, "location":Ljava/lang/String;
    const/16 v48, 0x5

    .line 710
    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v45

    .line 711
    .local v45, "status":I
    const/16 v48, 0x2

    move/from16 v0, v45

    move/from16 v1, v48

    if-ne v0, v1, :cond_8

    const/16 v27, 0x1

    .line 712
    .local v27, "declined":Z
    :goto_1
    const/16 v48, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 713
    .local v10, "beginTime":J
    const/16 v48, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 714
    .local v12, "endTime":J
    sget-object v48, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v48

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 716
    .local v19, "alertUri":Landroid/net/Uri;
    const/16 v48, 0x7

    .line 717
    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 718
    .local v20, "alarmTime":J
    const/16 v48, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v44

    .line 719
    .local v44, "state":I
    const/16 v48, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v48

    if-eqz v48, :cond_9

    const/16 v16, 0x1

    .line 730
    .local v16, "allDay":Z
    :goto_2
    new-instance v47, Landroid/content/ContentValues;

    invoke-direct/range {v47 .. v47}, Landroid/content/ContentValues;-><init>()V

    .line 731
    .local v47, "values":Landroid/content/ContentValues;
    const/16 v36, -0x1

    .line 732
    .local v36, "newState":I
    const/16 v17, 0x0

    .line 742
    .local v17, "newAlert":Z
    if-nez v27, :cond_a

    .line 743
    if-nez v44, :cond_1

    .line 744
    const/16 v36, 0x1

    .line 745
    add-int/lit8 v38, v38, 0x1

    .line 746
    const/16 v17, 0x1

    .line 752
    const-string v48, "receivedTime"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v49

    invoke-virtual/range {v47 .. v49}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 759
    :cond_1
    :goto_3
    const/16 v48, -0x1

    move/from16 v0, v36

    move/from16 v1, v48

    if-eq v0, v1, :cond_2

    .line 760
    const-string v48, "state"

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    invoke-virtual/range {v47 .. v49}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 761
    move/from16 v44, v36

    .line 764
    :cond_2
    const/16 v48, 0x1

    move/from16 v0, v44

    move/from16 v1, v48

    if-ne v0, v1, :cond_3

    .line 767
    const-string v48, "notifyTime"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v49

    invoke-virtual/range {v47 .. v49}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 771
    :cond_3
    invoke-virtual/range {v47 .. v47}, Landroid/content/ContentValues;->size()I

    move-result v48

    if-lez v48, :cond_4

    .line 772
    const/16 v48, 0x0

    const/16 v49, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    move-object/from16 v2, v47

    move-object/from16 v3, v48

    move-object/from16 v4, v49

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 774
    :cond_4
    const/16 v48, 0x1

    move/from16 v0, v44

    move/from16 v1, v48

    if-ne v0, v1, :cond_0

    .line 780
    packed-switch v45, :pswitch_data_0

    .line 788
    :pswitch_0
    const/16 v37, 0x0

    .line 791
    .local v37, "newStatus":I
    :goto_4
    new-instance v6, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;

    invoke-direct/range {v6 .. v18}, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJZZI)V

    .line 799
    .local v6, "newInfo":Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;
    move-wide/from16 v24, v10

    .line 800
    .local v24, "beginTimeAdjustedForAllDay":J
    const/16 v46, 0x0

    .line 801
    .local v46, "tz":Ljava/lang/String;
    if-eqz v16, :cond_b

    .line 802
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v46

    .line 803
    const/16 v48, 0x0

    move-object/from16 v0, v48

    move-object/from16 v1, v46

    invoke-static {v0, v10, v11, v1}, Lcn/nubia/calendar/util/Utils;->convertAlldayUtcToLocal(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v24

    .line 805
    const-wide/32 v30, 0xdbba0

    .line 811
    .local v30, "gracePeriodMs":J
    :goto_5
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    move-object/from16 v0, v29

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_6

    .line 812
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    move-object/from16 v0, v29

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;

    .line 813
    .local v39, "oldInfo":Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;
    move-object/from16 v0, v39

    iget-wide v0, v0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->startMillis:J

    move-wide/from16 v40, v0

    .line 814
    .local v40, "oldBeginTimeAdjustedForAllDay":J
    if-eqz v16, :cond_5

    .line 815
    const/16 v48, 0x0

    move-object/from16 v0, v39

    iget-wide v0, v0, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;->startMillis:J

    move-wide/from16 v50, v0

    .line 816
    move-object/from16 v0, v48

    move-wide/from16 v1, v50

    move-object/from16 v3, v46

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/calendar/util/Utils;->convertAlldayUtcToLocal(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v40

    .line 824
    :cond_5
    sub-long v42, v40, p2

    .line 826
    .local v42, "oldStartInterval":J
    sub-long v34, v24, p2

    .line 829
    .local v34, "newStartInterval":J
    const-wide/16 v48, 0x0

    cmp-long v48, v34, v48

    if-gez v48, :cond_d

    const-wide/16 v48, 0x0

    cmp-long v48, v42, v48

    if-lez v48, :cond_d

    .line 831
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->abs(J)J

    move-result-wide v48

    const-wide/32 v50, 0xdbba0

    cmp-long v48, v48, v50

    if-gez v48, :cond_c

    const/16 v28, 0x1

    .line 838
    .local v28, "dropOld":Z
    :goto_6
    if-eqz v28, :cond_0

    .line 853
    move-object/from16 v0, p4

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 854
    move-object/from16 v0, p5

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 869
    .end local v28    # "dropOld":Z
    .end local v34    # "newStartInterval":J
    .end local v39    # "oldInfo":Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;
    .end local v40    # "oldBeginTimeAdjustedForAllDay":J
    .end local v42    # "oldStartInterval":J
    :cond_6
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    move-object/from16 v0, v29

    move-object/from16 v1, v48

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    sub-long v32, p2, v30

    .line 872
    .local v32, "highPriorityCutoff":J
    cmp-long v48, v24, v32

    if-lez v48, :cond_f

    .line 874
    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 885
    .end local v6    # "newInfo":Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;
    .end local v7    # "eventName":Ljava/lang/String;
    .end local v8    # "location":Ljava/lang/String;
    .end local v9    # "description":Ljava/lang/String;
    .end local v10    # "beginTime":J
    .end local v12    # "endTime":J
    .end local v14    # "eventId":J
    .end local v16    # "allDay":Z
    .end local v17    # "newAlert":Z
    .end local v18    # "minutes":I
    .end local v19    # "alertUri":Landroid/net/Uri;
    .end local v20    # "alarmTime":J
    .end local v22    # "alertId":J
    .end local v24    # "beginTimeAdjustedForAllDay":J
    .end local v27    # "declined":Z
    .end local v30    # "gracePeriodMs":J
    .end local v32    # "highPriorityCutoff":J
    .end local v36    # "newState":I
    .end local v37    # "newStatus":I
    .end local v44    # "state":I
    .end local v45    # "status":I
    .end local v46    # "tz":Ljava/lang/String;
    .end local v47    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v48

    if-eqz p0, :cond_7

    .line 886
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    .line 888
    :cond_7
    throw v48

    .line 711
    .restart local v7    # "eventName":Ljava/lang/String;
    .restart local v8    # "location":Ljava/lang/String;
    .restart local v9    # "description":Ljava/lang/String;
    .restart local v14    # "eventId":J
    .restart local v18    # "minutes":I
    .restart local v22    # "alertId":J
    .restart local v45    # "status":I
    :cond_8
    const/16 v27, 0x0

    goto/16 :goto_1

    .line 719
    .restart local v10    # "beginTime":J
    .restart local v12    # "endTime":J
    .restart local v19    # "alertUri":Landroid/net/Uri;
    .restart local v20    # "alarmTime":J
    .restart local v27    # "declined":Z
    .restart local v44    # "state":I
    :cond_9
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 755
    .restart local v16    # "allDay":Z
    .restart local v17    # "newAlert":Z
    .restart local v36    # "newState":I
    .restart local v47    # "values":Landroid/content/ContentValues;
    :cond_a
    const/16 v36, 0x2

    goto/16 :goto_3

    .line 782
    :pswitch_1
    const/16 v37, 0x2

    .line 783
    .restart local v37    # "newStatus":I
    goto/16 :goto_4

    .line 785
    .end local v37    # "newStatus":I
    :pswitch_2
    const/16 v37, 0x1

    .line 786
    .restart local v37    # "newStatus":I
    goto/16 :goto_4

    .line 807
    .restart local v6    # "newInfo":Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;
    .restart local v24    # "beginTimeAdjustedForAllDay":J
    .restart local v46    # "tz":Ljava/lang/String;
    :cond_b
    :try_start_1
    invoke-static {v10, v11, v12, v13}, Lcn/nubia/calendar/submodule_alerts/AlertService;->getGracePeriodMs(JJ)J

    move-result-wide v30

    .restart local v30    # "gracePeriodMs":J
    goto/16 :goto_5

    .line 831
    .restart local v34    # "newStartInterval":J
    .restart local v39    # "oldInfo":Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;
    .restart local v40    # "oldBeginTimeAdjustedForAllDay":J
    .restart local v42    # "oldStartInterval":J
    :cond_c
    const/16 v28, 0x0

    goto :goto_6

    .line 834
    :cond_d
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->abs(J)J

    move-result-wide v48

    .line 835
    invoke-static/range {v42 .. v43}, Ljava/lang/Math;->abs(J)J

    move-result-wide v50

    cmp-long v48, v48, v50

    if-gez v48, :cond_e

    const/16 v28, 0x1

    .restart local v28    # "dropOld":Z
    :goto_7
    goto :goto_6

    .end local v28    # "dropOld":Z
    :cond_e
    const/16 v28, 0x0

    goto :goto_7

    .line 875
    .end local v34    # "newStartInterval":J
    .end local v39    # "oldInfo":Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;
    .end local v40    # "oldBeginTimeAdjustedForAllDay":J
    .end local v42    # "oldStartInterval":J
    .restart local v32    # "highPriorityCutoff":J
    :cond_f
    if-eqz v16, :cond_10

    if-eqz v46, :cond_10

    .line 876
    invoke-static/range {v24 .. v25}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v48

    if-eqz v48, :cond_10

    .line 879
    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 881
    :cond_10
    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 885
    .end local v6    # "newInfo":Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;
    .end local v7    # "eventName":Ljava/lang/String;
    .end local v8    # "location":Ljava/lang/String;
    .end local v9    # "description":Ljava/lang/String;
    .end local v10    # "beginTime":J
    .end local v12    # "endTime":J
    .end local v14    # "eventId":J
    .end local v16    # "allDay":Z
    .end local v17    # "newAlert":Z
    .end local v18    # "minutes":I
    .end local v19    # "alertUri":Landroid/net/Uri;
    .end local v20    # "alarmTime":J
    .end local v22    # "alertId":J
    .end local v24    # "beginTimeAdjustedForAllDay":J
    .end local v27    # "declined":Z
    .end local v30    # "gracePeriodMs":J
    .end local v32    # "highPriorityCutoff":J
    .end local v36    # "newState":I
    .end local v37    # "newStatus":I
    .end local v44    # "state":I
    .end local v45    # "status":I
    .end local v46    # "tz":Ljava/lang/String;
    .end local v47    # "values":Landroid/content/ContentValues;
    :cond_11
    if-eqz p0, :cond_12

    .line 886
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    .line 889
    :cond_12
    return v38

    .line 780
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static queryPhone(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # J
    .param p3, "minute"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 986
    const/4 v7, 0x0

    .line 987
    .local v7, "phones":Ljava/lang/String;
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "phone_numbers"

    aput-object v0, v2, v1

    .line 990
    .local v2, "projection":[Ljava/lang/String;
    const-string v3, "event_id = ? AND miniutes= ? "

    .line 992
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    .line 993
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 994
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 996
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 998
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/nubia/calendar/db/CustomDbHelper$CustomReminderTableColumn;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1001
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1002
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 1007
    :cond_0
    if-eqz v6, :cond_1

    .line 1008
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1011
    :cond_1
    :goto_0
    return-object v7

    .line 1004
    :catch_0
    move-exception v0

    .line 1007
    if-eqz v6, :cond_1

    .line 1008
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1007
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 1008
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1010
    :cond_2
    throw v0
.end method

.method static redistributeBuckets(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 5
    .param p3, "maxNotifications"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p0, "highPriorityEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;>;"
    .local p1, "mediumPriorityEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;>;"
    .local p2, "lowPriorityEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;>;"
    const/4 v4, 0x0

    .line 591
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p3, :cond_0

    .line 593
    invoke-virtual {p2, v4, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 598
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, p3

    invoke-virtual {p0, v4, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 600
    .local v0, "itemsToMoveSublist":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;>;"
    invoke-virtual {p2, v4, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 604
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 607
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 611
    .end local v0    # "itemsToMoveSublist":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;>;"
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    if-le v2, p3, :cond_1

    .line 612
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v1, p3, v2

    .line 620
    .local v1, "spaceRemaining":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 621
    .restart local v0    # "itemsToMoveSublist":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;>;"
    invoke-virtual {p2, v4, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 628
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 630
    .end local v0    # "itemsToMoveSublist":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationInfo;>;"
    .end local v1    # "spaceRemaining":I
    :cond_1
    return-void
.end method

.method public static final rescheduleMissedAlarms(Landroid/content/ContentResolver;Landroid/content/Context;Landroid/app/AlarmManager;)V
    .locals 18
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Landroid/app/AlarmManager;

    .prologue
    .line 1430
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 1431
    .local v16, "now":J
    const-wide/32 v2, 0x5265c00

    sub-long v10, v16, v2

    .line 1432
    .local v10, "ancient":J
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "alarmTime"

    aput-object v3, v4, v2

    .line 1438
    .local v4, "projection":[Ljava/lang/String;
    sget-object v3, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "state=0 AND alarmTime<? AND alarmTime>? AND end>=?"

    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 1441
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x2

    .line 1442
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const-string v7, "alarmTime ASC"

    move-object/from16 v2, p0

    .line 1438
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1444
    .local v12, "cursor":Landroid/database/Cursor;
    if-nez v12, :cond_0

    .line 1469
    :goto_0
    return-void

    .line 1453
    :cond_0
    const-wide/16 v8, -0x1

    .line 1455
    .local v8, "alarmTime":J
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1456
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 1457
    .local v14, "newAlarmTime":J
    cmp-long v2, v8, v14

    if-eqz v2, :cond_1

    .line 1462
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v14, v15}, Lcn/nubia/calendar/submodule_alerts/AlertUtils;->scheduleAlarm(Landroid/content/Context;Landroid/app/AlarmManager;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1463
    move-wide v8, v14

    goto :goto_1

    .line 1467
    .end local v14    # "newAlarmTime":J
    :cond_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1468
    throw v2
.end method

.method private static sendSMSMessages(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phones"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1146
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1147
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 1148
    .local v0, "smsManager":Landroid/telephony/SmsManager;
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1149
    .local v8, "phoneNumbers":[Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1150
    .local v7, "phoneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v8, :cond_2

    array-length v3, v8

    if-lez v3, :cond_2

    .line 1151
    array-length v10, v8

    move v3, v5

    :goto_0
    if-ge v3, v10, :cond_1

    aget-object v1, v8, v3

    .line 1152
    .local v1, "phone":Ljava/lang/String;
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 1153
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1151
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1156
    .end local v1    # "phone":Ljava/lang/String;
    :cond_1
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1157
    .restart local v1    # "phone":Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1159
    new-instance v9, Landroid/content/Intent;

    const-string v3, "cn.nubia.calendar.alerts.SEND_INTENT_STATUS"

    invoke-direct {v9, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1161
    .local v9, "sendIntent":Landroid/content/Intent;
    const-string v3, "phonelist"

    invoke-virtual {v9, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1163
    const-string v3, "phone"

    invoke-virtual {v9, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1164
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1165
    .local v6, "messageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v10, 0x46

    if-le v3, v10, :cond_3

    .line 1166
    invoke-virtual {v0, p2}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1170
    :goto_1
    const-string v3, "messagelist"

    invoke-virtual {v9, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1172
    const-string v3, "position"

    invoke-virtual {v9, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1173
    const/high16 v3, 0x8000000

    invoke-static {p0, v5, v9, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 1175
    .local v4, "sendPi":Landroid/app/PendingIntent;
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 1179
    .end local v0    # "smsManager":Landroid/telephony/SmsManager;
    .end local v1    # "phone":Ljava/lang/String;
    .end local v4    # "sendPi":Landroid/app/PendingIntent;
    .end local v6    # "messageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "phoneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "phoneNumbers":[Ljava/lang/String;
    .end local v9    # "sendIntent":Landroid/content/Intent;
    :cond_2
    return-void

    .line 1168
    .restart local v0    # "smsManager":Landroid/telephony/SmsManager;
    .restart local v1    # "phone":Ljava/lang/String;
    .restart local v6    # "messageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7    # "phoneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "phoneNumbers":[Ljava/lang/String;
    .restart local v9    # "sendIntent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static updateAlertNotification(Landroid/content/Context;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    .line 344
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 345
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v10, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationMgrWrapper;

    const-string v1, "notification"

    .line 347
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    invoke-direct {v10, v1, p0}, Lcn/nubia/calendar/submodule_alerts/AlertService$NotificationMgrWrapper;-><init>(Landroid/app/NotificationManager;Landroid/content/Context;)V

    .line 349
    .local v10, "nm":Lcn/nubia/calendar/submodule_alerts/NotificationMgr;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 351
    .local v6, "currentTime":J
    invoke-static {p0}, Lcn/nubia/calendar/CalendarSettingsActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 352
    .local v11, "prefs":Landroid/content/SharedPreferences;
    invoke-static {}, Lcn/nubia/calendar/submodule_alerts/AlertService;->GameModeHelper()V

    .line 357
    const-string v1, "preferences_alerts"

    invoke-interface {v11, v1, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 364
    invoke-interface {v10}, Lcn/nubia/calendar/submodule_alerts/NotificationMgr;->cancelAll()V

    .line 387
    :cond_0
    :goto_0
    return v9

    .line 367
    :cond_1
    sget-object v1, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcn/nubia/calendar/submodule_alerts/AlertService;->ALERT_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(state=?) AND minutes <>-1 AND alarmTime<="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcn/nubia/calendar/submodule_alerts/AlertService;->ACTIVE_ALERTS_SELECTION_ARGS:[Ljava/lang/String;

    const-string v5, "begin DESC, end DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 370
    .local v5, "alertCursor":Landroid/database/Cursor;
    if-eqz v5, :cond_2

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_4

    .line 371
    :cond_2
    if-eqz v5, :cond_3

    .line 372
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 378
    :cond_3
    const/4 v9, 0x0

    goto :goto_0

    .line 381
    :cond_4
    const/16 v8, 0x14

    move-object v2, p0

    move-object v3, v10

    move-object v4, v11

    invoke-static/range {v2 .. v8}, Lcn/nubia/calendar/submodule_alerts/AlertService;->generateAlerts(Landroid/content/Context;Lcn/nubia/calendar/submodule_alerts/NotificationMgr;Landroid/content/SharedPreferences;Landroid/database/Cursor;JI)Z

    move-result v9

    .line 383
    .local v9, "flagAlerts":Z
    if-eqz v5, :cond_0

    .line 384
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 385
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 1520
    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    .line 1521
    sget-object v0, Lcn/nubia/calendar/CalendarApplication;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1526
    sget-object v0, Lcn/nubia/calendar/CalendarApplication;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertService;->mServiceLooper:Landroid/os/Looper;

    if-eqz v0, :cond_0

    .line 1528
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 1530
    :cond_0
    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 5
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    .line 1491
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "AlertService"

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 1493
    .local v2, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 1495
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/calendar/submodule_alerts/AlertService;->mServiceLooper:Landroid/os/Looper;

    .line 1496
    new-instance v3, Lcn/nubia/calendar/submodule_alerts/AlertService$ServiceHandler;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_alerts/AlertService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v3, p0, v4}, Lcn/nubia/calendar/submodule_alerts/AlertService$ServiceHandler;-><init>(Lcn/nubia/calendar/submodule_alerts/AlertService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcn/nubia/calendar/submodule_alerts/AlertService;->mServiceHandler:Lcn/nubia/calendar/submodule_alerts/AlertService$ServiceHandler;

    .line 1499
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1500
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "PersistableBundle"

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1501
    const-string v3, "JobParameters"

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1502
    iget-object v3, p0, Lcn/nubia/calendar/submodule_alerts/AlertService;->mServiceHandler:Lcn/nubia/calendar/submodule_alerts/AlertService$ServiceHandler;

    invoke-virtual {v3}, Lcn/nubia/calendar/submodule_alerts/AlertService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1503
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v3

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1504
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1505
    iget-object v3, p0, Lcn/nubia/calendar/submodule_alerts/AlertService;->mServiceHandler:Lcn/nubia/calendar/submodule_alerts/AlertService$ServiceHandler;

    invoke-virtual {v3, v1}, Lcn/nubia/calendar/submodule_alerts/AlertService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1507
    sget-object v3, Lcn/nubia/calendar/CalendarApplication;->TAG:Ljava/lang/String;

    const-string v4, "onStartJob"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    const/4 v3, 0x1

    return v3
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 2
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    .line 1513
    sget-object v0, Lcn/nubia/calendar/CalendarApplication;->TAG:Ljava/lang/String;

    const-string v1, "onStopJob"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    const/4 v0, 0x0

    return v0
.end method

.method processMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 275
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    .line 276
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "PersistableBundle"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersistableBundle;

    .line 280
    .local v1, "bundle":Landroid/os/PersistableBundle;
    const-string v3, "action"

    invoke-virtual {v1, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "action":Ljava/lang/String;
    invoke-static {p0}, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->createLocalCalendar(Landroid/content/Context;)V

    .line 285
    const-string v3, "android.intent.action.PROVIDER_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    const-string v3, "android.intent.action.EVENT_REMINDER"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "android.intent.action.LOCALE_CHANGED"

    .line 288
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 289
    :cond_2
    invoke-static {p0}, Lcn/nubia/calendar/submodule_alerts/AlertService;->updateAlertNotification(Landroid/content/Context;)Z

    goto :goto_0

    .line 290
    :cond_3
    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 291
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_alerts/AlertService;->doTimeChanged()V

    .line 293
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_alerts/AlertService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/calendar/util/Utils;->setCalendarIcon(Landroid/content/Context;)V

    goto :goto_0

    .line 304
    :cond_4
    const-string v3, "removeOldReminders"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 305
    invoke-static {p0}, Lcn/nubia/calendar/submodule_alerts/AlertService;->dismissOldAlerts(Landroid/content/Context;)V

    goto :goto_0

    .line 306
    :cond_5
    const-string v3, "cn.nubia.launcher.fancyicon.remind.time"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 307
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_alerts/AlertService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/calendar/util/Utils;->setCalendarIcon(Landroid/content/Context;)V

    goto :goto_0

    .line 314
    :cond_6
    const-string v3, "cn.nubia.intent.action.NUBIA.WEATHER.UPDATE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0
.end method
