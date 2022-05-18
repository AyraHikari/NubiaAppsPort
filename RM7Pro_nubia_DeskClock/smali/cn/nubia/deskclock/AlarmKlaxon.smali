.class public Lcn/nubia/deskclock/AlarmKlaxon;
.super Landroid/app/Service;
.source "AlarmKlaxon.java"

# interfaces
.implements Lnubia/gesture/sensor/MotionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deskclock/AlarmKlaxon$CallStateListener;
    }
.end annotation


# static fields
.field public static final ALARM_SNOOZE_ACTION_FROM_VOICE_ASSISTANT:Ljava/lang/String; = "com.nubia.deskclock.ALARM_SNOOZE_FROM_VOICE_ASSISTANT"

.field private static final DEFAULT_ALARM_TIMEOUT:I = 0x2

.field private static final EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_TYPE"

.field private static final FADEDOWN:I = 0x5

.field private static final FADEUP:I = 0x6

.field private static final FOCUSCHANGE:I = 0x4

.field private static final HEADUP_RELEASED_ACTION:Ljava/lang/String; = "com.android.systemui.headsup_released"

.field private static final KEY_PACKAGE_NAME:Ljava/lang/String; = "pkgname"

.field private static final KILLER:I = 0x3e8

.field private static final KILLER_GAME_MODE:I = 0x3e9

.field private static final MESSAGE_PROMPTS_FROM_CALL_SETTING:Ljava/lang/String; = "message_prompts"

.field private static final SNOOZE:I = 0x378

.field private static final SNOOZE_TIME:Ljava/lang/String; = "snoozeTime"

.field private static final TAG:Ljava/lang/String; = "AlarmKlaxon"

.field private static final VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"

.field private static mHasClosed:Z


# instance fields
.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCurrentAlarm:Lcn/nubia/deskclock/model/Alarm;

.field private mHasClearSnoozeAlert:Z

.field private mIsGameMode:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingtoneHandler:Landroid/os/Handler;

.field private mStartTime:J

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mToast:Landroid/widget/Toast;

.field private mTurnOverDetector:Lnubia/gesture/sensor/MotionProxy;

.field private sAsyncRingtonePlayer:Lcn/nubia/deskclock/AsyncRingtonePlayer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mHasClearSnoozeAlert:Z

    .line 118
    new-instance v0, Lcn/nubia/deskclock/AlarmKlaxon$1;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/AlarmKlaxon$1;-><init>(Lcn/nubia/deskclock/AlarmKlaxon;)V

    iput-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 333
    new-instance v0, Lcn/nubia/deskclock/AlarmKlaxon$4;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/AlarmKlaxon$4;-><init>(Lcn/nubia/deskclock/AlarmKlaxon;)V

    iput-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 414
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mTurnOverDetector:Lnubia/gesture/sensor/MotionProxy;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/deskclock/AlarmKlaxon;Landroid/content/Context;)Lcn/nubia/deskclock/AsyncRingtonePlayer;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/AlarmKlaxon;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/AlarmKlaxon;->getAsyncRingtonePlayer(Landroid/content/Context;)Lcn/nubia/deskclock/AsyncRingtonePlayer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/deskclock/AlarmKlaxon;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/AlarmKlaxon;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mHasClearSnoozeAlert:Z

    return v0
.end method

.method static synthetic access$1000(Lcn/nubia/deskclock/AlarmKlaxon;Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;ZJ)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/AlarmKlaxon;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcn/nubia/deskclock/model/Alarm;
    .param p3, "x3"    # Z
    .param p4, "x4"    # J

    .prologue
    .line 58
    invoke-direct/range {p0 .. p5}, Lcn/nubia/deskclock/AlarmKlaxon;->dismiss(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;ZJ)V

    return-void
.end method

