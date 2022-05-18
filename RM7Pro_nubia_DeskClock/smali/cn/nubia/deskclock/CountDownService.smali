.class public Lcn/nubia/deskclock/CountDownService;
.super Landroid/app/Service;
.source "CountDownService.java"


# static fields
.field public static final BEGIN_TIME:Ljava/lang/String; = "bengin_time"

.field public static final BENGIN:Ljava/lang/String; = "begin_notification"

.field private static final HANDLER_BEGIN:I = 0x4b4

.field private static final HANDLER_RUN:I = 0x4b5

.field public static final IS_SHOW_FLOAT_VIEW:Ljava/lang/String; = "is_show_float_view"

.field public static final LABEL:Ljava/lang/String; = "label"

.field public static final NOTIFICATION_ID:I = 0x4b3

.field public static final STOP:Ljava/lang/String; = "stop_notification"

.field private static final TAG:Ljava/lang/String; = "CountDownService"


# instance fields
.field private mBeginTime:J

.field private mCountdownLabel:Ljava/lang/String;

.field private mCurrentTime:I

.field private mHandler:Landroid/os/Handler;

.field private mInitTime:I

.field private mIsShowFloatView:Z

.field private mNotificationChannel:Landroid/app/NotificationChannel;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/deskclock/CountDownService;->mCurrentTime:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/deskclock/CountDownService;->mInitTime:I

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/deskclock/CountDownService;->mBeginTime:J

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/deskclock/CountDownService;->mIsShowFloatView:Z

    return-void
.end method

