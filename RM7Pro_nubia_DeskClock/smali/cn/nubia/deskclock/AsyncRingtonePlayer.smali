.class public Lcn/nubia/deskclock/AsyncRingtonePlayer;
.super Ljava/lang/Object;
.source "AsyncRingtonePlayer.java"


# static fields
.field private static final ALERT_INCREASE_TOTAL_NUM:I = 0x1f4

.field private static final EVENT_PLAY:I = 0x1

.field private static final EVENT_STOP:I = 0x2

.field private static final EVENT_VOLUME:I = 0x3

.field private static final FADEDOWN:I = 0x5

.field private static final FADEUP:I = 0x6

.field private static final FADEVOLDOWN:I = 0x7

.field private static final FOCUSCHANGE:I = 0x4

.field private static final INCREASINGALERT:I = 0x8

.field private static final INCREASINGALERT_COMPLETE:I = 0xa

.field private static final MESSAGE_PROMPTS_FROM_CALL_SETTING:Ljava/lang/String; = "message_prompts"

.field private static final RELEASE_AUDIOFOCUS:I = 0x9

.field private static final TAG:Ljava/lang/String; = "AsyncRingtonePlayer"

.field private static mCurrentAlarm:Lcn/nubia/deskclock/model/Alarm;

.field private static final sVibratePattern:[J


# instance fields
.field private mAlertIncreasingNum:I

.field private mAlertUri:Landroid/net/Uri;

.field private mAudioAttributes:Landroid/media/AudioAttributes;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioFocusRequest:Landroid/media/AudioFocusRequest;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private mCurVolume:I

.field private mCurrentAlarmVolume:I

.field private mForbidFromCallSetting:I

.field private mHandler:Landroid/os/Handler;

.field private mIsGameMode:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPlaying:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTempIncreasingNum:I

.field private mVibrator:Landroid/os/Vibrator;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mCurrentAlarm:Lcn/nubia/deskclock/model/Alarm;

    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->sVibratePattern:[J

    return-void

    :array_0
    .array-data 8
        0x1f4
        0x1f4
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioManager$OnAudioFocusChangeListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "audioFocusListener"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mCurVolume:I

    .line 60
    iput v2, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mForbidFromCallSetting:I

    .line 70
    iput v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mAlertIncreasingNum:I

    .line 71
    iput v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mTempIncreasingNum:I

    .line 76
    iput v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mCurrentAlarmVolume:I

    .line 79
    iput-object p1, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mContext:Landroid/content/Context;

    .line 80
    iget-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 81
    iget-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 82
    iget-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mVibrator:Landroid/os/Vibrator;

    .line 83
    iput-object p2, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 84
    invoke-direct {p0}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 85
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    iget-object v1, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 86
    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 87
    invoke-virtual {v0, v2}, Landroid/media/AudioFocusRequest$Builder;->setAcceptsDelayedFocusGain(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 88
    invoke-virtual {v0, v2}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 89
    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mAudioFocusRequest:Landroid/media/AudioFocusRequest;

    .line 91
    iget-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mCurrentAlarmVolume:I

    .line 92
    return-void
.end method

.method static synthetic access$000()Lcn/nubia/deskclock/model/Alarm;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mCurrentAlarm:Lcn/nubia/deskclock/model/Alarm;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/deskclock/AsyncRingtonePlayer;Lcn/nubia/deskclock/model/Alarm;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/AsyncRingtonePlayer;
    .param p1, "x1"    # Lcn/nubia/deskclock/model/Alarm;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->play(Lcn/nubia/deskclock/model/Alarm;)V

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/deskclock/AsyncRingtonePlayer;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/AsyncRingtonePlayer;

    .prologue
    .line 36
    iget v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mCurVolume:I

    return v0
.end method

.method static synthetic access$1100(Lcn/nubia/deskclock/AsyncRingtonePlayer;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/AsyncRingtonePlayer;

    .prologue
    .line 36
    iget-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcn/nubia/deskclock/AsyncRingtonePlayer;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/AsyncRingtonePlayer;

    .prologue
    .line 36
    iget-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$1202(Lcn/nubia/deskclock/AsyncRingtonePlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/AsyncRingtonePlayer;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .prologue
    .line 36
    iput-object p1, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/deskclock/AsyncRingtonePlayer;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/AsyncRingtonePlayer;

    .prologue
    .line 36
    invoke-direct {p0}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->increaseVolume()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/deskclock/AsyncRingtonePlayer;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/AsyncRingtonePlayer;

    .prologue
    .line 36
    iget v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mAlertIncreasingNum:I

    return v0
.end method

.method static synthetic access$302(Lcn/nubia/deskclock/AsyncRingtonePlayer;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/AsyncRingtonePlayer;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mAlertIncreasingNum:I

    return p1
.end method

.method static synthetic access$400(Lcn/nubia/deskclock/AsyncRingtonePlayer;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/AsyncRingtonePlayer;

    .prologue
    .line 36
    iget v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mTempIncreasingNum:I

    return v0
.end method

.method static synthetic access$500(Lcn/nubia/deskclock/AsyncRingtonePlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/AsyncRingtonePlayer;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mIsGameMode:Z

    return v0
.end method

.method static synthetic access$600(Lcn/nubia/deskclock/AsyncRingtonePlayer;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/AsyncRingtonePlayer;

    .prologue
    .line 36
    invoke-direct {p0}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->setVolDown()V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/deskclock/AsyncRingtonePlayer;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/AsyncRingtonePlayer;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->changeVolume(I)V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/deskclock/AsyncRingtonePlayer;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/AsyncRingtonePlayer;

    .prologue
    .line 36
    invoke-direct {p0}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->releaseAudioFocus()V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/deskclock/AsyncRingtonePlayer;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/AsyncRingtonePlayer;

    .prologue
    .line 36
    invoke-direct {p0}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->controlVolume()V

    return-void
.end method

.method private changeVolume(I)V
    .locals 8
    .param p1, "audioFocusState"    # I

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x5

    const/4 v3, 0x6

    .line 531
    const-string v0, "AsyncRingtonePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeVolume: audioFocusState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    packed-switch p1, :pswitch_data_0

    .line 558
    :pswitch_0
    const-string v0, "AsyncRingtonePlayer"

    const-string v1, "Unknown audio focus change code"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    :goto_0
    return-void

    .line 534
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 537
    :cond_0
    invoke-direct {p0, v4, v6, v7}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->postMessage(IJ)V

    goto :goto_0

    .line 540
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 541
    iget-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 543
    :cond_1
    invoke-direct {p0, v4, v6, v7}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->postMessage(IJ)V

    goto :goto_0

    .line 546
    :pswitch_3
    iget-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 547
    iget-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 549
    :cond_2
    const/4 v0, 0x7

    invoke-direct {p0, v0, v6, v7}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->postMessage(IJ)V

    goto :goto_0

    .line 552
    :pswitch_4
    iget-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 553
    iget-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 555
    :cond_3
    const-wide/16 v0, 0x190

    invoke-direct {p0, v3, v0, v1}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->postMessage(IJ)V

    goto :goto_0

    .line 532
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private controlVolume()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 567
    iget-object v1, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 569
    :try_start_0
    iget v1, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mCurrentAlarmVolume:I

    if-lez v1, :cond_2

    .line 570
    iget-object v1, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    :cond_0
    :goto_0
    iget-object v1, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 579
    iget-object v1, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 581
    :cond_1
    const-wide/16 v2, 0x3c

    invoke-direct {p0, v4, v2, v3}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->postMessage(IJ)V

    .line 582
    return-void

    .line 572
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 574
    :catch_0
    move-exception v0

    .line 575
    .local v0, "ex":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method private createMediaPlayer()V
    .locals 2

    .prologue
    .line 339
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 340
    iget-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcn/nubia/deskclock/AsyncRingtonePlayer$3;

    invoke-direct {v1, p0}, Lcn/nubia/deskclock/AsyncRingtonePlayer$3;-><init>(Lcn/nubia/deskclock/AsyncRingtonePlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 356
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isLOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 359
    :cond_0
    return-void
.end method

.method private getAudioAttributes()Landroid/media/AudioAttributes;
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 95
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 96
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 97
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 95
    return-object v0
.end method

.method private getNewHandler()Landroid/os/Handler;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .prologue
    .line 157
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ringtone-player"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 159
    new-instance v1, Lcn/nubia/deskclock/AsyncRingtonePlayer$1;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcn/nubia/deskclock/AsyncRingtonePlayer$1;-><init>(Lcn/nubia/deskclock/AsyncRingtonePlayer;Landroid/os/Looper;)V

    return-object v1
.end method

.method private increaseVolume()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x3c

    const/16 v8, 0x8

    const-wide v6, 0x3f60624dd2f1a9fcL    # 0.002

    .line 464
    iget v1, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mAlertIncreasingNum:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mAlertIncreasingNum:I

    const/16 v2, 0x1f4

    if-ge v1, v2, :cond_3

    iget-boolean v1, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mPlaying:Z

    if-eqz v1, :cond_3

    .line 465
    iget-object v1, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 467
    :try_start_0
    iget v1, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mCurrentAlarmVolume:I

    if-lez v1, :cond_2

    .line 468
    iget-object v1, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v2, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mAlertIncreasingNum:I

    int-to-double v2, v2

    mul-double/2addr v2, v6

    double-to-float v2, v2

    iget v3, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mAlertIncreasingNum:I

    int-to-double v4, v3

    mul-double/2addr v4, v6

    double-to-float v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    :goto_0
    iget-object v1, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 477
    iget-object v1, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 479
    :cond_0
    invoke-direct {p0, v8, v10, v11}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->postMessage(IJ)V

    .line 505
    :cond_1
    :goto_1
    return-void

    .line 471
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 473
    :catch_0
    move-exception v0

    .line 474
    .local v0, "ex":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 484
    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    :cond_3
    iget v1, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mAlertIncreasingNum:I

    const/16 v2, 0x1f6

    if-ne v1, v2, :cond_6

    .line 485
    const-string v1, "AsyncRingtonePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "increaseVolume: mCurrentAlarmVolume : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mCurrentAlarmVolume:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ;; mAlertIncreasingNum : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mAlertIncreasingNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ;; mTempIncreasingNum : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mTempIncreasingNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iget-object v1, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_4

    .line 488
    :try_start_2
    iget v1, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mCurrentAlarmVolume:I

    if-lez v1, :cond_5

    .line 489
    iget-object v1, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v2, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mTempIncreasingNum:I

    int-to-double v2, v2

    mul-double/2addr v2, v6

    double-to-float v2, v2

    iget v3, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mTempIncreasingNum:I

    int-to-double v4, v3

    mul-double/2addr v4, v6

    double-to-float v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 502
    :cond_4
    :goto_2
    const/4 v1, 0x0

    iput v1, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mAlertIncreasingNum:I

    goto :goto_1

    .line 492
    :cond_5
    :try_start_3
    iget-object v1, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 494
    :catch_1
    move-exception v0

    .line 495
    .restart local v0    # "ex":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2

    .line 499
    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    :cond_6
    const-string v1, "AsyncRingtonePlayer"

    const-string v2, "increaseVolume: INCREASINGALERT_COMPLETE "

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const/16 v1, 0xa

    invoke-direct {p0, v1, v10, v11}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->postMessage(IJ)V

    goto :goto_2
.end method

.method private play(Lcn/nubia/deskclock/model/Alarm;)V
    .locals 11
    .param p1, "alarm"    # Lcn/nubia/deskclock/model/Alarm;

    .prologue
    const/4 v9, 0x4

    const/4 v10, 0x1

    .line 216
    invoke-virtual {p0}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->stop()V

    .line 217
    if-nez p1, :cond_1

    .line 218
    const-string v6, "AsyncRingtonePlayer"

    const-string v7, "play: invalid alarm"

    invoke-static {v6, v7}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v6, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    iput v6, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mCurVolume:I

    .line 222
    const-string v6, "AsyncRingtonePlayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "play() alarm.id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcn/nubia/deskclock/model/Alarm;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " alert ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcn/nubia/deskclock/model/Alarm;->alert:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mCurVolume="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mCurVolume:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v6, "AsyncRingtonePlayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "play = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v8, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v6, "AsyncRingtonePlayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "play STREAM_SYSTEM = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v8, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/deskclock/DeskClockApplication;->getDefaultSharedPref()Landroid/content/SharedPreferences;

    move-result-object v5

    .line 227
    .local v5, "sharedPref":Landroid/content/SharedPreferences;
    iget-boolean v6, p1, Lcn/nubia/deskclock/model/Alarm;->silent:Z

    if-nez v6, :cond_3

    .line 228
    iget-object v6, p1, Lcn/nubia/deskclock/model/Alarm;->alert:Landroid/net/Uri;

    iput-object v6, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mAlertUri:Landroid/net/Uri;

    .line 231
    iget-object v6, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mAlertUri:Landroid/net/Uri;

    if-nez v6, :cond_2

    .line 232
    invoke-static {v9}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mAlertUri:Landroid/net/Uri;

    .line 233
    const-string v6, "AsyncRingtonePlayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Using default alarm: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mAlertUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_2
    invoke-direct {p0}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->createMediaPlayer()V

    .line 239
    :try_start_0
    iget-object v6, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    .line 240
    iget-object v6, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcn/nubia/deskclock/util/RingtoneUtils;->isPlayAlarmWhenCalling(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget v6, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mForbidFromCallSetting:I

    if-ne v6, v10, :cond_4

    .line 242
    iget-object v6, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->reset()V

    .line 243
    iget-object v6, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/high16 v8, 0x7f090000

    invoke-direct {p0, v6, v7, v8}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->setDataSourceFromResource(Landroid/content/res/Resources;Landroid/media/MediaPlayer;I)V

    .line 244
    iget-object v6, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v7, 0x0

    iget v8, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mCurVolume:I

    const/4 v9, 0x0

    invoke-direct {p0, v6, v7, v8, v9}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->startAlarm(Landroid/media/MediaPlayer;ZIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_1
    iput-boolean v10, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mPlaying:Z

    .line 333
    :cond_3
    iget-boolean v6, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mIsGameMode:Z

    if-nez v6, :cond_0

    .line 334
    invoke-direct {p0, v5}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->startVibrate(Landroid/content/SharedPreferences;)V

    goto/16 :goto_0

    .line 246
    :cond_4
    :try_start_1
    iget-object v6, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v6}, Landroid/os/Vibrator;->cancel()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 270
    :catch_0
    move-exception v1

    .line 273
    .local v1, "ex":Ljava/lang/Exception;
    const-string v6, "AsyncRingtonePlayer"

    const-string v7, " error "

    invoke-static {v6, v7, v1}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 274
    iget-boolean v6, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mIsGameMode:Z

    if-eqz v6, :cond_8

    .line 275
    const-string v6, "AsyncRingtonePlayer"

    const-string v7, "mIsGameMode"

    invoke-static {v6, v7}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 248
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_5
    :try_start_2
    iget-object v6, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v6

    if-ne v6, v10, :cond_6

    .line 249
    iget-object v6, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->reset()V

    .line 250
    iget-object v6, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/high16 v8, 0x7f090000

    invoke-direct {p0, v6, v7, v8}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->setDataSourceFromResource(Landroid/content/res/Resources;Landroid/media/MediaPlayer;I)V

    .line 251
    iget-object v6, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, v6, v7, v8, v9}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->startAlarm(Landroid/media/MediaPlayer;ZIZ)V

    .line 252
    iget-object v6, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v7, Lcn/nubia/deskclock/AsyncRingtonePlayer$2;

    invoke-direct {v7, p0}, Lcn/nubia/deskclock/AsyncRingtonePlayer$2;-><init>(Lcn/nubia/deskclock/AsyncRingtonePlayer;)V

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    goto :goto_1

    .line 259
    :cond_6
    const-string v6, "AsyncRingtonePlayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " normal mIsGameMode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mIsGameMode:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-boolean v6, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mIsGameMode:Z

    if-eqz v6, :cond_7

    .line 261
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->ringWhenGameRunning()V

    .line 262
    iget-object v6, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->reset()V

    .line 263
    iget-object v6, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v7, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mAlertUri:Landroid/net/Uri;

    invoke-virtual {v6, v7, v8}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto/16 :goto_1

    .line 265
    :cond_7
    iget-object v6, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->reset()V

    .line 266
    iget-object v6, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v7, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mAlertUri:Landroid/net/Uri;

    invoke-virtual {v6, v7, v8}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 267
    iget-object v6, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v7, 0x1

    iget v8, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mCurVolume:I

    const/4 v9, 0x1

    invoke-direct {p0, v6, v7, v8, v9}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->startAlarm(Landroid/media/MediaPlayer;ZIZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 280
    .restart local v1    # "ex":Ljava/lang/Exception;
    :cond_8
    :try_start_3
    iget-object v6, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v6

    if-eqz v6, :cond_a

    .line 281
    iget-object v6, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcn/nubia/deskclock/util/RingtoneUtils;->isPlayAlarmWhenCalling(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget v6, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mForbidFromCallSetting:I

    if-ne v6, v10, :cond_9

    .line 283
    const-string v6, "AsyncRingtonePlayer"

    const-string v7, " error is not CALL_STATE_IDLE "

    invoke-static {v6, v7}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 285
    :try_start_4
    iget-object v6, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->reset()V

    .line 286
    iget-object v6, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/high16 v8, 0x7f090000

    invoke-direct {p0, v6, v7, v8}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->setDataSourceFromResource(Landroid/content/res/Resources;Landroid/media/MediaPlayer;I)V

    .line 288
    iget-object v6, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-direct {p0, v6, v7, v8, v9}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->startAlarm(Landroid/media/MediaPlayer;ZIZ)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 290
    :catch_1
    move-exception v3

    .line 291
    .local v3, "exx":Ljava/lang/Exception;
    :try_start_5
    iget-object v6, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->reset()V

    .line 292
    iget-object v6, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const v8, 0x7f090001

    invoke-direct {p0, v6, v7, v8}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->setDataSourceFromResource(Landroid/content/res/Resources;Landroid/media/MediaPlayer;I)V

    .line 294
    iget-object v6, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v7, 0x1

    iget v8, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mCurVolume:I

    const/4 v9, 0x1

    invoke-direct {p0, v6, v7, v8, v9}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->startAlarm(Landroid/media/MediaPlayer;ZIZ)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    .line 325
    .end local v3    # "exx":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 327
    .local v2, "ex2":Ljava/lang/Exception;
    const-string v6, "AsyncRingtonePlayer"

    const-string v7, "Failed to play fallback ringtone"

    invoke-static {v6, v7, v2}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 297
    .end local v2    # "ex2":Ljava/lang/Exception;
    :cond_9
    :try_start_6
    iget-object v6, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v6}, Landroid/os/Vibrator;->cancel()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_1

    .line 301
    :cond_a
    :try_start_7
    const-string v6, "AsyncRingtonePlayer"

    const-string v7, " error is CALL_STATE_IDLE "

    invoke-static {v6, v7}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v6, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->reset()V

    .line 303
    iget-object v6, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcn/nubia/deskclock/util/Utils;->isDirectBootmode(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 304
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/deskclock/DeskClockApplication;->getAlarmRingtoneSharedPref()Landroid/content/SharedPreferences;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "alarm_id"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcn/nubia/deskclock/model/Alarm;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 305
    .local v4, "path":Ljava/lang/String;
    const-string v6, "AsyncRingtonePlayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "run: path : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b

    .line 307
    iget-object v6, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 316
    .end local v4    # "path":Ljava/lang/String;
    :goto_2
    iget-object v6, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v7, 0x1

    iget v8, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mCurVolume:I

    const/4 v9, 0x1

    invoke-direct {p0, v6, v7, v8, v9}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->startAlarm(Landroid/media/MediaPlayer;ZIZ)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_1

    .line 317
    :catch_3
    move-exception v0

    .line 318
    .local v0, "ee":Ljava/lang/Exception;
    :try_start_8
    const-string v6, "AsyncRingtonePlayer"

    const-string v7, " error 333 "

    invoke-static {v6, v7, v0}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 319
    iget-object v6, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->reset()V

    .line 320
    iget-object v6, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const v8, 0x7f090001

    invoke-direct {p0, v6, v7, v8}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->setDataSourceFromResource(Landroid/content/res/Resources;Landroid/media/MediaPlayer;I)V

    .line 322
    iget-object v6, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v7, 0x1

    iget v8, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mCurVolume:I

    const/4 v9, 0x1

    invoke-direct {p0, v6, v7, v8, v9}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->startAlarm(Landroid/media/MediaPlayer;ZIZ)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_1

    .line 309
    .end local v0    # "ee":Ljava/lang/Exception;
    .restart local v4    # "path":Ljava/lang/String;
    :cond_b
    :try_start_9
    iget-object v6, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const v8, 0x7f090004

    invoke-direct {p0, v6, v7, v8}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->setDataSourceFromResource(Landroid/content/res/Resources;Landroid/media/MediaPlayer;I)V

    goto :goto_2

    .line 313
    .end local v4    # "path":Ljava/lang/String;
    :cond_c
    iget-object v6, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const v8, 0x7f090004

    invoke-direct {p0, v6, v7, v8}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->setDataSourceFromResource(Landroid/content/res/Resources;Landroid/media/MediaPlayer;I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_2
.end method

.method private postMessage(IJ)V
    .locals 2
    .param p1, "messageCode"    # I
    .param p2, "delayMillis"    # J

    .prologue
    .line 136
    monitor-enter p0

    .line 137
    :try_start_0
    iget-object v1, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 138
    invoke-direct {p0}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->getNewHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    .line 140
    :cond_0
    iget-object v1, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 141
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 142
    monitor-exit p0

    .line 143
    return-void

    .line 142
    .end local v0    # "message":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private releaseAudioFocus()V
    .locals 4

    .prologue
    .line 206
    const-string v1, "AsyncRingtonePlayer"

    const-string v2, "releaseAudioFocus: "

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mAudioFocusRequest:Landroid/media/AudioFocusRequest;

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mAudioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    move-result v0

    .line 209
    .local v0, "result":I
    const-string v1, "AsyncRingtonePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseAudioFocus: result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 212
    .end local v0    # "result":I
    :cond_0
    return-void
.end method

.method private setDataSourceFromResource(Landroid/content/res/Resources;Landroid/media/MediaPlayer;I)V
    .locals 7
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "player"    # Landroid/media/MediaPlayer;
    .param p3, "res"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 364
    .local v6, "afd":Landroid/content/res/AssetFileDescriptor;
    if-eqz v6, :cond_0

    .line 365
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 366
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 368
    :cond_0
    return-void
.end method

.method private setVolDown()V
    .locals 8

    .prologue
    .line 508
    iget v3, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mAlertIncreasingNum:I

    if-nez v3, :cond_1

    .line 509
    const/16 v3, 0x1f3

    iput v3, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mAlertIncreasingNum:I

    .line 510
    iget v3, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mAlertIncreasingNum:I

    iput v3, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mTempIncreasingNum:I

    .line 515
    :goto_0
    iget-object v3, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 516
    .local v0, "currentVolume":I
    iget-object v3, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_0

    .line 518
    const/4 v3, 0x1

    if-le v0, v3, :cond_2

    .line 519
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    :try_start_0
    iget v3, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mTempIncreasingNum:I

    int-to-double v6, v3

    mul-double/2addr v4, v6

    mul-int/lit16 v3, v0, 0x1f4

    int-to-double v6, v3

    div-double/2addr v4, v6

    double-to-float v2, v4

    .line 520
    .local v2, "volume":F
    iget-object v3, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    .end local v2    # "volume":F
    :cond_0
    :goto_1
    return-void

    .line 512
    .end local v0    # "currentVolume":I
    :cond_1
    iget v3, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mAlertIncreasingNum:I

    iput v3, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mTempIncreasingNum:I

    .line 513
    const/16 v3, 0x1f5

    iput v3, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mAlertIncreasingNum:I

    goto :goto_0

    .line 522
    .restart local v0    # "currentVolume":I
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 524
    :catch_0
    move-exception v1

    .line 525
    .local v1, "ex":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1
.end method

.method private startAlarm(Landroid/media/MediaPlayer;ZIZ)V
    .locals 8
    .param p1, "player"    # Landroid/media/MediaPlayer;
    .param p2, "islooping"    # Z
    .param p3, "volume"    # I
    .param p4, "isNormalAlarm"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 373
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    .line 374
    .local v3, "runtime":Ljava/lang/RuntimeException;
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 375
    const-string v5, "AsyncRingtonePlayer"

    const-string v6, " startAlarm "

    invoke-static {v5, v6, v3}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 376
    iget-object v5, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mContext:Landroid/content/Context;

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iput-object v5, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mPowerManager:Landroid/os/PowerManager;

    .line 377
    iget-object v5, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mPowerManager:Landroid/os/PowerManager;

    const v6, 0x3000000a

    const-string v7, "AsyncRingtonePlayer"

    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 380
    iget-object v5, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 381
    iget-object v5, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v6, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mAudioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v2

    .line 382
    .local v2, "requestResult":I
    const-string v5, "AsyncRingtonePlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " [startAlarm] mCurVolume : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mCurVolume:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ;; requestResult : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget v5, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mCurVolume:I

    if-eqz v5, :cond_1

    .line 384
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/deskclock/DeskClockApplication;->getDefaultSharedPref()Landroid/content/SharedPreferences;

    move-result-object v4

    .line 385
    .local v4, "sharedPref":Landroid/content/SharedPreferences;
    const-string v5, "isAlertIncreasing"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 386
    .local v1, "mIsAlertIncreasing":Z
    if-eqz v1, :cond_2

    if-eqz p4, :cond_2

    .line 388
    :try_start_0
    iget-object v5, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :goto_0
    iget-object v5, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    if-eqz v5, :cond_0

    .line 393
    iget-object v5, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 395
    :cond_0
    const/16 v5, 0x8

    const-wide/16 v6, 0x0

    invoke-direct {p0, v5, v6, v7}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->postMessage(IJ)V

    .line 396
    const-string v5, "AsyncRingtonePlayer"

    const-string v6, "isAlertIncreasing"

    invoke-static {v5, v6}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    :goto_1
    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 406
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 407
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 409
    .end local v1    # "mIsAlertIncreasing":Z
    .end local v4    # "sharedPref":Landroid/content/SharedPreferences;
    :cond_1
    return-void

    .line 389
    .restart local v1    # "mIsAlertIncreasing":Z
    .restart local v4    # "sharedPref":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 390
    .local v0, "ex":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 398
    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    :cond_2
    const-string v5, "AsyncRingtonePlayer"

    const-string v6, "no no no isAlertIncreasing"

    invoke-static {v5, v6}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v5, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p3, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 400
    iget-object v5, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    if-eqz v5, :cond_3

    .line 401
    iget-object v5, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 403
    :cond_3
    const/16 v5, 0xa

    const-wide/16 v6, 0x0

    invoke-direct {p0, v5, v6, v7}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->postMessage(IJ)V

    goto :goto_1
.end method

.method private startVibrate(Landroid/content/SharedPreferences;)V
    .locals 7
    .param p1, "sharedPref"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v6, 0x0

    .line 446
    const-string v3, "vibrate"

    const/4 v4, 0x1

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 447
    .local v1, "vibrate":Z
    iget-object v3, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-nez v3, :cond_0

    .line 448
    const-string v3, "AsyncRingtonePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startVibrate: vibrate : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    if-eqz v1, :cond_2

    .line 450
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-le v3, v4, :cond_1

    .line 451
    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 452
    .local v0, "audioAttributes":Landroid/media/AudioAttributes;
    sget-object v3, Lcn/nubia/deskclock/AsyncRingtonePlayer;->sVibratePattern:[J

    invoke-static {v3, v6}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v2

    .line 453
    .local v2, "vibrationEffect":Landroid/os/VibrationEffect;
    iget-object v3, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v3, v2, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    .line 461
    .end local v0    # "audioAttributes":Landroid/media/AudioAttributes;
    .end local v2    # "vibrationEffect":Landroid/os/VibrationEffect;
    :cond_0
    :goto_0
    return-void

    .line 455
    :cond_1
    iget-object v3, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mVibrator:Landroid/os/Vibrator;

    sget-object v4, Lcn/nubia/deskclock/AsyncRingtonePlayer;->sVibratePattern:[J

    invoke-virtual {v3, v4, v6}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_0

    .line 458
    :cond_2
    iget-object v3, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v3}, Landroid/os/Vibrator;->cancel()V

    goto :goto_0
.end method


# virtual methods
.method public abandonAudioFocus()V
    .locals 2

    .prologue
    .line 126
    const-string v0, "AsyncRingtonePlayer"

    const-string v1, "abandonAudioFocus: "

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-direct {p0}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->releaseAudioFocus()V

    .line 128
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 147
    invoke-direct {p0}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->getNewHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    .line 149
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public playAlarm(Lcn/nubia/deskclock/model/Alarm;Z)V
    .locals 4
    .param p1, "alarm"    # Lcn/nubia/deskclock/model/Alarm;
    .param p2, "isGameMode"    # Z

    .prologue
    .line 105
    const-string v1, "AsyncRingtonePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playAlarm: alarm : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcn/nubia/deskclock/model/Alarm;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ;; isGameMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    sput-object p1, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mCurrentAlarm:Lcn/nubia/deskclock/model/Alarm;

    .line 107
    iput-boolean p2, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mIsGameMode:Z

    .line 109
    :try_start_0
    iget-object v1, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "message_prompts"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mForbidFromCallSetting:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->postMessage(IJ)V

    .line 115
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setCurrentAlarmVolume(I)V
    .locals 0
    .param p1, "cuttentAlarmVolume"    # I

    .prologue
    .line 563
    iput p1, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mCurrentAlarmVolume:I

    .line 564
    return-void
.end method

.method public stop()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 415
    const-string v0, "AsyncRingtonePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop() mPlaying : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mPlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    iget-boolean v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mPlaying:Z

    if-eqz v0, :cond_5

    .line 417
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mPlaying:Z

    .line 418
    iget-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    .line 419
    const-string v0, "AsyncRingtonePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " stop() mMediaPlayer.isPlaying(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    const-string v0, "AsyncRingtonePlayer"

    const-string v1, " has message INCREASINGALERT "

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 424
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 427
    :cond_1
    iget-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 428
    iget-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 430
    :cond_2
    iget-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    .line 431
    iget-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 432
    iput-object v3, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 435
    :cond_3
    iget-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_4

    .line 436
    iget-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 437
    iput-object v3, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 439
    :cond_4
    const-string v0, "AsyncRingtonePlayer"

    const-string v1, "stop() end"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :cond_5
    iget-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_6

    .line 442
    iget-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 443
    :cond_6
    return-void
.end method

.method public stopAlarm()V
    .locals 4

    .prologue
    .line 121
    const-string v0, "AsyncRingtonePlayer"

    const-string v1, "Posting stop."

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const/4 v0, 0x2

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->postMessage(IJ)V

    .line 123
    return-void
.end method
