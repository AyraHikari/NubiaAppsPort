.class public Lcn/nubia/deskclock/model/Alarms;
.super Ljava/lang/Object;
.source "Alarms.java"


# static fields
.field private static final ACTION_CANCEL_POWEROFF_ALARM:Ljava/lang/String; = "org.codeaurora.poweroffalarm.action.CANCEL_ALARM"

.field private static final ACTION_SET_POWEROFF_ALARM:Ljava/lang/String; = "org.codeaurora.poweroffalarm.action.SET_ALARM"

.field private static final ALARM:Ljava/lang/String; = "alarm"

.field public static final ALARM_ALERT_ACTION:Ljava/lang/String; = "com.nubia.deskclock.ALARM_ALERT"

.field public static final ALARM_ALERT_SILENT:Ljava/lang/String; = "silent"

.field public static final ALARM_DISMISS_ACTION:Ljava/lang/String; = "com.nubia.deskclock.ALARM_DISMISS"

.field public static final ALARM_DISMISS_TOUI_ACTION:Ljava/lang/String; = "com.nubia.deskclock.ALARM_TOUI_DISMISS"

.field public static final ALARM_DONE_ACTION:Ljava/lang/String; = "com.nubia.deskclock.ALARM_DONE"

.field public static final ALARM_GAME_MODE_DISMISS:Ljava/lang/String; = "alarm_game_mode_dismiss"

.field public static final ALARM_GAME_MODE_SNOOZE:Ljava/lang/String; = "alarm_game_mode_snooze"

.field public static final ALARM_ID:Ljava/lang/String; = "alarm_id"

.field public static final ALARM_INTENT_EXTRA:Ljava/lang/String; = "intent.extra.alarm"

.field public static final ALARM_MISS_ACTION:Ljava/lang/String; = "com.nubia.deskclock.ALARM_MISS"

.field public static final ALARM_MISS_ALERT_ACTION:Ljava/lang/String; = "com.nubia.deskclock.ALARM_MISS_ALERT"

.field public static final ALARM_RAW_DATA:Ljava/lang/String; = "intent.extra.alarm_raw"

.field public static final ALARM_RINGTONE:Ljava/lang/String; = "alarm_ringtone"

.field public static final ALARM_SNOOZE_ACTION:Ljava/lang/String; = "com.nubia.deskclock.ALARM_SNOOZE"

.field public static final ALARM_SNOOZE_CANCELLED:Ljava/lang/String; = "com.nubia.deskclock.ALARM_SNOOZE_CANCELLED"

.field public static final ALARM_SNOOZE_TOUI_ACTION:Ljava/lang/String; = "com.nubia.deskclock.ALARM_TOUI_SNOOZE"

.field private static final ALARM_TAB_NUM:I = 0x1

.field public static final ARG_EFFECT_APP_REMIND:Ljava/lang/String; = "effect_app_remind"

.field public static final CANCEL_SNOOZE:Ljava/lang/String; = "cancel_snooze"

.field public static final COUNTDOWN_TAB_NUM:I = 0x3

.field public static final CURRENT_ALARM:Ljava/lang/String; = "current_alarm"

.field public static final CURRENT_TIME:Ljava/lang/String; = "current_time"

.field public static final DESKCLOCK_PACKAGE_NAME:Ljava/lang/String; = "cn.nubia.deskclock.preset"

.field private static final DM12:Ljava/lang/String; = "E h:mm aa"

.field private static final DM24:Ljava/lang/String; = "E kk:mm"

.field private static final EXTRA_CLASS_NAME:Ljava/lang/String; = "className"

.field private static final EXTRA_IS_END:Ljava/lang/String; = "end"

.field private static final EXTRA_MSG:Ljava/lang/String; = "flagMsg"

.field private static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final FANCY_ICON_URI:Landroid/net/Uri;

.field public static final GAME_MODE_NOTI_ID:I = 0x457

.field public static final INVALID_ALARM_ID:I = -0x1

.field public static final IS_ALERT_INCREASING:Ljava/lang/String; = "isAlertIncreasing"

.field public static final IS_POWER_OFF_ALARM:Ljava/lang/String; = "isPowerOffAlarm"

.field public static final IS_SHOW_NEXT_ALARM_POINT:Ljava/lang/String; = "isShowNextAlarmPoint"

.field public static final IS_SNOOZE:Ljava/lang/String; = "isSnooze"

.field private static final M12:Ljava/lang/String; = "aa h:mm "

.field public static final M24:Ljava/lang/String; = "kk:mm"

.field private static final METHOD_FANCY_ICON:Ljava/lang/String; = "fancyIcon"

.field private static final NEXT_ALARM_TIME:Ljava/lang/String; = "next_alarm_time"

.field public static final NEXT_ALARM_TIME_SET:Ljava/lang/String; = "com.nubia.deskclock.NEXT_ALARM_TIME_SET"

.field public static final NEXT_ALARM_WITHOUT_SNOOZE:Ljava/lang/String; = "next_alarm_without_snooze"

.field private static final ONE_MIN_IN_MS:J = 0xea60L

.field public static final POWEROFF_ALARM_SUPPORT:Ljava/lang/String; = "sys.zte.poalarm.support"

.field public static final POWEROFF_BOOT_REASON:Ljava/lang/String; = "sys.zte.boot.reason"

.field public static final POWEROFF_BOOT_REASON_L:Ljava/lang/String; = "ro.boot.alarmboot"

.field private static final POWER_OFF_ALARM_PACKAGE:Ljava/lang/String; = "com.qualcomm.qti.poweroffalarm"

.field public static final PREFERENCES:Ljava/lang/String; = "AlarmClock"

.field public static final PREF_SNOOZE_IDS:Ljava/lang/String; = "snooze_ids"

.field private static final PREF_SNOOZE_TIME:Ljava/lang/String; = "snooze_time"

.field public static final REFRESH_ALARM_ACTION:Ljava/lang/String; = "com.nubia.deskclock.REFRESH_ALARM"

.field public static final SNOOZE_MAX_COUNT:Ljava/lang/String; = "snoozeMaxCount"

.field public static final SNOOZE_TIME:Ljava/lang/String; = "snoozeTime"

.field private static final TAG:Ljava/lang/String; = "Alarms"

.field public static final TICKER_NOTIFICATION:Ljava/lang/String; = "ticker_notification"

.field private static final TIME:Ljava/lang/String; = "time"