.method static synthetic access$102(Lcn/nubia/deskclock/AlarmKlaxon;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/AlarmKlaxon;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mHasClearSnoozeAlert:Z

    return p1
.end method

.method static synthetic access$1100(Lcn/nubia/deskclock/AlarmKlaxon;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/AlarmKlaxon;

    .prologue
    .line 58
    invoke-direct {p0}, Lcn/nubia/deskclock/AlarmKlaxon;->sendDismissToUIBroadcast()V

    return-void
.end method

.method static synthetic access$1200(Lcn/nubia/deskclock/AlarmKlaxon;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/AlarmKlaxon;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mIsGameMode:Z

    return v0
.end method

.method static synthetic access$1300(Lcn/nubia/deskclock/AlarmKlaxon;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/AlarmKlaxon;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/AlarmKlaxon;->snoozeOrDismissAlarm(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1400(Lcn/nubia/deskclock/AlarmKlaxon;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/AlarmKlaxon;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/AlarmKlaxon;->kill(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcn/nubia/deskclock/AlarmKlaxon;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/AlarmKlaxon;

    .prologue
    .line 58
    invoke-direct {p0}, Lcn/nubia/deskclock/AlarmKlaxon;->snooze()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/deskclock/AlarmKlaxon;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/AlarmKlaxon;

    .prologue
    .line 58
    invoke-direct {p0}, Lcn/nubia/deskclock/AlarmKlaxon;->clearSnoozeAlert()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/deskclock/AlarmKlaxon;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/AlarmKlaxon;

    .prologue
    .line 58
    iget-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 58
    sput-boolean p0, Lcn/nubia/deskclock/AlarmKlaxon;->mHasClosed:Z

    return p0
.end method

.method static synthetic access$500(Lcn/nubia/deskclock/AlarmKlaxon;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/AlarmKlaxon;

    .prologue
    .line 58
    iget-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/deskclock/AlarmKlaxon;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/AlarmKlaxon;
    .param p1, "x1"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/AlarmKlaxon;->uploadSmallTickerUseStatus(I)V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/deskclock/AlarmKlaxon;)Lcn/nubia/deskclock/model/Alarm;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/AlarmKlaxon;

    .prologue
    .line 58
    iget-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mCurrentAlarm:Lcn/nubia/deskclock/model/Alarm;

    return-object v0
.end method

.method static synthetic access$800(Lcn/nubia/deskclock/AlarmKlaxon;Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/AlarmKlaxon;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcn/nubia/deskclock/model/Alarm;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcn/nubia/deskclock/AlarmKlaxon;->snooze(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/deskclock/AlarmKlaxon;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/AlarmKlaxon;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/AlarmKlaxon;->sendSnoozeToUIBroadcast(Z)V

    return-void
.end method

.method private clearSnoozeAlert()V
    .locals 6

    .prologue
    .line 162
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v1

    .line 163
    .local v1, "applicationContext":Lcn/nubia/deskclock/DeskClockApplication;
    if-nez v1, :cond_0

    .line 164
    invoke-virtual {p0}, Lcn/nubia/deskclock/AlarmKlaxon;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .end local v1    # "applicationContext":Lcn/nubia/deskclock/DeskClockApplication;
    check-cast v1, Lcn/nubia/deskclock/DeskClockApplication;

    .line 166
    .restart local v1    # "applicationContext":Lcn/nubia/deskclock/DeskClockApplication;
    :cond_0
    invoke-virtual {v1}, Lcn/nubia/deskclock/DeskClockApplication;->getDefaultSharedPref()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 167
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "current_alarm"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 168
    .local v0, "alarmId":I
    const-string v3, "AlarmKlaxon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearSnoozeAlert: alarmId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcn/nubia/deskclock/AlarmKlaxon;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v0, v4}, Lcn/nubia/deskclock/model/Alarms;->disableSnoozeAlert(Landroid/content/Context;IZ)V

    .line 170
    invoke-virtual {p0}, Lcn/nubia/deskclock/AlarmKlaxon;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/deskclock/model/Alarms;->setNextAlert(Landroid/content/Context;)V

    .line 171
    invoke-virtual {p0}, Lcn/nubia/deskclock/AlarmKlaxon;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/deskclock/model/Alarms;->cleanAllNotification(Landroid/content/Context;)V

    .line 172
    return-void
.end method

.method private disableKiller()V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mRingtoneHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 329
    iget-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mRingtoneHandler:Landroid/os/Handler;

    const/16 v1, 0x378

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 330
    return-void
.end method

.method private dismiss(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;ZJ)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mCurrentAlarm"    # Lcn/nubia/deskclock/model/Alarm;
    .param p3, "killed"    # Z
    .param p4, "starttime"    # J

    .prologue
    .line 447
    invoke-static {}, Lcn/nubia/deskclock/util/ThreadPool;->getInstance()Lcn/nubia/deskclock/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcn/nubia/deskclock/AlarmKlaxon$5;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcn/nubia/deskclock/AlarmKlaxon$5;-><init>(Lcn/nubia/deskclock/AlarmKlaxon;Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;ZJ)V

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/util/ThreadPool;->addTask(Ljava/lang/Runnable;)V

    .line 453
    return-void
.end method

.method private enableKiller(Lcn/nubia/deskclock/model/Alarm;)V
    .locals 12
    .param p1, "alarm"    # Lcn/nubia/deskclock/model/Alarm;

    .prologue
    const-wide/32 v10, 0xea60

    const/4 v9, 0x1

    .line 300
    const-string v5, "AlarmKlaxon"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enableKiller: mIsGameMode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mIsGameMode:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-boolean v5, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mIsGameMode:Z

    if-eqz v5, :cond_1

    .line 302
    iget-object v5, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mRingtoneHandler:Landroid/os/Handler;

    const/16 v6, 0x3e9

    const-wide/16 v8, 0x1388

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    const/4 v0, 0x2

    .line 306
    .local v0, "autoSnoozeMinutes":I
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/deskclock/DeskClockApplication;->getDefaultSharedPref()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 307
    .local v2, "sharedPref":Landroid/content/SharedPreferences;
    const-string v5, "isSnooze"

    invoke-interface {v2, v5, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 308
    .local v1, "isSnooze":Z
    const-string v5, "snoozeMaxCount"

    const/16 v6, 0x12c

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 309
    .local v3, "snoozeMaxCount":I
    const-string v5, "snoozeTime"

    const/16 v6, 0xa

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 310
    .local v4, "snoozeTime":I
    if-ne v4, v9, :cond_2

    .line 311
    const/4 v0, 0x1

    .line 313
    :cond_2
    iget v5, p1, Lcn/nubia/deskclock/model/Alarm;->snoozeCount:I

    if-eq v5, v3, :cond_3

    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    if-nez v1, :cond_5

    .line 315
    :cond_3
    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    .line 316
    iget-object v5, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mRingtoneHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mRingtoneHandler:Landroid/os/Handler;

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    if-ne v0, v9, :cond_4

    int-to-long v6, v0

    mul-long/2addr v6, v10

    :goto_1
    invoke-virtual {v5, v8, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_4
    int-to-long v6, v0

    mul-long/2addr v6, v10

    goto :goto_1

    .line 321
    :cond_5
    iget-object v5, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mRingtoneHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mRingtoneHandler:Landroid/os/Handler;

    const/16 v7, 0x378

    invoke-virtual {v6, v7, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    if-ne v0, v9, :cond_6

    int-to-long v6, v0

    mul-long/2addr v6, v10

    :goto_2
    invoke-virtual {v5, v8, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_6
    int-to-long v6, v0

    mul-long/2addr v6, v10

    goto :goto_2
.end method

.method private declared-synchronized getAsyncRingtonePlayer(Landroid/content/Context;)Lcn/nubia/deskclock/AsyncRingtonePlayer;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 515
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon;->sAsyncRingtonePlayer:Lcn/nubia/deskclock/AsyncRingtonePlayer;

    if-nez v0, :cond_0

    .line 516
    new-instance v0, Lcn/nubia/deskclock/AsyncRingtonePlayer;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-direct {v0, v1, v2}, Lcn/nubia/deskclock/AsyncRingtonePlayer;-><init>(Landroid/content/Context;Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    iput-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon;->sAsyncRingtonePlayer:Lcn/nubia/deskclock/AsyncRingtonePlayer;

    .line 518
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon;->sAsyncRingtonePlayer:Lcn/nubia/deskclock/AsyncRingtonePlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 515
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getHasClosed()Z
    .locals 1

    .prologue
    .line 522
    sget-boolean v0, Lcn/nubia/deskclock/AlarmKlaxon;->mHasClosed:Z

    return v0
.end method

.method private getNewHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 473
    new-instance v0, Lcn/nubia/deskclock/AlarmKlaxon$7;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/deskclock/AlarmKlaxon$7;-><init>(Lcn/nubia/deskclock/AlarmKlaxon;Landroid/os/Looper;)V

    return-object v0
.end method

.method private initHandler()V
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mRingtoneHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 500
    invoke-direct {p0}, Lcn/nubia/deskclock/AlarmKlaxon;->getNewHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mRingtoneHandler:Landroid/os/Handler;

    .line 502
    :cond_0
    return-void
.end method

.method private initTurnOverMotion()V
    .locals 2

    .prologue
    .line 417
    new-instance v0, Lnubia/gesture/sensor/MotionProxy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnubia/gesture/sensor/MotionProxy;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mTurnOverDetector:Lnubia/gesture/sensor/MotionProxy;

    .line 418
    return-void
.end method

.method private kill(Z)V
    .locals 6
    .param p1, "kill"    # Z

    .prologue
    .line 92
    const-string v0, "AlarmKlaxon"

    const-string v1, "*********** Alarm killer triggered ***********"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v2, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mCurrentAlarm:Lcn/nubia/deskclock/model/Alarm;

    iget-wide v4, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mStartTime:J

    move-object v0, p0

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcn/nubia/deskclock/AlarmKlaxon;->dismiss(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;ZJ)V

    .line 95
    invoke-direct {p0}, Lcn/nubia/deskclock/AlarmKlaxon;->sendDismissToUIBroadcast()V

    .line 97
    sget-object v0, Lcn/nubia/deskclock/util/AlarmUtils;->mCurrentAlertAlarm:Lcn/nubia/deskclock/model/Alarm;

    if-eqz v0, :cond_0

    .line 98
    const-string v0, "AlarmKlaxon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kill() mCurrentAlertAlarm.id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/nubia/deskclock/util/AlarmUtils;->mCurrentAlertAlarm:Lcn/nubia/deskclock/model/Alarm;

    iget v2, v2, Lcn/nubia/deskclock/model/Alarm;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ;; mCurrentAlarm.id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mCurrentAlarm:Lcn/nubia/deskclock/model/Alarm;

    iget v2, v2, Lcn/nubia/deskclock/model/Alarm;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    sget-object v0, Lcn/nubia/deskclock/util/AlarmUtils;->mCurrentAlertAlarm:Lcn/nubia/deskclock/model/Alarm;

    iget v0, v0, Lcn/nubia/deskclock/model/Alarm;->id:I

    iget-object v1, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mCurrentAlarm:Lcn/nubia/deskclock/model/Alarm;

    iget v1, v1, Lcn/nubia/deskclock/model/Alarm;->id:I

    if-ne v0, v1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcn/nubia/deskclock/AlarmKlaxon;->stopSelf()V

    .line 103
    :cond_0
    return-void
.end method

.method private registerTurnOverMotion()V
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mTurnOverDetector:Lnubia/gesture/sensor/MotionProxy;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mTurnOverDetector:Lnubia/gesture/sensor/MotionProxy;

    invoke-virtual {v0, p0}, Lnubia/gesture/sensor/MotionProxy;->registerListener(Lnubia/gesture/sensor/MotionListener;)V

    .line 424
    :cond_0
    return-void
.end method

.method private releaseResource()V
    .locals 6

    .prologue
    .line 555
    const-string v3, "AlarmKlaxon"

    const-string v4, "releaseResource: start"

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-direct {p0, p0}, Lcn/nubia/deskclock/AlarmKlaxon;->getAsyncRingtonePlayer(Landroid/content/Context;)Lcn/nubia/deskclock/AsyncRingtonePlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->stopAlarm()V

    .line 557
    invoke-direct {p0, p0}, Lcn/nubia/deskclock/AlarmKlaxon;->getAsyncRingtonePlayer(Landroid/content/Context;)Lcn/nubia/deskclock/AsyncRingtonePlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->abandonAudioFocus()V

    .line 558
    const-string v3, "AlarmKlaxon"

    const-string v4, "releaseResource: MediaPlayer release end"

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    :try_start_0
    iget-object v3, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_0

    .line 561
    iget-object v3, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v4, Lcn/nubia/deskclock/AlarmKlaxon$CallStateListener;

    invoke-direct {v4, p0}, Lcn/nubia/deskclock/AlarmKlaxon$CallStateListener;-><init>(Lcn/nubia/deskclock/AlarmKlaxon;)V

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcn/nubia/deskclock/AlarmKlaxon;->disableKiller()V

    .line 568
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.nubia.deskclock.ALARM_DONE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 569
    .local v0, "alarmDone":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/AlarmKlaxon;->sendBroadcast(Landroid/content/Intent;)V

    .line 571
    :try_start_1
    iget-object v3, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, Lcn/nubia/deskclock/AlarmKlaxon;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 575
    :goto_1
    invoke-static {}, Lcn/nubia/deskclock/util/AlarmAlertWakeLock;->releaseCpuLock()V

    .line 576
    invoke-direct {p0}, Lcn/nubia/deskclock/AlarmKlaxon;->unregisterTurnOverMotion()V

    .line 577
    iget-object v3, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mRingtoneHandler:Landroid/os/Handler;

    if-eqz v3, :cond_1

    .line 578
    iget-object v3, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mRingtoneHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 580
    :cond_1
    const-string v3, "AlarmKlaxon"

    const-string v4, "releaseResource: end"

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    return-void

    .line 564
    .end local v0    # "alarmDone":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 565
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 572
    .end local v1    # "e":Ljava/lang/SecurityException;
    .restart local v0    # "alarmDone":Landroid/content/Intent;
    :catch_1
    move-exception v2

    .line 573
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    const-string v3, "AlarmKlaxon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releaseResource: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private sendDismissToUIBroadcast()V
    .locals 3

    .prologue
    .line 265
    const-string v1, "AlarmKlaxon"

    const-string v2, "sendDismissToUIBroadcast: "

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nubia.deskclock.ALARM_TOUI_DISMISS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 267
    .local v0, "dimissIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/AlarmKlaxon;->sendBroadcast(Landroid/content/Intent;)V

    .line 268
    return-void
.end method

.method private sendSnoozeToUIBroadcast(Z)V
    .locals 4
    .param p1, "mCurrentAlarmIsNull"    # Z

    .prologue
    .line 256
    const-string v1, "AlarmKlaxon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendSnoozeToUIBroadcast: mCurrentAlarmIsNull : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nubia.deskclock.ALARM_TOUI_SNOOZE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    .local v0, "snoozeIntent":Landroid/content/Intent;
    if-nez p1, :cond_0

    .line 259
    const-string v1, "mCurrentAlarmIsNull"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 261
    :cond_0
    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/AlarmKlaxon;->sendBroadcast(Landroid/content/Intent;)V

    .line 262
    return-void
.end method

.method private showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 505
    iget-object v1, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mToast:Landroid/widget/Toast;

    if-eqz v1, :cond_0

    .line 506
    iget-object v1, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 508
    :cond_0
    const/4 v1, 0x1

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mToast:Landroid/widget/Toast;

    .line 509
    iget-object v1, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    .line 510
    .local v0, "mNextView":Landroid/view/View;
    const-string v1, "AlarmKlaxon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showToast: mNextView : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ;; Toast : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iget-object v1, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 512
    return-void
.end method

.method private snooze()V
    .locals 3

    .prologue
    .line 106
    const-string v0, "AlarmKlaxon"

    const-string v1, "*********** Alarm snooze triggered ***********"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mCurrentAlarm:Lcn/nubia/deskclock/model/Alarm;

    invoke-direct {p0, p0, v0}, Lcn/nubia/deskclock/AlarmKlaxon;->snooze(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)V

    .line 108
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/nubia/deskclock/AlarmKlaxon;->sendSnoozeToUIBroadcast(Z)V

    .line 110
    sget-object v0, Lcn/nubia/deskclock/util/AlarmUtils;->mCurrentAlertAlarm:Lcn/nubia/deskclock/model/Alarm;

    if-eqz v0, :cond_0

    .line 111
    const-string v0, "AlarmKlaxon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "snooze() mCurrentAlertAlarm.id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/nubia/deskclock/util/AlarmUtils;->mCurrentAlertAlarm:Lcn/nubia/deskclock/model/Alarm;

    iget v2, v2, Lcn/nubia/deskclock/model/Alarm;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ;; mCurrentAlarm.id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mCurrentAlarm:Lcn/nubia/deskclock/model/Alarm;

    iget v2, v2, Lcn/nubia/deskclock/model/Alarm;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    sget-object v0, Lcn/nubia/deskclock/util/AlarmUtils;->mCurrentAlertAlarm:Lcn/nubia/deskclock/model/Alarm;

    iget v0, v0, Lcn/nubia/deskclock/model/Alarm;->id:I

    iget-object v1, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mCurrentAlarm:Lcn/nubia/deskclock/model/Alarm;

    iget v1, v1, Lcn/nubia/deskclock/model/Alarm;->id:I

    if-ne v0, v1, :cond_0

    .line 113
    invoke-virtual {p0}, Lcn/nubia/deskclock/AlarmKlaxon;->stopSelf()V

    .line 116
    :cond_0
    return-void
.end method

.method private snooze(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mCurrentAlarm"    # Lcn/nubia/deskclock/model/Alarm;

    .prologue
    const/4 v8, 0x1

    .line 456
    invoke-static {}, Lcn/nubia/deskclock/util/ThreadPool;->getInstance()Lcn/nubia/deskclock/util/ThreadPool;

    move-result-object v4

    new-instance v5, Lcn/nubia/deskclock/AlarmKlaxon$6;

    invoke-direct {v5, p0, p1, p2}, Lcn/nubia/deskclock/AlarmKlaxon$6;-><init>(Lcn/nubia/deskclock/AlarmKlaxon;Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)V

    invoke-virtual {v4, v5}, Lcn/nubia/deskclock/util/ThreadPool;->addTask(Ljava/lang/Runnable;)V

    .line 463
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/deskclock/DeskClockApplication;->getDefaultSharedPref()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 464
    .local v2, "sharedPref":Landroid/content/SharedPreferences;
    const-string v4, "snoozeTime"

    const/16 v5, 0xa

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 465
    .local v3, "snoozeMinutes":I
    const v4, 0x7f0d0021

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, "displayTime":Ljava/lang/String;
    const-string v4, "isSnooze"

    invoke-interface {v2, v4, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 467
    .local v1, "mIsSnooze":Z
    if-eqz v1, :cond_0

    .line 468
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v4, v0}, Lcn/nubia/deskclock/AlarmKlaxon;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 470
    :cond_0
    return-void
.end method

.method private snoozeOrDismissAlarm(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 399
    iget-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mCurrentAlarm:Lcn/nubia/deskclock/model/Alarm;

    if-nez v0, :cond_0

    .line 411
    :goto_0
    return-void

    .line 402
    :cond_0
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/deskclock/DeskClockApplication;->getDefaultSharedPref()Landroid/content/SharedPreferences;

    move-result-object v7

    .line 403
    .local v7, "sharedPref":Landroid/content/SharedPreferences;
    const-string v0, "snoozeMaxCount"

    const/16 v1, 0x12c

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 404
    .local v6, "mSnoozeMaxCount":I
    iget-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mCurrentAlarm:Lcn/nubia/deskclock/model/Alarm;

    iget v0, v0, Lcn/nubia/deskclock/model/Alarm;->snoozeCount:I

    if-ne v0, v6, :cond_1

    .line 405
    iget-object v2, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mCurrentAlarm:Lcn/nubia/deskclock/model/Alarm;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcn/nubia/deskclock/AlarmKlaxon;->dismiss(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;ZJ)V

    .line 406
    invoke-virtual {p0}, Lcn/nubia/deskclock/AlarmKlaxon;->stopSelf()V

    goto :goto_0

    .line 408
    :cond_1
    iget-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mCurrentAlarm:Lcn/nubia/deskclock/model/Alarm;

    invoke-direct {p0, p1, v0}, Lcn/nubia/deskclock/AlarmKlaxon;->snooze(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)V

    .line 409
    invoke-virtual {p0}, Lcn/nubia/deskclock/AlarmKlaxon;->stopSelf()V

    goto :goto_0
.end method

.method private startShowAlarmNotification()V
    .locals 5

    .prologue
    .line 227
    const-string v2, "AlarmKlaxon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startShowAlarmNotification: mIsGameMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mIsGameMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v2, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mCurrentAlarm:Lcn/nubia/deskclock/model/Alarm;

    iget v1, v2, Lcn/nubia/deskclock/model/Alarm;->id:I

    .line 229
    .local v1, "notificationId":I
    const/4 v0, 0x0

    .line 230
    .local v0, "notification":Landroid/app/Notification;
    iget-boolean v2, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mIsGameMode:Z

    if-eqz v2, :cond_0

    .line 231
    const/16 v1, 0x457

    .line 232
    iget-object v2, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mCurrentAlarm:Lcn/nubia/deskclock/model/Alarm;

    invoke-static {p0, v2}, Lcn/nubia/deskclock/model/Alarms;->showAlarmNotiWhenGameRunning(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)Landroid/app/Notification;

    move-result-object v0

    .line 236
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcn/nubia/deskclock/AlarmKlaxon;->startForeground(ILandroid/app/Notification;)V

    .line 237
    return-void

    .line 234
    :cond_0
    iget-object v2, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mCurrentAlarm:Lcn/nubia/deskclock/model/Alarm;

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcn/nubia/deskclock/model/Alarms;->showAlarmNotificationByService(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;Z)Landroid/app/Notification;

    move-result-object v0

    goto :goto_0
.end method

.method private unregisterTurnOverMotion()V
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mTurnOverDetector:Lnubia/gesture/sensor/MotionProxy;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mTurnOverDetector:Lnubia/gesture/sensor/MotionProxy;

    invoke-virtual {v0, p0}, Lnubia/gesture/sensor/MotionProxy;->unregisterListener(Lnubia/gesture/sensor/MotionListener;)V

    .line 430
    :cond_0
    return-void
.end method

.method private uploadSmallTickerUseStatus(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 530
    const-string v0, ""

    .line 531
    .local v0, "handleType":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 542
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/deskclock/AlarmKlaxon;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clock_banner_used"

    const-string v3, "close_way"

    invoke-static {v1, v2, v3, v0}, Lcn/nubia/deskclock/util/ReyunUtils;->trackCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    return-void

    .line 533
    :pswitch_0
    const-string v0, "postpone"

    .line 534
    goto :goto_0

    .line 536
    :pswitch_1
    const-string v0, "close"

    .line 537
    goto :goto_0

    .line 539
    :pswitch_2
    const-string v0, "auto"

    goto :goto_0

    .line 531
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 176
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 127
    const-string v2, "AlarmKlaxon"

    const-string v3, " [onCreate] "

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcn/nubia/deskclock/AlarmKlaxon;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 130
    :try_start_0
    iget-object v2, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v3, Lcn/nubia/deskclock/AlarmKlaxon$CallStateListener;

    invoke-direct {v3, p0}, Lcn/nubia/deskclock/AlarmKlaxon$CallStateListener;-><init>(Lcn/nubia/deskclock/AlarmKlaxon;)V

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcn/nubia/deskclock/AlarmKlaxon;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mAudioManager:Landroid/media/AudioManager;

    .line 137
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 138
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.nubia.deskclock.ALARM_SNOOZE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v2, "com.nubia.deskclock.ALARM_SNOOZE_FROM_VOICE_ASSISTANT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v2, "com.nubia.deskclock.ALARM_DISMISS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v2, "com.android.systemui.headsup_released"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    iget-object v2, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcn/nubia/deskclock/AlarmKlaxon;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    invoke-direct {p0}, Lcn/nubia/deskclock/AlarmKlaxon;->initTurnOverMotion()V

    .line 145
    invoke-direct {p0}, Lcn/nubia/deskclock/AlarmKlaxon;->registerTurnOverMotion()V

    .line 146
    invoke-direct {p0}, Lcn/nubia/deskclock/AlarmKlaxon;->initHandler()V

    .line 147
    sget-object v2, Lcn/nubia/deskclock/util/AlarmUtils;->mCurrentAlertAlarm:Lcn/nubia/deskclock/model/Alarm;

    if-nez v2, :cond_0

    .line 148
    const-string v2, "AlarmKlaxon"

    const-string v3, "onCreate: mCurrentAlertAlarm is null"

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcn/nubia/deskclock/AlarmKlaxon;->stopSelf()V

    .line 150
    invoke-static {}, Lcn/nubia/deskclock/util/ThreadPool;->getInstance()Lcn/nubia/deskclock/util/ThreadPool;

    move-result-object v2

    new-instance v3, Lcn/nubia/deskclock/AlarmKlaxon$2;

    invoke-direct {v3, p0}, Lcn/nubia/deskclock/AlarmKlaxon$2;-><init>(Lcn/nubia/deskclock/AlarmKlaxon;)V

    invoke-virtual {v2, v3}, Lcn/nubia/deskclock/util/ThreadPool;->addTask(Ljava/lang/Runnable;)V

    .line 159
    :cond_0
    return-void

    .line 131
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v0

    .line 132
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const-string v2, "AlarmKlaxon"

    const-string v3, "onCreate: "

    invoke-static {v2, v3, v0}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 241
    const-string v1, "AlarmKlaxon"

    const-string v2, "OnDestroy"

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-direct {p0}, Lcn/nubia/deskclock/AlarmKlaxon;->releaseResource()V

    .line 243
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-le v1, v2, :cond_0

    .line 245
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcn/nubia/deskclock/AlarmKlaxon;->stopForeground(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :cond_0
    :goto_0
    const-string v1, "AlarmKlaxon"

    const-string v2, "OnDestroy end"

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return-void

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onMotionChanged(Lnubia/gesture/sensor/MotionState;)V
    .locals 7
    .param p1, "state"    # Lnubia/gesture/sensor/MotionState;

    .prologue
    const/4 v6, 0x1

    .line 434
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/deskclock/DeskClockApplication;->getDefaultSharedPref()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 435
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    const-string v4, "isSnooze"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 436
    .local v0, "isSnooze":Z
    const-string v4, "snoozeMaxCount"

    const/16 v5, 0x12c

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 437
    .local v2, "snoozeMaxCount":I
    const-string v4, "snoozeTime"

    const/16 v5, 0xa

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 438
    .local v3, "snoozeTime":I
    iget-object v4, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mCurrentAlarm:Lcn/nubia/deskclock/model/Alarm;

    if-eqz v4, :cond_0

    if-ne v0, v6, :cond_0

    iget-object v4, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mCurrentAlarm:Lcn/nubia/deskclock/model/Alarm;

    iget v4, v4, Lcn/nubia/deskclock/model/Alarm;->snoozeCount:I

    if-ge v4, v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 440
    iget-object v4, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mRingtoneHandler:Landroid/os/Handler;

    const/16 v5, 0x378

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 443
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v6, 0x0

    .line 182
    const-string v3, "AlarmKlaxon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OnStartCommand  intent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    sput-boolean v6, Lcn/nubia/deskclock/AlarmKlaxon;->mHasClosed:Z

    .line 184
    if-eqz p1, :cond_0

    sget-object v3, Lcn/nubia/deskclock/util/AlarmUtils;->mCurrentAlertAlarm:Lcn/nubia/deskclock/model/Alarm;

    if-nez v3, :cond_1

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/deskclock/AlarmKlaxon;->stopSelf()V

    .line 186
    invoke-static {}, Lcn/nubia/deskclock/util/ThreadPool;->getInstance()Lcn/nubia/deskclock/util/ThreadPool;

    move-result-object v3

    new-instance v4, Lcn/nubia/deskclock/AlarmKlaxon$3;

    invoke-direct {v4, p0}, Lcn/nubia/deskclock/AlarmKlaxon$3;-><init>(Lcn/nubia/deskclock/AlarmKlaxon;)V

    invoke-virtual {v3, v4}, Lcn/nubia/deskclock/util/ThreadPool;->addTask(Ljava/lang/Runnable;)V

    .line 223
    :goto_0
    return v2

    .line 198
    :cond_1
    const-string v3, "intent.extra.alarm"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/model/Alarm;

    .line 199
    .local v0, "alarm":Lcn/nubia/deskclock/model/Alarm;
    const-string v3, "isGameMode"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mIsGameMode:Z

    .line 200
    if-nez v0, :cond_2

    .line 201
    const-string v3, "AlarmKlaxon"

    const-string v4, "AlarmKlaxon failed to parse the alarm from the intent"

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcn/nubia/deskclock/AlarmKlaxon;->stopSelf()V

    goto :goto_0

    .line 206
    :cond_2
    iget-object v3, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mCurrentAlarm:Lcn/nubia/deskclock/model/Alarm;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mCurrentAlarm:Lcn/nubia/deskclock/model/Alarm;

    iget v3, v3, Lcn/nubia/deskclock/model/Alarm;->id:I

    iget v4, v0, Lcn/nubia/deskclock/model/Alarm;->id:I

    if-eq v3, v4, :cond_5

    .line 207
    iget-object v2, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mCurrentAlarm:Lcn/nubia/deskclock/model/Alarm;

    invoke-direct {p0, p0, v2}, Lcn/nubia/deskclock/AlarmKlaxon;->snooze(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)V

    .line 208
    invoke-direct {p0, v6}, Lcn/nubia/deskclock/AlarmKlaxon;->sendSnoozeToUIBroadcast(Z)V

    .line 209
    invoke-direct {p0}, Lcn/nubia/deskclock/AlarmKlaxon;->disableKiller()V

    .line 215
    :cond_3
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcn/nubia/deskclock/AlarmKlaxon;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 216
    .local v1, "audioManager":Landroid/media/AudioManager;
    iput-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mCurrentAlarm:Lcn/nubia/deskclock/model/Alarm;

    .line 217
    invoke-direct {p0, p0}, Lcn/nubia/deskclock/AlarmKlaxon;->getAsyncRingtonePlayer(Landroid/content/Context;)Lcn/nubia/deskclock/AsyncRingtonePlayer;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mCurrentAlarm:Lcn/nubia/deskclock/model/Alarm;

    iget-boolean v4, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mIsGameMode:Z

    invoke-virtual {v2, v3, v4}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->playAlarm(Lcn/nubia/deskclock/model/Alarm;Z)V

    .line 218
    iget-object v2, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mCurrentAlarm:Lcn/nubia/deskclock/model/Alarm;

    invoke-direct {p0, v2}, Lcn/nubia/deskclock/AlarmKlaxon;->enableKiller(Lcn/nubia/deskclock/model/Alarm;)V

    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mStartTime:J

    .line 220
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-le v2, v3, :cond_4

    .line 221
    invoke-direct {p0}, Lcn/nubia/deskclock/AlarmKlaxon;->startShowAlarmNotification()V

    .line 223
    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    .line 210
    .end local v1    # "audioManager":Landroid/media/AudioManager;
    :cond_5
    iget-object v3, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mCurrentAlarm:Lcn/nubia/deskclock/model/Alarm;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mCurrentAlarm:Lcn/nubia/deskclock/model/Alarm;

    iget v3, v3, Lcn/nubia/deskclock/model/Alarm;->id:I

    iget v4, v0, Lcn/nubia/deskclock/model/Alarm;->id:I

    if-ne v3, v4, :cond_3

    .line 211
    const-string v3, "AlarmKlaxon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Alarm already started for alarm : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcn/nubia/deskclock/model/Alarm;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 2
    .param p1, "rootIntent"    # Landroid/content/Intent;

    .prologue
    .line 547
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 548
    const-string v0, "AlarmKlaxon"

    const-string v1, "onTaskRemoved"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon;->mCurrentAlarm:Lcn/nubia/deskclock/model/Alarm;

    if-eqz v0, :cond_0

    .line 550
    const-string v0, "AlarmKlaxon"

    const-string v1, "onTaskRemoved: mCurrentAlarm is not null"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    :cond_0
    return-void
.end method