.method private ShowNotification()V
    .locals 10

    .prologue
    .line 96
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcn/nubia/deskclock/CountDownService;->mBeginTime:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    div-int/lit16 v3, v4, 0x3e8

    .line 97
    .local v3, "secondCount":I
    const-string v4, "CountDownService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " currentTime : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcn/nubia/deskclock/CountDownService;->mBeginTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";; count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget v4, p0, Lcn/nubia/deskclock/CountDownService;->mCurrentTime:I

    sub-int/2addr v4, v3

    iput v4, p0, Lcn/nubia/deskclock/CountDownService;->mCurrentTime:I

    .line 99
    iget-wide v4, p0, Lcn/nubia/deskclock/CountDownService;->mBeginTime:J

    mul-int/lit16 v6, v3, 0x3e8

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcn/nubia/deskclock/CountDownService;->mBeginTime:J

    .line 100
    const-string v4, "CountDownService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "a Run = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcn/nubia/deskclock/CountDownService;->mCurrentTime:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget v4, p0, Lcn/nubia/deskclock/CountDownService;->mCurrentTime:I

    if-gtz v4, :cond_2

    .line 102
    const-string v4, "CountDownService"

    const-string v5, "countdown time is end"

    invoke-static {v4, v5}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v4, p0, Lcn/nubia/deskclock/CountDownService;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v5, 0x4b3

    invoke-virtual {v4, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 104
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcn/nubia/deskclock/CountDownService;->mBeginTime:J

    .line 105
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcn/nubia/deskclock/CountDownService;->callRunningStatusProvider(Z)V

    .line 106
    invoke-static {}, Lcn/nubia/deskclock/database/CountDownSPUtils;->getmAssistantStartCountdownStatus()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 107
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.nubia.deskclock.countdown.action.COUNTDOWN_ACTION"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    .local v2, "intentCountDown":Landroid/content/Intent;
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreO()Z

    move-result v4

    if-nez v4, :cond_0

    .line 109
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "cn.nubia.deskclock.preset"

    const-string v6, "cn.nubia.deskclock.CountdownBroadCastReceiver"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 111
    :cond_0
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 112
    invoke-virtual {p0, v2}, Lcn/nubia/deskclock/CountDownService;->sendBroadcast(Landroid/content/Intent;)V

    .line 114
    .end local v2    # "intentCountDown":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/deskclock/CountDownService;->stopSelf()V

    .line 125
    :goto_0
    return-void

    .line 116
    :cond_2
    iget v4, p0, Lcn/nubia/deskclock/CountDownService;->mCurrentTime:I

    invoke-virtual {p0, p0, v4}, Lcn/nubia/deskclock/CountDownService;->createNotificationWhenRunning(Landroid/content/Context;I)V

    .line 117
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcn/nubia/deskclock/CountDownService;->mBeginTime:J

    sub-long v0, v4, v6

    .line 118
    .local v0, "after":J
    const-string v4, "CountDownService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " after : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-wide/16 v4, 0x0

    cmp-long v4, v4, v0

    if-gtz v4, :cond_3

    const-wide/16 v4, 0x3e8

    cmp-long v4, v0, v4

    if-gez v4, :cond_3

    .line 120
    iget-object v4, p0, Lcn/nubia/deskclock/CountDownService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x4b5

    const-wide/16 v6, 0x3e8

    sub-long/2addr v6, v0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 122
    :cond_3
    iget-object v4, p0, Lcn/nubia/deskclock/CountDownService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x4b5

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcn/nubia/deskclock/CountDownService;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/CountDownService;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/CountDownService;->prepareShowNnotification(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/deskclock/CountDownService;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/CountDownService;

    .prologue
    .line 35
    invoke-direct {p0}, Lcn/nubia/deskclock/CountDownService;->ShowNotification()V

    return-void
.end method

.method private callRunningStatusProvider(Z)V
    .locals 8
    .param p1, "running"    # Z

    .prologue
    const/4 v7, 0x0

    .line 309
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 310
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "isRunning"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 311
    if-eqz p1, :cond_2

    .line 312
    const-string v5, "runningReason"

    const-string v6, "show notification"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :goto_0
    const-string v5, "content://cn.nubia.deskclock.preset.RunningStatusProvider"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 317
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcn/nubia/deskclock/CountDownService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v3, v4, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 320
    const/4 v1, 0x0

    .line 322
    .local v1, "client":Landroid/content/ContentProviderClient;
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/deskclock/CountDownService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "content://com.android.systemui.recents.Temporary_Protection"

    .line 323
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 322
    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    .line 324
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 325
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "pkgName"

    const-string v6, "cn.nubia.deskclock.preset"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v6, "running_state"

    if-eqz p1, :cond_3

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 327
    if-eqz v1, :cond_0

    .line 328
    const-string v5, "Add_To_Temporary_Protection_List"

    const-string v6, ""

    invoke-virtual {v1, v5, v6, v0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    :cond_0
    if-eqz v1, :cond_1

    .line 334
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 337
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    :goto_2
    return-void

    .line 314
    .end local v1    # "client":Landroid/content/ContentProviderClient;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_2
    const-string v5, "runningReason"

    const-string v6, "end notification"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 326
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "client":Landroid/content/ContentProviderClient;
    .restart local v3    # "uri":Landroid/net/Uri;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 330
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 331
    .local v2, "exception":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 333
    if-eqz v1, :cond_1

    .line 334
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_2

    .line 333
    .end local v2    # "exception":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v1, :cond_4

    .line 334
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 336
    :cond_4
    throw v5
.end method

.method private createNotifiChannel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 340
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "1203"

    const-string v2, "count_down"

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iput-object v0, p0, Lcn/nubia/deskclock/CountDownService;->mNotificationChannel:Landroid/app/NotificationChannel;

    .line 341
    iget-object v0, p0, Lcn/nubia/deskclock/CountDownService;->mNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v4, v4}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 342
    iget-object v0, p0, Lcn/nubia/deskclock/CountDownService;->mNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 343
    return-void
.end method

.method public static formatCountDownSecond(Landroid/content/Context;I)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "second"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 267
    div-int/lit16 v1, p1, 0xe10

    .line 268
    .local v1, "hour":I
    mul-int/lit16 v4, v1, 0xe10

    sub-int v4, p1, v4

    div-int/lit8 v2, v4, 0x3c

    .line 269
    .local v2, "minutes":I
    mul-int/lit16 v4, v1, 0xe10

    sub-int v4, p1, v4

    rem-int/lit8 v3, v4, 0x3c

    .line 270
    .local v3, "seconds":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    .local v0, "cs":Ljava/lang/StringBuilder;
    if-eqz v1, :cond_0

    .line 273
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f0c0000

    invoke-virtual {v4, v5, v1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 274
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 272
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    :cond_0
    if-eqz v2, :cond_1

    .line 279
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0001

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 280
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 278
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    :cond_1
    if-eqz v3, :cond_2

    .line 283
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0002

    invoke-virtual {v4, v5, v3}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 286
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 284
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static formatCountDownSecondForFloatingPanel(Landroid/content/Context;I)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "second"    # I

    .prologue
    const/16 v5, 0x3c

    const/16 v7, 0x9

    .line 292
    div-int/lit16 v0, p1, 0xe10

    .line 293
    .local v0, "hour":I
    mul-int/lit16 v4, v0, 0xe10

    sub-int v4, p1, v4

    div-int/lit8 v1, v4, 0x3c

    .line 294
    .local v1, "minutes":I
    mul-int/lit16 v4, v0, 0xe10

    sub-int v4, p1, v4

    rem-int/lit8 v2, v4, 0x3c

    .line 296
    .local v2, "seconds":I
    if-ge p1, v5, :cond_1

    .line 297
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "00:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-le v2, v7, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 306
    .local v3, "str":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 297
    .end local v3    # "str":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 298
    :cond_1
    const/16 v4, 0xe10

    if-ge p1, v4, :cond_4

    if-lt p1, v5, :cond_4

    .line 299
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-le v1, v7, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-le v2, v7, :cond_3

    .line 300
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_3
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "str":Ljava/lang/String;
    goto :goto_1

    .line 299
    .end local v3    # "str":Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 300
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 302
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-le v0, v7, :cond_5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_4
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-le v1, v7, :cond_6

    .line 303
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_5
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-le v2, v7, :cond_7

    .line 304
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_6
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "str":Ljava/lang/String;
    goto/16 :goto_1

    .line 302
    .end local v3    # "str":Ljava/lang/String;
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 303
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    .line 304
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_6
.end method

.method private prepareShowNnotification(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 86
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Lcn/nubia/deskclock/CountDownService;->mCurrentTime:I

    .line 87
    iget v0, p0, Lcn/nubia/deskclock/CountDownService;->mCurrentTime:I

    iput v0, p0, Lcn/nubia/deskclock/CountDownService;->mInitTime:I

    .line 88
    const-string v0, "CountDownService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "begin mCurrentTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/deskclock/CountDownService;->mCurrentTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/deskclock/CountDownService;->mBeginTime:J

    .line 90
    iget-object v0, p0, Lcn/nubia/deskclock/CountDownService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcn/nubia/deskclock/CountDownService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x4b5

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 92
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/nubia/deskclock/CountDownService;->callRunningStatusProvider(Z)V

    .line 93
    return-void
.end method

.method private declared-synchronized resetCountDownParams()V
    .locals 4

    .prologue
    .line 349
    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    invoke-static {p0, v0}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeStatusToPref(Landroid/content/Context;I)V

    .line 350
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeTimeToPref(Landroid/content/Context;III)V

    .line 351
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeTimeNotficationToPref(Landroid/content/Context;I)V

    .line 352
    invoke-virtual {p0}, Lcn/nubia/deskclock/CountDownService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeAssisStatusToPref(Landroid/content/Context;I)V

    .line 353
    invoke-virtual {p0}, Lcn/nubia/deskclock/CountDownService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeAssisTimeToPref(Landroid/content/Context;I)V

    .line 354
    invoke-virtual {p0}, Lcn/nubia/deskclock/CountDownService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeCountDownTotalTimeToPref(Landroid/content/Context;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    monitor-exit p0

    return-void

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private stopAlarm()V
    .locals 6

    .prologue
    .line 176
    const-string v3, "CountDownService"

    const-string v4, " stopAlarm "

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Lcn/nubia/deskclock/CountDownService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 178
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.nubia.deskclock.countdown.action.COUNTDOWN_ACTION"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreO()Z

    move-result v3

    if-nez v3, :cond_0

    .line 180
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "cn.nubia.deskclock.preset"

    const-string v5, "cn.nubia.deskclock.CountdownBroadCastReceiver"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 182
    :cond_0
    const/4 v3, 0x0

    const/high16 v4, 0x20000000

    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 184
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v2, :cond_1

    .line 185
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 186
    :cond_1
    return-void
.end method


# virtual methods
.method public createNotificationWhenRunning(Landroid/content/Context;I)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "second"    # I

    .prologue
    .line 189
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 190
    .local v13, "resources":Landroid/content/res/Resources;
    invoke-static/range {p1 .. p2}, Lcn/nubia/deskclock/CountDownService;->formatCountDownSecond(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 191
    .local v7, "notificationTitle":Ljava/lang/String;
    invoke-static/range {p1 .. p2}, Lcn/nubia/deskclock/CountDownService;->formatCountDownSecondForFloatingPanel(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 192
    .local v4, "floatingPanelTitle":Ljava/lang/String;
    const-string v14, "CountDownService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "createNotificationWhenRunning: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ;; notificationTitle : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ;; floatingPanelTitle : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    mul-int/lit8 v14, p2, 0x64

    move-object/from16 v0, p0

    iget v15, v0, Lcn/nubia/deskclock/CountDownService;->mInitTime:I

    div-int/2addr v14, v15

    int-to-float v11, v14

    .line 194
    .local v11, "percent":F
    new-instance v8, Landroid/content/Intent;

    const-class v14, Lcn/nubia/deskclock/DeskClock;

    move-object/from16 v0, p1

    invoke-direct {v8, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 195
    .local v8, "notify":Landroid/content/Intent;
    const-string v14, "deskclock.select.tab"

    const/4 v15, 0x3

    invoke-virtual {v8, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 196
    const v14, 0x1000c000

    invoke-virtual {v8, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 198
    const/16 v14, 0x3ea

    const/high16 v15, 0x8000000

    move-object/from16 v0, p1

    invoke-static {v0, v14, v8, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 201
    .local v10, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v12, Landroid/content/Intent;

    const-string v14, "com.nubia.deskclock.countdown.action.COUNTDOWN_RESET_ACTION"

    invoke-direct {v12, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    .local v12, "resetIntent":Landroid/content/Intent;
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreO()Z

    move-result v14

    if-nez v14, :cond_0

    .line 203
    new-instance v14, Landroid/content/ComponentName;

    const-string v15, "cn.nubia.deskclock.preset"

    const-string v16, "cn.nubia.deskclock.CountdownBroadCastReceiver"

    invoke-direct/range {v14 .. v16}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 205
    :cond_0
    const/16 v14, 0x4b3

    const/high16 v15, 0x8000000

    move-object/from16 v0, p1

    invoke-static {v0, v14, v12, v15}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 208
    .local v9, "pendingClose":Landroid/app/PendingIntent;
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreO()Z

    move-result v14

    if-nez v14, :cond_4

    .line 209
    new-instance v6, Landroid/app/Notification$Builder;

    const-string v14, "1203"

    move-object/from16 v0, p1

    invoke-direct {v6, v0, v14}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 214
    .local v6, "notification":Landroid/app/Notification$Builder;
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/deskclock/CountDownService;->mCountdownLabel:Ljava/lang/String;

    if-eqz v14, :cond_1

    const-string v14, ""

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/deskclock/CountDownService;->mCountdownLabel:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    :cond_1
    const v14, 0x7f0d0016

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 215
    .local v5, "label":Ljava/lang/String;
    :goto_1
    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v14

    .line 216
    invoke-virtual {v14, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v14

    const/4 v15, 0x4

    .line 217
    invoke-virtual {v14, v15}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v14

    const-string v15, "alarm"

    invoke-virtual {v14, v15}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v14

    const/4 v15, 0x0

    .line 218
    invoke-virtual {v14, v15}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v14

    const/4 v15, -0x1

    invoke-virtual {v14, v15}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 219
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 220
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreN()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 221
    const/4 v3, 0x0

    .line 222
    .local v3, "contentView":Landroid/widget/RemoteViews;
    new-instance v3, Landroid/widget/RemoteViews;

    .end local v3    # "contentView":Landroid/widget/RemoteViews;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const v15, 0x7f04002e

    invoke-direct {v3, v14, v15}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 223
    .restart local v3    # "contentView":Landroid/widget/RemoteViews;
    const v14, 0x7f120079

    invoke-virtual {v3, v14, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 224
    const v14, 0x7f02007c

    invoke-virtual {v6, v14}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 226
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f02007d

    invoke-static {v14, v15}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 225
    invoke-virtual {v6, v14}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 228
    const v14, 0x7f12007c

    invoke-virtual {v3, v14, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 229
    invoke-virtual {v6, v3}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 246
    .end local v3    # "contentView":Landroid/widget/RemoteViews;
    :cond_2
    :goto_2
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreO()Z

    move-result v14

    if-nez v14, :cond_3

    .line 247
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 248
    const-string v14, "1203"

    invoke-virtual {v6, v14}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 250
    :cond_3
    const/16 v14, 0x3ea

    const/high16 v15, 0x8000000

    move-object/from16 v0, p1

    invoke-static {v0, v14, v8, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    invoke-virtual {v6, v14}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 252
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x1a

    if-ge v14, v15, :cond_8

    .line 253
    const-string v14, "Running"

    invoke-virtual {v6, v14}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 254
    const-string v14, "F0"

    invoke-virtual {v6, v14}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 262
    :goto_3
    invoke-virtual {v6, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 263
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/deskclock/CountDownService;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v15, 0x4b3

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 264
    return-void

    .line 211
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v5    # "label":Ljava/lang/String;
    .end local v6    # "notification":Landroid/app/Notification$Builder;
    :cond_4
    new-instance v6, Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .restart local v6    # "notification":Landroid/app/Notification$Builder;
    goto/16 :goto_0

    .line 214
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/deskclock/CountDownService;->mCountdownLabel:Ljava/lang/String;

    goto/16 :goto_1

    .line 231
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v5    # "label":Ljava/lang/String;
    :cond_6
    const v14, 0x7f02007b

    invoke-virtual {v6, v14}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 232
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreO()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 234
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f02007e

    invoke-static {v14, v15}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 233
    invoke-virtual {v6, v14}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 237
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcn/nubia/deskclock/CountDownService;->mIsShowFloatView:Z

    if-eqz v14, :cond_2

    .line 238
    const-string v14, "floating_mode"

    const/4 v15, 0x2

    invoke-virtual {v1, v14, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 239
    const-string v14, "floating_percentage"

    invoke-virtual {v1, v14, v11}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 240
    const-string v14, "floating_title"

    invoke-virtual {v1, v14, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 241
    const-string v14, "floating_intent"

    invoke-virtual {v1, v14, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 242
    const-string v14, "base_notification_right_button_text"

    const v15, 0x7f0d00d6

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v14, v15}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 243
    const-string v14, "base_notification_right_button_pendingintent"

    invoke-virtual {v1, v14, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_2

    .line 256
    :cond_8
    new-instance v14, Landroid/app/Notification$Action$Builder;

    const/4 v15, 0x0

    .line 257
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0d0080

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v14, v15, v0, v9}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v14}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v2

    .line 258
    .local v2, "cancelAction":Landroid/app/Notification$Action;
    invoke-virtual {v6, v2}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 259
    const-string v14, "nubiaSort"

    const-string v15, "Running"

    invoke-virtual {v1, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v14, "50"

    invoke-virtual {v6, v14}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto/16 :goto_3
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 63
    const-string v0, "CountDownService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/CountDownService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcn/nubia/deskclock/CountDownService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 65
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreO()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-direct {p0}, Lcn/nubia/deskclock/CountDownService;->createNotifiChannel()V

    .line 67
    iget-object v0, p0, Lcn/nubia/deskclock/CountDownService;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcn/nubia/deskclock/CountDownService;->mNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 69
    :cond_0
    new-instance v0, Lcn/nubia/deskclock/CountDownService$1;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/CountDownService$1;-><init>(Lcn/nubia/deskclock/CountDownService;)V

    iput-object v0, p0, Lcn/nubia/deskclock/CountDownService;->mHandler:Landroid/os/Handler;

    .line 83
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 149
    const-string v0, "CountDownService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/nubia/deskclock/CountDownService;->callRunningStatusProvider(Z)V

    .line 151
    iget-object v0, p0, Lcn/nubia/deskclock/CountDownService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lcn/nubia/deskclock/CountDownService;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x4b3

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 153
    iget-object v0, p0, Lcn/nubia/deskclock/CountDownService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcn/nubia/deskclock/CountDownService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 155
    iput-object v2, p0, Lcn/nubia/deskclock/CountDownService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 157
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v2, 0x1

    .line 129
    const-string v3, "CountDownService"

    const-string v4, "onStartCommand"

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    if-nez p1, :cond_0

    .line 131
    invoke-direct {p0}, Lcn/nubia/deskclock/CountDownService;->resetCountDownParams()V

    .line 132
    invoke-virtual {p0}, Lcn/nubia/deskclock/CountDownService;->stopSelf()V

    .line 133
    const/4 v2, 0x2

    .line 144
    :goto_0
    return v2

    .line 135
    :cond_0
    invoke-static {p0}, Lcn/nubia/deskclock/util/AlarmAlertWakeLock;->createPartialWakeLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/deskclock/CountDownService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 136
    iget-object v3, p0, Lcn/nubia/deskclock/CountDownService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 137
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 138
    .local v1, "msg":Landroid/os/Message;
    const-string v3, "bengin_time"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 139
    .local v0, "arg":I
    const-string v3, "label"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/deskclock/CountDownService;->mCountdownLabel:Ljava/lang/String;

    .line 140
    const-string v3, "is_show_float_view"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcn/nubia/deskclock/CountDownService;->mIsShowFloatView:Z

    .line 141
    const/16 v3, 0x4b4

    iput v3, v1, Landroid/os/Message;->what:I

    .line 142
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 143
    iget-object v3, p0, Lcn/nubia/deskclock/CountDownService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 4
    .param p1, "rootIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 161
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 162
    iget-object v1, p0, Lcn/nubia/deskclock/CountDownService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 163
    iget-object v1, p0, Lcn/nubia/deskclock/CountDownService;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v2, 0x4b3

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 164
    iget-object v1, p0, Lcn/nubia/deskclock/CountDownService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcn/nubia/deskclock/CountDownService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 166
    iput-object v3, p0, Lcn/nubia/deskclock/CountDownService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 168
    :cond_0
    invoke-direct {p0}, Lcn/nubia/deskclock/CountDownService;->stopAlarm()V

    .line 169
    invoke-direct {p0}, Lcn/nubia/deskclock/CountDownService;->resetCountDownParams()V

    .line 170
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.deskclock.NEW_COUNTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, "newIntent":Landroid/content/Intent;
    const-string v1, "countdown_shortcut"

    .line 172
    invoke-virtual {p0}, Lcn/nubia/deskclock/CountDownService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00f6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 171
    invoke-static {p0, v1, v2, v0}, Lcn/nubia/deskclock/util/Utils;->updateForceTouch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 173
    return-void
.end method
