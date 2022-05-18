.class public Lcn/nubia/deskclock/CountDownRingService;
.super Landroid/app/Service;
.source "CountDownRingService.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# static fields
.field private static final HEADUP_RELEASED_ACTION:Ljava/lang/String; = "com.android.systemui.headsup_released"

.field private static final KEY_PACKAGE_NAME:Ljava/lang/String; = "pkgname"

.field private static final KILLER:I = 0x6a4

.field private static final MESSAGE_PROMPTS_FROM_CALL_SETTING:Ljava/lang/String; = "message_prompts"

.field private static final TAG:Ljava/lang/String; = "CountDownRingService"

.field private static final sVibratePattern:[J


# instance fields
.field private mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCurVolume:I

.field private mForbidFromCallSetting:I

.field private mHandler:Landroid/os/Handler;

.field private mIsGameMode:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPlaying:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mVibrator:Landroid/os/Vibrator;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/deskclock/CountDownRingService;->sVibratePattern:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x1f4
        0x1f4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 77
    iput-boolean v0, p0, Lcn/nubia/deskclock/CountDownRingService;->mPlaying:Z

    .line 78
    iput-boolean v0, p0, Lcn/nubia/deskclock/CountDownRingService;->mIsGameMode:Z

    .line 80
    const/4 v0, 0x1

    iput v0, p0, Lcn/nubia/deskclock/CountDownRingService;->mForbidFromCallSetting:I

    .line 82
    new-instance v0, Lcn/nubia/deskclock/CountDownRingService$1;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/CountDownRingService$1;-><init>(Lcn/nubia/deskclock/CountDownRingService;)V

    iput-object v0, p0, Lcn/nubia/deskclock/CountDownRingService;->mHandler:Landroid/os/Handler;

    .line 96
    new-instance v0, Lcn/nubia/deskclock/CountDownRingService$2;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/CountDownRingService$2;-><init>(Lcn/nubia/deskclock/CountDownRingService;)V

    iput-object v0, p0, Lcn/nubia/deskclock/CountDownRingService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 286
    new-instance v0, Lcn/nubia/deskclock/CountDownRingService$4;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/CountDownRingService$4;-><init>(Lcn/nubia/deskclock/CountDownRingService;)V

    iput-object v0, p0, Lcn/nubia/deskclock/CountDownRingService;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/deskclock/CountDownRingService;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/CountDownRingService;

    .prologue
    .line 59
    invoke-direct {p0}, Lcn/nubia/deskclock/CountDownRingService;->getCountDownCloseIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/deskclock/CountDownRingService;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/CountDownRingService;

    .prologue
    .line 59
    invoke-direct {p0}, Lcn/nubia/deskclock/CountDownRingService;->getCloseAlertActivityIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcn/nubia/deskclock/CountDownRingService;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/CountDownRingService;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcn/nubia/deskclock/CountDownRingService;->mIsGameMode:Z

    return v0
.end method

.method static synthetic access$1100(Lcn/nubia/deskclock/CountDownRingService;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/CountDownRingService;

    .prologue
    .line 59
    invoke-direct {p0}, Lcn/nubia/deskclock/CountDownRingService;->resetMeidaState()V

    return-void
.end method

.method static synthetic access$1200(Lcn/nubia/deskclock/CountDownRingService;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/CountDownRingService;

    .prologue
    .line 59
    invoke-direct {p0}, Lcn/nubia/deskclock/CountDownRingService;->play()V

    return-void
.end method

.method static synthetic access$1302(Lcn/nubia/deskclock/CountDownRingService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/CountDownRingService;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcn/nubia/deskclock/CountDownRingService;->mPlaying:Z

    return p1
.end method

.method static synthetic access$200(Lcn/nubia/deskclock/CountDownRingService;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/CountDownRingService;

    .prologue
    .line 59
    iget-object v0, p0, Lcn/nubia/deskclock/CountDownRingService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$202(Lcn/nubia/deskclock/CountDownRingService;Landroid/media/AudioManager;)Landroid/media/AudioManager;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/CountDownRingService;
    .param p1, "x1"    # Landroid/media/AudioManager;

    .prologue
    .line 59
    iput-object p1, p0, Lcn/nubia/deskclock/CountDownRingService;->mAudioManager:Landroid/media/AudioManager;

    return-object p1
.end method

.method static synthetic access$300(Lcn/nubia/deskclock/CountDownRingService;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/CountDownRingService;

    .prologue
    .line 59
    iget-object v0, p0, Lcn/nubia/deskclock/CountDownRingService;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$302(Lcn/nubia/deskclock/CountDownRingService;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/CountDownRingService;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .prologue
    .line 59
    iput-object p1, p0, Lcn/nubia/deskclock/CountDownRingService;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$400(Lcn/nubia/deskclock/CountDownRingService;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/CountDownRingService;

    .prologue
    .line 59
    iget v0, p0, Lcn/nubia/deskclock/CountDownRingService;->mCurVolume:I

    return v0
.end method

.method static synthetic access$402(Lcn/nubia/deskclock/CountDownRingService;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/CountDownRingService;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcn/nubia/deskclock/CountDownRingService;->mCurVolume:I

    return p1
.end method

.method static synthetic access$500(Lcn/nubia/deskclock/CountDownRingService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/CountDownRingService;

    .prologue
    .line 59
    iget-object v0, p0, Lcn/nubia/deskclock/CountDownRingService;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/deskclock/CountDownRingService;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/CountDownRingService;

    .prologue
    .line 59
    iget-object v0, p0, Lcn/nubia/deskclock/CountDownRingService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/deskclock/CountDownRingService;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/CountDownRingService;

    .prologue
    .line 59
    iget v0, p0, Lcn/nubia/deskclock/CountDownRingService;->mForbidFromCallSetting:I

    return v0
.end method

.method static synthetic access$800(Lcn/nubia/deskclock/CountDownRingService;Landroid/content/res/Resources;Landroid/media/MediaPlayer;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/CountDownRingService;
    .param p1, "x1"    # Landroid/content/res/Resources;
    .param p2, "x2"    # Landroid/media/MediaPlayer;
    .param p3, "x3"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/deskclock/CountDownRingService;->setDataSourceFromResource(Landroid/content/res/Resources;Landroid/media/MediaPlayer;I)V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/deskclock/CountDownRingService;)Landroid/os/Vibrator;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/CountDownRingService;

    .prologue
    .line 59
    iget-object v0, p0, Lcn/nubia/deskclock/CountDownRingService;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method private enableKiller()V
    .locals 4

    .prologue
    const/16 v1, 0x6a4

    .line 350
    iget-boolean v0, p0, Lcn/nubia/deskclock/CountDownRingService;->mIsGameMode:Z

    if-nez v0, :cond_0

    .line 351
    iget-object v0, p0, Lcn/nubia/deskclock/CountDownRingService;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 355
    :goto_0
    return-void

    .line 353
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/CountDownRingService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private getCloseAlertActivityIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 390
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nubia.deskclock.countdown.action.COUNTDOWN_CLOSE_COUNTDOWN_ALERT_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 391
    .local v0, "closeAlertActivityIntent":Landroid/content/Intent;
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreO()Z

    move-result v1

    if-nez v1, :cond_0

    .line 392
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 394
    :cond_0
    return-object v0
.end method

.method private getCountDownCloseIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 377
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nubia.deskclock.countdown.action.COUNTDOWN_CLOSE_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 378
    .local v0, "countDownCloseIntent":Landroid/content/Intent;
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreO()Z

    move-result v1

    if-nez v1, :cond_0

    .line 379
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "cn.nubia.deskclock.preset"

    const-string v3, "cn.nubia.deskclock.CountdownBroadCastReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 381
    :cond_0
    return-object v0
.end method

.method private play()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 176
    const-string v2, "CountDownRingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "play: mPlaying : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcn/nubia/deskclock/CountDownRingService;->mPlaying:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-boolean v2, p0, Lcn/nubia/deskclock/CountDownRingService;->mPlaying:Z

    if-eqz v2, :cond_0

    .line 283
    :goto_0
    return-void

    .line 180
    :cond_0
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcn/nubia/deskclock/CountDownRingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcn/nubia/deskclock/CountDownRingService;->mPowerManager:Landroid/os/PowerManager;

    .line 181
    iget-object v2, p0, Lcn/nubia/deskclock/CountDownRingService;->mPowerManager:Landroid/os/PowerManager;

    const v3, 0x3000000a

    const-string v4, "CountDownRingService"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/deskclock/CountDownRingService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 184
    iget-object v2, p0, Lcn/nubia/deskclock/CountDownRingService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 185
    invoke-static {}, Lcn/nubia/deskclock/util/ThreadPool;->getInstance()Lcn/nubia/deskclock/util/ThreadPool;

    move-result-object v2

    new-instance v3, Lcn/nubia/deskclock/CountDownRingService$3;

    invoke-direct {v3, p0}, Lcn/nubia/deskclock/CountDownRingService$3;-><init>(Lcn/nubia/deskclock/CountDownRingService;)V

    invoke-virtual {v2, v3}, Lcn/nubia/deskclock/util/ThreadPool;->addTask(Ljava/lang/Runnable;)V

    .line 273
    iget-boolean v2, p0, Lcn/nubia/deskclock/CountDownRingService;->mIsGameMode:Z

    if-nez v2, :cond_1

    .line 274
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-le v2, v3, :cond_2

    .line 275
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 276
    .local v0, "audioAttributes":Landroid/media/AudioAttributes;
    sget-object v2, Lcn/nubia/deskclock/CountDownRingService;->sVibratePattern:[J

    invoke-static {v2, v5}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v1

    .line 277
    .local v1, "vibrationEffect":Landroid/os/VibrationEffect;
    iget-object v2, p0, Lcn/nubia/deskclock/CountDownRingService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v2, v1, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    .line 282
    .end local v0    # "audioAttributes":Landroid/media/AudioAttributes;
    .end local v1    # "vibrationEffect":Landroid/os/VibrationEffect;
    :cond_1
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcn/nubia/deskclock/CountDownRingService;->mPlaying:Z

    goto :goto_0

    .line 279
    :cond_2
    iget-object v2, p0, Lcn/nubia/deskclock/CountDownRingService;->mVibrator:Landroid/os/Vibrator;

    sget-object v3, Lcn/nubia/deskclock/CountDownRingService;->sVibratePattern:[J

    invoke-virtual {v2, v3, v5}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_1
.end method

.method private resetMeidaState()V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcn/nubia/deskclock/CountDownRingService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcn/nubia/deskclock/CountDownRingService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcn/nubia/deskclock/CountDownRingService;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 361
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/CountDownRingService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lcn/nubia/deskclock/CountDownRingService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lcn/nubia/deskclock/CountDownRingService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 366
    :cond_1
    iget-object v0, p0, Lcn/nubia/deskclock/CountDownRingService;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_2

    .line 367
    iget-object v0, p0, Lcn/nubia/deskclock/CountDownRingService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 369
    :cond_2
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
    .line 314
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 315
    .local v6, "afd":Landroid/content/res/AssetFileDescriptor;
    if-eqz v6, :cond_0

    .line 316
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 317
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 319
    :cond_0
    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 0
    .param p1, "focusChange"    # I

    .prologue
    .line 347
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 144
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 119
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Lcn/nubia/deskclock/CountDownRingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcn/nubia/deskclock/CountDownRingService;->mVibrator:Landroid/os/Vibrator;

    .line 120
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcn/nubia/deskclock/CountDownRingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcn/nubia/deskclock/CountDownRingService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 121
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 122
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.android.systemui.headsup_released"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcn/nubia/deskclock/CountDownRingService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcn/nubia/deskclock/CountDownRingService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 128
    const-string v0, "CountDownRingService"

    const-string v1, "onDestroy: "

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcn/nubia/deskclock/CountDownRingService;->stop()V

    .line 130
    invoke-direct {p0}, Lcn/nubia/deskclock/CountDownRingService;->resetMeidaState()V

    .line 131
    iget-object v0, p0, Lcn/nubia/deskclock/CountDownRingService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 133
    iget-object v0, p0, Lcn/nubia/deskclock/CountDownRingService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcn/nubia/deskclock/CountDownRingService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/deskclock/CountDownRingService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 137
    :cond_0
    invoke-static {p0, v2}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeAssisTimeToPref(Landroid/content/Context;I)V

    .line 138
    invoke-static {p0, v2, v2, v2}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeCountDownTotalTimeToPref(Landroid/content/Context;III)V

    .line 139
    iget-object v0, p0, Lcn/nubia/deskclock/CountDownRingService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/CountDownRingService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 140
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 151
    if-nez p1, :cond_0

    .line 152
    invoke-virtual {p0}, Lcn/nubia/deskclock/CountDownRingService;->stop()V

    .line 153
    invoke-virtual {p0}, Lcn/nubia/deskclock/CountDownRingService;->stopSelf()V

    .line 154
    const/4 v2, 0x2

    .line 172
    :goto_0
    return v2

    .line 156
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 157
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 158
    const-string v2, "isGameMode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcn/nubia/deskclock/CountDownRingService;->mIsGameMode:Z

    .line 161
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/deskclock/CountDownRingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "message_prompts"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcn/nubia/deskclock/CountDownRingService;->mForbidFromCallSetting:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_1
    invoke-direct {p0}, Lcn/nubia/deskclock/CountDownRingService;->play()V

    .line 168
    invoke-direct {p0}, Lcn/nubia/deskclock/CountDownRingService;->enableKiller()V

    .line 172
    const/4 v2, 0x1

    goto :goto_0

    .line 163
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public stop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 325
    const-string v1, "CountDownRingService"

    const-string v2, "CountDownRingService.stop()"

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-boolean v1, p0, Lcn/nubia/deskclock/CountDownRingService;->mPlaying:Z

    if-eqz v1, :cond_1

    .line 327
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/deskclock/CountDownRingService;->mPlaying:Z

    .line 330
    iget-object v1, p0, Lcn/nubia/deskclock/CountDownRingService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 331
    iget-object v1, p0, Lcn/nubia/deskclock/CountDownRingService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 332
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcn/nubia/deskclock/CountDownRingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 333
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 334
    iget-object v1, p0, Lcn/nubia/deskclock/CountDownRingService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 335
    iput-object v3, p0, Lcn/nubia/deskclock/CountDownRingService;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 337
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_0
    iget-object v1, p0, Lcn/nubia/deskclock/CountDownRingService;->mVibrator:Landroid/os/Vibrator;

    if-eqz v1, :cond_1

    .line 338
    iget-object v1, p0, Lcn/nubia/deskclock/CountDownRingService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->cancel()V

    .line 341
    :cond_1
    invoke-static {v3}, Lcn/nubia/deskclock/database/CountDownSPUtils;->setTimeTitle(Ljava/lang/String;)V

    .line 342
    return-void
.end method