.field public static final VIBRATE:Ljava/lang/String; = "vibrate"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 203
    const-string v0, "content://cn.nubia.launcher.unreadMark"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/deskclock/model/Alarms;->FANCY_ICON_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static AlarmEndNotification(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;I)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarm"    # Lcn/nubia/deskclock/model/Alarm;
    .param p2, "timeout"    # I

    .prologue
    .line 1337
    invoke-static {p0}, Lcn/nubia/deskclock/model/Alarms;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v4

    .line 1339
    .local v4, "nm":Landroid/app/NotificationManager;
    if-nez p1, :cond_0

    .line 1398
    :goto_0
    return-void

    .line 1344
    :cond_0
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcn/nubia/deskclock/activity/AddAlarmActivity;

    invoke-direct {v7, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1345
    .local v7, "viewAlarm":Landroid/content/Intent;
    const-string v8, "intent.extra.alarm"

    invoke-virtual {v7, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1346
    iget v8, p1, Lcn/nubia/deskclock/model/Alarm;->id:I

    const/high16 v9, 0x8000000

    invoke-static {p0, v8, v7, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1351
    .local v1, "intent":Landroid/app/PendingIntent;
    invoke-virtual {p1, p0}, Lcn/nubia/deskclock/model/Alarm;->getLabelOrDefault(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1353
    .local v2, "label":Ljava/lang/String;
    new-instance v8, Landroid/app/Notification$Builder;

    invoke-direct {v8, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x1

    .line 1354
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v8

    const/4 v9, 0x4

    .line 1355
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 1356
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v8

    const-string v9, "alarm"

    .line 1357
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 1358
    invoke-virtual {v8, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    const v9, 0x7f0d001d

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 1359
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    const/4 v9, 0x1

    .line 1360
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 1361
    invoke-virtual {v8, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 1362
    .local v5, "notification":Landroid/app/Notification$Builder;
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreN()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1363
    const/4 v0, 0x0

    .line 1364
    .local v0, "contentView":Landroid/widget/RemoteViews;
    new-instance v0, Landroid/widget/RemoteViews;

    .end local v0    # "contentView":Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f04001f

    invoke-direct {v0, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1365
    .restart local v0    # "contentView":Landroid/widget/RemoteViews;
    const v8, 0x7f120086

    invoke-virtual {v0, v8, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1366
    const v8, 0x7f120088

    const v9, 0x7f0d001d

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 1367
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1366
    invoke-virtual {v0, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1368
    const v8, 0x7f120087

    invoke-static {p0}, Lcn/nubia/deskclock/model/Alarms;->getCurrentTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1369
    const v8, 0x7f020059

    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1370
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f02005a

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 1372
    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 1380
    .end local v0    # "contentView":Landroid/widget/RemoteViews;
    :cond_1
    :goto_1
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreO()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1381
    const-string v8, "Notify"

    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 1382
    const-string v8, "z0"

    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 1389
    :goto_2
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreO()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1390
    new-instance v3, Landroid/app/NotificationChannel;

    iget v8, p1, Lcn/nubia/deskclock/model/Alarm;->id:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "alarm_end"

    const/4 v10, 0x2

    invoke-direct {v3, v8, v9, v10}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 1391
    .local v3, "mNotificationChannel":Landroid/app/NotificationChannel;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 1392
    const/4 v8, 0x2

    invoke-virtual {v3, v8}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 1393
    invoke-virtual {v4, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 1394
    iget v8, p1, Lcn/nubia/deskclock/model/Alarm;->id:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 1396
    .end local v3    # "mNotificationChannel":Landroid/app/NotificationChannel;
    :cond_2
    iget v8, p1, Lcn/nubia/deskclock/model/Alarm;->id:I

    invoke-virtual {v4, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1397
    iget v8, p1, Lcn/nubia/deskclock/model/Alarm;->id:I

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 1374
    :cond_3
    const v8, 0x7f020058

    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1375
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreO()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1376
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020058

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    goto :goto_1

    .line 1384
    :cond_4
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1385
    .local v6, "snoozebundle":Landroid/os/Bundle;
    const-string v8, "nubiaSort"

    const-string v9, "Notify"

    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    const-string v8, "z0"

    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 1387
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    goto :goto_2
.end method

.method public static SnoozeNotification(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;Z)V
    .locals 30
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarm"    # Lcn/nubia/deskclock/model/Alarm;
    .param p2, "needCancel"    # Z

    .prologue
    .line 1236
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcn/nubia/deskclock/DeskClockApplication;->getDefaultSharedPref()Landroid/content/SharedPreferences;

    move-result-object v16

    .line 1237
    .local v16, "sharedPref":Landroid/content/SharedPreferences;
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcn/nubia/deskclock/DeskClockApplication;->getAlarmsPrefereceSharedPref()Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1238
    .local v4, "alarmsPreferences":Landroid/content/SharedPreferences;
    const-string v25, "snoozeMaxCount"

    const/16 v26, 0x12c

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v18

    .line 1239
    .local v18, "snoozeMaxCount":I
    const-string v25, "snoozeTime"

    const/16 v26, 0xa

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v25

    if-eqz v25, :cond_0

    if-nez v18, :cond_1

    .line 1334
    :cond_0
    :goto_0
    return-void

    .line 1242
    :cond_1
    const-string v25, "Alarms"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, " [snooze] alarm.id : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Lcn/nubia/deskclock/model/Alarm;->id:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/model/Alarm;->getLabelOrDefault(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 1244
    .local v9, "label":Ljava/lang/String;
    const-string v25, "snoozeTime"

    const/16 v26, 0xa

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 1245
    .local v19, "snoozeMinutes":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    const v25, 0xea60

    mul-int v25, v25, v19

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v20, v26, v28

    .line 1246
    .local v20, "snoozeTime":J
    if-nez p2, :cond_4

    .line 1247
    move-object/from16 v0, p1

    iget v0, v0, Lcn/nubia/deskclock/model/Alarm;->id:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcn/nubia/deskclock/model/Alarms;->getAlarmPrefSnoozeTimeKey(I)Ljava/lang/String;

    move-result-object v25

    const-wide/16 v26, -0x1

    move-object/from16 v0, v25

    move-wide/from16 v1, v26

    invoke-interface {v4, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v20

    .line 1251
    :goto_1
    const-string v25, "Alarms"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, " [snooze] snoozeTime : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 1253
    .local v6, "c":Ljava/util/Calendar;
    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1254
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcn/nubia/deskclock/model/Alarms;->formatTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v23

    .line 1255
    .local v23, "snoozeTimeStr":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0d0023

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput-object v23, v27, v28

    invoke-virtual/range {v25 .. v27}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    .line 1258
    .local v22, "snoozeTimeAll":Ljava/lang/String;
    new-instance v8, Landroid/content/Intent;

    const-class v25, Lcn/nubia/deskclock/AlarmReceiver;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1259
    .local v8, "dismissIntent":Landroid/content/Intent;
    const-string v25, "cancel_snooze"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1260
    const-string v25, "intent.extra.alarm"

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1261
    move-object/from16 v0, p1

    iget v0, v0, Lcn/nubia/deskclock/model/Alarm;->id:I

    move/from16 v25, v0

    const/high16 v26, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 1263
    .local v14, "pendingDismiss":Landroid/app/PendingIntent;
    new-instance v25, Landroid/app/Notification$Action$Builder;

    const/16 v26, 0x0

    .line 1264
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0d0020

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2, v14}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual/range {v25 .. v25}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v17

    .line 1266
    .local v17, "snoozeAction":Landroid/app/Notification$Action;
    new-instance v13, Landroid/content/Intent;

    const-class v25, Lcn/nubia/deskclock/DeskClock;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1267
    .local v13, "openAlarm":Landroid/content/Intent;
    const/high16 v25, 0x10000000

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1268
    const-string v25, "intent.extra.alarm"

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1269
    const-string v25, "deskclock.select.tab"

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1270
    move-object/from16 v0, p1

    iget v0, v0, Lcn/nubia/deskclock/model/Alarm;->id:I

    move/from16 v25, v0

    const/high16 v26, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v13, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 1273
    .local v15, "pendingNotify":Landroid/app/PendingIntent;
    const/4 v7, 0x0

    .line 1274
    .local v7, "contentView":Landroid/widget/RemoteViews;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1275
    .local v5, "bundle":Landroid/os/Bundle;
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreN()Z

    move-result v25

    if-eqz v25, :cond_5

    .line 1276
    new-instance v7, Landroid/widget/RemoteViews;

    .end local v7    # "contentView":Landroid/widget/RemoteViews;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v25

    const v26, 0x7f04001b

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v7, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1278
    .restart local v7    # "contentView":Landroid/widget/RemoteViews;
    const v25, 0x7f120078

    move/from16 v0, v25

    invoke-virtual {v7, v0, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1279
    const v25, 0x7f120079

    move/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1280
    const v25, 0x7f12007c

    move/from16 v0, v25

    invoke-virtual {v7, v0, v14}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1281
    const v25, 0x7f12007b

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1282
    const v25, 0x7f12007a

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1283
    const v25, 0x7f12007c

    .line 1284
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0d0080

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 1283
    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1291
    :goto_2
    new-instance v25, Landroid/app/Notification$Builder;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1292
    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v25

    .line 1293
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v25

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v25

    const/16 v26, 0x4

    .line 1294
    invoke-virtual/range {v25 .. v26}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v25

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v25

    const-string v26, "alarm"

    .line 1295
    invoke-virtual/range {v25 .. v26}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v25

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v25

    .line 1296
    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v25

    const/16 v26, 0x2

    invoke-virtual/range {v25 .. v26}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v12

    .line 1297
    .local v12, "notification":Landroid/app/Notification$Builder;
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreN()Z

    move-result v25

    if-eqz v25, :cond_6

    .line 1298
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f02005a

    invoke-static/range {v25 .. v26}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 1300
    const v25, 0x7f020059

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1301
    invoke-virtual {v12, v7}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 1311
    :goto_3
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreO()Z

    move-result v25

    if-eqz v25, :cond_8

    .line 1312
    invoke-virtual {v12, v5}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 1313
    const-string v25, "Running"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 1314
    const-string v25, "E0"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 1322
    :goto_4
    invoke-static/range {p0 .. p0}, Lcn/nubia/deskclock/model/Alarms;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v11

    .line 1323
    .local v11, "nm":Landroid/app/NotificationManager;
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreO()Z

    move-result v25

    if-nez v25, :cond_2

    .line 1324
    new-instance v10, Landroid/app/NotificationChannel;

    const-string v25, "snooze_notification"

    const-string v26, "snooze_ticker"

    const/16 v27, 0x2

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v10, v0, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 1325
    .local v10, "mNotificationChannel":Landroid/app/NotificationChannel;
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v10, v0, v1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 1326
    const/16 v25, 0x2

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 1327
    invoke-virtual {v11, v10}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 1328
    const-string v25, "snooze_notification"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 1330
    .end local v10    # "mNotificationChannel":Landroid/app/NotificationChannel;
    :cond_2
    if-eqz p2, :cond_3

    .line 1331
    const-string v25, "ticker_notification"

    move-object/from16 v0, p1

    iget v0, v0, Lcn/nubia/deskclock/model/Alarm;->id:I

    move/from16 v26, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v11, v0, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 1333
    :cond_3
    const-string v25, "ticker_notification"

    move-object/from16 v0, p1

    iget v0, v0, Lcn/nubia/deskclock/model/Alarm;->id:I

    move/from16 v26, v0

    invoke-virtual {v12}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v27

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v11, v0, v1, v2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 1249
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v6    # "c":Ljava/util/Calendar;
    .end local v7    # "contentView":Landroid/widget/RemoteViews;
    .end local v8    # "dismissIntent":Landroid/content/Intent;
    .end local v11    # "nm":Landroid/app/NotificationManager;
    .end local v12    # "notification":Landroid/app/Notification$Builder;
    .end local v13    # "openAlarm":Landroid/content/Intent;
    .end local v14    # "pendingDismiss":Landroid/app/PendingIntent;
    .end local v15    # "pendingNotify":Landroid/app/PendingIntent;
    .end local v17    # "snoozeAction":Landroid/app/Notification$Action;
    .end local v22    # "snoozeTimeAll":Ljava/lang/String;
    .end local v23    # "snoozeTimeStr":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p1

    iget v0, v0, Lcn/nubia/deskclock/model/Alarm;->id:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/deskclock/model/Alarms;->saveSnoozeAlert(Landroid/content/Context;IJ)V

    goto/16 :goto_1

    .line 1286
    .restart local v5    # "bundle":Landroid/os/Bundle;
    .restart local v6    # "c":Ljava/util/Calendar;
    .restart local v7    # "contentView":Landroid/widget/RemoteViews;
    .restart local v8    # "dismissIntent":Landroid/content/Intent;
    .restart local v13    # "openAlarm":Landroid/content/Intent;
    .restart local v14    # "pendingDismiss":Landroid/app/PendingIntent;
    .restart local v15    # "pendingNotify":Landroid/app/PendingIntent;
    .restart local v17    # "snoozeAction":Landroid/app/Notification$Action;
    .restart local v22    # "snoozeTimeAll":Ljava/lang/String;
    .restart local v23    # "snoozeTimeStr":Ljava/lang/String;
    :cond_5
    const-string v25, "base_notification_right_button_text"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0d0080

    .line 1287
    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 1286
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1288
    const-string v25, "base_notification_right_button_pendingintent"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_2

    .line 1303
    .restart local v12    # "notification":Landroid/app/Notification$Builder;
    :cond_6
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreO()Z

    move-result v25

    if-eqz v25, :cond_7

    .line 1304
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f020058

    invoke-static/range {v25 .. v26}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 1307
    :cond_7
    const v25, 0x7f020058

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1308
    invoke-virtual {v12, v5}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    goto/16 :goto_3

    .line 1316
    :cond_8
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 1317
    new-instance v24, Landroid/os/Bundle;

    invoke-direct/range {v24 .. v24}, Landroid/os/Bundle;-><init>()V

    .line 1318
    .local v24, "sortBundle":Landroid/os/Bundle;
    const-string v25, "nubiaSort"

    const-string v26, "Running"

    invoke-virtual/range {v24 .. v26}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    const-string v25, "40"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 1320
    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    goto/16 :goto_4
.end method

.method public static addAlarm(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarm"    # Lcn/nubia/deskclock/model/Alarm;

    .prologue
    .line 250
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {p0, p1, v4}, Lcn/nubia/deskclock/model/Alarms;->createContentValues(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;Landroid/content/ContentResolver;)Landroid/content/ContentValues;

    move-result-object v3

    .line 251
    .local v3, "values":Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcn/nubia/deskclock/model/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 252
    .local v2, "uri":Landroid/net/Uri;
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, p1, Lcn/nubia/deskclock/model/Alarm;->id:I

    .line 253
    invoke-static {p0, p1}, Lcn/nubia/deskclock/model/Alarms;->saveAlarmRingtone(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)V

    .line 254
    invoke-static {p0, p1}, Lcn/nubia/deskclock/model/Alarms;->calculateAlarm(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)J

    move-result-wide v0

    .line 255
    .local v0, "timeInMillis":J
    invoke-static {p0}, Lcn/nubia/deskclock/model/Alarms;->setNextAlert(Landroid/content/Context;)V

    .line 256
    return-wide v0
.end method

.method public static calculateAlarm(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarm"    # Lcn/nubia/deskclock/model/Alarm;

    .prologue
    .line 1004
    iget v0, p1, Lcn/nubia/deskclock/model/Alarm;->hour:I

    iget v1, p1, Lcn/nubia/deskclock/model/Alarm;->minutes:I

    iget-object v2, p1, Lcn/nubia/deskclock/model/Alarm;->daysOfWeek:Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    .line 1005
    invoke-virtual {p1}, Lcn/nubia/deskclock/model/Alarm;->getHolidayAlarm()Z

    move-result v3

    .line 1004
    invoke-static {p0, v0, v1, v2, v3}, Lcn/nubia/deskclock/model/Alarms;->calculateAlarm(Landroid/content/Context;IILcn/nubia/deskclock/model/Alarm$DaysOfWeek;Z)Ljava/util/Calendar;

    move-result-object v0

    .line 1005
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 1004
    return-wide v0
.end method

.method public static calculateAlarm(Lcn/nubia/deskclock/model/Alarm;J)J
    .locals 9
    .param p0, "alarm"    # Lcn/nubia/deskclock/model/Alarm;
    .param p1, "delta"    # J

    .prologue
    const/16 v8, 0xc

    const/16 v7, 0xb

    const/4 v6, 0x0

    .line 1010
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1011
    .local v1, "c":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, p1

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1013
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1014
    .local v2, "nowHour":I
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1017
    .local v3, "nowMinute":I
    iget v4, p0, Lcn/nubia/deskclock/model/Alarm;->hour:I

    if-lt v4, v2, :cond_0

    iget v4, p0, Lcn/nubia/deskclock/model/Alarm;->hour:I

    if-ne v4, v2, :cond_1

    iget v4, p0, Lcn/nubia/deskclock/model/Alarm;->minutes:I

    if-gt v4, v3, :cond_1

    .line 1018
    :cond_0
    const/4 v4, 0x6

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 1020
    :cond_1
    iget v4, p0, Lcn/nubia/deskclock/model/Alarm;->hour:I

    invoke-virtual {v1, v7, v4}, Ljava/util/Calendar;->set(II)V

    .line 1021
    iget v4, p0, Lcn/nubia/deskclock/model/Alarm;->minutes:I

    invoke-virtual {v1, v8, v4}, Ljava/util/Calendar;->set(II)V

    .line 1022
    const/16 v4, 0xd

    invoke-virtual {v1, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1023
    const/16 v4, 0xe

    invoke-virtual {v1, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1025
    iget-object v4, p0, Lcn/nubia/deskclock/model/Alarm;->daysOfWeek:Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    invoke-virtual {v4, v1}, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->getNextAlarm(Ljava/util/Calendar;)I

    move-result v0

    .line 1026
    .local v0, "addDays":I
    if-lez v0, :cond_2

    .line 1027
    const/4 v4, 0x7

    invoke-virtual {v1, v4, v0}, Ljava/util/Calendar;->add(II)V

    .line 1028
    :cond_2
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    return-wide v4
.end method

.method public static calculateAlarm(Landroid/content/Context;IILcn/nubia/deskclock/model/Alarm$DaysOfWeek;Z)Ljava/util/Calendar;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "daysOfWeek"    # Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;
    .param p4, "isHoliday"    # Z

    .prologue
    .line 1039
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1040
    .local v1, "c":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1041
    const/16 v8, 0xb

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1042
    .local v4, "nowHour":I
    const/16 v8, 0xc

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1044
    .local v5, "nowMinute":I
    if-lt p1, v4, :cond_0

    if-ne p1, v4, :cond_1

    if-gt p2, v5, :cond_1

    .line 1045
    :cond_0
    const/4 v8, 0x6

    const/4 v9, 0x1

    invoke-virtual {v1, v8, v9}, Ljava/util/Calendar;->add(II)V

    .line 1047
    :cond_1
    const/16 v8, 0xb

    invoke-virtual {v1, v8, p1}, Ljava/util/Calendar;->set(II)V

    .line 1048
    const/16 v8, 0xc

    invoke-virtual {v1, v8, p2}, Ljava/util/Calendar;->set(II)V

    .line 1049
    const/16 v8, 0xd

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 1050
    const/16 v8, 0xe

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 1051
    invoke-static {p0}, Lcn/nubia/deskclock/util/Utils;->isAllowAccessNetwork(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_6

    sget-object v8, Lcn/nubia/deskclock/util/Utils;->chineseHolidayMap:Ljava/util/ArrayList;

    if-eqz v8, :cond_2

    sget-object v8, Lcn/nubia/deskclock/util/Utils;->chineseWeekendWorkMap:Ljava/util/ArrayList;

    if-nez v8, :cond_6

    .line 1052
    :cond_2
    invoke-static {}, Lcn/nubia/deskclock/model/holiday/ParseXml;->getmParseXmlError()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-static {}, Lcn/nubia/deskclock/model/holiday/ParseXml;->getmCheckHolidayData()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1053
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1054
    .local v2, "cal":Ljava/util/Calendar;
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 1055
    .local v7, "year":I
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isInternalVersion()Z

    move-result v8

    if-nez v8, :cond_6

    .line 1056
    invoke-static {p0, v7}, Lcn/nubia/deskclock/util/Utils;->initCurrentYearHolidayMap(Landroid/content/Context;I)Ljava/util/ArrayList;

    .line 1057
    sget-object v8, Lcn/nubia/deskclock/util/Utils;->chineseHolidayMap:Ljava/util/ArrayList;

    if-nez v8, :cond_3

    .line 1058
    invoke-static {p0, v7}, Lcn/nubia/deskclock/model/holiday/ParseXml;->parseXml(Landroid/content/Context;I)V

    .line 1059
    invoke-static {p0, v7}, Lcn/nubia/deskclock/util/Utils;->initCurrentYearHolidayMap(Landroid/content/Context;I)Ljava/util/ArrayList;

    .line 1061
    :cond_3
    add-int/lit8 v8, v7, 0x1

    invoke-static {p0, v8}, Lcn/nubia/deskclock/util/Utils;->initNextYearHolidayMap(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v8

    if-nez v8, :cond_4

    .line 1062
    add-int/lit8 v8, v7, 0x1

    invoke-static {p0, v8}, Lcn/nubia/deskclock/model/holiday/ParseXml;->parseXml(Landroid/content/Context;I)V

    .line 1063
    add-int/lit8 v8, v7, 0x1

    invoke-static {p0, v8}, Lcn/nubia/deskclock/util/Utils;->initNextYearHolidayMap(Landroid/content/Context;I)Ljava/util/ArrayList;

    .line 1065
    :cond_4
    invoke-static {p0, v7}, Lcn/nubia/deskclock/util/Utils;->initWeekendWorkList(Landroid/content/Context;I)Ljava/util/ArrayList;

    .line 1066
    sget-object v8, Lcn/nubia/deskclock/util/Utils;->chineseWeekendWorkMap:Ljava/util/ArrayList;

    if-nez v8, :cond_5

    .line 1067
    invoke-static {p0, v7}, Lcn/nubia/deskclock/model/holiday/ParseXml;->parseWeekendWork(Landroid/content/Context;I)V

    .line 1068
    invoke-static {p0, v7}, Lcn/nubia/deskclock/util/Utils;->initWeekendWorkList(Landroid/content/Context;I)Ljava/util/ArrayList;

    .line 1070
    :cond_5
    add-int/lit8 v8, v7, 0x1

    invoke-static {p0, v8}, Lcn/nubia/deskclock/util/Utils;->initNextYearWeekendWorkList(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v8

    if-nez v8, :cond_6

    .line 1071
    add-int/lit8 v8, v7, 0x1

    invoke-static {p0, v8}, Lcn/nubia/deskclock/model/holiday/ParseXml;->parseWeekendWork(Landroid/content/Context;I)V

    .line 1072
    add-int/lit8 v8, v7, 0x1

    invoke-static {p0, v8}, Lcn/nubia/deskclock/util/Utils;->initNextYearWeekendWorkList(Landroid/content/Context;I)Ljava/util/ArrayList;

    .line 1076
    .end local v2    # "cal":Ljava/util/Calendar;
    .end local v7    # "year":I
    :cond_6
    const-string v8, "Alarms"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " chineseHolidayMap : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcn/nubia/deskclock/util/Utils;->chineseHolidayMap:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " \n Utils.chineseWeekendWorkMap : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcn/nubia/deskclock/util/Utils;->chineseWeekendWorkMap:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    if-nez p4, :cond_a

    sget-object v8, Lcn/nubia/deskclock/util/Utils;->chineseHolidayMap:Ljava/util/ArrayList;

    if-eqz v8, :cond_a

    sget-object v8, Lcn/nubia/deskclock/util/Utils;->chineseWeekendWorkMap:Ljava/util/ArrayList;

    if-eqz v8, :cond_a

    .line 1080
    const-string v3, ""

    .line 1081
    .local v3, "nextDay":Ljava/lang/String;
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd"

    invoke-direct {v6, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1082
    .local v6, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 1083
    :goto_0
    sget-object v8, Lcn/nubia/deskclock/util/Utils;->chineseHolidayMap:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1084
    const-string v8, "Alarms"

    const-string v9, " chineseHolidayMap "

    invoke-static {v8, v9}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    const/4 v8, 0x6

    const/4 v9, 0x1

    invoke-virtual {v1, v8, v9}, Ljava/util/Calendar;->add(II)V

    .line 1086
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1088
    :cond_7
    const-string v8, "Alarms"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " nextDay : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    sget-object v8, Lcn/nubia/deskclock/util/Utils;->chineseWeekendWorkMap:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1091
    const-string v8, "Alarms"

    const-string v9, "in workday"

    invoke-static {v8, v9}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    .end local v3    # "nextDay":Ljava/lang/String;
    .end local v6    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_8
    :goto_1
    return-object v1

    .line 1095
    .restart local v3    # "nextDay":Ljava/lang/String;
    .restart local v6    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_9
    const/4 v8, 0x7

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x7

    if-ne v8, v9, :cond_a

    .line 1096
    const-string v8, "Alarms"

    const-string v9, "is SATURDAY"

    invoke-static {v8, v9}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    const/4 v8, 0x6

    const/4 v9, 0x1

    invoke-virtual {v1, v8, v9}, Ljava/util/Calendar;->add(II)V

    .line 1098
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 1099
    sget-object v8, Lcn/nubia/deskclock/util/Utils;->chineseWeekendWorkMap:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1100
    const-string v8, "Alarms"

    const-string v9, "in workday"

    invoke-static {v8, v9}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1106
    .end local v3    # "nextDay":Ljava/lang/String;
    .end local v6    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_a
    invoke-virtual {p3, v1}, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->getNextAlarm(Ljava/util/Calendar;)I

    move-result v0

    .line 1107
    .local v0, "addDays":I
    if-lez v0, :cond_8

    .line 1108
    const/4 v8, 0x7

    invoke-virtual {v1, v8, v0}, Ljava/util/Calendar;->add(II)V

    .line 1109
    const-string v8, "Alarms"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addDays = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static calculateAlarmInOneDay(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1853
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1854
    .local v6, "now":J
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1855
    .local v1, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/deskclock/model/Alarm;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1857
    .local v3, "alarmsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/deskclock/model/Alarms;->getFilteredEnableAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v4

    .line 1858
    .local v4, "cursor":Landroid/database/Cursor;
    if-eqz v4, :cond_2

    .line 1860
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1862
    :cond_0
    new-instance v0, Lcn/nubia/deskclock/model/Alarm;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcn/nubia/deskclock/model/Alarm;-><init>(Landroid/database/Cursor;Landroid/content/ContentResolver;)V

    .line 1863
    .local v0, "a":Lcn/nubia/deskclock/model/Alarm;
    const-string v5, "Alarms"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "a re = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcn/nubia/deskclock/model/Alarm;->getRecenceAlarmTime()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1864
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1865
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_0

    .line 1868
    .end local v0    # "a":Lcn/nubia/deskclock/model/Alarm;
    :cond_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1871
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/model/Alarm;

    .line 1872
    .restart local v0    # "a":Lcn/nubia/deskclock/model/Alarm;
    if-eqz v0, :cond_3

    .line 1876
    iget-wide v8, v0, Lcn/nubia/deskclock/model/Alarm;->time:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_4

    .line 1877
    invoke-static {p0, v0}, Lcn/nubia/deskclock/model/Alarms;->calculateAlarm(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)J

    move-result-wide v8

    iput-wide v8, v0, Lcn/nubia/deskclock/model/Alarm;->time:J

    .line 1879
    :cond_4
    iget-wide v8, v0, Lcn/nubia/deskclock/model/Alarm;->time:J

    const-wide/32 v10, 0x5265c00

    add-long/2addr v10, v6

    cmp-long v8, v8, v10

    if-gez v8, :cond_3

    iget-wide v8, v0, Lcn/nubia/deskclock/model/Alarm;->enableRecentAlarm:J

    const-wide/16 v10, 0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    .line 1880
    const/4 v8, 0x2

    new-array v2, v8, [Ljava/lang/String;

    .line 1881
    .local v2, "alarmsData":[Ljava/lang/String;
    const/4 v8, 0x0

    iget-object v9, v0, Lcn/nubia/deskclock/model/Alarm;->label:Ljava/lang/String;

    aput-object v9, v2, v8

    .line 1882
    const/4 v8, 0x1

    iget-wide v10, v0, Lcn/nubia/deskclock/model/Alarm;->time:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v8

    .line 1883
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1868
    .end local v0    # "a":Lcn/nubia/deskclock/model/Alarm;
    .end local v2    # "alarmsData":[Ljava/lang/String;
    :catchall_0
    move-exception v5

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1869
    throw v5

    .line 1886
    :cond_5
    return-object v3
.end method

.method public static calculateNextAlert(Landroid/content/Context;)Lcn/nubia/deskclock/model/Alarm;
    .locals 22
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 494
    const-wide v10, 0x7fffffffffffffffL

    .line 495
    .local v10, "minTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 496
    .local v12, "now":J
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcn/nubia/deskclock/DeskClockApplication;->getAlarmsPrefereceSharedPref()Landroid/content/SharedPreferences;

    move-result-object v14

    .line 498
    .local v14, "prefs":Landroid/content/SharedPreferences;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {v18 .. v18}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 499
    .local v5, "alarms":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/deskclock/model/Alarm;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {v18 .. v18}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    .line 508
    .local v9, "enableAlarms":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/deskclock/model/Alarm;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcn/nubia/deskclock/model/Alarms;->getFilteredEnableAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v6

    .line 509
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 511
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 513
    :cond_0
    new-instance v2, Lcn/nubia/deskclock/model/Alarm;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v2, v6, v0}, Lcn/nubia/deskclock/model/Alarm;-><init>(Landroid/database/Cursor;Landroid/content/ContentResolver;)V

    .line 514
    .local v2, "a":Lcn/nubia/deskclock/model/Alarm;
    const-string v18, "Alarms"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "a re = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v2}, Lcn/nubia/deskclock/model/Alarm;->getRecenceAlarmTime()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iget-boolean v0, v2, Lcn/nubia/deskclock/model/Alarm;->enabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 516
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    :cond_1
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v18

    if-nez v18, :cond_0

    .line 524
    .end local v2    # "a":Lcn/nubia/deskclock/model/Alarm;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 528
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    invoke-static {v0, v5, v12, v13, v14}, Lcn/nubia/deskclock/model/Alarms;->calculateRencentAlarm(Landroid/content/Context;Ljava/util/List;JLandroid/content/SharedPreferences;)Lcn/nubia/deskclock/model/Alarm;

    move-result-object v3

    .line 529
    .local v3, "alarm":Lcn/nubia/deskclock/model/Alarm;
    move-object/from16 v0, p0

    invoke-static {v0, v9, v12, v13, v14}, Lcn/nubia/deskclock/model/Alarms;->calculateRencentAlarm(Landroid/content/Context;Ljava/util/List;JLandroid/content/SharedPreferences;)Lcn/nubia/deskclock/model/Alarm;

    move-result-object v8

    .line 530
    .local v8, "enableAlarm":Lcn/nubia/deskclock/model/Alarm;
    move-object/from16 v0, p0

    invoke-static {v0, v8, v14}, Lcn/nubia/deskclock/model/Alarms;->setAlarmDataForLauncherIcon(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;Landroid/content/SharedPreferences;)V

    .line 531
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 532
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    const-string v18, "snooze_ids"

    new-instance v19, Ljava/util/HashSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v16

    .line 535
    .local v16, "snoozedIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    .line 536
    .local v17, "snoozedIdsAlarms":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 537
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 538
    .local v15, "snoozedAlarm":Ljava/lang/String;
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 539
    .local v4, "alarmId":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v4}, Lcn/nubia/deskclock/model/Alarms;->getAlarm(Landroid/content/ContentResolver;I)Lcn/nubia/deskclock/model/Alarm;

    move-result-object v2

    .line 540
    .restart local v2    # "a":Lcn/nubia/deskclock/model/Alarm;
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 541
    const-string v19, "Alarms"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "snoozedIds = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const-string v19, "Alarms"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "snoozedIdsAlarms = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const-string v19, "Alarms"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "a = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 521
    .end local v2    # "a":Lcn/nubia/deskclock/model/Alarm;
    .end local v3    # "alarm":Lcn/nubia/deskclock/model/Alarm;
    .end local v4    # "alarmId":I
    .end local v8    # "enableAlarm":Lcn/nubia/deskclock/model/Alarm;
    .end local v15    # "snoozedAlarm":Ljava/lang/String;
    .end local v16    # "snoozedIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v17    # "snoozedIdsAlarms":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    .line 522
    .local v7, "e":Ljava/util/ConcurrentModificationException;
    :try_start_1
    invoke-virtual {v7}, Ljava/util/ConcurrentModificationException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 524
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v7    # "e":Ljava/util/ConcurrentModificationException;
    :catchall_0
    move-exception v18

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 525
    throw v18

    .line 545
    .restart local v3    # "alarm":Lcn/nubia/deskclock/model/Alarm;
    .restart local v8    # "enableAlarm":Lcn/nubia/deskclock/model/Alarm;
    .restart local v16    # "snoozedIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v17    # "snoozedIdsAlarms":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    move-object/from16 v0, p0

    invoke-static {v0, v5, v12, v13, v14}, Lcn/nubia/deskclock/model/Alarms;->calculateRencentAlarm(Landroid/content/Context;Ljava/util/List;JLandroid/content/SharedPreferences;)Lcn/nubia/deskclock/model/Alarm;

    move-result-object v3

    .line 546
    return-object v3
.end method

.method public static declared-synchronized calculateNextAlert(Landroid/content/Context;J)Lcn/nubia/deskclock/model/Alarm;
    .locals 25
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deltaTime"    # J

    .prologue
    .line 578
    const-class v18, Lcn/nubia/deskclock/model/Alarms;

    monitor-enter v18

    const-wide v10, 0x7fffffffffffffffL

    .line 579
    .local v10, "minTime":J
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 580
    .local v12, "now":J
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcn/nubia/deskclock/DeskClockApplication;->getAlarmsPrefereceSharedPref()Landroid/content/SharedPreferences;

    move-result-object v14

    .line 582
    .local v14, "prefs":Landroid/content/SharedPreferences;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {v17 .. v17}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 591
    .local v7, "alarms":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/deskclock/model/Alarm;>;"
    const-string v17, "snooze_ids"

    new-instance v19, Ljava/util/HashSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v16

    .line 592
    .local v16, "snoozedIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 593
    .local v15, "snoozedAlarm":Ljava/lang/String;
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 594
    .local v6, "alarmId":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v6}, Lcn/nubia/deskclock/model/Alarms;->getAlarm(Landroid/content/ContentResolver;I)Lcn/nubia/deskclock/model/Alarm;

    move-result-object v4

    .line 595
    .local v4, "a":Lcn/nubia/deskclock/model/Alarm;
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 578
    .end local v4    # "a":Lcn/nubia/deskclock/model/Alarm;
    .end local v6    # "alarmId":I
    .end local v7    # "alarms":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/deskclock/model/Alarm;>;"
    .end local v12    # "now":J
    .end local v14    # "prefs":Landroid/content/SharedPreferences;
    .end local v15    # "snoozedAlarm":Ljava/lang/String;
    .end local v16    # "snoozedIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v17

    monitor-exit v18

    throw v17

    .line 599
    .restart local v7    # "alarms":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/deskclock/model/Alarm;>;"
    .restart local v12    # "now":J
    .restart local v14    # "prefs":Landroid/content/SharedPreferences;
    .restart local v16    # "snoozedIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcn/nubia/deskclock/model/Alarms;->getFilteredAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 600
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 602
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 604
    :cond_1
    new-instance v4, Lcn/nubia/deskclock/model/Alarm;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v4, v8, v0}, Lcn/nubia/deskclock/model/Alarm;-><init>(Landroid/database/Cursor;Landroid/content/ContentResolver;)V

    .line 605
    .restart local v4    # "a":Lcn/nubia/deskclock/model/Alarm;
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/util/ConcurrentModificationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v17

    if-nez v17, :cond_1

    .line 611
    .end local v4    # "a":Lcn/nubia/deskclock/model/Alarm;
    :cond_2
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 615
    :cond_3
    :goto_1
    const/4 v5, 0x0

    .line 617
    .local v5, "alarm":Lcn/nubia/deskclock/model/Alarm;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_4
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/deskclock/model/Alarm;

    .line 620
    .restart local v4    # "a":Lcn/nubia/deskclock/model/Alarm;
    iget-wide v0, v4, Lcn/nubia/deskclock/model/Alarm;->time:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v19, v20, v22

    if-nez v19, :cond_5

    .line 621
    move-wide/from16 v0, p1

    invoke-static {v4, v0, v1}, Lcn/nubia/deskclock/model/Alarms;->calculateAlarm(Lcn/nubia/deskclock/model/Alarm;J)J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v4, Lcn/nubia/deskclock/model/Alarm;->time:J

    .line 623
    :cond_5
    const-string v19, "Alarms"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "kill restart alarm:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-wide v0, v4, Lcn/nubia/deskclock/model/Alarm;->time:J

    move-wide/from16 v22, v0

    sub-long v22, v12, v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    invoke-static {v14, v4}, Lcn/nubia/deskclock/model/Alarms;->updateAlarmTimeForSnooze(Landroid/content/SharedPreferences;Lcn/nubia/deskclock/model/Alarm;)Z

    .line 626
    const-wide/16 v20, 0x0

    iget-wide v0, v4, Lcn/nubia/deskclock/model/Alarm;->time:J

    move-wide/from16 v22, v0

    sub-long v22, v12, v22

    cmp-long v19, v20, v22

    if-gez v19, :cond_4

    iget-wide v0, v4, Lcn/nubia/deskclock/model/Alarm;->time:J

    move-wide/from16 v20, v0

    sub-long v20, v12, v20

    cmp-long v19, v20, p1

    if-gez v19, :cond_4

    .line 627
    iget-wide v10, v4, Lcn/nubia/deskclock/model/Alarm;->time:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 628
    move-object v5, v4

    goto :goto_2

    .line 608
    .end local v4    # "a":Lcn/nubia/deskclock/model/Alarm;
    .end local v5    # "alarm":Lcn/nubia/deskclock/model/Alarm;
    :catch_0
    move-exception v9

    .line 609
    .local v9, "e":Ljava/util/ConcurrentModificationException;
    :try_start_4
    invoke-virtual {v9}, Ljava/util/ConcurrentModificationException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 611
    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v9    # "e":Ljava/util/ConcurrentModificationException;
    :catchall_1
    move-exception v17

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 612
    throw v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 631
    .restart local v5    # "alarm":Lcn/nubia/deskclock/model/Alarm;
    :cond_6
    monitor-exit v18

    return-object v5
.end method

.method private static calculateNextPowerOffAlarm(Landroid/content/Context;Ljava/util/List;J)Lcn/nubia/deskclock/model/Alarm;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/deskclock/model/Alarm;",
            ">;J)",
            "Lcn/nubia/deskclock/model/Alarm;"
        }
    .end annotation

    .prologue
    .line 2173
    .local p1, "alarms":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/deskclock/model/Alarm;>;"
    const-wide v2, 0x7fffffffffffffffL

    .line 2174
    .local v2, "minTime":J
    const/4 v1, 0x0

    .line 2175
    .local v1, "alarm":Lcn/nubia/deskclock/model/Alarm;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/model/Alarm;

    .line 2176
    .local v0, "a":Lcn/nubia/deskclock/model/Alarm;
    if-eqz v0, :cond_0

    .line 2180
    iget-wide v6, v0, Lcn/nubia/deskclock/model/Alarm;->time:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    .line 2181
    invoke-static {p0, v0}, Lcn/nubia/deskclock/model/Alarms;->calculateAlarm(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)J

    move-result-wide v6

    iput-wide v6, v0, Lcn/nubia/deskclock/model/Alarm;->time:J

    .line 2183
    :cond_1
    iget-wide v6, v0, Lcn/nubia/deskclock/model/Alarm;->time:J

    cmp-long v5, v6, p2

    if-gez v5, :cond_2

    .line 2185
    const-string v5, "Alarms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "calculateNextPowerOffAlarm: a.time : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v0, Lcn/nubia/deskclock/model/Alarm;->time:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ;; now : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2189
    :cond_2
    iget-wide v6, v0, Lcn/nubia/deskclock/model/Alarm;->time:J

    cmp-long v5, v6, v2

    if-gez v5, :cond_0

    .line 2190
    iget-wide v2, v0, Lcn/nubia/deskclock/model/Alarm;->time:J

    .line 2191
    move-object v1, v0

    goto :goto_0

    .line 2194
    .end local v0    # "a":Lcn/nubia/deskclock/model/Alarm;
    :cond_3
    const-string v5, "Alarms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calculateNextPowerOffAlarm: alarm : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcn/nubia/deskclock/model/Alarm;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2195
    return-object v1

    .line 2194
    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static declared-synchronized calculateNextPowerOffAlarmAlert(Landroid/content/Context;)Lcn/nubia/deskclock/model/Alarm;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2146
    const-class v9, Lcn/nubia/deskclock/model/Alarms;

    monitor-enter v9

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 2147
    .local v6, "now":J
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcn/nubia/deskclock/DeskClockApplication;->getAlarmsPrefereceSharedPref()Landroid/content/SharedPreferences;

    move-result-object v5

    .line 2148
    .local v5, "prefs":Landroid/content/SharedPreferences;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v8}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 2150
    .local v2, "alarms":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/deskclock/model/Alarm;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8}, Lcn/nubia/deskclock/model/Alarms;->getFilteredEnableAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 2151
    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_3

    .line 2153
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2155
    :cond_0
    new-instance v0, Lcn/nubia/deskclock/model/Alarm;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-direct {v0, v3, v8}, Lcn/nubia/deskclock/model/Alarm;-><init>(Landroid/database/Cursor;Landroid/content/ContentResolver;)V

    .line 2156
    .local v0, "a":Lcn/nubia/deskclock/model/Alarm;
    const-string v8, "Alarms"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "a re = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcn/nubia/deskclock/model/Alarm;->getRecenceAlarmTime()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2157
    iget-wide v10, v0, Lcn/nubia/deskclock/model/Alarm;->enableRecentAlarm:J

    const-wide/16 v12, 0x1

    cmp-long v8, v10, v12

    if-nez v8, :cond_1

    .line 2158
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2160
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v8

    if-nez v8, :cond_0

    .line 2165
    .end local v0    # "a":Lcn/nubia/deskclock/model/Alarm;
    :cond_2
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2168
    :cond_3
    :goto_0
    invoke-static {p0, v2, v6, v7}, Lcn/nubia/deskclock/model/Alarms;->calculateNextPowerOffAlarm(Landroid/content/Context;Ljava/util/List;J)Lcn/nubia/deskclock/model/Alarm;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 2170
    .local v1, "alarm":Lcn/nubia/deskclock/model/Alarm;
    monitor-exit v9

    return-object v1

    .line 2162
    .end local v1    # "alarm":Lcn/nubia/deskclock/model/Alarm;
    :catch_0
    move-exception v4

    .line 2163
    .local v4, "e":Ljava/util/ConcurrentModificationException;
    :try_start_3
    invoke-virtual {v4}, Ljava/util/ConcurrentModificationException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2165
    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 2146
    .end local v2    # "alarms":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/deskclock/model/Alarm;>;"
    .end local v3    # "cursor":Landroid/database/Cursor;
    .end local v4    # "e":Ljava/util/ConcurrentModificationException;
    .end local v5    # "prefs":Landroid/content/SharedPreferences;
    .end local v6    # "now":J
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 2165
    .restart local v2    # "alarms":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/deskclock/model/Alarm;>;"
    .restart local v3    # "cursor":Landroid/database/Cursor;
    .restart local v5    # "prefs":Landroid/content/SharedPreferences;
    .restart local v6    # "now":J
    :catchall_1
    move-exception v8

    :try_start_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2166
    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public static declared-synchronized calculateRecentAlarmInOneDay(Landroid/content/Context;)Lcn/nubia/deskclock/model/Alarm;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1890
    const-class v12, Lcn/nubia/deskclock/model/Alarms;

    monitor-enter v12

    const-wide v8, 0x7fffffffffffffffL

    .line 1891
    .local v8, "minTime":J
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1892
    .local v10, "now":J
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1894
    .local v4, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/deskclock/model/Alarm;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7}, Lcn/nubia/deskclock/model/Alarms;->getFilteredEnableAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 1895
    .local v5, "cursor":Landroid/database/Cursor;
    if-eqz v5, :cond_3

    .line 1897
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1899
    :cond_0
    new-instance v2, Lcn/nubia/deskclock/model/Alarm;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-direct {v2, v5, v7}, Lcn/nubia/deskclock/model/Alarm;-><init>(Landroid/database/Cursor;Landroid/content/ContentResolver;)V

    .line 1900
    .local v2, "a":Lcn/nubia/deskclock/model/Alarm;
    const-string v7, "Alarms"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "a re = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Lcn/nubia/deskclock/model/Alarm;->getRecenceAlarmTime()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1901
    iget-wide v14, v2, Lcn/nubia/deskclock/model/Alarm;->enableRecentAlarm:J

    const-wide/16 v16, 0x1

    cmp-long v7, v14, v16

    if-nez v7, :cond_1

    .line 1902
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1904
    :cond_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v7

    if-nez v7, :cond_0

    .line 1909
    .end local v2    # "a":Lcn/nubia/deskclock/model/Alarm;
    :cond_2
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1913
    :cond_3
    :goto_0
    const/4 v3, 0x0

    .line 1914
    .local v3, "alarm":Lcn/nubia/deskclock/model/Alarm;
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/deskclock/model/Alarm;

    .line 1915
    .restart local v2    # "a":Lcn/nubia/deskclock/model/Alarm;
    if-eqz v2, :cond_4

    .line 1919
    iget-wide v14, v2, Lcn/nubia/deskclock/model/Alarm;->time:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_5

    .line 1920
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcn/nubia/deskclock/model/Alarms;->calculateAlarm(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)J

    move-result-wide v14

    iput-wide v14, v2, Lcn/nubia/deskclock/model/Alarm;->time:J

    .line 1922
    :cond_5
    const-string v13, "Alarms"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "a.time3 = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-wide v0, v2, Lcn/nubia/deskclock/model/Alarm;->time:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1923
    const-string v13, "Alarms"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "calculateRecentAlarmInOneDay: a.time - now :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-wide v0, v2, Lcn/nubia/deskclock/model/Alarm;->time:J

    move-wide/from16 v16, v0

    sub-long v16, v16, v10

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1924
    iget-wide v14, v2, Lcn/nubia/deskclock/model/Alarm;->time:J

    cmp-long v13, v14, v10

    if-ltz v13, :cond_4

    .line 1927
    iget-wide v14, v2, Lcn/nubia/deskclock/model/Alarm;->time:J

    cmp-long v13, v14, v8

    if-gez v13, :cond_4

    .line 1928
    iget-wide v8, v2, Lcn/nubia/deskclock/model/Alarm;->time:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1929
    move-object v3, v2

    goto :goto_1

    .line 1906
    .end local v2    # "a":Lcn/nubia/deskclock/model/Alarm;
    .end local v3    # "alarm":Lcn/nubia/deskclock/model/Alarm;
    :catch_0
    move-exception v6

    .line 1907
    .local v6, "e":Ljava/util/ConcurrentModificationException;
    :try_start_3
    invoke-virtual {v6}, Ljava/util/ConcurrentModificationException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1909
    :try_start_4
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1890
    .end local v4    # "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/deskclock/model/Alarm;>;"
    .end local v5    # "cursor":Landroid/database/Cursor;
    .end local v6    # "e":Ljava/util/ConcurrentModificationException;
    .end local v10    # "now":J
    :catchall_0
    move-exception v7

    monitor-exit v12

    throw v7

    .line 1909
    .restart local v4    # "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/deskclock/model/Alarm;>;"
    .restart local v5    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "now":J
    :catchall_1
    move-exception v7

    :try_start_5
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1910
    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1932
    .restart local v3    # "alarm":Lcn/nubia/deskclock/model/Alarm;
    :cond_6
    monitor-exit v12

    return-object v3
.end method

.method private static calculateRencentAlarm(Landroid/content/Context;Ljava/util/List;JLandroid/content/SharedPreferences;)Lcn/nubia/deskclock/model/Alarm;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "now"    # J
    .param p4, "prefs"    # Landroid/content/SharedPreferences;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/deskclock/model/Alarm;",
            ">;J",
            "Landroid/content/SharedPreferences;",
            ")",
            "Lcn/nubia/deskclock/model/Alarm;"
        }
    .end annotation

    .prologue
    .line 549
    .local p1, "alarms":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/deskclock/model/Alarm;>;"
    const-wide v2, 0x7fffffffffffffffL

    .line 550
    .local v2, "minTime":J
    const/4 v1, 0x0

    .line 551
    .local v1, "alarm":Lcn/nubia/deskclock/model/Alarm;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/model/Alarm;

    .line 552
    .local v0, "a":Lcn/nubia/deskclock/model/Alarm;
    if-eqz v0, :cond_0

    .line 556
    const-string v5, "Alarms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " calculateRencentAlarm alarm : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    iget-wide v6, v0, Lcn/nubia/deskclock/model/Alarm;->time:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    .line 558
    invoke-static {p0, v0}, Lcn/nubia/deskclock/model/Alarms;->calculateAlarm(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)J

    move-result-wide v6

    iput-wide v6, v0, Lcn/nubia/deskclock/model/Alarm;->time:J

    .line 561
    :cond_1
    invoke-static {p4, v0}, Lcn/nubia/deskclock/model/Alarms;->updateAlarmTimeForSnooze(Landroid/content/SharedPreferences;Lcn/nubia/deskclock/model/Alarm;)Z

    .line 562
    const-string v5, "Alarms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " calculateRencentAlarm a.time : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v0, Lcn/nubia/deskclock/model/Alarm;->time:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ;; now : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    iget-wide v6, v0, Lcn/nubia/deskclock/model/Alarm;->time:J

    cmp-long v5, v6, p2

    if-gez v5, :cond_2

    .line 565
    const/4 v5, 0x0

    invoke-static {p0, v0, v5}, Lcn/nubia/deskclock/model/Alarms;->enableAlarmInternal(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;Z)V

    goto :goto_0

    .line 569
    :cond_2
    iget-wide v6, v0, Lcn/nubia/deskclock/model/Alarm;->time:J

    cmp-long v5, v6, v2

    if-gez v5, :cond_0

    .line 570
    iget-wide v2, v0, Lcn/nubia/deskclock/model/Alarm;->time:J

    .line 571
    move-object v1, v0

    goto :goto_0

    .line 574
    .end local v0    # "a":Lcn/nubia/deskclock/model/Alarm;
    :cond_3
    return-object v1
.end method

.method public static cancelPowerOffAlarmAboveSdk26(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarm"    # Lcn/nubia/deskclock/model/Alarm;

    .prologue
    .line 2067
    if-nez p1, :cond_0

    .line 2075
    :goto_0
    return-void

    .line 2070
    :cond_0
    const-string v3, "Alarms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancelPowerOffAlarmAboveSdk26: alarm : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcn/nubia/deskclock/model/Alarm;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2071
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/deskclock/DeskClockApplication;->getDefaultSharedPref()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2072
    .local v2, "sharedPref":Landroid/content/SharedPreferences;
    const-string v3, "isPowerOffAlarm"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 2073
    .local v1, "isPowerOffAlarm":Z
    new-instance v0, Landroid/content/Intent;

    const-string v3, "org.codeaurora.poweroffalarm.action.CANCEL_ALARM"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2074
    .local v0, "intent":Landroid/content/Intent;
    iget-wide v4, p1, Lcn/nubia/deskclock/model/Alarm;->time:J

    invoke-static {p0, v0, v4, v5}, Lcn/nubia/deskclock/model/Alarms;->sendImplicitBroadcast(Landroid/content/Context;Landroid/content/Intent;J)V

    goto :goto_0
.end method

.method private static cancelPowerOffAlarmClock(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1842
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1844
    .local v0, "am":Landroid/app/AlarmManager;
    :try_start_0
    const-string v3, "Alarms"

    const-string v4, "cancelPowerOffAlarmClock runn in"

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1845
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "cancelPoweroffAlarm"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1846
    .local v2, "setMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "cn.nubia.deskclock.preset"

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1850
    .end local v2    # "setMethod":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1847
    :catch_0
    move-exception v1

    .line 1848
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "AlarmClock"

    const-string v4, "CleanError"

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static cleanAlarmNotification(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 1675
    invoke-static {p0}, Lcn/nubia/deskclock/model/Alarms;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    .line 1676
    .local v0, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1677
    return-void
.end method

.method public static cleanAllNotification(Landroid/content/Context;)V
    .locals 7
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 1822
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/nubia/deskclock/model/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1826
    .local v6, "cursor":Landroid/database/Cursor;
    const-string v0, "Alarms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursor.getCount()  ==  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    if-eqz v6, :cond_2

    .line 1829
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1831
    :cond_0
    const-string v0, "Alarms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1832
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {p0, v0}, Lcn/nubia/deskclock/model/Alarms;->cleanAlarmNotification(Landroid/content/Context;I)V

    .line 1833
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1836
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1839
    :cond_2
    return-void

    .line 1836
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1837
    throw v0
.end method

.method public static cleanCountdownNotification(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 1669
    const-string v1, "Alarms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cleanCountdownNotification: id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1670
    invoke-static {p0}, Lcn/nubia/deskclock/model/Alarms;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    .line 1671
    .local v0, "nm":Landroid/app/NotificationManager;
    const-string v1, "ticker_notification"

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 1672
    return-void
.end method

.method public static cleanNotificationWhenGameMode(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 1680
    invoke-static {p0}, Lcn/nubia/deskclock/model/Alarms;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    .line 1681
    .local v0, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1682
    return-void
.end method

.method private static clearAllSnoozePreferences(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 944
    const-string v4, "notification"

    .line 945
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 946
    .local v1, "nm":Landroid/app/NotificationManager;
    const-string v4, "snooze_ids"

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 947
    .local v3, "snoozedIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 948
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 949
    .local v2, "snoozeId":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 950
    invoke-static {v2}, Lcn/nubia/deskclock/model/Alarms;->getAlarmPrefSnoozeTimeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 953
    .end local v2    # "snoozeId":Ljava/lang/String;
    :cond_0
    const-string v4, "snooze_ids"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 954
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 955
    return-void
.end method

.method private static clearSnoozePreference(Landroid/content/Context;Landroid/content/SharedPreferences;IZ)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "id"    # I
    .param p3, "clearNotification"    # Z

    .prologue
    .line 927
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 928
    .local v0, "alarmStr":Ljava/lang/String;
    const-string v4, "snooze_ids"

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 929
    .local v3, "snoozedIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p3, :cond_0

    .line 930
    const-string v4, "notification"

    .line 931
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 932
    .local v2, "nm":Landroid/app/NotificationManager;
    const-string v4, "ticker_notification"

    invoke-virtual {v2, v4, p2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 935
    .end local v2    # "nm":Landroid/app/NotificationManager;
    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 936
    .local v1, "ed":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 937
    const-string v4, "snooze_ids"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 938
    invoke-static {v0}, Lcn/nubia/deskclock/model/Alarms;->getAlarmPrefSnoozeTimeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 939
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 940
    return-void
.end method

.method public static countDownEndNotification(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1685
    invoke-static {p0}, Lcn/nubia/deskclock/model/Alarms;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v4

    .line 1686
    .local v4, "nm":Landroid/app/NotificationManager;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1687
    .local v7, "resources":Landroid/content/res/Resources;
    invoke-static {p0}, Lcn/nubia/deskclock/database/CountDownSPUtils;->readTimeNotficationFromPref(Landroid/content/Context;)I

    move-result v3

    .line 1688
    .local v3, "mcs":I
    invoke-static {p0, v3}, Lcn/nubia/deskclock/util/Utils;->formatCountDownSecond(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    .line 1689
    .local v8, "title":Ljava/lang/String;
    new-instance v9, Landroid/app/Notification$Builder;

    invoke-direct {v9, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0d0041

    .line 1690
    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v11, 0x7f0d0040

    .line 1691
    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    const/4 v10, 0x1

    .line 1692
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v9

    const/4 v10, 0x4

    .line 1693
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v9

    const-string v10, "alarm"

    .line 1694
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v9

    const/4 v10, 0x2

    .line 1695
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 1696
    .local v5, "notification":Landroid/app/Notification$Builder;
    sget-object v9, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/16 v10, 0x18

    if-ge v9, v10, :cond_2

    .line 1697
    const/4 v0, 0x0

    .line 1698
    .local v0, "contentView":Landroid/widget/RemoteViews;
    new-instance v0, Landroid/widget/RemoteViews;

    .end local v0    # "contentView":Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f04002c

    invoke-direct {v0, v9, v10}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1700
    .restart local v0    # "contentView":Landroid/widget/RemoteViews;
    const v9, 0x7f1200c9

    const v10, 0x7f0d0041

    .line 1701
    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1700
    invoke-virtual {v0, v9, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1702
    const v9, 0x7f1200cb

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v11, 0x7f0d0040

    .line 1703
    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1702
    invoke-virtual {v0, v9, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1704
    const v9, 0x7f1200ca

    invoke-static {p0}, Lcn/nubia/deskclock/model/Alarms;->getCurrentTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1705
    const v9, 0x7f02007c

    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1706
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f02007c

    invoke-static {v9, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 1708
    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 1716
    .end local v0    # "contentView":Landroid/widget/RemoteViews;
    :cond_0
    :goto_0
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreO()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1717
    new-instance v2, Landroid/app/NotificationChannel;

    const-string v9, "1002"

    const-string v10, "countdown_end"

    const/4 v11, 0x2

    invoke-direct {v2, v9, v10, v11}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 1718
    .local v2, "mNotificationChannel":Landroid/app/NotificationChannel;
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 1719
    const/4 v9, 0x2

    invoke-virtual {v2, v9}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 1720
    invoke-virtual {v4, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 1721
    const-string v9, "1002"

    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 1724
    .end local v2    # "mNotificationChannel":Landroid/app/NotificationChannel;
    :cond_1
    new-instance v6, Landroid/content/Intent;

    const-class v9, Lcn/nubia/deskclock/DeskClock;

    invoke-direct {v6, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1725
    .local v6, "notify":Landroid/content/Intent;
    const-string v9, "deskclock.select.tab"

    const/4 v10, 0x3

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1726
    const/16 v9, 0x3ea

    const/high16 v10, 0x8000000

    invoke-static {p0, v9, v6, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1728
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1a

    if-ge v9, v10, :cond_3

    .line 1729
    const-string v9, "Notify"

    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 1730
    const-string v9, "z0"

    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 1737
    :goto_1
    const/16 v9, 0x3ea

    invoke-virtual {v4, v9}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1738
    const/16 v9, 0x3ea

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1739
    return-void

    .line 1710
    .end local v6    # "notify":Landroid/content/Intent;
    :cond_2
    const v9, 0x7f02007b

    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1711
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreO()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1712
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f02007b

    invoke-static {v9, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 1732
    .restart local v6    # "notify":Landroid/content/Intent;
    :cond_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1733
    .local v1, "countdownEndbundle":Landroid/os/Bundle;
    const-string v9, "nubiaSort"

    const-string v10, "Notify"

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    const-string v9, "z0"

    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 1735
    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    goto :goto_1
.end method

.method private static createContentValues(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;Landroid/content/ContentResolver;)Landroid/content/ContentValues;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarm"    # Lcn/nubia/deskclock/model/Alarm;
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 316
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 320
    .local v1, "values":Landroid/content/ContentValues;
    const-wide/16 v2, 0x0

    .line 321
    .local v2, "time":J
    iget-object v4, p1, Lcn/nubia/deskclock/model/Alarm;->daysOfWeek:Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    invoke-virtual {v4}, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->isRepeatSet()Z

    move-result v4

    if-nez v4, :cond_0

    .line 322
    invoke-static {p0, p1}, Lcn/nubia/deskclock/model/Alarms;->calculateAlarm(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)J

    move-result-wide v2

    .line 326
    :cond_0
    iget v4, p1, Lcn/nubia/deskclock/model/Alarm;->id:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 327
    const-string v4, "_id"

    iget v5, p1, Lcn/nubia/deskclock/model/Alarm;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 330
    :cond_1
    const-string v5, "enabled"

    iget-boolean v4, p1, Lcn/nubia/deskclock/model/Alarm;->enabled:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 331
    const-string v4, "hour"

    iget v5, p1, Lcn/nubia/deskclock/model/Alarm;->hour:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 332
    const-string v4, "minutes"

    iget v5, p1, Lcn/nubia/deskclock/model/Alarm;->minutes:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 333
    const-string v4, "alarmtime"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 334
    const-string v4, "daysofweek"

    iget-object v5, p1, Lcn/nubia/deskclock/model/Alarm;->daysOfWeek:Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    invoke-virtual {v5}, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->getCoded()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 335
    const-string v4, "message"

    iget-object v5, p1, Lcn/nubia/deskclock/model/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-boolean v4, p1, Lcn/nubia/deskclock/model/Alarm;->silent:Z

    if-eqz v4, :cond_3

    .line 337
    const-string v4, "alert"

    const-string v5, "silent"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :goto_1
    const-string v4, "snoozecount"

    iget v5, p1, Lcn/nubia/deskclock/model/Alarm;->snoozeCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 348
    const-string v4, "volumevalue"

    iget v5, p1, Lcn/nubia/deskclock/model/Alarm;->volumeValue:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 349
    const-string v4, "cancelcount"

    iget v5, p1, Lcn/nubia/deskclock/model/Alarm;->cancelCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 350
    const-string v4, "enablerecentalarm"

    invoke-virtual {p1}, Lcn/nubia/deskclock/model/Alarm;->getRecenceAlarmTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 351
    const-string v4, "holidayalarm"

    iget-boolean v5, p1, Lcn/nubia/deskclock/model/Alarm;->isHolidayAlarm:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 352
    return-object v1

    .line 330
    :cond_2
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 339
    :cond_3
    iget-object v4, p1, Lcn/nubia/deskclock/model/Alarm;->alert:Landroid/net/Uri;

    if-nez v4, :cond_4

    .line 340
    const-string v4, "alert"

    const-string v5, "silent"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 342
    :cond_4
    iget-object v4, p1, Lcn/nubia/deskclock/model/Alarm;->alert:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lcn/nubia/deskclock/util/Utils;->uriToFilePath(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "alertValue":Ljava/lang/String;
    const-string v4, "alert"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static deleteAlarm(Landroid/content/Context;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarmId"    # I

    .prologue
    .line 264
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    .line 277
    :goto_0
    return-void

    .line 268
    :cond_0
    invoke-static {p0}, Lcn/nubia/deskclock/model/Alarms;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    .line 269
    .local v1, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v1, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 271
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 273
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/4 v3, 0x1

    invoke-static {p0, p1, v3}, Lcn/nubia/deskclock/model/Alarms;->disableSnoozeAlert(Landroid/content/Context;IZ)V

    .line 275
    sget-object v3, Lcn/nubia/deskclock/model/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 276
    .local v2, "uri":Landroid/net/Uri;
    const-string v3, ""

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static disableAlert(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 861
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 862
    .local v0, "am":Landroid/app/AlarmManager;
    const/4 v1, 0x0

    .line 864
    .local v1, "canceler":Landroid/app/PendingIntent;
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.nubia.deskclock.ALARM_ALERT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x20000000

    invoke-static {p0, v3, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 869
    :goto_0
    if-eqz v1, :cond_0

    .line 870
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 871
    invoke-static {p0}, Lcn/nubia/deskclock/model/Alarms;->cancelPowerOffAlarmClock(Landroid/content/Context;)V

    .line 872
    const-string v3, "Alarms"

    const-string v4, "am.cancel(canceler)"

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    :goto_1
    invoke-static {p0, v6}, Lcn/nubia/deskclock/model/Alarms;->setStatusBarIcon(Landroid/content/Context;Z)V

    .line 883
    const-string v3, "Alarms"

    const-string v4, "No next alarm"

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    const-string v3, ""

    invoke-static {p0, v3}, Lcn/nubia/deskclock/model/AlarmsDb;->saveNextAlarm(Landroid/content/Context;Ljava/lang/String;)V

    .line 885
    return-void

    .line 866
    :catch_0
    move-exception v2

    .line 867
    .local v2, "e":Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 874
    .end local v2    # "e":Ljava/lang/SecurityException;
    :cond_0
    const-string v3, "Alarms"

    const-string v4, "canceler = null"

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static disableExpiredAlarms(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 638
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/deskclock/model/Alarms;->getFilteredAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v1

    .line 639
    .local v1, "cur":Landroid/database/Cursor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 640
    .local v4, "now":J
    const-string v3, "Alarms"

    const-string v6, "disableExpiredAlarms: "

    invoke-static {v3, v6}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    if-nez v1, :cond_1

    .line 666
    :cond_0
    :goto_0
    return-void

    .line 644
    :cond_1
    const-string v3, "Alarms"

    const-string v6, "disableExpiredAlarms: 222"

    invoke-static {v3, v6}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 648
    :cond_2
    new-instance v0, Lcn/nubia/deskclock/model/Alarm;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcn/nubia/deskclock/model/Alarm;-><init>(Landroid/database/Cursor;Landroid/content/ContentResolver;)V

    .line 651
    .local v0, "alarm":Lcn/nubia/deskclock/model/Alarm;
    const-string v3, "Alarms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " disableExpiredAlarms alarm : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcn/nubia/deskclock/model/Alarm;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    iget-wide v6, v0, Lcn/nubia/deskclock/model/Alarm;->time:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-eqz v3, :cond_3

    iget-wide v6, v0, Lcn/nubia/deskclock/model/Alarm;->time:J

    cmp-long v3, v6, v4

    if-gez v3, :cond_3

    .line 653
    const-string v3, "Alarms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "D Disabling expired alarm set for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v0, Lcn/nubia/deskclock/model/Alarm;->time:J

    .line 654
    invoke-static {v8, v9}, Lcn/nubia/deskclock/util/LogUtils;->formatTime(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 653
    invoke-static {v3, v6}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const/4 v3, 0x0

    invoke-static {p0, v0, v3}, Lcn/nubia/deskclock/model/Alarms;->enableAlarmInternal(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;Z)V

    .line 657
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    .line 662
    .end local v0    # "alarm":Lcn/nubia/deskclock/model/Alarm;
    :cond_4
    if-eqz v1, :cond_0

    .line 663
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 659
    :catch_0
    move-exception v2

    .line 660
    .local v2, "e":Ljava/lang/NullPointerException;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 662
    if-eqz v1, :cond_0

    .line 663
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 662
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_5

    .line 663
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 665
    :cond_5
    throw v3
.end method

.method public static declared-synchronized disableSnoozeAlert(Landroid/content/Context;IZ)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "clearNotification"    # Z

    .prologue
    .line 915
    const-class v2, Lcn/nubia/deskclock/model/Alarms;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/deskclock/DeskClockApplication;->getAlarmsPrefereceSharedPref()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 916
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-static {v0, p1}, Lcn/nubia/deskclock/model/Alarms;->hasAlarmBeenSnoozed(Landroid/content/SharedPreferences;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 918
    invoke-static {p0, v0, p1, p2}, Lcn/nubia/deskclock/model/Alarms;->clearSnoozePreference(Landroid/content/Context;Landroid/content/SharedPreferences;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 920
    :cond_0
    monitor-exit v2

    return-void

    .line 915
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static dismiss(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;ZJ)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mCurrentAlarm"    # Lcn/nubia/deskclock/model/Alarm;
    .param p2, "killed"    # Z
    .param p3, "starttime"    # J

    .prologue
    .line 1173
    if-nez p1, :cond_0

    .line 1199
    :goto_0
    return-void

    .line 1176
    :cond_0
    const-string v6, "Alarms"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dismiss: mCurrentAlarm.id : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcn/nubia/deskclock/model/Alarm;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    invoke-static {p0}, Lcn/nubia/deskclock/model/Alarms;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v3

    .line 1178
    .local v3, "nm":Landroid/app/NotificationManager;
    iget v6, p1, Lcn/nubia/deskclock/model/Alarm;->id:I

    invoke-virtual {v3, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1179
    if-nez p2, :cond_1

    .line 1180
    iget v6, p1, Lcn/nubia/deskclock/model/Alarm;->id:I

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Lcn/nubia/deskclock/model/Alarms;->disableSnoozeAlert(Landroid/content/Context;IZ)V

    .line 1190
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1191
    .local v4, "resolver":Landroid/content/ContentResolver;
    new-instance v5, Landroid/content/ContentValues;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 1192
    .local v5, "values":Landroid/content/ContentValues;
    const/4 v6, 0x0

    iput v6, p1, Lcn/nubia/deskclock/model/Alarm;->snoozeCount:I

    .line 1193
    const-string v6, "snoozecount"

    iget v7, p1, Lcn/nubia/deskclock/model/Alarm;->snoozeCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1194
    sget-object v6, Lcn/nubia/deskclock/model/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    iget v7, p1, Lcn/nubia/deskclock/model/Alarm;->id:I

    int-to-long v8, v7

    invoke-static {v6, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v5, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1196
    iget v6, p1, Lcn/nubia/deskclock/model/Alarm;->id:I

    invoke-static {p0, v6}, Lcn/nubia/deskclock/model/AlarmsDb;->resetLastSnoozeTime(Landroid/content/Context;I)V

    .line 1197
    invoke-static {p0}, Lcn/nubia/deskclock/model/Alarms;->setNextAlert(Landroid/content/Context;)V

    .line 1198
    invoke-static {p0, p1}, Lcn/nubia/deskclock/model/Alarms;->cancelPowerOffAlarmAboveSdk26(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)V

    goto :goto_0

    .line 1182
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "values":Landroid/content/ContentValues;
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, p3

    .line 1183
    .local v0, "millis":J
    long-to-double v6, v0

    const-wide v8, 0x40ed4c0000000000L    # 60000.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v2, v6

    .line 1184
    .local v2, "minutes":I
    if-nez v2, :cond_2

    .line 1185
    const/4 v2, 0x1

    .line 1187
    :cond_2
    invoke-static {p0, p1, v2}, Lcn/nubia/deskclock/model/Alarms;->AlarmEndNotification(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;I)V

    .line 1188
    iget v6, p1, Lcn/nubia/deskclock/model/Alarm;->id:I

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Lcn/nubia/deskclock/model/Alarms;->disableSnoozeAlert(Landroid/content/Context;IZ)V

    goto :goto_1
.end method

.method public static enableAlarm(Landroid/content/Context;IZ)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 422
    invoke-static {p0, p1, p2}, Lcn/nubia/deskclock/model/Alarms;->enableAlarmInternal(Landroid/content/Context;IZ)V

    .line 423
    invoke-static {p0}, Lcn/nubia/deskclock/model/Alarms;->setNextAlert(Landroid/content/Context;)V

    .line 424
    return-void
.end method

.method private static enableAlarmInternal(Landroid/content/Context;IZ)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 427
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/nubia/deskclock/model/Alarms;->getAlarm(Landroid/content/ContentResolver;I)Lcn/nubia/deskclock/model/Alarm;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcn/nubia/deskclock/model/Alarms;->enableAlarmInternal(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;Z)V

    .line 428
    return-void
.end method

.method private static enableAlarmInternal(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;Z)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarm"    # Lcn/nubia/deskclock/model/Alarm;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 432
    if-nez p1, :cond_0

    .line 459
    :goto_0
    return-void

    .line 435
    :cond_0
    const-string v4, "Alarms"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enableAlarmInternal: alarm.id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcn/nubia/deskclock/model/Alarm;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " enabled : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 438
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    const/4 v4, 0x3

    invoke-direct {v1, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 439
    .local v1, "values":Landroid/content/ContentValues;
    const-string v7, "enabled"

    if-eqz p2, :cond_2

    move v4, v5

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 440
    const-string v4, "enablerecentalarm"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 444
    if-eqz p2, :cond_3

    .line 445
    const-wide/16 v2, 0x0

    .line 446
    .local v2, "time":J
    iget-object v4, p1, Lcn/nubia/deskclock/model/Alarm;->daysOfWeek:Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    invoke-virtual {v4}, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->isRepeatSet()Z

    move-result v4

    if-nez v4, :cond_1

    .line 447
    invoke-static {p0, p1}, Lcn/nubia/deskclock/model/Alarms;->calculateAlarm(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)J

    move-result-wide v2

    .line 449
    :cond_1
    const-string v4, "alarmtime"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 450
    const-string v4, "cancelcount"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 451
    const-string v4, "snoozecount"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 457
    .end local v2    # "time":J
    :goto_2
    sget-object v4, Lcn/nubia/deskclock/model/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    iget v5, p1, Lcn/nubia/deskclock/model/Alarm;->id:I

    int-to-long v6, v5

    invoke-static {v4, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4, v1, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v4, v6

    .line 439
    goto :goto_1

    .line 454
    :cond_3
    iget v4, p1, Lcn/nubia/deskclock/model/Alarm;->id:I

    invoke-static {p0, v4, v5}, Lcn/nubia/deskclock/model/Alarms;->disableSnoozeAlert(Landroid/content/Context;IZ)V

    goto :goto_2
.end method

.method public static enableAlert(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;J)V
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarm"    # Lcn/nubia/deskclock/model/Alarm;
    .param p2, "atTimeInMillis"    # J

    .prologue
    .line 734
    const-string v16, "alarm"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    .line 738
    .local v5, "am":Landroid/app/AlarmManager;
    const-string v16, "Alarms"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Alarm set for id="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget v0, v0, Lcn/nubia/deskclock/model/Alarm;->id:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 739
    invoke-static/range {p2 .. p3}, Lcn/nubia/deskclock/util/LogUtils;->formatTime(J)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 738
    invoke-static/range {v16 .. v17}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    new-instance v8, Landroid/content/Intent;

    const-string v16, "com.nubia.deskclock.ALARM_ALERT"

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 752
    .local v8, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    .line 753
    .local v10, "out":Landroid/os/Parcel;
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v10, v1}, Lcn/nubia/deskclock/model/Alarm;->writeToParcel(Landroid/os/Parcel;I)V

    .line 754
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 755
    const-string v16, "intent.extra.alarm_raw"

    invoke-virtual {v10}, Landroid/os/Parcel;->marshall()[B

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 756
    const/16 v16, 0x20

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 757
    const/high16 v16, 0x10000000

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 758
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreO()Z

    move-result v16

    if-nez v16, :cond_0

    .line 759
    const/high16 v16, 0x1000000

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 761
    :cond_0
    const/16 v16, 0x0

    const/high16 v17, 0x20000000

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 763
    .local v7, "canceler":Landroid/app/PendingIntent;
    if-eqz v7, :cond_1

    .line 764
    invoke-virtual {v5, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 765
    invoke-static/range {p0 .. p0}, Lcn/nubia/deskclock/model/Alarms;->cancelPowerOffAlarmClock(Landroid/content/Context;)V

    .line 768
    :cond_1
    const/16 v16, 0x0

    const/high16 v17, 0x10000000

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 770
    .local v13, "sender":Landroid/app/PendingIntent;
    const/4 v4, 0x0

    .line 771
    .local v4, "RTC_WAKEUP":I
    const/16 v3, 0x8

    .line 772
    .local v3, "MTK_RTC_POWEROFF_WAKEUP":I
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcn/nubia/deskclock/DeskClockApplication;->getDefaultSharedPref()Landroid/content/SharedPreferences;

    move-result-object v14

    .line 773
    .local v14, "sharedPref":Landroid/content/SharedPreferences;
    const-string v16, "isPowerOffAlarm"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 774
    .local v9, "isPowerOffAlarm":Z
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->getSupportPowerOffAlarm()Ljava/lang/String;

    move-result-object v11

    .line 775
    .local v11, "poweroffAlarmSupport":Ljava/lang/String;
    sget-object v16, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 776
    .local v12, "sdk":I
    const-string v16, "audioprofile"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    if-eqz v16, :cond_2

    if-eqz v9, :cond_2

    .line 777
    const-string v16, "Alarms"

    const-string v17, "Set 5.1 MTK Poweroff Alarm."

    invoke-static/range {v16 .. v17}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    const/16 v16, 0x8

    move/from16 v0, v16

    move-wide/from16 v1, p2

    invoke-virtual {v5, v0, v1, v2, v13}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 794
    :goto_0
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcn/nubia/deskclock/model/Alarms;->setStatusBarIcon(Landroid/content/Context;Z)V

    .line 796
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 797
    .local v6, "c":Ljava/util/Calendar;
    move-wide/from16 v0, p2

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 798
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcn/nubia/deskclock/model/Alarms;->formatDayAndTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v15

    .line 799
    .local v15, "timeString":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcn/nubia/deskclock/model/AlarmsDb;->saveNextAlarm(Landroid/content/Context;Ljava/lang/String;)V

    .line 800
    return-void

    .line 779
    .end local v6    # "c":Ljava/util/Calendar;
    .end local v15    # "timeString":Ljava/lang/String;
    :cond_2
    const-string v16, "1"

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    if-eqz v9, :cond_4

    .line 780
    const-string v16, "Alarms"

    const-string v17, "Set QCOM Poweroff Alarm."

    invoke-static/range {v16 .. v17}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    const/16 v16, 0x1a

    move/from16 v0, v16

    if-ge v12, v0, :cond_3

    .line 782
    new-instance v16, Landroid/app/AlarmManager$AlarmClockInfo;

    move-object/from16 v0, v16

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2, v13}, Landroid/app/AlarmManager$AlarmClockInfo;-><init>(JLandroid/app/PendingIntent;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1, v13}, Lcn/nubia/deskclock/model/Alarms;->setPowerOffAlarmClock(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 784
    :cond_3
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-static {v0, v5, v1, v2, v13}, Lcn/nubia/deskclock/model/Alarms;->setPowerOffAlarmClockAboveSdk26(Landroid/content/Context;Landroid/app/AlarmManager;JLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 787
    :cond_4
    const-string v16, "Alarms"

    const-string v17, "Set Normal Alarm."

    invoke-static/range {v16 .. v17}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    const/16 v16, 0x17

    move/from16 v0, v16

    if-ge v12, v0, :cond_5

    .line 789
    const/16 v16, 0x0

    move/from16 v0, v16

    move-wide/from16 v1, p2

    invoke-virtual {v5, v0, v1, v2, v13}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 791
    :cond_5
    new-instance v16, Landroid/app/AlarmManager$AlarmClockInfo;

    move-object/from16 v0, v16

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2, v13}, Landroid/app/AlarmManager$AlarmClockInfo;-><init>(JLandroid/app/PendingIntent;)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v13}, Landroid/app/AlarmManager;->setAlarmClock(Landroid/app/AlarmManager$AlarmClockInfo;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private static formatDayAndTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "c"    # Ljava/util/Calendar;

    .prologue
    .line 1124
    invoke-static {p0}, Lcn/nubia/deskclock/model/AlarmsDb;->get24HourMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "E kk:mm"

    .line 1125
    .local v0, "format":Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_1

    const-string v1, ""

    :goto_1
    return-object v1

    .line 1124
    .end local v0    # "format":Ljava/lang/String;
    :cond_0
    const-string v0, "E h:mm aa"

    goto :goto_0

    .line 1125
    .restart local v0    # "format":Ljava/lang/String;
    :cond_1
    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1
.end method

.method public static formatTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "c"    # Ljava/util/Calendar;

    .prologue
    .line 1116
    invoke-static {p0}, Lcn/nubia/deskclock/model/AlarmsDb;->get24HourMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "kk:mm"

    .line 1117
    .local v0, "format":Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_1

    const-string v1, ""

    :goto_1
    return-object v1

    .line 1116
    .end local v0    # "format":Ljava/lang/String;
    :cond_0
    const-string v0, "aa h:mm "

    goto :goto_0

    .line 1117
    .restart local v0    # "format":Ljava/lang/String;
    :cond_1
    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1
.end method

.method public static declared-synchronized getAlarm(Landroid/content/ContentResolver;I)Lcn/nubia/deskclock/model/Alarm;
    .locals 11
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "alarmId"    # I

    .prologue
    .line 361
    const-class v10, Lcn/nubia/deskclock/model/Alarms;

    monitor-enter v10

    const/4 v8, 0x0

    .line 362
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 364
    .local v6, "alarm":Lcn/nubia/deskclock/model/Alarm;
    :try_start_0
    sget-object v0, Lcn/nubia/deskclock/model/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, p1

    .line 365
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcn/nubia/deskclock/model/Alarm$Columns;->ALARM_QUERY_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 364
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 367
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    new-instance v7, Lcn/nubia/deskclock/model/Alarm;

    invoke-direct {v7, v8, p0}, Lcn/nubia/deskclock/model/Alarm;-><init>(Landroid/database/Cursor;Landroid/content/ContentResolver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .end local v6    # "alarm":Lcn/nubia/deskclock/model/Alarm;
    .local v7, "alarm":Lcn/nubia/deskclock/model/Alarm;
    move-object v6, v7

    .line 373
    .end local v7    # "alarm":Lcn/nubia/deskclock/model/Alarm;
    .restart local v6    # "alarm":Lcn/nubia/deskclock/model/Alarm;
    :cond_0
    if-eqz v8, :cond_1

    .line 374
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 377
    :cond_1
    :goto_0
    monitor-exit v10

    return-object v6

    .line 370
    :catch_0
    move-exception v9

    .line 371
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 373
    if-eqz v8, :cond_1

    .line 374
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 361
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0

    .line 373
    :catchall_1
    move-exception v0

    if-eqz v8, :cond_2

    .line 374
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 376
    :cond_2
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private static getAlarmPrefSnoozeTimeKey(I)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 903
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/deskclock/model/Alarms;->getAlarmPrefSnoozeTimeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getAlarmPrefSnoozeTimeKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "snooze_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs getAlarms(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/deskclock/model/Alarm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2101
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 2102
    .local v8, "result":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/deskclock/model/Alarm;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2103
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 2105
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcn/nubia/deskclock/model/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcn/nubia/deskclock/model/Alarm$Columns;->ALARM_QUERY_COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2106
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2108
    :cond_0
    new-instance v1, Lcn/nubia/deskclock/model/Alarm;

    invoke-direct {v1, v6, v0}, Lcn/nubia/deskclock/model/Alarm;-><init>(Landroid/database/Cursor;Landroid/content/ContentResolver;)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2109
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 2114
    :cond_1
    if-eqz v6, :cond_2

    .line 2115
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2119
    :cond_2
    :goto_0
    return-object v8

    .line 2111
    :catch_0
    move-exception v7

    .line 2112
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "Alarms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2114
    if-eqz v6, :cond_2

    .line 2115
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2114
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    .line 2115
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2117
    :cond_3
    throw v1
.end method

.method public static getAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 6
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v3, 0x0

    .line 285
    sget-object v1, Lcn/nubia/deskclock/model/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcn/nubia/deskclock/model/Alarm$Columns;->ALARM_QUERY_COLUMNS:[Ljava/lang/String;

    const-string v5, "hour, minutes ASC"

    move-object v0, p0

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1990
    const/4 v1, 0x0

    .line 1991
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1992
    .local v0, "date":Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 1993
    invoke-static {p0}, Lcn/nubia/deskclock/model/AlarmsDb;->get24HourMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1994
    new-instance v1, Ljava/text/SimpleDateFormat;

    .end local v1    # "sdf":Ljava/text/SimpleDateFormat;
    const-string v2, "kk:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1995
    .restart local v1    # "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 1998
    :goto_0
    return-object v2

    .line 1997
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    .end local v1    # "sdf":Ljava/text/SimpleDateFormat;
    const-string v2, "aa h:mm "

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1998
    .restart local v1    # "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getEnabledAlarms(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/deskclock/model/Alarm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2079
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 2080
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/deskclock/model/Alarm;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2081
    .local v2, "resolver":Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 2083
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {v2}, Lcn/nubia/deskclock/model/Alarms;->getFilteredEnableAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v0

    .line 2084
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2086
    :cond_0
    new-instance v4, Lcn/nubia/deskclock/model/Alarm;

    invoke-direct {v4, v0, v2}, Lcn/nubia/deskclock/model/Alarm;-><init>(Landroid/database/Cursor;Landroid/content/ContentResolver;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2087
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 2092
    :cond_1
    if-eqz v0, :cond_2

    .line 2093
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2096
    :cond_2
    :goto_0
    return-object v3

    .line 2089
    :catch_0
    move-exception v1

    .line 2090
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "Alarms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2092
    if-eqz v0, :cond_2

    .line 2093
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2092
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_3

    .line 2093
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2095
    :cond_3
    throw v4
.end method

.method private static getFilteredAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 8
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v7, 0x0

    .line 292
    :try_start_0
    sget-object v1, Lcn/nubia/deskclock/model/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcn/nubia/deskclock/model/Alarm$Columns;->ALARM_QUERY_COLUMNS:[Ljava/lang/String;

    const-string v3, "enabled=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 295
    :goto_0
    return-object v0

    .line 294
    :catch_0
    move-exception v6

    .local v6, "e":Landroid/database/sqlite/SQLiteCantOpenDatabaseException;
    move-object v0, v7

    .line 295
    goto :goto_0
.end method

.method private static declared-synchronized getFilteredEnableAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 9
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 300
    const-class v8, Lcn/nubia/deskclock/model/Alarms;

    monitor-enter v8

    const/4 v6, 0x0

    .line 302
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcn/nubia/deskclock/model/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcn/nubia/deskclock/model/Alarm$Columns;->ALARM_QUERY_COLUMNS:[Ljava/lang/String;

    const-string v3, "enabled = 1 or enablerecentalarm = 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 308
    :goto_0
    if-nez v6, :cond_0

    .line 309
    :try_start_1
    const-string v0, "Alarms"

    const-string v1, "getFilteredEnableAlarmsCursor cursor = null"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    :cond_0
    monitor-exit v8

    return-object v6

    .line 305
    :catch_0
    move-exception v7

    .line 306
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 300
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public static getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1401
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method public static getRecentAlarms(Landroid/content/Context;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2202
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v10}, Lcn/nubia/deskclock/model/Alarms;->getRecentAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v1

    .line 2203
    .local v1, "cur":Landroid/database/Cursor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 2204
    .local v8, "now":J
    const-wide v6, 0x7fffffffffffffffL

    .line 2205
    .local v6, "minTime":J
    const-wide/16 v2, 0x0

    .line 2206
    .local v2, "alarmTime":J
    const/4 v5, 0x0

    .line 2207
    .local v5, "recentAlarm":Lcn/nubia/deskclock/model/Alarm;
    const-string v10, "Alarms"

    const-string v11, "getRecentAlarms: "

    invoke-static {v10, v11}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2208
    if-nez v1, :cond_1

    .line 2240
    :cond_0
    :goto_0
    return-void

    .line 2212
    :cond_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2214
    :cond_2
    new-instance v0, Lcn/nubia/deskclock/model/Alarm;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-direct {v0, v1, v10}, Lcn/nubia/deskclock/model/Alarm;-><init>(Landroid/database/Cursor;Landroid/content/ContentResolver;)V

    .line 2217
    .local v0, "alarm":Lcn/nubia/deskclock/model/Alarm;
    const-string v10, "Alarms"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " getRecentAlarms alarm : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Lcn/nubia/deskclock/model/Alarm;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2218
    invoke-virtual {v0}, Lcn/nubia/deskclock/model/Alarm;->getRecentAlarmTIme()J

    move-result-wide v2

    .line 2219
    const-string v10, "Alarms"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getRecentAlarms: alarmTime : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ;; now : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2220
    cmp-long v10, v2, v8

    if-gez v10, :cond_3

    .line 2221
    const-string v10, "Alarms"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "expired alarm set for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v0, Lcn/nubia/deskclock/model/Alarm;->time:J

    .line 2222
    invoke-static {v12, v13}, Lcn/nubia/deskclock/util/LogUtils;->formatTime(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2221
    invoke-static {v10, v11}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2223
    sub-long v6, v8, v2

    .line 2224
    move-object v5, v0

    .line 2225
    const/4 v10, 0x1

    invoke-static {p0, v5, v10}, Lcn/nubia/deskclock/model/Alarms;->enableAlarmInternal(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;Z)V

    .line 2227
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_2

    .line 2229
    .end local v0    # "alarm":Lcn/nubia/deskclock/model/Alarm;
    :cond_4
    const-string v10, "Alarms"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " getRecentAlarms recentAlarm : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2230
    if-eqz v5, :cond_5

    .line 2231
    const/4 v10, 0x1

    invoke-static {p0, v5, v10}, Lcn/nubia/deskclock/model/Alarms;->enableAlarmInternal(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2236
    :cond_5
    if-eqz v1, :cond_0

    .line 2237
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2233
    :catch_0
    move-exception v4

    .line 2234
    .local v4, "e":Ljava/lang/NullPointerException;
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2236
    if-eqz v1, :cond_0

    .line 2237
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2236
    .end local v4    # "e":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v10

    if-eqz v1, :cond_6

    .line 2237
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2239
    :cond_6
    throw v10
.end method

.method private static getRecentAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 8
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v7, 0x0

    .line 2244
    :try_start_0
    sget-object v1, Lcn/nubia/deskclock/model/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcn/nubia/deskclock/model/Alarm$Columns;->ALARM_QUERY_COLUMNS:[Ljava/lang/String;

    const-string v3, "enablerecentalarm =0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2247
    :goto_0
    return-object v0

    .line 2246
    :catch_0
    move-exception v6

    .local v6, "e":Landroid/database/sqlite/SQLiteCantOpenDatabaseException;
    move-object v0, v7

    .line 2247
    goto :goto_0
.end method

.method public static getSystemPowerOFFAlarmType(Landroid/content/Context;)I
    .locals 7
    .param p0, "mCtx"    # Landroid/content/Context;

    .prologue
    .line 1756
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1757
    .local v0, "am":Landroid/app/AlarmManager;
    const/4 v3, 0x4

    .line 1759
    .local v3, "type":I
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "RTC_POWEROFF_WAKEUP"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1760
    .local v2, "fs":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .line 1761
    const-string v4, "Alarms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSystemPowerOFFAlarm  = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1765
    .end local v2    # "fs":Ljava/lang/reflect/Field;
    :goto_0
    return v3

    .line 1762
    :catch_0
    move-exception v1

    .line 1763
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static hasAlarmBeenSnoozed(Landroid/content/SharedPreferences;I)Z
    .locals 3
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "alarmId"    # I

    .prologue
    .line 958
    const-string v1, "snooze_ids"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 961
    .local v0, "snoozedIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static hasSameTime(Landroid/content/ContentResolver;Lcn/nubia/deskclock/model/Alarm;)Z
    .locals 10
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "mAlarm"    # Lcn/nubia/deskclock/model/Alarm;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 1796
    sget-object v1, Lcn/nubia/deskclock/model/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v2, v3

    const-string v5, "hour"

    aput-object v5, v2, v0

    const/4 v5, 0x2

    const-string v9, "minutes"

    aput-object v9, v2, v5

    const/4 v5, 0x3

    const-string v9, "daysofweek"

    aput-object v9, v2, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id != "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v9, p1, Lcn/nubia/deskclock/model/Alarm;->id:I

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " and hour = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v9, p1, Lcn/nubia/deskclock/model/Alarm;->hour:I

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " and minutes = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v9, p1, Lcn/nubia/deskclock/model/Alarm;->minutes:I

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " and daysofweek = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v9, p1, Lcn/nubia/deskclock/model/Alarm;->daysOfWeek:Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    .line 1800
    invoke-virtual {v9}, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->getCoded()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " and  holidayalarm = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v9, p1, Lcn/nubia/deskclock/model/Alarm;->isHolidayAlarm:Z

    if-ne v9, v0, :cond_2

    :goto_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    .line 1796
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1802
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 1803
    .local v8, "isSameTime":Z
    const-string v0, "Alarms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursor.getCount()  ==  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    if-eqz v6, :cond_1

    .line 1806
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    .line 1807
    const/4 v8, 0x1

    .line 1812
    :cond_0
    if-eqz v6, :cond_1

    .line 1813
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1818
    :cond_1
    :goto_1
    return v8

    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "isSameTime":Z
    :cond_2
    move v0, v3

    .line 1800
    goto :goto_0

    .line 1809
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "isSameTime":Z
    :catch_0
    move-exception v7

    .line 1810
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1812
    if-eqz v6, :cond_1

    .line 1813
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1812
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 1813
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1815
    :cond_3
    throw v0
.end method

.method public static ifHaveThisAlarm(Landroid/content/Context;I)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    const/4 v5, 0x1

    .line 463
    :try_start_0
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v1

    .line 464
    .local v1, "applicationContext":Lcn/nubia/deskclock/DeskClockApplication;
    if-nez v1, :cond_0

    .line 465
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .end local v1    # "applicationContext":Lcn/nubia/deskclock/DeskClockApplication;
    check-cast v1, Lcn/nubia/deskclock/DeskClockApplication;

    .line 467
    .restart local v1    # "applicationContext":Lcn/nubia/deskclock/DeskClockApplication;
    :cond_0
    invoke-virtual {v1}, Lcn/nubia/deskclock/DeskClockApplication;->getAlarmsPrefereceSharedPref()Landroid/content/SharedPreferences;

    move-result-object v4

    .line 468
    .local v4, "prefs":Landroid/content/SharedPreferences;
    invoke-static {v4, p1}, Lcn/nubia/deskclock/model/Alarms;->hasAlarmBeenSnoozed(Landroid/content/SharedPreferences;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 490
    .end local v1    # "applicationContext":Lcn/nubia/deskclock/DeskClockApplication;
    .end local v4    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return v5

    .line 471
    .restart local v1    # "applicationContext":Lcn/nubia/deskclock/DeskClockApplication;
    .restart local v4    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6}, Lcn/nubia/deskclock/model/Alarms;->getFilteredEnableAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 472
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_3

    .line 474
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 476
    :cond_2
    new-instance v0, Lcn/nubia/deskclock/model/Alarm;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-direct {v0, v2, v6}, Lcn/nubia/deskclock/model/Alarm;-><init>(Landroid/database/Cursor;Landroid/content/ContentResolver;)V

    .line 477
    .local v0, "a":Lcn/nubia/deskclock/model/Alarm;
    iget v6, v0, Lcn/nubia/deskclock/model/Alarm;->id:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v6, p1, :cond_4

    .line 483
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 487
    .end local v0    # "a":Lcn/nubia/deskclock/model/Alarm;
    .end local v1    # "applicationContext":Lcn/nubia/deskclock/DeskClockApplication;
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v4    # "prefs":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v3

    .line 488
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 490
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 480
    .restart local v0    # "a":Lcn/nubia/deskclock/model/Alarm;
    .restart local v1    # "applicationContext":Lcn/nubia/deskclock/DeskClockApplication;
    .restart local v2    # "cursor":Landroid/database/Cursor;
    .restart local v4    # "prefs":Landroid/content/SharedPreferences;
    :cond_4
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v6

    if-nez v6, :cond_2

    .line 483
    .end local v0    # "a":Lcn/nubia/deskclock/model/Alarm;
    :cond_5
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 484
    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method private static declared-synchronized saveAlarmRingtone(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarm"    # Lcn/nubia/deskclock/model/Alarm;

    .prologue
    .line 2128
    const-class v4, Lcn/nubia/deskclock/model/Alarms;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/deskclock/DeskClockApplication;->getAlarmRingtoneSharedPref()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2129
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    iget-object v3, p1, Lcn/nubia/deskclock/model/Alarm;->alert:Landroid/net/Uri;

    invoke-static {p0, v3}, Lcn/nubia/deskclock/util/Utils;->getRingtonePatch(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 2130
    .local v0, "path":Ljava/lang/String;
    const-string v3, "Alarms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addAlarm: path : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2131
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 2137
    :goto_0
    monitor-exit v4

    return-void

    .line 2134
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v3}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/nubia/deskclock/util/Utils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2135
    .local v1, "path1":Ljava/lang/String;
    const-string v3, "Alarms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addAlarm: path1 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2136
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "alarm_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcn/nubia/deskclock/model/Alarm;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2128
    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "path1":Ljava/lang/String;
    .end local v2    # "sharedPreferences":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private static declared-synchronized saveCurrentAlarmToSharedPre(Landroid/content/Context;IJ)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "alarmid"    # I
    .param p2, "time"    # J

    .prologue
    .line 1229
    const-class v2, Lcn/nubia/deskclock/model/Alarms;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/deskclock/DeskClockApplication;->getDefaultSharedPref()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1230
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "current_alarm"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1231
    const-string v1, "current_time"

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1232
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1233
    monitor-exit v2

    return-void

    .line 1229
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized saveSnoozeAlert(Landroid/content/Context;IJ)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "time"    # J

    .prologue
    .line 888
    const-class v4, Lcn/nubia/deskclock/model/Alarms;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/deskclock/DeskClockApplication;->getAlarmsPrefereceSharedPref()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 889
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    .line 890
    invoke-static {p0, v1}, Lcn/nubia/deskclock/model/Alarms;->clearAllSnoozePreferences(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 900
    :goto_0
    monitor-exit v4

    return-void

    .line 892
    :cond_0
    :try_start_1
    const-string v3, "snooze_ids"

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 894
    .local v2, "snoozedIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 895
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 896
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v3, "snooze_ids"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 897
    invoke-static {p1}, Lcn/nubia/deskclock/model/Alarms;->getAlarmPrefSnoozeTimeKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 898
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 888
    .end local v0    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    .end local v2    # "snoozedIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private static sendImplicitBroadcast(Landroid/content/Context;Landroid/content/Intent;J)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "time"    # J

    .prologue
    .line 835
    const-string v5, "Alarms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendImplicitBroadcast="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 837
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 838
    .local v2, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 839
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    const-string v6, "com.qualcomm.qti.poweroffalarm"

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 840
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 841
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 842
    .local v1, "explicit":Landroid/content/Intent;
    const/high16 v6, 0x10000000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 843
    const-string v6, "time"

    const-wide/32 v8, 0xea60

    add-long/2addr v8, p2

    invoke-virtual {v1, v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 844
    const-string v6, "alarm"

    const-string v7, "cn.nubia.deskclock.preset"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 845
    new-instance v0, Landroid/content/ComponentName;

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 849
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 852
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "explicit":Landroid/content/Intent;
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    return-void
.end method

.method public static setAlarm(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)J
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarm"    # Lcn/nubia/deskclock/model/Alarm;

    .prologue
    const/4 v10, 0x0

    .line 387
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {p0, p1, v6}, Lcn/nubia/deskclock/model/Alarms;->createContentValues(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;Landroid/content/ContentResolver;)Landroid/content/ContentValues;

    move-result-object v1

    .line 388
    .local v1, "values":Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 389
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v6, Lcn/nubia/deskclock/model/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    iget v7, p1, Lcn/nubia/deskclock/model/Alarm;->id:I

    int-to-long v8, v7

    .line 390
    invoke-static {v6, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v0, v6, v1, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    int-to-long v2, v6

    .line 392
    .local v2, "rowsUpdated":J
    const-wide/16 v6, 0x1

    cmp-long v6, v2, v6

    if-gez v6, :cond_0

    .line 393
    const-string v6, "Alarms"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error updating alarm "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    .end local v2    # "rowsUpdated":J
    :goto_0
    return-wide v2

    .line 397
    .restart local v2    # "rowsUpdated":J
    :cond_0
    invoke-static {p0, p1}, Lcn/nubia/deskclock/model/Alarms;->calculateAlarm(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)J

    move-result-wide v4

    .line 399
    .local v4, "timeInMillis":J
    iget-boolean v6, p1, Lcn/nubia/deskclock/model/Alarm;->enabled:Z

    if-eqz v6, :cond_1

    .line 404
    iget v6, p1, Lcn/nubia/deskclock/model/Alarm;->id:I

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Lcn/nubia/deskclock/model/Alarms;->disableSnoozeAlert(Landroid/content/Context;IZ)V

    .line 406
    :cond_1
    invoke-static {p0, p1}, Lcn/nubia/deskclock/model/Alarms;->saveAlarmRingtone(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)V

    .line 407
    invoke-static {p0}, Lcn/nubia/deskclock/model/Alarms;->setNextAlert(Landroid/content/Context;)V

    move-wide v2, v4

    .line 409
    goto :goto_0
.end method

.method private static setAlarmDataForLauncherIcon(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;Landroid/content/SharedPreferences;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarm"    # Lcn/nubia/deskclock/model/Alarm;
    .param p2, "preferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 687
    if-eqz p1, :cond_1

    .line 688
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "next_alarm_without_snooze"

    iget-wide v6, p1, Lcn/nubia/deskclock/model/Alarm;->time:J

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 689
    const-string v3, "Alarms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAlarmDataForLauncherIcon alarm="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcn/nubia/deskclock/model/Alarm;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    :goto_0
    const/4 v0, 0x0

    .line 696
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v3, "cn.nubia.deskclock.DeskClock"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 700
    :goto_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 701
    .local v2, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 702
    const-string v3, "className"

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    const-string v3, "packageName"

    const-string v4, "cn.nubia.deskclock.preset"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    :cond_0
    if-eqz p1, :cond_2

    .line 707
    const-string v3, "flagMsg"

    iget-wide v4, p1, Lcn/nubia/deskclock/model/Alarm;->time:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const-string v3, "end"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 714
    :goto_2
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcn/nubia/deskclock/model/Alarms;->FANCY_ICON_URI:Landroid/net/Uri;

    const-string v5, "fancyIcon"

    const-string v6, "effect_app_remind"

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 719
    :goto_3
    return-void

    .line 691
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_1
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "next_alarm_without_snooze"

    const-wide/16 v6, 0x0

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 692
    const-string v3, "Alarms"

    const-string v4, "getAlarmDataForLauncherIcon alarm=null"

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 697
    .restart local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 698
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 710
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v2    # "extras":Landroid/os/Bundle;
    :cond_2
    const-string v3, "end"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 711
    const-string v3, "flagMsg"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 716
    :catch_1
    move-exception v1

    .line 717
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public static declared-synchronized setNextAlert(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 674
    const-class v3, Lcn/nubia/deskclock/model/Alarms;

    monitor-enter v3

    :try_start_0
    invoke-static {p0}, Lcn/nubia/deskclock/model/Alarms;->calculateNextAlert(Landroid/content/Context;)Lcn/nubia/deskclock/model/Alarm;

    move-result-object v0

    .line 675
    .local v0, "alarm":Lcn/nubia/deskclock/model/Alarm;
    const-string v2, "Alarms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setNextAlert : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    if-eqz v0, :cond_0

    .line 677
    iget-wide v4, v0, Lcn/nubia/deskclock/model/Alarm;->time:J

    invoke-static {p0, v0, v4, v5}, Lcn/nubia/deskclock/model/Alarms;->enableAlert(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;J)V

    .line 681
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.nubia.deskclock.NEXT_ALARM_TIME_SET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 682
    .local v1, "i":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    monitor-exit v3

    return-void

    .line 679
    .end local v1    # "i":Landroid/content/Intent;
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcn/nubia/deskclock/model/Alarms;->disableAlert(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 674
    .end local v0    # "alarm":Lcn/nubia/deskclock/model/Alarm;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static setPowerOffAlarmClock(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;Landroid/app/PendingIntent;)V
    .locals 9
    .param p0, "mCtx"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p2, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 1769
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1770
    .local v0, "am":Landroid/app/AlarmManager;
    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1771
    .local v2, "sdk":I
    const/16 v4, 0x17

    if-ge v2, v4, :cond_0

    .line 1772
    const-string v4, "Alarms"

    const-string v5, " QCOM 5.1 PowerOffAlarm"

    invoke-static {v4, v5}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1773
    invoke-static {p0}, Lcn/nubia/deskclock/model/Alarms;->getSystemPowerOFFAlarmType(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v6

    invoke-virtual {v0, v4, v6, v7, p2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 1787
    :goto_0
    return-void

    .line 1775
    :cond_0
    const-string v4, "Alarms"

    const-string v5, " QCOM 6.0 PowerOffAlarm"

    invoke-static {v4, v5}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1777
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "setPowerOffAlarmClock"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/app/AlarmManager$AlarmClockInfo;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Landroid/app/PendingIntent;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1779
    .local v3, "setMethod":Ljava/lang/reflect/Method;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1780
    .end local v3    # "setMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 1781
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1782
    new-instance v4, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v6

    invoke-direct {v4, v6, v7, p2}, Landroid/app/AlarmManager$AlarmClockInfo;-><init>(JLandroid/app/PendingIntent;)V

    invoke-virtual {v0, v4, p2}, Landroid/app/AlarmManager;->setAlarmClock(Landroid/app/AlarmManager$AlarmClockInfo;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private static declared-synchronized setPowerOffAlarmClockAboveSdk26(Landroid/content/Context;Landroid/app/AlarmManager;JLandroid/app/PendingIntent;)V
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "am"    # Landroid/app/AlarmManager;
    .param p2, "atTimeInMillis"    # J
    .param p4, "sender"    # Landroid/app/PendingIntent;

    .prologue
    .line 809
    const-class v13, Lcn/nubia/deskclock/model/Alarms;

    monitor-enter v13

    :try_start_0
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v12

    invoke-virtual {v12}, Lcn/nubia/deskclock/DeskClockApplication;->getAlarmsPrefereceSharedPref()Landroid/content/SharedPreferences;

    move-result-object v9

    .line 810
    .local v9, "preferences":Landroid/content/SharedPreferences;
    const-string v12, "next_alarm_time"

    const-wide/16 v14, 0x0

    invoke-interface {v9, v12, v14, v15}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 811
    .local v10, "preferencesTime":J
    const-wide/16 v14, 0x0

    cmp-long v12, v10, v14

    if-eqz v12, :cond_0

    cmp-long v12, v10, p2

    if-eqz v12, :cond_0

    .line 812
    new-instance v4, Landroid/content/Intent;

    const-string v12, "org.codeaurora.poweroffalarm.action.CANCEL_ALARM"

    invoke-direct {v4, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 813
    .local v4, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-static {v0, v4, v10, v11}, Lcn/nubia/deskclock/model/Alarms;->sendImplicitBroadcast(Landroid/content/Context;Landroid/content/Intent;J)V

    .line 815
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-static/range {p0 .. p0}, Lcn/nubia/deskclock/model/Alarms;->calculateNextPowerOffAlarmAlert(Landroid/content/Context;)Lcn/nubia/deskclock/model/Alarm;

    move-result-object v5

    .line 816
    .local v5, "powerOffAlarm":Lcn/nubia/deskclock/model/Alarm;
    if-eqz v5, :cond_1

    .line 817
    iget-wide v6, v5, Lcn/nubia/deskclock/model/Alarm;->time:J

    .line 818
    .local v6, "nextPowerOffAlarmTime":J
    const-string v12, "Alarms"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "setPowerOffAlarmClockAboveSdk26: nextPowerOffAlarmTime : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    const-string v14, "next_alarm_time"

    invoke-interface {v12, v14, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 820
    new-instance v8, Landroid/content/Intent;

    const-string v12, "org.codeaurora.poweroffalarm.action.SET_ALARM"

    invoke-direct {v8, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 821
    .local v8, "powerOffAlarmIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-static {v0, v8, v6, v7}, Lcn/nubia/deskclock/model/Alarms;->sendImplicitBroadcast(Landroid/content/Context;Landroid/content/Intent;J)V

    .line 824
    .end local v6    # "nextPowerOffAlarmTime":J
    .end local v8    # "powerOffAlarmIntent":Landroid/content/Intent;
    :cond_1
    new-instance v12, Landroid/app/AlarmManager$AlarmClockInfo;

    move-wide/from16 v0, p2

    move-object/from16 v2, p4

    invoke-direct {v12, v0, v1, v2}, Landroid/app/AlarmManager$AlarmClockInfo;-><init>(JLandroid/app/PendingIntent;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v12, v1}, Landroid/app/AlarmManager;->setAlarmClock(Landroid/app/AlarmManager$AlarmClockInfo;Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 825
    monitor-exit v13

    return-void

    .line 809
    .end local v5    # "powerOffAlarm":Lcn/nubia/deskclock/model/Alarm;
    .end local v9    # "preferences":Landroid/content/SharedPreferences;
    .end local v10    # "preferencesTime":J
    :catchall_0
    move-exception v12

    monitor-exit v13

    throw v12
.end method

.method private static setStatusBarIcon(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    .line 997
    const-string v1, "Alarms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setStatusBarIcon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ALARM_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 999
    .local v0, "alarmChanged":Landroid/content/Intent;
    const-string v1, "alarmSet"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1000
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1001
    return-void
.end method

.method public static showAlarmNotiWhenGameRunning(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)Landroid/app/Notification;
    .locals 30
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarm"    # Lcn/nubia/deskclock/model/Alarm;

    .prologue
    .line 2003
    const-string v25, "Alarms"

    const-string v26, "showAlarmNotiWhenGameRunning: "

    invoke-static/range {v25 .. v26}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2004
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/model/Alarm;->getLabelOrDefault(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 2006
    .local v10, "label":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 2007
    .local v6, "canlendar":Ljava/util/Calendar;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0d002a

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ":"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 2008
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcn/nubia/deskclock/model/Alarms;->formatTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/model/Alarm;->getLabelOrDefault(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 2009
    .local v24, "tickerText":Ljava/lang/String;
    new-instance v14, Landroid/content/Intent;

    const-class v25, Lcn/nubia/deskclock/DeskClock;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v14, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2010
    .local v14, "notify":Landroid/content/Intent;
    const-string v25, "deskclock.select.tab"

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2013
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcn/nubia/deskclock/DeskClockApplication;->getDefaultSharedPref()Landroid/content/SharedPreferences;

    move-result-object v17

    .line 2014
    .local v17, "sharedPref":Landroid/content/SharedPreferences;
    const-string v25, "snoozeTime"

    const/16 v26, 0xa

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 2015
    .local v21, "snoozeMinutes":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    const v25, 0xea60

    mul-int v25, v25, v21

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v22, v26, v28

    .line 2016
    .local v22, "snoozeTime":J
    move-object/from16 v0, p1

    iget v0, v0, Lcn/nubia/deskclock/model/Alarm;->id:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/deskclock/model/Alarms;->saveSnoozeAlert(Landroid/content/Context;IJ)V

    .line 2017
    const-string v25, "snoozeMaxCount"

    const/16 v26, 0x12c

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    .line 2018
    .local v20, "snoozeMaxCount":I
    const-string v25, "isSnooze"

    const/16 v26, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 2020
    .local v9, "isSnooze":Z
    invoke-static/range {p0 .. p0}, Lcn/nubia/deskclock/model/Alarms;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v12

    .line 2022
    .local v12, "nm":Landroid/app/NotificationManager;
    new-instance v19, Landroid/content/Intent;

    const-string v25, "com.nubia.deskclock.ALARM_SNOOZE"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2023
    .local v19, "snoozeIntent":Landroid/content/Intent;
    const-string v25, "intent.extra.alarm"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2024
    const-string v25, "alarm_game_mode_snooze"

    const/16 v26, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2025
    move-object/from16 v0, p1

    iget v0, v0, Lcn/nubia/deskclock/model/Alarm;->id:I

    move/from16 v25, v0

    const/high16 v26, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v19

    move/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 2029
    .local v16, "pendingSnooze":Landroid/app/PendingIntent;
    new-instance v8, Landroid/content/Intent;

    const-string v25, "com.nubia.deskclock.ALARM_DISMISS"

    move-object/from16 v0, v25

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2030
    .local v8, "dismissIntent":Landroid/content/Intent;
    const-string v25, "intent.extra.alarm"

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2031
    const-string v25, "alarm_game_mode_dismiss"

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2032
    move-object/from16 v0, p1

    iget v0, v0, Lcn/nubia/deskclock/model/Alarm;->id:I

    move/from16 v25, v0

    const/high16 v26, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 2035
    .local v15, "pendingDismiss":Landroid/app/PendingIntent;
    new-instance v25, Landroid/app/Notification$Builder;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v26, 0x7f02005b

    .line 2036
    invoke-virtual/range {v25 .. v26}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v25

    .line 2037
    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v25

    const v26, 0x7f0d001e

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x5

    .line 2038
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v25

    const/16 v26, 0x1

    .line 2039
    invoke-virtual/range {v25 .. v26}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v25

    const/16 v26, -0x1

    invoke-virtual/range {v25 .. v26}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v25

    const/16 v26, 0x2

    .line 2040
    invoke-virtual/range {v25 .. v26}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v25

    const/16 v26, 0x457

    const/high16 v27, 0x8000000

    .line 2041
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v14, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v13

    .line 2043
    .local v13, "notification":Landroid/app/Notification$Builder;
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreO()Z

    move-result v25

    if-nez v25, :cond_0

    .line 2044
    new-instance v11, Landroid/app/NotificationChannel;

    const-string v25, "11111"

    const-string v26, "alarm_game_ticker"

    const/16 v27, 0x4

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v11, v0, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 2045
    .local v11, "mNotificationChannel":Landroid/app/NotificationChannel;
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v11, v0, v1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 2046
    const/16 v25, 0x4

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 2047
    invoke-virtual {v12, v11}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 2048
    const-string v25, "11111"

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 2049
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 2050
    .local v5, "bundle":Landroid/os/Bundle;
    new-instance v25, Landroid/app/Notification$Action$Builder;

    const/16 v26, 0x0

    const v27, 0x7f0d00cd

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual/range {v25 .. v25}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v18

    .line 2051
    .local v18, "snoozeAction":Landroid/app/Notification$Action;
    new-instance v25, Landroid/app/Notification$Action$Builder;

    const/16 v26, 0x0

    const v27, 0x7f0d0020

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2, v15}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual/range {v25 .. v25}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v7

    .line 2052
    .local v7, "dismissAction":Landroid/app/Notification$Action;
    const/4 v4, 0x0

    .line 2053
    .local v4, "actionArr":[Landroid/app/Notification$Action;
    if-eqz v9, :cond_1

    move-object/from16 v0, p1

    iget v0, v0, Lcn/nubia/deskclock/model/Alarm;->snoozeCount:I

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 2054
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v4, v0, [Landroid/app/Notification$Action;

    .end local v4    # "actionArr":[Landroid/app/Notification$Action;
    const/16 v25, 0x0

    aput-object v18, v4, v25

    const/16 v25, 0x1

    aput-object v7, v4, v25

    .line 2058
    .restart local v4    # "actionArr":[Landroid/app/Notification$Action;
    :goto_0
    const-string v25, "ticker_action"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 2060
    invoke-virtual {v13, v5}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 2063
    .end local v4    # "actionArr":[Landroid/app/Notification$Action;
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v7    # "dismissAction":Landroid/app/Notification$Action;
    .end local v11    # "mNotificationChannel":Landroid/app/NotificationChannel;
    .end local v18    # "snoozeAction":Landroid/app/Notification$Action;
    :cond_0
    invoke-virtual {v13}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v25

    return-object v25

    .line 2056
    .restart local v4    # "actionArr":[Landroid/app/Notification$Action;
    .restart local v5    # "bundle":Landroid/os/Bundle;
    .restart local v7    # "dismissAction":Landroid/app/Notification$Action;
    .restart local v11    # "mNotificationChannel":Landroid/app/NotificationChannel;
    .restart local v18    # "snoozeAction":Landroid/app/Notification$Action;
    :cond_1
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v4, v0, [Landroid/app/Notification$Action;

    .end local v4    # "actionArr":[Landroid/app/Notification$Action;
    const/16 v25, 0x0

    aput-object v7, v4, v25

    .restart local v4    # "actionArr":[Landroid/app/Notification$Action;
    goto :goto_0
.end method

.method public static showAlarmNotification(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;Z)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarm"    # Lcn/nubia/deskclock/model/Alarm;
    .param p2, "needCancel"    # Z

    .prologue
    .line 1405
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/model/Alarm;->getLabelOrDefault(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 1407
    .local v4, "label":Ljava/lang/String;
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/deskclock/DeskClockApplication;->getDefaultSharedPref()Landroid/content/SharedPreferences;

    move-result-object v10

    .line 1408
    .local v10, "sharedPref":Landroid/content/SharedPreferences;
    const-string v2, "snoozeMaxCount"

    const/16 v3, 0x12c

    invoke-interface {v10, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 1409
    .local v6, "snoozeMaxCount":I
    const-string v2, "isSnooze"

    const/4 v3, 0x1

    invoke-interface {v10, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 1411
    .local v7, "isSnooze":Z
    const-string v2, "snoozeTime"

    const/16 v3, 0xa

    invoke-interface {v10, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 1412
    .local v11, "snoozeMinutes":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const v8, 0xea60

    mul-int/2addr v8, v11

    int-to-long v0, v8

    move-wide/from16 v16, v0

    add-long v12, v2, v16

    .line 1413
    .local v12, "snoozeTime":J
    move-object/from16 v0, p1

    iget v2, v0, Lcn/nubia/deskclock/model/Alarm;->id:I

    move-object/from16 v0, p0

    invoke-static {v0, v2, v12, v13}, Lcn/nubia/deskclock/model/Alarms;->saveSnoozeAlert(Landroid/content/Context;IJ)V

    .line 1414
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 1415
    .local v9, "c":Ljava/util/Calendar;
    invoke-virtual {v9, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1416
    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcn/nubia/deskclock/model/Alarms;->formatTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v14

    .line 1418
    .local v14, "snoozeTimeStr":Ljava/lang/String;
    const-string v5, ""

    .line 1426
    .local v5, "snoozeTimeAll":Ljava/lang/String;
    const-string v2, "Alarms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " [showAlarmNotification]  isSnooze : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "  ;; snoozeMaxCount : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "  ;; snoozeMinutes : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v8, p2

    .line 1427
    invoke-static/range {v2 .. v8}, Lcn/nubia/deskclock/model/Alarms;->showAlarmNotificationHeadsUp(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 1428
    return-void
.end method

.method public static showAlarmNotificationByService(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;Z)Landroid/app/Notification;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarm"    # Lcn/nubia/deskclock/model/Alarm;
    .param p2, "needCancel"    # Z

    .prologue
    .line 1431
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/model/Alarm;->getLabelOrDefault(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 1433
    .local v4, "label":Ljava/lang/String;
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/deskclock/DeskClockApplication;->getDefaultSharedPref()Landroid/content/SharedPreferences;

    move-result-object v10

    .line 1434
    .local v10, "sharedPref":Landroid/content/SharedPreferences;
    const-string v2, "snoozeMaxCount"

    const/16 v3, 0x12c

    invoke-interface {v10, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 1435
    .local v6, "snoozeMaxCount":I
    const-string v2, "isSnooze"

    const/4 v3, 0x1

    invoke-interface {v10, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 1437
    .local v7, "isSnooze":Z
    const-string v2, "snoozeTime"

    const/16 v3, 0xa

    invoke-interface {v10, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 1438
    .local v11, "snoozeMinutes":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const v8, 0xea60

    mul-int/2addr v8, v11

    int-to-long v0, v8

    move-wide/from16 v16, v0

    add-long v12, v2, v16

    .line 1439
    .local v12, "snoozeTime":J
    move-object/from16 v0, p1

    iget v2, v0, Lcn/nubia/deskclock/model/Alarm;->id:I

    move-object/from16 v0, p0

    invoke-static {v0, v2, v12, v13}, Lcn/nubia/deskclock/model/Alarms;->saveSnoozeAlert(Landroid/content/Context;IJ)V

    .line 1440
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 1441
    .local v9, "c":Ljava/util/Calendar;
    invoke-virtual {v9, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1442
    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcn/nubia/deskclock/model/Alarms;->formatTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v14

    .line 1444
    .local v14, "snoozeTimeStr":Ljava/lang/String;
    const-string v5, ""

    .line 1452
    .local v5, "snoozeTimeAll":Ljava/lang/String;
    const-string v2, "Alarms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " [showAlarmNotification]  isSnooze : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "  ;; snoozeMaxCount : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "  ;; snoozeMinutes : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v8, p2

    .line 1453
    invoke-static/range {v2 .. v8}, Lcn/nubia/deskclock/model/Alarms;->showAlarmNotificationHeadsUpByService(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;Ljava/lang/String;Ljava/lang/String;IZZ)Landroid/app/Notification;

    move-result-object v2

    return-object v2
.end method

.method private static showAlarmNotificationHeadsUp(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarm"    # Lcn/nubia/deskclock/model/Alarm;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "snoozeTimeAll"    # Ljava/lang/String;
    .param p4, "snoozeMaxCount"    # I
    .param p5, "isSnooze"    # Z
    .param p6, "needCancel"    # Z

    .prologue
    .line 1552
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 1553
    .local v13, "resources":Landroid/content/res/Resources;
    invoke-static/range {p0 .. p0}, Lcn/nubia/deskclock/model/Alarms;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v7

    .line 1554
    .local v7, "nm":Landroid/app/NotificationManager;
    new-instance v15, Landroid/content/Intent;

    const-string v16, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct/range {v15 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1555
    const/4 v3, 0x0

    .line 1556
    .local v3, "contentView":Landroid/widget/RemoteViews;
    new-instance v3, Landroid/widget/RemoteViews;

    .end local v3    # "contentView":Landroid/widget/RemoteViews;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const v16, 0x7f04001b

    move/from16 v0, v16

    invoke-direct {v3, v15, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1557
    .restart local v3    # "contentView":Landroid/widget/RemoteViews;
    const v15, 0x7f120078

    move-object/from16 v0, p2

    invoke-virtual {v3, v15, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1558
    const v15, 0x7f120079

    move-object/from16 v0, p3

    invoke-virtual {v3, v15, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1559
    const v15, 0x7f12007b

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1560
    const v15, 0x7f12007a

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1562
    new-instance v15, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1563
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v15

    const v16, 0x7f0d0043

    .line 1564
    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v15

    const/16 v16, 0x1

    .line 1565
    invoke-virtual/range {v15 .. v16}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v15

    const/16 v16, 0x4

    .line 1566
    invoke-virtual/range {v15 .. v16}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v15

    const-string v16, "alarm"

    .line 1567
    invoke-virtual/range {v15 .. v16}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 1569
    .local v8, "notification":Landroid/app/Notification$Builder;
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreN()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1570
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f020059

    invoke-static/range {v15 .. v16}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-virtual {v8, v15}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 1572
    const v15, 0x7f020059

    invoke-virtual {v8, v15}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1573
    invoke-virtual {v8, v3}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 1581
    :goto_0
    new-instance v14, Landroid/content/Intent;

    const-string v15, "com.nubia.deskclock.ALARM_SNOOZE"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1582
    .local v14, "snoozeIntent":Landroid/content/Intent;
    const-string v15, "intent.extra.alarm"

    move-object/from16 v0, p1

    invoke-virtual {v14, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1583
    move-object/from16 v0, p1

    iget v15, v0, Lcn/nubia/deskclock/model/Alarm;->id:I

    const/high16 v16, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v15, v14, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 1586
    .local v12, "pendingSnooze":Landroid/app/PendingIntent;
    new-instance v4, Landroid/content/Intent;

    const-string v15, "com.nubia.deskclock.ALARM_DISMISS"

    invoke-direct {v4, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1587
    .local v4, "dismissIntent":Landroid/content/Intent;
    const-string v15, "intent.extra.alarm"

    move-object/from16 v0, p1

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1588
    move-object/from16 v0, p1

    iget v15, v0, Lcn/nubia/deskclock/model/Alarm;->id:I

    const/high16 v16, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v15, v4, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 1591
    .local v10, "pendingDismiss":Landroid/app/PendingIntent;
    move-object/from16 v0, p1

    iget v15, v0, Lcn/nubia/deskclock/model/Alarm;->snoozeCount:I

    move/from16 v0, p4

    if-eq v15, v0, :cond_5

    if-eqz p5, :cond_5

    .line 1592
    const/4 v15, 0x0

    const v16, 0x7f0d00cd

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0, v12}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1593
    const-string v15, "30"

    invoke-virtual {v8, v15}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 1597
    :goto_1
    const/4 v15, 0x0

    const v16, 0x7f0d0020

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0, v10}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1599
    new-instance v9, Landroid/content/Intent;

    const-class v15, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1600
    .local v9, "notify":Landroid/content/Intent;
    const-string v15, "intent.extra.alarm"

    move-object/from16 v0, p1

    invoke-virtual {v9, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1601
    move-object/from16 v0, p1

    iget v15, v0, Lcn/nubia/deskclock/model/Alarm;->id:I

    const/high16 v16, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v15, v9, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 1603
    .local v11, "pendingMain":Landroid/app/PendingIntent;
    invoke-virtual {v8, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1604
    const v15, 0x7f12007a

    .line 1605
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0f007b

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v16

    .line 1604
    move/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 1606
    const v15, 0x7f12007a

    invoke-virtual {v3, v15, v12}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1608
    move-object/from16 v0, p1

    iget v15, v0, Lcn/nubia/deskclock/model/Alarm;->snoozeCount:I

    move/from16 v0, p4

    if-ne v15, v0, :cond_0

    .line 1609
    const v15, 0x7f12007a

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1611
    :cond_0
    const v15, 0x7f12007c

    invoke-virtual {v3, v15, v10}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1612
    const v15, 0x7f120077

    invoke-virtual {v3, v15, v11}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1616
    new-instance v5, Landroid/content/Intent;

    const-class v15, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1617
    .local v5, "fullScreenIntent":Landroid/content/Intent;
    const-string v15, "intent.extra.alarm"

    move-object/from16 v0, p1

    invoke-virtual {v5, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1619
    const-string v15, "fullscreen_activity"

    invoke-virtual {v5, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1620
    const/high16 v15, 0x10040000

    invoke-virtual {v5, v15}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1622
    move-object/from16 v0, p1

    iget v15, v0, Lcn/nubia/deskclock/model/Alarm;->id:I

    const/high16 v16, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v15, v5, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    .line 1624
    const/4 v15, 0x2

    invoke-virtual {v8, v15}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 1625
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x1a

    move/from16 v0, v16

    if-ge v15, v0, :cond_6

    .line 1626
    const-string v15, "Running"

    invoke-virtual {v8, v15}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 1627
    const-string v15, "D0"

    invoke-virtual {v8, v15}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 1633
    :goto_2
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreO()Z

    move-result v15

    if-nez v15, :cond_1

    .line 1634
    new-instance v6, Landroid/app/NotificationChannel;

    const-string v15, "alarmclock"

    const-string v16, "alarm_ticker"

    const/16 v17, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v6, v15, v0, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 1635
    .local v6, "mNotificationChannel":Landroid/app/NotificationChannel;
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 1636
    const/4 v15, 0x4

    invoke-virtual {v6, v15}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 1637
    invoke-virtual {v7, v6}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 1638
    const-string v15, "alarmclock"

    invoke-virtual {v8, v15}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 1640
    .end local v6    # "mNotificationChannel":Landroid/app/NotificationChannel;
    :cond_1
    if-eqz p6, :cond_2

    .line 1641
    move-object/from16 v0, p1

    iget v15, v0, Lcn/nubia/deskclock/model/Alarm;->id:I

    invoke-virtual {v7, v15}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1643
    :cond_2
    move-object/from16 v0, p1

    iget v15, v0, Lcn/nubia/deskclock/model/Alarm;->id:I

    invoke-virtual {v8}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1644
    return-void

    .line 1575
    .end local v4    # "dismissIntent":Landroid/content/Intent;
    .end local v5    # "fullScreenIntent":Landroid/content/Intent;
    .end local v9    # "notify":Landroid/content/Intent;
    .end local v10    # "pendingDismiss":Landroid/app/PendingIntent;
    .end local v11    # "pendingMain":Landroid/app/PendingIntent;
    .end local v12    # "pendingSnooze":Landroid/app/PendingIntent;
    .end local v14    # "snoozeIntent":Landroid/content/Intent;
    :cond_3
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreO()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 1576
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f020058

    invoke-static/range {v15 .. v16}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-virtual {v8, v15}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 1579
    :cond_4
    const v15, 0x7f020058

    invoke-virtual {v8, v15}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto/16 :goto_0

    .line 1595
    .restart local v4    # "dismissIntent":Landroid/content/Intent;
    .restart local v10    # "pendingDismiss":Landroid/app/PendingIntent;
    .restart local v12    # "pendingSnooze":Landroid/app/PendingIntent;
    .restart local v14    # "snoozeIntent":Landroid/content/Intent;
    :cond_5
    const-string v15, "20"

    invoke-virtual {v8, v15}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto/16 :goto_1

    .line 1629
    .restart local v5    # "fullScreenIntent":Landroid/content/Intent;
    .restart local v9    # "notify":Landroid/content/Intent;
    .restart local v11    # "pendingMain":Landroid/app/PendingIntent;
    :cond_6
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1630
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v15, "nubiaSort"

    const-string v16, "Running"

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1631
    invoke-virtual {v8, v2}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    goto :goto_2
.end method

.method private static showAlarmNotificationHeadsUpByService(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;Ljava/lang/String;Ljava/lang/String;IZZ)Landroid/app/Notification;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarm"    # Lcn/nubia/deskclock/model/Alarm;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "snoozeTimeAll"    # Ljava/lang/String;
    .param p4, "snoozeMaxCount"    # I
    .param p5, "isSnooze"    # Z
    .param p6, "needCancel"    # Z

    .prologue
    .line 1457
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 1458
    .local v13, "resources":Landroid/content/res/Resources;
    invoke-static/range {p0 .. p0}, Lcn/nubia/deskclock/model/Alarms;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v7

    .line 1459
    .local v7, "nm":Landroid/app/NotificationManager;
    new-instance v15, Landroid/content/Intent;

    const-string v16, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct/range {v15 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1460
    const/4 v3, 0x0

    .line 1461
    .local v3, "contentView":Landroid/widget/RemoteViews;
    new-instance v3, Landroid/widget/RemoteViews;

    .end local v3    # "contentView":Landroid/widget/RemoteViews;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const v16, 0x7f04001b

    move/from16 v0, v16

    invoke-direct {v3, v15, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1462
    .restart local v3    # "contentView":Landroid/widget/RemoteViews;
    const v15, 0x7f120078

    move-object/from16 v0, p2

    invoke-virtual {v3, v15, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1463
    const v15, 0x7f120079

    move-object/from16 v0, p3

    invoke-virtual {v3, v15, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1464
    const v15, 0x7f12007b

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1465
    const v15, 0x7f12007a

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1467
    new-instance v15, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1468
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v15

    const v16, 0x7f0d0043

    .line 1469
    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v15

    const/16 v16, 0x1

    .line 1470
    invoke-virtual/range {v15 .. v16}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v15

    const/16 v16, 0x4

    .line 1471
    invoke-virtual/range {v15 .. v16}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v15

    const-string v16, "alarm"

    .line 1472
    invoke-virtual/range {v15 .. v16}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 1474
    .local v8, "notification":Landroid/app/Notification$Builder;
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreN()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1475
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f020059

    invoke-static/range {v15 .. v16}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-virtual {v8, v15}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 1477
    const v15, 0x7f020059

    invoke-virtual {v8, v15}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1478
    invoke-virtual {v8, v3}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 1486
    :goto_0
    new-instance v14, Landroid/content/Intent;

    const-string v15, "com.nubia.deskclock.ALARM_SNOOZE"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1487
    .local v14, "snoozeIntent":Landroid/content/Intent;
    const-string v15, "intent.extra.alarm"

    move-object/from16 v0, p1

    invoke-virtual {v14, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1488
    move-object/from16 v0, p1

    iget v15, v0, Lcn/nubia/deskclock/model/Alarm;->id:I

    const/high16 v16, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v15, v14, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 1491
    .local v12, "pendingSnooze":Landroid/app/PendingIntent;
    new-instance v4, Landroid/content/Intent;

    const-string v15, "com.nubia.deskclock.ALARM_DISMISS"

    invoke-direct {v4, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1492
    .local v4, "dismissIntent":Landroid/content/Intent;
    const-string v15, "intent.extra.alarm"

    move-object/from16 v0, p1

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1493
    move-object/from16 v0, p1

    iget v15, v0, Lcn/nubia/deskclock/model/Alarm;->id:I

    const/high16 v16, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v15, v4, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 1496
    .local v10, "pendingDismiss":Landroid/app/PendingIntent;
    move-object/from16 v0, p1

    iget v15, v0, Lcn/nubia/deskclock/model/Alarm;->snoozeCount:I

    move/from16 v0, p4

    if-eq v15, v0, :cond_5

    if-eqz p5, :cond_5

    .line 1497
    const/4 v15, 0x0

    const v16, 0x7f0d00cd

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0, v12}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1498
    const-string v15, "30"

    invoke-virtual {v8, v15}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 1502
    :goto_1
    const/4 v15, 0x0

    const v16, 0x7f0d0020

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0, v10}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1504
    new-instance v9, Landroid/content/Intent;

    const-class v15, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1505
    .local v9, "notify":Landroid/content/Intent;
    const-string v15, "intent.extra.alarm"

    move-object/from16 v0, p1

    invoke-virtual {v9, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1506
    move-object/from16 v0, p1

    iget v15, v0, Lcn/nubia/deskclock/model/Alarm;->id:I

    const/high16 v16, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v15, v9, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 1508
    .local v11, "pendingMain":Landroid/app/PendingIntent;
    invoke-virtual {v8, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1509
    const v15, 0x7f12007a

    .line 1510
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0f007b

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v16

    .line 1509
    move/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 1511
    const v15, 0x7f12007a

    invoke-virtual {v3, v15, v12}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1513
    move-object/from16 v0, p1

    iget v15, v0, Lcn/nubia/deskclock/model/Alarm;->snoozeCount:I

    move/from16 v0, p4

    if-ne v15, v0, :cond_0

    .line 1514
    const v15, 0x7f12007a

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1516
    :cond_0
    const v15, 0x7f12007c

    invoke-virtual {v3, v15, v10}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1517
    const v15, 0x7f120077

    invoke-virtual {v3, v15, v11}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1521
    new-instance v5, Landroid/content/Intent;

    const-class v15, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1522
    .local v5, "fullScreenIntent":Landroid/content/Intent;
    const-string v15, "intent.extra.alarm"

    move-object/from16 v0, p1

    invoke-virtual {v5, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1524
    const-string v15, "fullscreen_activity"

    invoke-virtual {v5, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1525
    const/high16 v15, 0x10040000

    invoke-virtual {v5, v15}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1527
    move-object/from16 v0, p1

    iget v15, v0, Lcn/nubia/deskclock/model/Alarm;->id:I

    const/high16 v16, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v15, v5, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    .line 1529
    const/4 v15, 0x2

    invoke-virtual {v8, v15}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 1530
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x1a

    move/from16 v0, v16

    if-ge v15, v0, :cond_6

    .line 1531
    const-string v15, "Running"

    invoke-virtual {v8, v15}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 1532
    const-string v15, "D0"

    invoke-virtual {v8, v15}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 1538
    :goto_2
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreO()Z

    move-result v15

    if-nez v15, :cond_1

    .line 1539
    new-instance v6, Landroid/app/NotificationChannel;

    const-string v15, "alarmclock"

    const-string v16, "alarm_ticker"

    const/16 v17, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v6, v15, v0, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 1540
    .local v6, "mNotificationChannel":Landroid/app/NotificationChannel;
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 1541
    const/4 v15, 0x4

    invoke-virtual {v6, v15}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 1542
    invoke-virtual {v7, v6}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 1543
    const-string v15, "alarmclock"

    invoke-virtual {v8, v15}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 1545
    .end local v6    # "mNotificationChannel":Landroid/app/NotificationChannel;
    :cond_1
    if-eqz p6, :cond_2

    .line 1546
    move-object/from16 v0, p1

    iget v15, v0, Lcn/nubia/deskclock/model/Alarm;->id:I

    invoke-virtual {v7, v15}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1548
    :cond_2
    invoke-virtual {v8}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v15

    return-object v15

    .line 1480
    .end local v4    # "dismissIntent":Landroid/content/Intent;
    .end local v5    # "fullScreenIntent":Landroid/content/Intent;
    .end local v9    # "notify":Landroid/content/Intent;
    .end local v10    # "pendingDismiss":Landroid/app/PendingIntent;
    .end local v11    # "pendingMain":Landroid/app/PendingIntent;
    .end local v12    # "pendingSnooze":Landroid/app/PendingIntent;
    .end local v14    # "snoozeIntent":Landroid/content/Intent;
    :cond_3
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreO()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 1481
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f020058

    invoke-static/range {v15 .. v16}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-virtual {v8, v15}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 1484
    :cond_4
    const v15, 0x7f020058

    invoke-virtual {v8, v15}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto/16 :goto_0

    .line 1500
    .restart local v4    # "dismissIntent":Landroid/content/Intent;
    .restart local v10    # "pendingDismiss":Landroid/app/PendingIntent;
    .restart local v12    # "pendingSnooze":Landroid/app/PendingIntent;
    .restart local v14    # "snoozeIntent":Landroid/content/Intent;
    :cond_5
    const-string v15, "20"

    invoke-virtual {v8, v15}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto/16 :goto_1

    .line 1534
    .restart local v5    # "fullScreenIntent":Landroid/content/Intent;
    .restart local v9    # "notify":Landroid/content/Intent;
    .restart local v11    # "pendingMain":Landroid/app/PendingIntent;
    :cond_6
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1535
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v15, "nubiaSort"

    const-string v16, "Running"

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    invoke-virtual {v8, v2}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    goto :goto_2
.end method

.method public static showCountdownNotiWhenGameRunning(Landroid/content/Context;)V
    .locals 22
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1937
    invoke-static/range {p0 .. p0}, Lcn/nubia/deskclock/model/Alarms;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v11

    .line 1938
    .local v11, "nm":Landroid/app/NotificationManager;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 1939
    .local v15, "resources":Landroid/content/res/Resources;
    invoke-static/range {p0 .. p0}, Lcn/nubia/deskclock/database/CountDownSPUtils;->readTimeNotficationFromPref(Landroid/content/Context;)I

    move-result v10

    .line 1940
    .local v10, "mcs":I
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcn/nubia/deskclock/util/Utils;->formatCountDownSecond(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v18

    .line 1941
    .local v18, "title":Ljava/lang/String;
    invoke-static {}, Lcn/nubia/deskclock/database/CountDownSPUtils;->getTimeTitle()Ljava/lang/String;

    move-result-object v17

    .line 1942
    .local v17, "timerTitle":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 1943
    const v19, 0x7f0d00d5

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1946
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 1947
    .local v6, "calendar":Ljava/util/Calendar;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const v20, 0x7f0d002a

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ":"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 1948
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcn/nubia/deskclock/model/Alarms;->formatTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1951
    .local v16, "tickerText":Ljava/lang/String;
    new-instance v13, Landroid/content/Intent;

    const-class v19, Lcn/nubia/deskclock/DeskClock;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1952
    .local v13, "notify":Landroid/content/Intent;
    const-string v19, "deskclock.select.tab"

    const/16 v20, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1954
    new-instance v19, Landroid/app/Notification$Builder;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v20, 0x7f02007b

    .line 1955
    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v19

    const v20, 0x7f0d0041

    .line 1956
    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const v21, 0x7f0d0040

    .line 1957
    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v19

    const/16 v20, 0x1

    .line 1958
    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v19

    const/16 v20, -0x1

    .line 1959
    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v19

    const-string v20, "alarm"

    .line 1960
    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v19

    const/16 v20, 0x2

    .line 1961
    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v19

    const/16 v20, 0x457

    const/high16 v21, 0x8000000

    .line 1962
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v13, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v12

    .line 1965
    .local v12, "notification":Landroid/app/Notification$Builder;
    new-instance v8, Landroid/content/Intent;

    const-string v19, "com.nubia.deskclock.countdown.action.COUNTDOWN_CLOSE_ACTION_NOT_SHOW_NOTIFICATION"

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1966
    .local v8, "dismissIntent":Landroid/content/Intent;
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreO()Z

    move-result v19

    if-nez v19, :cond_1

    .line 1967
    new-instance v19, Landroid/content/ComponentName;

    const-string v20, "cn.nubia.deskclock.preset"

    const-string v21, "cn.nubia.deskclock.CountdownBroadCastReceiver"

    invoke-direct/range {v19 .. v21}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1969
    :cond_1
    const/16 v19, 0x3e9

    const/high16 v20, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 1972
    .local v14, "pendingDismiss":Landroid/app/PendingIntent;
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreO()Z

    move-result v19

    if-nez v19, :cond_2

    .line 1973
    new-instance v9, Landroid/app/NotificationChannel;

    const-string v19, "11110"

    const-string v20, "countdown_game_ticker"

    const/16 v21, 0x4

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v9, v0, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 1974
    .local v9, "mNotificationChannel":Landroid/app/NotificationChannel;
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 1975
    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 1976
    invoke-virtual {v11, v9}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 1977
    const-string v19, "11110"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 1979
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1980
    .local v5, "bundle":Landroid/os/Bundle;
    new-instance v19, Landroid/app/Notification$Action$Builder;

    const/16 v20, 0x0

    const v21, 0x7f0d0020

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2, v14}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual/range {v19 .. v19}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v7

    .line 1981
    .local v7, "dismissAction":Landroid/app/Notification$Action;
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v4, v0, [Landroid/app/Notification$Action;

    const/16 v19, 0x0

    aput-object v7, v4, v19

    .line 1982
    .local v4, "actionArr":[Landroid/app/Notification$Action;
    const-string v19, "ticker_action"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 1983
    invoke-virtual {v12, v5}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 1985
    .end local v4    # "actionArr":[Landroid/app/Notification$Action;
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v7    # "dismissAction":Landroid/app/Notification$Action;
    .end local v9    # "mNotificationChannel":Landroid/app/NotificationChannel;
    :cond_2
    const-string v19, "ticker_notification"

    const/16 v20, 0x457

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 1986
    const-string v19, "ticker_notification"

    const/16 v20, 0x457

    invoke-virtual {v12}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v21

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v11, v0, v1, v2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 1987
    return-void
.end method

.method public static snooze(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mCurrentAlarm"    # Lcn/nubia/deskclock/model/Alarm;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1131
    if-nez p1, :cond_0

    .line 1162
    :goto_0
    return-void

    .line 1135
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget v7, p1, Lcn/nubia/deskclock/model/Alarm;->id:I

    invoke-static {v6, v7}, Lcn/nubia/deskclock/model/Alarms;->getAlarm(Landroid/content/ContentResolver;I)Lcn/nubia/deskclock/model/Alarm;

    move-result-object v6

    if-nez v6, :cond_1

    .line 1136
    const-string v6, "Alarms"

    const-string v7, "mCurrentAlarm = null"

    invoke-static {v6, v7}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1139
    :cond_1
    const-string v6, "Alarms"

    const-string v7, "snooze: "

    invoke-static {v6, v7}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    invoke-static {p0}, Lcn/nubia/deskclock/model/Alarms;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    .line 1141
    .local v1, "nm":Landroid/app/NotificationManager;
    iget v6, p1, Lcn/nubia/deskclock/model/Alarm;->id:I

    invoke-virtual {v1, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1143
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/deskclock/DeskClockApplication;->getDefaultSharedPref()Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1144
    .local v4, "sharedPref":Landroid/content/SharedPreferences;
    const-string v6, "isSnooze"

    invoke-interface {v4, v6, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1145
    .local v0, "isSnooze":Z
    const-string v6, "snoozeMaxCount"

    const/16 v7, 0x12c

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1147
    .local v5, "snoozeMaxCount":I
    iget v6, p1, Lcn/nubia/deskclock/model/Alarm;->id:I

    invoke-static {p0, v6}, Lcn/nubia/deskclock/model/AlarmsDb;->readLastSnoozeTime(Landroid/content/Context;I)J

    move-result-wide v2

    .line 1148
    .local v2, "lastSnoozeTime":J
    const-wide/16 v6, -0x1

    cmp-long v6, v2, v6

    if-eqz v6, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    const-wide/32 v8, 0x6ddd00

    cmp-long v6, v6, v8

    if-gez v6, :cond_4

    .line 1149
    :cond_2
    iget v6, p1, Lcn/nubia/deskclock/model/Alarm;->id:I

    invoke-static {p0, v6, v11}, Lcn/nubia/deskclock/model/AlarmsDb;->saveSnoozeCountAdd(Landroid/content/Context;IZ)V

    .line 1151
    iget v6, p1, Lcn/nubia/deskclock/model/Alarm;->snoozeCount:I

    if-eq v6, v5, :cond_3

    if-nez v0, :cond_5

    .line 1152
    :cond_3
    const-wide/16 v6, 0x0

    invoke-static {p0, p1, v11, v6, v7}, Lcn/nubia/deskclock/model/Alarms;->dismiss(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;ZJ)V

    goto :goto_0

    .line 1156
    :cond_4
    iget v6, p1, Lcn/nubia/deskclock/model/Alarm;->id:I

    invoke-static {p0, v6, v10}, Lcn/nubia/deskclock/model/AlarmsDb;->saveSnoozeCountAdd(Landroid/content/Context;IZ)V

    .line 1157
    invoke-static {p0, p1}, Lcn/nubia/deskclock/model/Alarms;->cancelPowerOffAlarmAboveSdk26(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)V

    .line 1159
    :cond_5
    iget v6, p1, Lcn/nubia/deskclock/model/Alarm;->id:I

    invoke-static {p0, v6}, Lcn/nubia/deskclock/model/AlarmsDb;->writeLastSnoozeTime(Landroid/content/Context;I)V

    .line 1160
    invoke-static {p0, p1, v10}, Lcn/nubia/deskclock/model/Alarms;->SnoozeNotification(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;Z)V

    .line 1161
    invoke-static {p0}, Lcn/nubia/deskclock/model/Alarms;->setNextAlert(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static startAlarmAlertFullScreen(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarm"    # Lcn/nubia/deskclock/model/Alarm;

    .prologue
    const/4 v1, 0x1

    .line 1202
    const-string v4, "phone"

    .line 1203
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1204
    .local v2, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-eqz v4, :cond_0

    .line 1205
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 1206
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-ne v4, v1, :cond_3

    .line 1208
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1209
    .local v0, "closeDialogs":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1212
    invoke-static {p0}, Lcn/nubia/deskclock/util/Utils;->isGameScene(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isGameMode()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1213
    .local v1, "isGameMode":Z
    :cond_1
    :goto_0
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcn/nubia/deskclock/AlarmKlaxon;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1214
    .local v3, "playAlarm":Landroid/content/Intent;
    const-string v4, "intent.extra.alarm"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1215
    const-string v4, "isGameMode"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1216
    invoke-virtual {p0, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1217
    const-string v4, "Alarms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startAlarmAlertFullScreen: isGameMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    if-eqz v1, :cond_2

    .line 1223
    :cond_2
    iget v4, p1, Lcn/nubia/deskclock/model/Alarm;->id:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {p0, v4, v6, v7}, Lcn/nubia/deskclock/model/Alarms;->saveCurrentAlarmToSharedPre(Landroid/content/Context;IJ)V

    .line 1225
    .end local v0    # "closeDialogs":Landroid/content/Intent;
    .end local v1    # "isGameMode":Z
    .end local v3    # "playAlarm":Landroid/content/Intent;
    :cond_3
    return-void

    .line 1212
    .restart local v0    # "closeDialogs":Landroid/content/Intent;
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static startAlarmAlertFullScreenBoot(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarm"    # Lcn/nubia/deskclock/model/Alarm;

    .prologue
    .line 1647
    const-string v4, "phone"

    .line 1648
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1649
    .local v2, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    invoke-static {p1}, Lcn/nubia/deskclock/util/AlarmUtils;->setCurrentAlertAlarm(Lcn/nubia/deskclock/model/Alarm;)V

    .line 1650
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-eqz v4, :cond_0

    .line 1651
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 1652
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 1654
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1655
    .local v0, "closeDialogs":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1658
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcn/nubia/deskclock/AlarmKlaxon;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1659
    .local v3, "playAlarm":Landroid/content/Intent;
    const-string v4, "intent.extra.alarm"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1660
    invoke-virtual {p0, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1662
    .end local v0    # "closeDialogs":Landroid/content/Intent;
    .end local v3    # "playAlarm":Landroid/content/Intent;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1663
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1664
    const-string v4, "intent.extra.alarm"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1665
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1666
    return-void
.end method

.method public static updateAlarm(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarm"    # Lcn/nubia/deskclock/model/Alarm;

    .prologue
    .line 226
    if-nez p1, :cond_0

    .line 244
    :goto_0
    return-void

    .line 229
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 230
    .local v1, "resolver":Landroid/content/ContentResolver;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 233
    .local v4, "values":Landroid/content/ContentValues;
    const-wide/16 v2, 0x0

    .line 234
    .local v2, "time":J
    iget-object v5, p1, Lcn/nubia/deskclock/model/Alarm;->daysOfWeek:Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    invoke-virtual {v5}, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->isRepeatSet()Z

    move-result v5

    if-nez v5, :cond_1

    .line 235
    invoke-static {p0, p1}, Lcn/nubia/deskclock/model/Alarms;->calculateAlarm(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)J

    move-result-wide v2

    .line 237
    :cond_1
    const-string v5, "alarmtime"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 239
    :try_start_0
    sget-object v5, Lcn/nubia/deskclock/model/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    iget v6, p1, Lcn/nubia/deskclock/model/Alarm;->id:I

    int-to-long v6, v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v4, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static updateAlarmTimeForSnooze(Landroid/content/SharedPreferences;Lcn/nubia/deskclock/model/Alarm;)Z
    .locals 8
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "alarm"    # Lcn/nubia/deskclock/model/Alarm;

    .prologue
    const/4 v2, 0x1

    .line 969
    iget v3, p1, Lcn/nubia/deskclock/model/Alarm;->id:I

    invoke-static {p0, v3}, Lcn/nubia/deskclock/model/Alarms;->hasAlarmBeenSnoozed(Landroid/content/SharedPreferences;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 971
    const/4 v2, 0x0

    .line 990
    :goto_0
    return v2

    .line 974
    :cond_0
    iget v3, p1, Lcn/nubia/deskclock/model/Alarm;->id:I

    invoke-static {v3}, Lcn/nubia/deskclock/model/Alarms;->getAlarmPrefSnoozeTimeKey(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-interface {p0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 978
    .local v0, "time":J
    const-string v3, "Alarms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prefs time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    iget-object v3, p1, Lcn/nubia/deskclock/model/Alarm;->daysOfWeek:Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    invoke-virtual {v3}, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->isRepeatSet()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 980
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const-wide/32 v6, 0x1b7740

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 982
    sget-object v3, Lcn/nubia/deskclock/DeskClockApplication;->globalApplicationContext:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1, v2}, Lcn/nubia/deskclock/model/Alarms;->enableAlarmInternal(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;Z)V

    .line 984
    sget-object v3, Lcn/nubia/deskclock/DeskClockApplication;->globalApplicationContext:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p1, Lcn/nubia/deskclock/model/Alarm;->id:I

    invoke-static {v3, v4, v2}, Lcn/nubia/deskclock/model/Alarms;->disableSnoozeAlert(Landroid/content/Context;IZ)V

    goto :goto_0

    .line 988
    :cond_1
    iput-wide v0, p1, Lcn/nubia/deskclock/model/Alarm;->time:J

    goto :goto_0
.end method

.method public static updateEnableRecentAlarm(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarm"    # Lcn/nubia/deskclock/model/Alarm;

    .prologue
    const/4 v6, 0x0

    .line 1742
    if-nez p1, :cond_0

    .line 1752
    :goto_0
    return-void

    .line 1745
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1746
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1747
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "Alarms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateEnableRecentAlarm ==  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcn/nubia/deskclock/model/Alarm;->getRecenceAlarmTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1748
    const-string v2, "enablerecentalarm"

    invoke-virtual {p1}, Lcn/nubia/deskclock/model/Alarm;->getRecenceAlarmTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1749
    sget-object v2, Lcn/nubia/deskclock/model/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    iget v3, p1, Lcn/nubia/deskclock/model/Alarm;->id:I

    int-to-long v4, v3

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static updateRecentAlarmTime(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarm"    # Lcn/nubia/deskclock/model/Alarm;

    .prologue
    .line 2252
    if-nez p1, :cond_0

    .line 2265
    :goto_0
    return-void

    .line 2256
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2257
    .local v1, "resolver":Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2258
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "Alarms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateRecentAlarmTime ==  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcn/nubia/deskclock/model/Alarm;->getRecenceAlarmTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ;; alarm.time : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p1, Lcn/nubia/deskclock/model/Alarm;->time:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2259
    const-string v3, "recent_alarm_time"

    iget-wide v4, p1, Lcn/nubia/deskclock/model/Alarm;->time:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2260
    sget-object v3, Lcn/nubia/deskclock/model/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    iget v4, p1, Lcn/nubia/deskclock/model/Alarm;->id:I

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2262
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 2263
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
