.class public Lcn/nubia/deskclock/AlarmIntentService;
.super Landroid/app/IntentService;
.source "AlarmIntentService.java"


# static fields
.field private static final STALE_WINDOW:I = 0x1b7740

.field private static final TAG:Ljava/lang/String; = "AlarmIntentService"


# instance fields
.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "AlarmIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method private handleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    const-string v8, "cancel_snooze"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "alarm":Lcn/nubia/deskclock/model/Alarm;
    const-string v8, "intent.extra.alarm"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 48
    const-string v8, "intent.extra.alarm"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .end local v0    # "alarm":Lcn/nubia/deskclock/model/Alarm;
    check-cast v0, Lcn/nubia/deskclock/model/Alarm;

    .line 50
    .restart local v0    # "alarm":Lcn/nubia/deskclock/model/Alarm;
    :cond_2
    if-eqz v0, :cond_3

    .line 51
    const-string v8, "AlarmIntentService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " cancel snooze alarm : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcn/nubia/deskclock/model/Alarm;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget v8, v0, Lcn/nubia/deskclock/model/Alarm;->id:I

    const/4 v9, 0x1

    invoke-static {p1, v8, v9}, Lcn/nubia/deskclock/model/Alarms;->disableSnoozeAlert(Landroid/content/Context;IZ)V

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 54
    .local v6, "resolver":Landroid/content/ContentResolver;
    new-instance v7, Landroid/content/ContentValues;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 55
    .local v7, "values":Landroid/content/ContentValues;
    const/4 v8, 0x0

    iput v8, v0, Lcn/nubia/deskclock/model/Alarm;->snoozeCount:I

    .line 56
    const-string v8, "snoozecount"

    iget v9, v0, Lcn/nubia/deskclock/model/Alarm;->snoozeCount:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 57
    sget-object v8, Lcn/nubia/deskclock/model/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    iget v9, v0, Lcn/nubia/deskclock/model/Alarm;->id:I

    int-to-long v10, v9

    invoke-static {v8, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v8, v7, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 60
    invoke-static {p1}, Lcn/nubia/deskclock/model/Alarms;->setNextAlert(Landroid/content/Context;)V

    .line 61
    invoke-static {p1}, Lcn/nubia/deskclock/model/Alarms;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v3

    .line 62
    .local v3, "nm":Landroid/app/NotificationManager;
    iget v8, v0, Lcn/nubia/deskclock/model/Alarm;->id:I

    invoke-virtual {v3, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 71
    .end local v3    # "nm":Landroid/app/NotificationManager;
    .end local v6    # "resolver":Landroid/content/ContentResolver;
    .end local v7    # "values":Landroid/content/ContentValues;
    :goto_1
    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.nubia.deskclock.ALARM_SNOOZE_CANCELLED"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 67
    :cond_3
    const-string v8, "AlarmIntentService"

    const-string v9, "Unable to parse Alarm from intent."

    invoke-static {v8, v9}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const/4 v8, -0x1

    const-wide/16 v10, -0x1

    invoke-static {p1, v8, v10, v11}, Lcn/nubia/deskclock/model/Alarms;->saveSnoozeAlert(Landroid/content/Context;IJ)V

    goto :goto_1

    .line 73
    .end local v0    # "alarm":Lcn/nubia/deskclock/model/Alarm;
    :cond_4
    const-string v8, "com.nubia.deskclock.ALARM_ALERT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 77
    const/4 v0, 0x0

    .line 82
    .restart local v0    # "alarm":Lcn/nubia/deskclock/model/Alarm;
    const-string v8, "intent.extra.alarm_raw"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 83
    .local v1, "data":[B
    if-eqz v1, :cond_5

    .line 84
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 85
    .local v2, "in":Landroid/os/Parcel;
    const/4 v8, 0x0

    array-length v9, v1

    invoke-virtual {v2, v1, v8, v9}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 86
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 87
    sget-object v8, Lcn/nubia/deskclock/model/Alarm;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "alarm":Lcn/nubia/deskclock/model/Alarm;
    check-cast v0, Lcn/nubia/deskclock/model/Alarm;

    .line 90
    .end local v2    # "in":Landroid/os/Parcel;
    .restart local v0    # "alarm":Lcn/nubia/deskclock/model/Alarm;
    :cond_5
    if-nez v0, :cond_6

    .line 91
    const-string v8, "AlarmIntentService"

    const-string v9, "Failed to parse the alarm from the intent"

    invoke-static {v8, v9}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {p1}, Lcn/nubia/deskclock/model/Alarms;->setNextAlert(Landroid/content/Context;)V

    .line 94
    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.nubia.deskclock.ALARM_MISS"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 95
    invoke-static {}, Lcn/nubia/deskclock/util/AlarmAlertWakeLock;->releaseCpuLock()V

    goto/16 :goto_0

    .line 100
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 101
    .local v4, "now":J
    const-string v8, "AlarmIntentService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "current alarm "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcn/nubia/deskclock/model/Alarm;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-wide v8, v0, Lcn/nubia/deskclock/model/Alarm;->time:J

    const-wide/32 v10, 0x1b7740

    add-long/2addr v8, v10

    cmp-long v8, v4, v8

    if-lez v8, :cond_7

    .line 103
    const-string v8, "AlarmIntentService"

    const-string v9, "time error"

    invoke-static {v8, v9}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.nubia.deskclock.ALARM_MISS"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 105
    invoke-static {}, Lcn/nubia/deskclock/util/AlarmAlertWakeLock;->releaseCpuLock()V

    goto/16 :goto_0

    .line 111
    :cond_7
    iget v8, v0, Lcn/nubia/deskclock/model/Alarm;->id:I

    invoke-static {p1, v8}, Lcn/nubia/deskclock/model/Alarms;->ifHaveThisAlarm(Landroid/content/Context;I)Z

    move-result v8

    if-nez v8, :cond_8

    .line 112
    const-string v8, "AlarmIntentService"

    const-string v9, "alert alarm no exist"

    invoke-static {v8, v9}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.nubia.deskclock.ALARM_MISS"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 114
    invoke-static {}, Lcn/nubia/deskclock/util/AlarmAlertWakeLock;->releaseCpuLock()V

    goto/16 :goto_0

    .line 119
    :cond_8
    invoke-virtual {v0}, Lcn/nubia/deskclock/model/Alarm;->getRecenceAlarmTime()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_9

    .line 120
    iget v8, v0, Lcn/nubia/deskclock/model/Alarm;->id:I

    const/4 v9, 0x1

    invoke-static {p1, v8, v9}, Lcn/nubia/deskclock/model/Alarms;->enableAlarm(Landroid/content/Context;IZ)V

    .line 121
    const-string v8, "AlarmIntentService"

    const-string v9, " no RecenceAlarmTime "

    invoke-static {v8, v9}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.nubia.deskclock.ALARM_MISS"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 123
    invoke-static {}, Lcn/nubia/deskclock/util/AlarmAlertWakeLock;->releaseCpuLock()V

    goto/16 :goto_0

    .line 126
    :cond_9
    iget v8, v0, Lcn/nubia/deskclock/model/Alarm;->id:I

    const/4 v9, 0x0

    invoke-static {p1, v8, v9}, Lcn/nubia/deskclock/model/Alarms;->disableSnoozeAlert(Landroid/content/Context;IZ)V

    .line 128
    iget-object v8, v0, Lcn/nubia/deskclock/model/Alarm;->daysOfWeek:Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    invoke-virtual {v8}, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->isRepeatSet()Z

    move-result v8

    if-nez v8, :cond_a

    .line 129
    iget v8, v0, Lcn/nubia/deskclock/model/Alarm;->id:I

    const/4 v9, 0x0

    invoke-static {p1, v8, v9}, Lcn/nubia/deskclock/model/Alarms;->enableAlarm(Landroid/content/Context;IZ)V

    .line 135
    :goto_2
    invoke-static {v0}, Lcn/nubia/deskclock/util/AlarmUtils;->setCurrentAlertAlarm(Lcn/nubia/deskclock/model/Alarm;)V

    .line 136
    const-string v8, "AlarmIntentService"

    const-string v9, "startAlarmNotification"

    invoke-static {v8, v9}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {p1, v0}, Lcn/nubia/deskclock/model/Alarms;->startAlarmAlertFullScreen(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)V

    goto/16 :goto_0

    .line 133
    :cond_a
    invoke-static {p1}, Lcn/nubia/deskclock/model/Alarms;->setNextAlert(Landroid/content/Context;)V

    goto :goto_2
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 31
    const-string v0, "AlarmIntentService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 33
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 37
    invoke-direct {p0, p0, p1}, Lcn/nubia/deskclock/AlarmIntentService;->handleIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 38
    return-void
.end method
