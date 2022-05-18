.class public Lcn/nubia/deskclock/activity/HandleSetAlarm;
.super Landroid/app/Activity;
.source "HandleSetAlarm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deskclock/activity/HandleSetAlarm$SnoozeAlarmAsync;,
        Lcn/nubia/deskclock/activity/HandleSetAlarm$FetchMatchingAlarmsAction;,
        Lcn/nubia/deskclock/activity/HandleSetAlarm$DismissAlarmAsync;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HandleSetAlarm"

.field public static final TIMER_MAX_LENGTH:J = 0x5265c00L

.field public static final TIMER_MIN_LENGTH:J = 0x3e8L


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAppContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;

.field private mNubiaCtaDialog:Lcn/nubia/deskclock/ui/NubiaCtaDialog;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static {p0, p1}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->notifyVoiceFailure(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static {p0, p1}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->notifyVoiceSuccess(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public static dismissAlarm(Lcn/nubia/deskclock/model/Alarm;Landroid/app/Activity;)V
    .locals 5
    .param p0, "alarm"    # Lcn/nubia/deskclock/model/Alarm;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 505
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 506
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget v4, p0, Lcn/nubia/deskclock/model/Alarm;->id:I

    invoke-static {v3, v4}, Lcn/nubia/deskclock/model/Alarms;->getAlarm(Landroid/content/ContentResolver;I)Lcn/nubia/deskclock/model/Alarm;

    move-result-object v1

    .line 507
    .local v1, "instance":Lcn/nubia/deskclock/model/Alarm;
    if-nez v1, :cond_0

    .line 508
    const v3, 0x7f0d007a

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 509
    .local v2, "reason":Ljava/lang/String;
    invoke-static {p1, v2}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->notifyVoiceFailure(Landroid/app/Activity;Ljava/lang/String;)V

    .line 510
    const-string v3, "HandleSetAlarm"

    const-string v4, "No alarm instance to dismiss"

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    .end local v2    # "reason":Ljava/lang/String;
    :goto_0
    return-void

    .line 514
    :cond_0
    invoke-static {v1, p1}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->dismissAlarmInstance(Lcn/nubia/deskclock/model/Alarm;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public static dismissAlarmInstance(Lcn/nubia/deskclock/model/Alarm;Landroid/app/Activity;)V
    .locals 12
    .param p0, "instance"    # Lcn/nubia/deskclock/model/Alarm;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 520
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 521
    .local v1, "context":Landroid/content/Context;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 522
    .local v0, "calendar":Ljava/util/Calendar;
    iget-wide v8, p0, Lcn/nubia/deskclock/model/Alarm;->time:J

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 523
    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v7

    .line 524
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 525
    .local v6, "time":Ljava/lang/String;
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcn/nubia/deskclock/DeskClockApplication;->getDefaultSharedPref()Landroid/content/SharedPreferences;

    move-result-object v4

    .line 526
    .local v4, "sharedPref":Landroid/content/SharedPreferences;
    const-string v7, "isSnooze"

    invoke-interface {v4, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 527
    .local v2, "isSnooze":Z
    const-string v7, "snoozeMaxCount"

    const/16 v8, 0x12c

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 531
    .local v5, "snoozeMaxCount":I
    invoke-static {p0}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->isAlarmWithin24Hours(Lcn/nubia/deskclock/model/Alarm;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 533
    invoke-static {}, Lcn/nubia/deskclock/util/ThreadPool;->getInstance()Lcn/nubia/deskclock/util/ThreadPool;

    move-result-object v7

    new-instance v8, Lcn/nubia/deskclock/activity/HandleSetAlarm$1;

    invoke-direct {v8, v1, p0}, Lcn/nubia/deskclock/activity/HandleSetAlarm$1;-><init>(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)V

    invoke-virtual {v7, v8}, Lcn/nubia/deskclock/util/ThreadPool;->addTask(Ljava/lang/Runnable;)V

    .line 548
    :goto_0
    const v7, 0x7f0d0026

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v6, v8, v11

    invoke-virtual {v1, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 549
    .local v3, "reason":Ljava/lang/String;
    invoke-static {p1, v3}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->notifyVoiceSuccess(Landroid/app/Activity;Ljava/lang/String;)V

    .line 550
    const-string v7, "HandleSetAlarm"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Alarm dismissed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    return-void

    .line 541
    .end local v3    # "reason":Ljava/lang/String;
    :cond_0
    const v7, 0x7f0d0024

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v6, v8, v11

    invoke-virtual {v1, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 543
    .restart local v3    # "reason":Ljava/lang/String;
    invoke-static {p1, v3}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->notifyVoiceFailure(Landroid/app/Activity;Ljava/lang/String;)V

    .line 544
    const-string v7, "HandleSetAlarm"

    const-string v8, "Can\'t dismiss alarm more than 24 hours in advance"

    invoke-static {v7, v8}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getAlarmName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 331
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "mAlarmRepeatName":[Ljava/lang/String;
    const-string v1, "HandleSetAlarm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAlarmRepeatName[0] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    if-eqz v0, :cond_0

    aget-object v1, v0, v4

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDaysFromIntent(Landroid/content/Intent;)Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    .line 337
    new-instance v2, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;-><init>(I)V

    .line 338
    .local v2, "daysOfWeek":Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;
    const-string v4, "android.intent.extra.alarm.DAYS"

    .line 339
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 340
    .local v0, "days":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_2

    .line 341
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v1, v4, [I

    .line 342
    .local v1, "daysArray":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 343
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v1, v3

    .line 342
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 345
    :cond_0
    invoke-virtual {v2, v5, v1}, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->setDaysOfWeek(Z[I)V

    .line 354
    .end local v3    # "i":I
    :cond_1
    :goto_1
    return-object v2

    .line 349
    .end local v1    # "daysArray":[I
    :cond_2
    const-string v4, "android.intent.extra.alarm.DAYS"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 350
    .restart local v1    # "daysArray":[I
    if-eqz v1, :cond_1

    .line 351
    invoke-virtual {v2, v5, v1}, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->setDaysOfWeek(Z[I)V

    goto :goto_1
.end method

.method private static getLabelFromIntent(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "defaultLabel"    # Ljava/lang/String;

    .prologue
    .line 794
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.intent.extra.alarm.MESSAGE"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 795
    .local v0, "message":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private getMessageFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 325
    const-string v1, "android.intent.extra.alarm.MESSAGE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "message":Ljava/lang/String;
    if-nez v0, :cond_0

    invoke-direct {p0, p0}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->getAlarmName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private handleCursorResult(Landroid/database/Cursor;JZZ)Z
    .locals 8
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "timeInMillis"    # J
    .param p4, "enable"    # Z
    .param p5, "skipUi"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 359
    const-string v5, "HandleSetAlarm"

    const-string v6, "handleCursorResult"

    invoke-static {v5, v6}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 361
    new-instance v0, Lcn/nubia/deskclock/model/Alarm;

    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v0, p1, v5}, Lcn/nubia/deskclock/model/Alarm;-><init>(Landroid/database/Cursor;Landroid/content/ContentResolver;)V

    .line 362
    .local v0, "alarm":Lcn/nubia/deskclock/model/Alarm;
    if-eqz p4, :cond_0

    .line 363
    iget v5, v0, Lcn/nubia/deskclock/model/Alarm;->id:I

    invoke-static {p0, v5, v3}, Lcn/nubia/deskclock/model/Alarms;->enableAlarm(Landroid/content/Context;IZ)V

    .line 364
    iput-boolean v3, v0, Lcn/nubia/deskclock/model/Alarm;->enabled:Z

    .line 366
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5, p2, p3}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->popAlarmSetToast(Landroid/content/Context;J)V

    .line 367
    if-eqz p5, :cond_1

    .line 368
    invoke-static {p0, v0}, Lcn/nubia/deskclock/model/Alarms;->setAlarm(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)J

    .line 370
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 371
    .local v1, "calendar":Ljava/util/Calendar;
    iget-wide v6, v0, Lcn/nubia/deskclock/model/Alarm;->time:J

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 372
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    .line 373
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 374
    .local v2, "time":Ljava/lang/String;
    const v5, 0x7f0d0027

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v2, v6, v4

    invoke-virtual {p0, v5, v6}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->notifyVoiceSuccess(Landroid/app/Activity;Ljava/lang/String;)V

    .line 377
    .end local v0    # "alarm":Lcn/nubia/deskclock/model/Alarm;
    .end local v1    # "calendar":Ljava/util/Calendar;
    .end local v2    # "time":Ljava/lang/String;
    :goto_0
    return v3

    :cond_2
    move v3, v4

    goto :goto_0
.end method

.method private handleDismissAlarm()V
    .locals 3

    .prologue
    .line 128
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.intent.action.NUBIA.TIMEMANAGER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "deskclock.select.tab"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 131
    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->startActivity(Landroid/content/Intent;)V

    .line 132
    new-instance v1, Lcn/nubia/deskclock/activity/HandleSetAlarm$DismissAlarmAsync;

    iget-object v2, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0, p0}, Lcn/nubia/deskclock/activity/HandleSetAlarm$DismissAlarmAsync;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/app/Activity;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcn/nubia/deskclock/activity/HandleSetAlarm$DismissAlarmAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 133
    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 102
    if-eqz p1, :cond_0

    .line 103
    const-string v0, "android.intent.action.SET_ALARM"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->checkAndRequestPermissions()V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    const-string v0, "android.intent.action.SHOW_ALARMS"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->handleShowAlarms()V

    goto :goto_0

    .line 109
    :cond_2
    const-string v0, "android.intent.action.DISMISS_ALARM"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 110
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->handleDismissAlarm()V

    goto :goto_0

    .line 111
    :cond_3
    const-string v0, "android.intent.action.SET_TIMER"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 112
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->handleSetTimer(Landroid/content/Intent;)V

    goto :goto_0

    .line 114
    :cond_4
    const-string v0, "android.intent.action.SHOW_TIMERS"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 115
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->handleShowTimers()V

    goto :goto_0

    .line 116
    :cond_5
    const-string v0, "android.intent.action.SNOOZE_ALARM"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->handleSnoozeAlarms(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleSetAlarm(Landroid/content/Intent;)V
    .locals 25
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 152
    const-string v4, "android.intent.extra.alarm.HOUR"

    const/4 v6, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 157
    .local v14, "hour":I
    const-string v4, "android.intent.extra.alarm.MINUTES"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 158
    const-string v4, "android.intent.extra.alarm.MINUTES"

    const/4 v6, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 162
    .local v16, "minutes":I
    :goto_0
    const-string v4, "HandleSetAlarm"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSetAlarm: hour : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ;; minutes : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    if-ltz v14, :cond_0

    const/16 v4, 0x17

    if-gt v14, v4, :cond_0

    if-ltz v16, :cond_0

    const/16 v4, 0x3b

    move/from16 v0, v16

    if-le v0, v4, :cond_2

    .line 165
    :cond_0
    const-class v4, Lcn/nubia/deskclock/activity/AddAlarmActivity;

    const-wide/16 v6, -0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6, v7}, Lcn/nubia/deskclock/model/Alarm;->createIntent(Landroid/content/Context;Ljava/lang/Class;J)Landroid/content/Intent;

    move-result-object v12

    .line 167
    .local v12, "createAlarm":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v12, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 168
    const-string v4, "deskclock.select.tab"

    const/4 v6, 0x1

    invoke-virtual {v12, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 170
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->startActivity(Landroid/content/Intent;)V

    .line 171
    const v4, 0x7f0d006e

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, " "

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    .line 172
    .local v23, "voiceMessage":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->notifyVoiceFailure(Landroid/app/Activity;Ljava/lang/String;)V

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->finish()V

    .line 260
    .end local v12    # "createAlarm":Landroid/content/Intent;
    .end local v23    # "voiceMessage":Ljava/lang/String;
    :goto_1
    return-void

    .line 160
    .end local v16    # "minutes":I
    :cond_1
    const/16 v16, 0x0

    .restart local v16    # "minutes":I
    goto :goto_0

    .line 177
    :cond_2
    const-string v4, "android.intent.extra.alarm.SKIP_UI"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 178
    .local v9, "skipUi":Z
    const-string v4, "HandleSetAlarm"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSetAlarm: skipUi : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-direct/range {p0 .. p1}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->getMessageFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v15

    .line 180
    .local v15, "message":Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->getDaysFromIntent(Landroid/content/Intent;)Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->getCoded()I

    move-result v13

    .line 182
    .local v13, "daysWeek":I
    const-string v4, "android.intent.extra.alarm.RINGTONE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 183
    .local v18, "ringTone":Ljava/lang/String;
    if-nez v18, :cond_6

    .line 187
    const/4 v4, 0x4

    .line 188
    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v18

    .line 193
    :cond_3
    :goto_2
    const/4 v10, 0x0

    .line 194
    .local v10, "c":Landroid/database/Cursor;
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/deskclock/DeskClockApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v6, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    invoke-direct {v6, v13}, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;-><init>(I)V

    const/4 v7, 0x1

    move/from16 v0, v16

    invoke-static {v4, v14, v0, v6, v7}, Lcn/nubia/deskclock/model/Alarms;->calculateAlarm(Landroid/content/Context;IILcn/nubia/deskclock/model/Alarm$DaysOfWeek;Z)Ljava/util/Calendar;

    move-result-object v4

    .line 195
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v20

    .line 196
    .local v20, "timeInMillis":J
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .local v17, "querySelection":Ljava/lang/StringBuilder;
    const-string v4, "hour"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " AND "

    .line 198
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "minutes"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 199
    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " AND "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "daysofweek"

    .line 200
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcn/nubia/deskclock/model/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcn/nubia/deskclock/model/Alarm$Columns;->ALARM_QUERY_COLUMNS:[Ljava/lang/String;

    .line 204
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 202
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 205
    .end local v10    # "c":Landroid/database/Cursor;
    .local v5, "c":Landroid/database/Cursor;
    if-eqz v5, :cond_8

    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_8

    .line 206
    const-string v4, "HandleSetAlarm"

    const-string v6, "has same alarm"

    invoke-static {v4, v6}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0d0037

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 208
    .local v24, "waringInfo":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v4, v1}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->popAlarmToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 209
    move-object/from16 v23, v24

    .line 210
    .restart local v23    # "voiceMessage":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->notifyVoiceFailure(Landroid/app/Activity;Ljava/lang/String;)V

    .line 211
    if-nez v9, :cond_4

    .line 212
    invoke-direct/range {p0 .. p0}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->startDeskClock()V

    .line 214
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 218
    if-eqz v5, :cond_5

    .line 219
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 221
    :cond_5
    const/4 v5, 0x0

    .line 215
    goto/16 :goto_1

    .line 189
    .end local v5    # "c":Landroid/database/Cursor;
    .end local v17    # "querySelection":Ljava/lang/StringBuilder;
    .end local v20    # "timeInMillis":J
    .end local v23    # "voiceMessage":Ljava/lang/String;
    .end local v24    # "waringInfo":Ljava/lang/String;
    :cond_6
    const-string v4, "silent"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 190
    :cond_7
    const-string v18, "silent"

    goto/16 :goto_2

    .line 218
    .restart local v5    # "c":Landroid/database/Cursor;
    .restart local v17    # "querySelection":Ljava/lang/StringBuilder;
    .restart local v20    # "timeInMillis":J
    :cond_8
    if-eqz v5, :cond_9

    .line 219
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 221
    :cond_9
    const/4 v10, 0x0

    .line 224
    .end local v5    # "c":Landroid/database/Cursor;
    .restart local v10    # "c":Landroid/database/Cursor;
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 225
    .local v22, "values":Landroid/content/ContentValues;
    const-string v4, "hour"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 226
    const-string v4, "minutes"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 227
    const-string v4, "message"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v4, "enabled"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 229
    const-string v4, "vibrate"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 230
    const-string v4, "daysofweek"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 231
    const-string v4, "alarmtime"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 232
    const-string v4, "alert"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v4, "enablerecentalarm"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 234
    const-string v4, "holidayalarm"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 236
    .local v2, "cr":Landroid/content/ContentResolver;
    sget-object v4, Lcn/nubia/deskclock/model/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v22

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 237
    .local v3, "result":Landroid/net/Uri;
    if-eqz v3, :cond_f

    .line 239
    :try_start_2
    sget-object v4, Lcn/nubia/deskclock/model/Alarm$Columns;->ALARM_QUERY_COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v5

    .line 241
    .end local v10    # "c":Landroid/database/Cursor;
    .restart local v5    # "c":Landroid/database/Cursor;
    :try_start_3
    const-string v4, "HandleSetAlarm"

    const-string v6, "insert name alarm"

    invoke-static {v4, v6}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-wide/from16 v6, v20

    invoke-direct/range {v4 .. v9}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->handleCursorResult(Landroid/database/Cursor;JZZ)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 243
    const-string v4, "HandleSetAlarm"

    const-string v6, "insert success"

    invoke-static {v4, v6}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :goto_3
    if-nez v9, :cond_a

    .line 252
    invoke-direct/range {p0 .. p0}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->startDeskClock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 255
    :cond_a
    if-eqz v5, :cond_b

    .line 256
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 259
    :cond_b
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->finish()V

    goto/16 :goto_1

    .line 218
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v3    # "result":Landroid/net/Uri;
    .end local v5    # "c":Landroid/database/Cursor;
    .end local v22    # "values":Landroid/content/ContentValues;
    .restart local v10    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v4

    move-object v5, v10

    .end local v10    # "c":Landroid/database/Cursor;
    .restart local v5    # "c":Landroid/database/Cursor;
    :goto_5
    if-eqz v5, :cond_c

    .line 219
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 221
    :cond_c
    const/4 v5, 0x0

    .line 222
    throw v4

    .line 245
    .restart local v2    # "cr":Landroid/content/ContentResolver;
    .restart local v3    # "result":Landroid/net/Uri;
    .restart local v22    # "values":Landroid/content/ContentValues;
    :cond_d
    :try_start_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 246
    .local v11, "calendar":Ljava/util/Calendar;
    move-wide/from16 v0, v20

    invoke-virtual {v11, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 247
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    .line 248
    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v19

    .line 249
    .local v19, "time":Ljava/lang/String;
    const v4, 0x7f0d0027

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v19, v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->notifyVoiceFailure(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 255
    .end local v11    # "calendar":Ljava/util/Calendar;
    .end local v19    # "time":Ljava/lang/String;
    :catchall_1
    move-exception v4

    :goto_6
    if-eqz v5, :cond_e

    .line 256
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 257
    :cond_e
    throw v4

    .line 255
    .end local v5    # "c":Landroid/database/Cursor;
    .restart local v10    # "c":Landroid/database/Cursor;
    :catchall_2
    move-exception v4

    move-object v5, v10

    .end local v10    # "c":Landroid/database/Cursor;
    .restart local v5    # "c":Landroid/database/Cursor;
    goto :goto_6

    .line 218
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v3    # "result":Landroid/net/Uri;
    .end local v22    # "values":Landroid/content/ContentValues;
    :catchall_3
    move-exception v4

    goto :goto_5

    .end local v5    # "c":Landroid/database/Cursor;
    .restart local v2    # "cr":Landroid/content/ContentResolver;
    .restart local v3    # "result":Landroid/net/Uri;
    .restart local v10    # "c":Landroid/database/Cursor;
    .restart local v22    # "values":Landroid/content/ContentValues;
    :cond_f
    move-object v5, v10

    .end local v10    # "c":Landroid/database/Cursor;
    .restart local v5    # "c":Landroid/database/Cursor;
    goto :goto_4
.end method

.method private handleSetTimer(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 263
    const-string v9, "android.intent.extra.alarm.LENGTH"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 264
    new-instance v9, Landroid/content/Intent;

    const-class v10, Lcn/nubia/deskclock/DeskClock;

    invoke-direct {v9, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v10, "android.intent.action.MAIN"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    const-string v10, "deskclock.select.tab"

    const/4 v11, 0x3

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v9

    const/high16 v10, 0x10000000

    .line 266
    invoke-virtual {v9, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v9

    .line 264
    invoke-virtual {p0, v9}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->startActivity(Landroid/content/Intent;)V

    .line 267
    const-string v9, "HandleSetAlarm"

    const-string v10, "handleSetTimer: no EXTRA_LENGTH"

    invoke-static {v9, v10}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->finish()V

    .line 306
    :goto_0
    return-void

    .line 271
    :cond_0
    const-string v9, "android.intent.extra.alarm.LENGTH"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    int-to-long v4, v9

    .line 272
    .local v4, "length":J
    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, v4

    const-wide/16 v12, 0x3e8

    cmp-long v9, v10, v12

    if-ltz v9, :cond_1

    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, v4

    const-wide/32 v12, 0x5265c00

    cmp-long v9, v10, v12

    if-lez v9, :cond_2

    .line 274
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->finish()V

    .line 275
    const-string v9, "HandleSetAlarm"

    const-string v10, "handleSetTimer: timer < 1s"

    invoke-static {v9, v10}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 278
    :cond_2
    const-string v9, "android.intent.extra.alarm.SKIP_UI"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 279
    .local v8, "skipUi":Z
    const-string v9, ""

    invoke-static {p1, v9}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->getLabelFromIntent(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, "label":Ljava/lang/String;
    invoke-static {v2}, Lcn/nubia/deskclock/database/CountDownSPUtils;->setTimeTitle(Ljava/lang/String;)V

    .line 281
    const-string v9, "HandleSetAlarm"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleSetTimer: skipUi : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ;; label : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    long-to-int v9, v4

    invoke-static {p0, v9}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeAssisTimeToPref(Landroid/content/Context;I)V

    .line 283
    const/4 v9, 0x0

    const/4 v10, 0x0

    long-to-int v11, v4

    invoke-static {p0, v9, v10, v11}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeCountDownTotalTimeToPref(Landroid/content/Context;III)V

    .line 284
    const/4 v9, 0x1

    invoke-static {p0, v9}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeAssisStatusToPref(Landroid/content/Context;I)V

    .line 285
    const-wide/16 v10, 0x3e8

    mul-long v0, v4, v10

    .line 286
    .local v0, "deltaTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    add-long v6, v10, v0

    .line 287
    .local v6, "mFinalTime":J
    const-string v9, "time_pref"

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "countdown_finaltime"

    .line 288
    invoke-interface {v9, v10, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 289
    const-string v9, "HandleSetAlarm"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleSetTimer: mFinalTime : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    long-to-int v9, v4

    invoke-static {p0, v9}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeTimeNotficationToPref(Landroid/content/Context;I)V

    .line 291
    if-eqz v8, :cond_3

    .line 292
    const/4 v9, 0x1

    invoke-static {v9}, Lcn/nubia/deskclock/database/CountDownSPUtils;->setmAssistantStartCountdownStatus(Z)V

    .line 293
    new-instance v3, Landroid/content/Intent;

    const-class v9, Lcn/nubia/deskclock/CountDownService;

    invoke-direct {v3, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 294
    .local v3, "mCountdown":Landroid/content/Intent;
    const-string v9, "bengin_time"

    long-to-int v10, v4

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 295
    const-string v9, "label"

    invoke-virtual {v3, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    const-string v9, "is_show_float_view"

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 297
    invoke-virtual {p0, v3}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 298
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->finish()V

    goto/16 :goto_0

    .line 300
    .end local v3    # "mCountdown":Landroid/content/Intent;
    :cond_3
    const-string v9, "cn.nubia.assistant.NEW_COUNTDOWN"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    new-instance v9, Landroid/content/Intent;

    const-class v10, Lcn/nubia/deskclock/DeskClock;

    invoke-direct {v9, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v10, "cn.nubia.assistant.NEW_COUNTDOWN"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    const-string v10, "deskclock.select.tab"

    const/4 v11, 0x3

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v9

    const/high16 v10, 0x10000000

    .line 303
    invoke-virtual {v9, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v9

    .line 301
    invoke-virtual {p0, v9}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->startActivity(Landroid/content/Intent;)V

    .line 304
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->finish()V

    goto/16 :goto_0
.end method

.method private handleShowAlarms()V
    .locals 3

    .prologue
    .line 309
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.intent.action.NUBIA.TIMEMANAGER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 310
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "deskclock.select.tab"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 312
    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->startActivity(Landroid/content/Intent;)V

    .line 313
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->finish()V

    .line 314
    return-void
.end method

.method private handleShowTimers()V
    .locals 3

    .prologue
    .line 137
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.intent.action.NUBIA.TIMEMANAGER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "deskclock.select.tab"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->startActivity(Landroid/content/Intent;)V

    .line 141
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->finish()V

    .line 142
    return-void
.end method

.method private handleSnoozeAlarms(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 124
    new-instance v0, Lcn/nubia/deskclock/activity/HandleSetAlarm$SnoozeAlarmAsync;

    invoke-direct {v0, p1, p0}, Lcn/nubia/deskclock/activity/HandleSetAlarm$SnoozeAlarmAsync;-><init>(Landroid/content/Intent;Landroid/app/Activity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/activity/HandleSetAlarm$SnoozeAlarmAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 125
    return-void
.end method

.method public static isAlarmWithin24Hours(Lcn/nubia/deskclock/model/Alarm;)Z
    .locals 8
    .param p0, "alarmInstance"    # Lcn/nubia/deskclock/model/Alarm;

    .prologue
    .line 554
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 555
    .local v0, "nextAlarmTime":Ljava/util/Calendar;
    iget-wide v4, p0, Lcn/nubia/deskclock/model/Alarm;->time:J

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 556
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 557
    .local v2, "nextAlarmTimeMillis":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/32 v6, 0x5265c00

    cmp-long v1, v4, v6

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static notifyVoiceFailure(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 392
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreM()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getVoiceInteractor()Landroid/app/VoiceInteractor;

    move-result-object v1

    .line 397
    .local v1, "voiceInteractor":Landroid/app/VoiceInteractor;
    if-eqz v1, :cond_0

    .line 398
    new-instance v0, Landroid/app/VoiceInteractor$Prompt;

    invoke-direct {v0, p1}, Landroid/app/VoiceInteractor$Prompt;-><init>(Ljava/lang/CharSequence;)V

    .line 399
    .local v0, "prompt":Landroid/app/VoiceInteractor$Prompt;
    new-instance v2, Landroid/app/VoiceInteractor$AbortVoiceRequest;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Landroid/app/VoiceInteractor$AbortVoiceRequest;-><init>(Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroid/app/VoiceInteractor;->submitRequest(Landroid/app/VoiceInteractor$Request;)Z

    goto :goto_0
.end method

.method private static notifyVoiceSuccess(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 381
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreM()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getVoiceInteractor()Landroid/app/VoiceInteractor;

    move-result-object v1

    .line 385
    .local v1, "voiceInteractor":Landroid/app/VoiceInteractor;
    if-eqz v1, :cond_0

    .line 386
    new-instance v0, Landroid/app/VoiceInteractor$Prompt;

    invoke-direct {v0, p1}, Landroid/app/VoiceInteractor$Prompt;-><init>(Ljava/lang/CharSequence;)V

    .line 387
    .local v0, "prompt":Landroid/app/VoiceInteractor$Prompt;
    new-instance v2, Landroid/app/VoiceInteractor$CompleteVoiceRequest;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Landroid/app/VoiceInteractor$CompleteVoiceRequest;-><init>(Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroid/app/VoiceInteractor;->submitRequest(Landroid/app/VoiceInteractor$Request;)Z

    goto :goto_0
.end method

.method private popAlarmSetToast(Landroid/content/Context;J)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "timeInMillis"    # J

    .prologue
    const/4 v2, 0x0

    .line 404
    invoke-static {p1, p2, p3}, Lcn/nubia/deskclock/util/AlarmUtils;->formatToast(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, "toastText":Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm;->mToast:Landroid/widget/Toast;

    if-eqz v1, :cond_0

    .line 406
    iget-object v1, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 407
    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm;->mToast:Landroid/widget/Toast;

    .line 411
    :goto_0
    iget-object v1, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 412
    return-void

    .line 409
    :cond_0
    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm;->mToast:Landroid/widget/Toast;

    goto :goto_0
.end method

.method private popAlarmToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 415
    iget-object v0, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 417
    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm;->mToast:Landroid/widget/Toast;

    .line 421
    :goto_0
    iget-object v0, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 422
    return-void

    .line 419
    :cond_0
    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm;->mToast:Landroid/widget/Toast;

    goto :goto_0
.end method

.method static snoozeAlarm(Lcn/nubia/deskclock/model/Alarm;Landroid/content/Context;Landroid/app/Activity;)V
    .locals 5
    .param p0, "alarmInstance"    # Lcn/nubia/deskclock/model/Alarm;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 785
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    .line 786
    invoke-virtual {p0, p1}, Lcn/nubia/deskclock/model/Alarm;->getAlarmTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 785
    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 787
    .local v1, "time":Ljava/lang/String;
    const v2, 0x7f0d0028

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 788
    .local v0, "reason":Ljava/lang/String;
    invoke-static {p1, p0}, Lcn/nubia/deskclock/model/Alarms;->snooze(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)V

    .line 789
    invoke-static {p2, v0}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->notifyVoiceSuccess(Landroid/app/Activity;Ljava/lang/String;)V

    .line 790
    const-string v2, "HandleSetAlarm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Alarm snoozed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    return-void
.end method

.method private startDeskClock()V
    .locals 3

    .prologue
    .line 317
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.intent.action.NUBIA.TIMEMANAGER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 318
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "deskclock.select.tab"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 320
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 321
    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->startActivity(Landroid/content/Intent;)V

    .line 322
    return-void
.end method


# virtual methods
.method public checkAndRequestPermissions()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 700
    const/4 v3, 0x0

    .line 701
    .local v3, "permissions":[Ljava/lang/String;
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->needCheckPowerOffAlarmPermission()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 702
    new-array v3, v6, [Ljava/lang/String;

    .end local v3    # "permissions":[Ljava/lang/String;
    const-string v5, "org.codeaurora.permission.POWER_OFF_ALARM"

    aput-object v5, v3, v7

    .line 707
    .restart local v3    # "permissions":[Ljava/lang/String;
    const/4 v0, 0x1

    .line 708
    .local v0, "checkPermissionsResult":Z
    const/4 v4, 0x0

    .line 710
    .local v4, "requestPermissionRationale":Z
    array-length v9, v3

    move v8, v7

    :goto_0
    if-ge v8, v9, :cond_2

    aget-object v1, v3, v8

    .line 711
    .local v1, "permission":Ljava/lang/String;
    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    move v5, v6

    :goto_1
    and-int/2addr v0, v5

    .line 712
    invoke-static {p0, v1}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v5

    or-int/2addr v4, v5

    .line 710
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    goto :goto_0

    .line 704
    .end local v0    # "checkPermissionsResult":Z
    .end local v1    # "permission":Ljava/lang/String;
    .end local v4    # "requestPermissionRationale":Z
    :cond_0
    iget-object v5, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, v5}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->handleSetAlarm(Landroid/content/Intent;)V

    .line 731
    :goto_2
    return-void

    .restart local v0    # "checkPermissionsResult":Z
    .restart local v1    # "permission":Ljava/lang/String;
    .restart local v4    # "requestPermissionRationale":Z
    :cond_1
    move v5, v7

    .line 711
    goto :goto_1

    .line 715
    .end local v1    # "permission":Ljava/lang/String;
    :cond_2
    const-string v5, "HandleSetAlarm"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " -- checkAndRequestPermissions --  checkPermissionsResult : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    if-ne v0, v6, :cond_3

    .line 717
    iget-object v5, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, v5}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->handleSetAlarm(Landroid/content/Intent;)V

    goto :goto_2

    .line 720
    :cond_3
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/deskclock/util/Utils;->isFirstLaunch(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_6

    if-nez v4, :cond_6

    .line 721
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 722
    .local v2, "permissionInCtsDialog":Ljava/lang/StringBuffer;
    array-length v5, v3

    :goto_3
    if-ge v7, v5, :cond_5

    aget-object v1, v3, v7

    .line 723
    .restart local v1    # "permission":Ljava/lang/String;
    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_4

    .line 724
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v6

    invoke-static {v6, v1}, Lcn/nubia/deskclock/util/PermissionRequestUtil;->getPermissionShowInCtsDialog(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 722
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 727
    .end local v1    # "permission":Ljava/lang/String;
    :cond_5
    invoke-static {v2, p0}, Lcn/nubia/deskclock/util/PermissionRequestUtil;->showWarningDialog(Ljava/lang/StringBuffer;Landroid/app/Activity;)V

    goto :goto_2

    .line 729
    .end local v2    # "permissionInCtsDialog":Ljava/lang/StringBuffer;
    :cond_6
    invoke-static {p0}, Lcn/nubia/deskclock/util/PermissionRequestUtil;->requestPermissions(Landroid/app/Activity;)V

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm;->mIntent:Landroid/content/Intent;

    .line 93
    const-string v0, "alarm"

    .line 94
    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm;->mAlarmManager:Landroid/app/AlarmManager;

    .line 95
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm;->mAppContext:Landroid/content/Context;

    .line 96
    iget-object v0, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->handleIntent(Landroid/content/Intent;)V

    .line 99
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 735
    const/16 v2, 0x14

    if-ne p1, v2, :cond_3

    .line 736
    const/4 v1, 0x1

    .line 737
    .local v1, "requestResult":Z
    array-length v3, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v0, p3, v2

    .line 738
    .local v0, "i":I
    if-eqz v0, :cond_1

    .line 739
    const/4 v1, 0x0

    .line 743
    .end local v0    # "i":I
    :cond_0
    const-string v2, "HandleSetAlarm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ---- onRequestPermissionsResult --- requestResult : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    if-eqz v1, :cond_2

    .line 745
    iget-object v2, p0, Lcn/nubia/deskclock/activity/HandleSetAlarm;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, v2}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->handleSetAlarm(Landroid/content/Intent;)V

    .line 746
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->finish()V

    .line 753
    .end local v1    # "requestResult":Z
    :goto_1
    return-void

    .line 737
    .restart local v0    # "i":I
    .restart local v1    # "requestResult":Z
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 749
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/HandleSetAlarm;->finish()V

    .line 752
    .end local v1    # "requestResult":Z
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_1
.end method
