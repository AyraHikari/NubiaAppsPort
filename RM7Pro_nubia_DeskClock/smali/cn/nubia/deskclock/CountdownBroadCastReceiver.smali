.class public Lcn/nubia/deskclock/CountdownBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CountdownBroadCastReceiver.java"


# static fields
.field public static final COUNTDOWN_CLICK_NOTIFICATION_FLAG:I = 0x9

.field public static final COUNTDOWN_OPERATION__FLAG:Ljava/lang/String; = "countdown_operation__flag"

.field public static final COUNTDOWN_SCREEN_OFF_FLAG:I = 0x8

.field public static final Count_ID:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "CountdownBroadCastReceiver"

.field private static final TICKER_NOTIFCATION_CHANNEL_ID:Ljava/lang/String; = "1001"

.field private static final TICKER_NOTIFCATION_CHANNEL_NAME:Ljava/lang/String; = "count_down_ticker"


# instance fields
.field private mIsGameMode:Z

.field private mNotificationChannel:Landroid/app/NotificationChannel;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/deskclock/CountdownBroadCastReceiver;->mIsGameMode:Z

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/deskclock/CountdownBroadCastReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/CountdownBroadCastReceiver;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcn/nubia/deskclock/CountdownBroadCastReceiver;->handleIntent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private createNotifiChannel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 266
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "1001"

    const-string v2, "count_down_ticker"

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iput-object v0, p0, Lcn/nubia/deskclock/CountdownBroadCastReceiver;->mNotificationChannel:Landroid/app/NotificationChannel;

    .line 267
    iget-object v0, p0, Lcn/nubia/deskclock/CountdownBroadCastReceiver;->mNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v4, v4}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 268
    iget-object v0, p0, Lcn/nubia/deskclock/CountdownBroadCastReceiver;->mNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 269
    return-void
.end method

.method private handleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x2

    const/4 v10, -0x1

    const v9, 0x7f0d00d5

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 66
    const-string v4, "CountdownBroadCastReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "intent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isKeyguard : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Lcn/nubia/deskclock/util/Utils;->isKeyguard(Landroid/content/Context;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v4, "com.nubia.deskclock.countdown.action.COUNTDOWN_ACTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 68
    invoke-static {p1}, Lcn/nubia/deskclock/util/Utils;->isGameScene(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isGameMode()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_0
    move v4, v6

    :goto_0
    iput-boolean v4, p0, Lcn/nubia/deskclock/CountdownBroadCastReceiver;->mIsGameMode:Z

    .line 69
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/CountdownBroadCastReceiver;->updateForceTouch(Landroid/content/Context;)V

    .line 70
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/CountdownBroadCastReceiver;->stopCountdownService(Landroid/content/Context;)V

    .line 71
    iget-object v4, p0, Lcn/nubia/deskclock/CountdownBroadCastReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-eq v4, v11, :cond_1

    iget-object v4, p0, Lcn/nubia/deskclock/CountdownBroadCastReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 72
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-nez v4, :cond_8

    .line 73
    :cond_1
    const-string v4, "CountdownBroadCastReceiver"

    const-string v7, "playing ringtone"

    invoke-static {v4, v7}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 75
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "isGameMode"

    iget-boolean v7, p0, Lcn/nubia/deskclock/CountdownBroadCastReceiver;->mIsGameMode:Z

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 76
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 77
    .local v1, "countdownRingIntent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 78
    const-class v4, Lcn/nubia/deskclock/CountDownRingService;

    invoke-virtual {v1, p1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 79
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 80
    iget-boolean v4, p0, Lcn/nubia/deskclock/CountdownBroadCastReceiver;->mIsGameMode:Z

    if-eqz v4, :cond_6

    .line 81
    invoke-static {p1}, Lcn/nubia/deskclock/model/Alarms;->showCountdownNotiWhenGameRunning(Landroid/content/Context;)V

    .line 100
    :cond_2
    :goto_1
    iget-object v4, p0, Lcn/nubia/deskclock/CountdownBroadCastReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-ne v4, v11, :cond_3

    .line 101
    invoke-static {p1, v9, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 103
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v5}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeAssisTimeToPref(Landroid/content/Context;I)V

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v5, v5, v5}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeCountDownTotalTimeToPref(Landroid/content/Context;III)V

    .line 143
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "countdownRingIntent":Landroid/content/Intent;
    :cond_4
    :goto_2
    return-void

    :cond_5
    move v4, v5

    .line 68
    goto :goto_0

    .line 83
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "countdownRingIntent":Landroid/content/Intent;
    :cond_6
    invoke-static {p1}, Lcn/nubia/deskclock/util/Utils;->isKeyguard(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 84
    invoke-static {v6}, Lcn/nubia/deskclock/util/Utils;->setIsFromKeygurad(Z)V

    .line 85
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcn/nubia/deskclock/activity/CountdownAlertActivity;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    .local v3, "fullScreenIntent":Landroid/content/Intent;
    const-string v4, "from_keyguard_fullscreen"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const/high16 v4, 0x10040000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 90
    :try_start_0
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v3    # "fullScreenIntent":Landroid/content/Intent;
    :cond_7
    :goto_3
    invoke-static {p1}, Lcn/nubia/deskclock/util/Utils;->countDownActivityisTop(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 96
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/CountdownBroadCastReceiver;->showCountDownNotification(Landroid/content/Context;)V

    goto :goto_1

    .line 91
    .restart local v3    # "fullScreenIntent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 92
    .local v2, "ex":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_3

    .line 106
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "countdownRingIntent":Landroid/content/Intent;
    .end local v2    # "ex":Landroid/content/ActivityNotFoundException;
    .end local v3    # "fullScreenIntent":Landroid/content/Intent;
    :cond_8
    iget-object v4, p0, Lcn/nubia/deskclock/CountdownBroadCastReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-ne v4, v6, :cond_9

    .line 107
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/CountdownBroadCastReceiver;->showCountDownNotification(Landroid/content/Context;)V

    .line 108
    invoke-static {p1, v9, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 109
    const-string v4, "CountdownBroadCastReceiver"

    const-string v6, "CountDown is up,CALL_STATE_RINGING, so not start activity"

    invoke-static {v4, v6}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v5}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeAssisTimeToPref(Landroid/content/Context;I)V

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v5, v5, v5}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeCountDownTotalTimeToPref(Landroid/content/Context;III)V

    goto :goto_2

    .line 114
    :cond_9
    const-string v4, "CountdownBroadCastReceiver"

    const-string v7, "can\'t go here"

    invoke-static {v4, v7}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-static {p1, v9, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v5}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeAssisTimeToPref(Landroid/content/Context;I)V

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v5, v5, v5}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeCountDownTotalTimeToPref(Landroid/content/Context;III)V

    goto :goto_2

    .line 120
    :cond_a
    const-string v4, "com.nubia.deskclock.countdown.action.COUNTDOWN_CLOSE_ACTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 121
    const/16 v4, 0x3e9

    invoke-static {p1, v4}, Lcn/nubia/deskclock/model/Alarms;->cleanCountdownNotification(Landroid/content/Context;I)V

    .line 122
    const/4 v4, 0x0

    invoke-static {v4}, Lcn/nubia/deskclock/database/CountDownSPUtils;->setTimeTitle(Ljava/lang/String;)V

    .line 123
    invoke-static {p1}, Lcn/nubia/deskclock/model/Alarms;->countDownEndNotification(Landroid/content/Context;)V

    .line 124
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/CountdownBroadCastReceiver;->stopRingtoneIfNoTimesup(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 125
    :cond_b
    const-string v4, "com.nubia.deskclock.countdown.action.COUNTDOWN_CLOSE_ACTION_NOT_SHOW_NOTIFICATION"

    .line 126
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 125
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 127
    const/16 v4, 0x3e9

    invoke-static {p1, v4}, Lcn/nubia/deskclock/model/Alarms;->cleanCountdownNotification(Landroid/content/Context;I)V

    .line 128
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/CountdownBroadCastReceiver;->stopRingtoneIfNoTimesup(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 129
    :cond_c
    const-string v4, "com.nubia.deskclock.countdown.action.COUNTDOWN_RESET_ACTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 130
    const/16 v4, 0x4b3

    invoke-static {p1, v4}, Lcn/nubia/deskclock/model/Alarms;->cleanCountdownNotification(Landroid/content/Context;I)V

    .line 131
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/CountdownBroadCastReceiver;->stopCountdownService(Landroid/content/Context;)V

    .line 132
    invoke-static {p1, v10}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeStatusToPref(Landroid/content/Context;I)V

    .line 133
    invoke-static {p1, v5, v5, v5}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeTimeToPref(Landroid/content/Context;III)V

    .line 134
    invoke-static {p1, v5}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeTimeNotficationToPref(Landroid/content/Context;I)V

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v5}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeAssisTimeToPref(Landroid/content/Context;I)V

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v5, v5, v5}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeCountDownTotalTimeToPref(Landroid/content/Context;III)V

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v10}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeAssisStatusToPref(Landroid/content/Context;I)V

    .line 139
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/CountdownBroadCastReceiver;->updateForceTouch(Landroid/content/Context;)V

    .line 140
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/CountdownBroadCastReceiver;->stopAlarm(Landroid/content/Context;)V

    .line 141
    const/4 v4, 0x0

    invoke-static {v4}, Lcn/nubia/deskclock/database/CountDownSPUtils;->setTimeTitle(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private showCountDownNotification(Landroid/content/Context;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 175
    const/16 v18, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeStatusToPref(Landroid/content/Context;I)V

    .line 176
    invoke-static/range {p1 .. p1}, Lcn/nubia/deskclock/model/Alarms;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v10

    .line 177
    .local v10, "nm":Landroid/app/NotificationManager;
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreO()Z

    move-result v18

    if-nez v18, :cond_0

    .line 178
    invoke-direct/range {p0 .. p0}, Lcn/nubia/deskclock/CountdownBroadCastReceiver;->createNotifiChannel()V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/deskclock/CountdownBroadCastReceiver;->mNotificationChannel:Landroid/app/NotificationChannel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 181
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 182
    .local v15, "resources":Landroid/content/res/Resources;
    new-instance v5, Landroid/content/Intent;

    const-string v18, "com.nubia.deskclock.countdown.action.COUNTDOWN_CLOSE_ACTION_NOT_SHOW_NOTIFICATION"

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .local v5, "closeIntent":Landroid/content/Intent;
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreO()Z

    move-result v18

    if-nez v18, :cond_1

    .line 185
    new-instance v18, Landroid/content/ComponentName;

    const-string v19, "cn.nubia.deskclock.preset"

    const-string v20, "cn.nubia.deskclock.CountdownBroadCastReceiver"

    invoke-direct/range {v18 .. v20}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 187
    :cond_1
    const/16 v18, 0x3e9

    const/high16 v19, 0x8000000

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v5, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 190
    .local v13, "pendingClose":Landroid/app/PendingIntent;
    invoke-static/range {p1 .. p1}, Lcn/nubia/deskclock/database/CountDownSPUtils;->readTimeNotficationFromPref(Landroid/content/Context;)I

    move-result v9

    .line 191
    .local v9, "mcs":I
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcn/nubia/deskclock/util/Utils;->formatCountDownSecond(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v17

    .line 192
    .local v17, "title":Ljava/lang/String;
    new-instance v18, Landroid/app/Notification$Action$Builder;

    const/16 v19, 0x0

    .line 193
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0d0020

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v13}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual/range {v18 .. v18}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v4

    .line 194
    .local v4, "closeAction":Landroid/app/Notification$Action;
    invoke-static {}, Lcn/nubia/deskclock/database/CountDownSPUtils;->getTimeTitle()Ljava/lang/String;

    move-result-object v16

    .line 195
    .local v16, "timerTitle":Ljava/lang/String;
    const-string v18, "CountdownBroadCastReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "showCountDownNotification: timerTitle  : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 197
    const v18, 0x7f0d00d5

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 199
    :cond_2
    new-instance v18, Landroid/app/Notification$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 200
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v18

    const v19, 0x7f0d0043

    .line 201
    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v18

    const/16 v19, 0x1

    .line 202
    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v18

    const/16 v19, 0x0

    .line 203
    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v18

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v18

    const-string v19, "alarm"

    .line 204
    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 205
    .local v11, "notification":Landroid/app/Notification$Builder;
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreN()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 206
    const/4 v6, 0x0

    .line 207
    .local v6, "contentView":Landroid/widget/RemoteViews;
    new-instance v6, Landroid/widget/RemoteViews;

    .end local v6    # "contentView":Landroid/widget/RemoteViews;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    const v19, 0x7f04002f

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v6, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 209
    .restart local v6    # "contentView":Landroid/widget/RemoteViews;
    const v18, 0x7f120078

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 210
    const v18, 0x7f120079

    const v19, 0x7f0d00d5

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 211
    const v18, 0x7f12007c

    move/from16 v0, v18

    invoke-virtual {v6, v0, v13}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 212
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f02007d

    invoke-static/range {v18 .. v19}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 214
    const v18, 0x7f02007c

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 215
    invoke-virtual {v11, v6}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 228
    .end local v6    # "contentView":Landroid/widget/RemoteViews;
    :goto_0
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreO()Z

    move-result v18

    if-nez v18, :cond_3

    .line 229
    const-string v18, "1001"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 231
    :cond_3
    new-instance v12, Landroid/content/Intent;

    const-class v18, Lcn/nubia/deskclock/activity/CountdownAlertActivity;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 232
    .local v12, "notify":Landroid/content/Intent;
    const-string v18, "countdown_operation__flag"

    const/16 v19, 0x9

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 233
    const/16 v18, 0x3e9

    const/high16 v19, 0x8000000

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v12, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 235
    .local v14, "pendingMain":Landroid/app/PendingIntent;
    invoke-virtual {v11, v14}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 237
    new-instance v8, Landroid/content/Intent;

    const-class v18, Lcn/nubia/deskclock/activity/CountdownAlertActivity;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 239
    .local v8, "fullScreenIntent":Landroid/content/Intent;
    const-string v18, "fullscreen_activity"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    const/high16 v18, 0x10040000

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 242
    const/16 v18, 0x3e9

    const/high16 v19, 0x8000000

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    .line 244
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 245
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreO()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 246
    const-string v18, "Running"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 247
    const-string v18, "F0"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 255
    :goto_1
    const-string v18, "ticker_notification"

    const/16 v19, 0x3e9

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 256
    const-string v18, "CountdownBroadCastReceiver"

    const-string v19, "showCountDownNotification:"

    invoke-static/range {v18 .. v19}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v18, "ticker_notification"

    const/16 v19, 0x3e9

    invoke-virtual {v11}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v20

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v10, v0, v1, v2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 258
    return-void

    .line 217
    .end local v8    # "fullScreenIntent":Landroid/content/Intent;
    .end local v12    # "notify":Landroid/content/Intent;
    .end local v14    # "pendingMain":Landroid/app/PendingIntent;
    :cond_4
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 218
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v18, "base_notification_right_button_text"

    const v19, 0x7f0d0020

    .line 219
    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 218
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 220
    const-string v18, "base_notification_right_button_pendingintent"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 221
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreO()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 222
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f02007b

    invoke-static/range {v18 .. v19}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 225
    :cond_5
    const v18, 0x7f02007b

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 226
    invoke-virtual {v11, v3}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    goto/16 :goto_0

    .line 249
    .end local v3    # "bundle":Landroid/os/Bundle;
    .restart local v8    # "fullScreenIntent":Landroid/content/Intent;
    .restart local v12    # "notify":Landroid/content/Intent;
    .restart local v14    # "pendingMain":Landroid/app/PendingIntent;
    :cond_6
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 250
    .local v7, "countdownRingbundle":Landroid/os/Bundle;
    const-string v18, "nubiaSort"

    const-string v19, "Running"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v18, "50"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 252
    invoke-virtual {v11, v7}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 253
    invoke-virtual {v11, v4}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    goto/16 :goto_1
.end method

.method private stopAlarm(Landroid/content/Context;)V
    .locals 6
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 146
    const-string v3, "CountdownBroadCastReceiver"

    const-string v4, " stopAlarm "

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.nubia.deskclock.countdown.action.COUNTDOWN_ACTION"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreO()Z

    move-result v3

    if-nez v3, :cond_0

    .line 149
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "cn.nubia.deskclock.preset"

    const-string v5, "cn.nubia.deskclock.CountdownBroadCastReceiver"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 151
    :cond_0
    const/4 v3, 0x0

    const/high16 v4, 0x20000000

    invoke-static {p1, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 153
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v2, :cond_1

    .line 154
    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 155
    .local v1, "mAlarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 157
    .end local v1    # "mAlarmManager":Landroid/app/AlarmManager;
    :cond_1
    return-void
.end method

.method private stopCountdownService(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 261
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/nubia/deskclock/CountDownService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 262
    .local v0, "mCountdown":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 263
    return-void
.end method

.method private stopRingtoneIfNoTimesup(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 167
    const-string v1, "CountdownBroadCastReceiver"

    const-string v2, "stopping ringtone"

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 169
    .local v0, "si":Landroid/content/Intent;
    const-class v1, Lcn/nubia/deskclock/CountDownRingService;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 170
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 172
    return-void
.end method

.method private updateForceTouch(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 160
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.deskclock.NEW_COUNTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    .local v0, "newIntent":Landroid/content/Intent;
    const-string v1, "countdown_shortcut"

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00f6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 161
    invoke-static {p1, v1, v2, v0}, Lcn/nubia/deskclock/util/Utils;->updateForceTouch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 163
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 50
    move-object v2, p1

    .line 51
    .local v2, "mContext":Landroid/content/Context;
    invoke-virtual {p0}, Lcn/nubia/deskclock/CountdownBroadCastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v5

    .line 52
    .local v5, "result":Landroid/content/BroadcastReceiver$PendingResult;
    invoke-static {p1}, Lcn/nubia/deskclock/util/AlarmAlertWakeLock;->createPartialWakeLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    .line 53
    .local v4, "wl":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 54
    const-string v0, "phone"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcn/nubia/deskclock/CountdownBroadCastReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 55
    new-instance v0, Lcn/nubia/deskclock/CountdownBroadCastReceiver$1;

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcn/nubia/deskclock/CountdownBroadCastReceiver$1;-><init>(Lcn/nubia/deskclock/CountdownBroadCastReceiver;Landroid/content/Context;Landroid/content/Intent;Landroid/os/PowerManager$WakeLock;Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-static {v0}, Lcn/nubia/deskclock/AsyncHandler;->post(Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method
