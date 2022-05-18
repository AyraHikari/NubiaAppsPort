.class public Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;
.super Landroid/app/Activity;
.source "AlarmAlertFullScreen.java"

# interfaces
.implements Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$AlarmFinishListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$PowerReceiver;
    }
.end annotation


# static fields
.field private static final FEATURE_NAME:Ljava/lang/String; = "cn.nubia.smartface.feature.lattice_screenslding"

.field private static final FRINGE_FULL_BLACK_SET:Ljava/lang/String; = "fringe_full_black_set"

.field protected static final SCREEN_OFF:Ljava/lang/String; = "screen_off"

.field private static final SMART_COVER_LATTICE:I = 0x2

.field private static final SMART_COVER_NORMAL:I = 0x1

.field private static final SMART_COVER_OPEN_ERR:I = 0x0

.field private static final SMART_FACE_DISPLAY:Ljava/lang/String; = "smart_face_display"

.field private static final TAG:Ljava/lang/String; = "AlarmAlertFullScreen"


# instance fields
.field protected mAlarm:Lcn/nubia/deskclock/model/Alarm;

.field private mAlartSnoozeTitle:Landroid/widget/TextView;

.field private mAlerTitle:Landroid/widget/TextView;

.field private mBg:Landroid/view/View;

.field private mClose:I

.field private mColock:Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;

.field private mDismiss:Landroid/widget/Button;

.field private mFilterPower:Landroid/content/IntentFilter;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureSensor:Landroid/hardware/Sensor;

.field private mGestureSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mHintView:Lcn/nubia/deskclock/ui/HintView;

.field private mIsActive:Z

.field private mIsDocked:Z

.field private mIsLattice:Z

.field private mIsSnooze:Z

.field private mLastSensorValue:I

.field private mLastSmartCoverState:Z

.field private mLatticeArrow1:Lcn/nubia/deskclock/ui/LatticeAlarmArrow;

.field private mLatticeArrow2:Lcn/nubia/deskclock/ui/LatticeAlarmArrow;

.field private mLatticeView:Lcn/nubia/deskclock/ui/LatticeTextView;

.field private mLockScreenAnimLayout:Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field public mReceiverPower:Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$PowerReceiver;

.field private mRingBackground:Landroid/view/View;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSeparator:Landroid/view/View;

.field private mSmartCoverHandler:Landroid/os/Handler;

.field private mSmartCoverObserver:Landroid/database/ContentObserver;

.field private mSmartCoverType:I

.field private mSmartCoverUri:Landroid/net/Uri;

.field private mSnooze:Landroid/widget/Button;

.field private mSnoozeMaxCount:I

.field private mSnoozeTime:I

.field private mSnoozeView:Landroid/widget/FrameLayout;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWaved:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 90
    iput-boolean v1, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mIsDocked:Z

    .line 91
    iput-boolean v1, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mLastSmartCoverState:Z

    .line 92
    iput-boolean v1, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mIsLattice:Z

    .line 94
    iput v1, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mClose:I

    .line 113
    iput v1, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mSmartCoverType:I

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mLastSensorValue:I

    .line 123
    iput-boolean v1, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mWaved:Z

    .line 128
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mSmartCoverHandler:Landroid/os/Handler;

    .line 129
    new-instance v0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$PowerReceiver;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$PowerReceiver;-><init>(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;)V

    iput-object v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mReceiverPower:Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$PowerReceiver;

    .line 130
    const-string v0, "smart_face_display"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mSmartCoverUri:Landroid/net/Uri;

    .line 134
    new-instance v0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$1;

    iget-object v1, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mSmartCoverHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$1;-><init>(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mSmartCoverObserver:Landroid/database/ContentObserver;

    .line 176
    new-instance v0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$2;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$2;-><init>(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;)V

    iput-object v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 646
    new-instance v0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$7;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$7;-><init>(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;)V

    iput-object v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mGestureSensorEventListener:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    .prologue
    .line 81
    iget v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mSmartCoverType:I

    return v0
.end method

.method static synthetic access$002(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;
    .param p1, "x1"    # I

    .prologue
    .line 81
    iput p1, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mSmartCoverType:I

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    .prologue
    .line 81
    iget-boolean v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mLastSmartCoverState:Z

    return v0
.end method

.method static synthetic access$1000(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    .prologue
    .line 81
    iget v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mSnoozeMaxCount:I

    return v0
.end method

.method static synthetic access$1100(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    .prologue
    .line 81
    iget v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mSnoozeTime:I

    return v0
.end method

.method static synthetic access$1200(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    .prologue
    .line 81
    iget v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mLastSensorValue:I

    return v0
.end method

.method static synthetic access$1202(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;
    .param p1, "x1"    # I

    .prologue
    .line 81
    iput p1, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mLastSensorValue:I

    return p1
.end method

.method static synthetic access$1300(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    .prologue
    .line 81
    iget-boolean v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mWaved:Z

    return v0
.end method

.method static synthetic access$1302(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mWaved:Z

    return p1
.end method

.method static synthetic access$1400(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    .prologue
    .line 81
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->dismissOrSnooze()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    .prologue
    .line 81
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->updateNormalSmartCover()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    .prologue
    .line 81
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->updateLatticeSmartCover()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    .prologue
    .line 81
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->finishActivity()V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    .prologue
    .line 81
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->hasFeature()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    .prologue
    .line 81
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->dismiss()V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    .prologue
    .line 81
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->snooze()V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    .prologue
    .line 81
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mGestureSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$900(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;

    .prologue
    .line 81
    iget-boolean v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mIsSnooze:Z

    return v0
.end method

.method private acquireWakeLock()V
    .locals 3

    .prologue
    .line 223
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mPowerManager:Landroid/os/PowerManager;

    .line 224
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mPowerManager:Landroid/os/PowerManager;

    const v1, 0x3000000a

    const-string v2, "AlarmAlertFullScreen"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 227
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 228
    return-void
.end method

.method private addWindowFlags()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 242
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 243
    .local v1, "win":Landroid/view/Window;
    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 244
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 245
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x404

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "screen_off"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 250
    const v2, 0x200081

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 255
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "fringe_full_black_set"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 256
    .local v0, "fringeFullBlackSet":I
    const-string v2, "AlarmAlertFullScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fringeFullBlackSet="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 258
    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 260
    :cond_2
    return-void
.end method

.method private checkDockStatus()V
    .locals 4

    .prologue
    .line 278
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 279
    .local v1, "ifilter":Landroid/content/IntentFilter;
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 280
    .local v0, "dockStatus":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 281
    const-string v2, "android.intent.extra.DOCK_STATE"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mIsDocked:Z

    .line 283
    :cond_0
    return-void

    .line 281
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private dismiss()V
    .locals 2

    .prologue
    .line 497
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    .line 498
    .local v0, "nm":Landroid/app/NotificationManager;
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mAlarm:Lcn/nubia/deskclock/model/Alarm;

    iget v1, v1, Lcn/nubia/deskclock/model/Alarm;->id:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 499
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->sendDismissBroadcast()V

    .line 500
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->finishActivity()V

    .line 501
    return-void
.end method

.method private dismissOrSnooze()V
    .locals 2

    .prologue
    .line 630
    iget v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mSnoozeTime:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mSnoozeMaxCount:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mSnoozeMaxCount:I

    iget-object v1, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mAlarm:Lcn/nubia/deskclock/model/Alarm;

    iget v1, v1, Lcn/nubia/deskclock/model/Alarm;->snoozeCount:I

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mIsSnooze:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 632
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->snooze()V

    .line 636
    :goto_0
    return-void

    .line 634
    :cond_0
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->dismiss()V

    goto :goto_0
.end method

.method private finishActivity()V
    .locals 2

    .prologue
    .line 519
    const-string v0, "AlarmAlertFullScreen"

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->releaseResource()V

    .line 521
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->finish()V

    .line 522
    return-void
.end method

.method private getAlarmData()V
    .locals 3

    .prologue
    .line 231
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent.extra.alarm"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/model/Alarm;

    iput-object v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mAlarm:Lcn/nubia/deskclock/model/Alarm;

    .line 232
    const-string v0, "AlarmAlertFullScreen"

    const-string v1, "AlarmAlertFullScreen - onCreate"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mAlarm:Lcn/nubia/deskclock/model/Alarm;

    if-eqz v0, :cond_0

    .line 234
    const-string v0, "AlarmAlertFullScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alarm Id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mAlarm:Lcn/nubia/deskclock/model/Alarm;

    invoke-virtual {v2}, Lcn/nubia/deskclock/model/Alarm;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_0
    return-void
.end method

.method private getLatticeLayoutResId()I
    .locals 5

    .prologue
    .line 375
    const/4 v1, 0x0

    .line 376
    .local v1, "layoutName":Ljava/lang/String;
    const-string v1, "smartcover_lattice"

    .line 377
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "layout"

    const-string v4, "cn.nubia.deskclock.preset"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 379
    .local v0, "layoutId":I
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mIsLattice:Z

    .line 380
    return v0
.end method

.method private getNormalLayoutResId()I
    .locals 6

    .prologue
    .line 360
    const-string v3, "persist.sys.smartface.type"

    const-string v4, "default"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 362
    .local v2, "type":Ljava/lang/String;
    const/4 v1, 0x0

    .line 363
    .local v1, "layoutName":Ljava/lang/String;
    const-string v3, "310"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "320"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "360"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 364
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "smartcover_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 369
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "layout"

    const-string v5, "cn.nubia.deskclock.preset"

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 371
    .local v0, "layoutId":I
    return v0

    .line 366
    .end local v0    # "layoutId":I
    :cond_1
    const-string v1, "smartcover_default"

    goto :goto_0
.end method

.method private getNotificationManager()Landroid/app/NotificationManager;
    .locals 1

    .prologue
    .line 696
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method private getSnoozeLabel()Ljava/lang/String;
    .locals 4

    .prologue
    .line 337
    iget-boolean v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mIsSnooze:Z

    if-eqz v0, :cond_0

    .line 338
    const v0, 0x7f0d002d

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mSnoozeTime:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 340
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private hasFeature()Z
    .locals 2

    .prologue
    .line 718
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "cn.nubia.smartface.feature.lattice_screenslding"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private hideNavigationBar()V
    .locals 2

    .prologue
    .line 263
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 273
    return-void
.end method

.method private initGestureDetector()V
    .locals 2

    .prologue
    .line 300
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$3;

    invoke-direct {v1, p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$3;-><init>(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mGestureDetector:Landroid/view/GestureDetector;

    .line 316
    return-void
.end method

.method private initSnoozeData()V
    .locals 4

    .prologue
    .line 214
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v1

    .line 215
    invoke-virtual {v1}, Lcn/nubia/deskclock/DeskClockApplication;->getDefaultSharedPref()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 216
    .local v0, "sharedPref":Landroid/content/SharedPreferences;
    const-string v1, "isSnooze"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mIsSnooze:Z

    .line 217
    const-string v1, "snoozeTime"

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mSnoozeTime:I

    .line 218
    const-string v1, "snoozeMaxCount"

    const/16 v2, 0x12c

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mSnoozeMaxCount:I

    .line 219
    const-string v1, "AlarmAlertFullScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " [initSnoozeData]  mIsSnooze : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mIsSnooze:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  ;; mSnoozeTime : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mSnoozeTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  ;; mSnoozeMaxCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mSnoozeMaxCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method private registerCloseReceiver()V
    .locals 2

    .prologue
    .line 287
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 288
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.nubia.deskclock.ALARM_TOUI_SNOOZE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    const-string v1, "com.nubia.deskclock.ALARM_TOUI_DISMISS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 291
    return-void
.end method

.method private registerGestureSensorListener()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 670
    const/4 v0, 0x1

    .line 671
    .local v0, "SLEEP_ACTIVE":I
    const/4 v1, 0x0

    .line 672
    .local v1, "SLEEP_DEACTIVE":I
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/deskclock/DeskClockApplication;->getDefaultSharedPref()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 673
    .local v2, "sharedPref":Landroid/content/SharedPreferences;
    const-string v4, "sleep_state"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 674
    .local v3, "sleep_state":I
    if-eq v3, v6, :cond_0

    .line 675
    iput-boolean v5, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mIsActive:Z

    .line 686
    :goto_0
    return-void

    .line 678
    :cond_0
    iput-boolean v6, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mIsActive:Z

    .line 680
    iget-object v4, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v4, :cond_1

    .line 681
    const-string v4, "sensor"

    invoke-virtual {p0, v4}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorManager;

    iput-object v4, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mSensorManager:Landroid/hardware/SensorManager;

    .line 683
    :cond_1
    iget-object v4, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mGestureSensor:Landroid/hardware/Sensor;

    .line 684
    iget-object v4, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v5, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mGestureSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v6, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mGestureSensor:Landroid/hardware/Sensor;

    const/4 v7, 0x3

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0
.end method

.method private registerPowerReceiver()V
    .locals 2

    .prologue
    .line 294
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mFilterPower:Landroid/content/IntentFilter;

    .line 295
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mFilterPower:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mReceiverPower:Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$PowerReceiver;

    iget-object v1, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mFilterPower:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 297
    return-void
.end method

.method private releaseResource()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 323
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mHintView:Lcn/nubia/deskclock/ui/HintView;

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mHintView:Lcn/nubia/deskclock/ui/HintView;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/HintView;->stopScanText()V

    .line 327
    :cond_1
    return-void
.end method

.method private sendDismissBroadcast()V
    .locals 4

    .prologue
    .line 510
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 511
    .local v0, "runtime":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 512
    const-string v2, "AlarmAlertFullScreen"

    const-string v3, "sendDismissBroadcast "

    invoke-static {v2, v3, v0}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 513
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.nubia.deskclock.ALARM_DISMISS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 514
    .local v1, "snoozeIntent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->sendBroadcast(Landroid/content/Intent;)V

    .line 515
    return-void
.end method

.method private sendSmartFaceBroadcast(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 573
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nubia.smartface.state.changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 574
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "packageName"

    const-string v2, "cn.nubia.deskclock.preset"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 575
    const-string v1, "display"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 576
    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->sendBroadcast(Landroid/content/Intent;)V

    .line 577
    return-void
.end method

.method private sendSnoozeBroadcast()V
    .locals 3

    .prologue
    .line 504
    const-string v1, "AlarmAlertFullScreen"

    const-string v2, "sendSnoozeBroadcast"

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nubia.deskclock.ALARM_SNOOZE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 506
    .local v0, "snoozeIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->sendBroadcast(Landroid/content/Intent;)V

    .line 507
    return-void
.end method

.method private setTitle()V
    .locals 3

    .prologue
    .line 330
    iget-object v2, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mAlarm:Lcn/nubia/deskclock/model/Alarm;

    invoke-virtual {v2, p0}, Lcn/nubia/deskclock/model/Alarm;->getLabelOrDefault(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "titleText":Ljava/lang/String;
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->getSnoozeLabel()Ljava/lang/String;

    move-result-object v1

    .line 332
    .local v1, "titleText1":Ljava/lang/String;
    iget-object v2, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mAlerTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v2, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mAlartSnoozeTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    return-void
.end method

.method private snooze()V
    .locals 0

    .prologue
    .line 492
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->sendSnoozeBroadcast()V

    .line 493
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->finishActivity()V

    .line 494
    return-void
.end method

.method private unregisterGestureSensorListener()V
    .locals 2

    .prologue
    .line 689
    iget-boolean v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mIsActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    .line 693
    :cond_0
    :goto_0
    return-void

    .line 692
    :cond_1
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mGestureSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method

.method private updateLatticeSmartCover()V
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mClose:I

    if-nez v0, :cond_0

    .line 165
    iget v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mClose:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mClose:I

    .line 166
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->updateLayout()V

    .line 171
    :goto_0
    return-void

    .line 168
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mClose:I

    .line 169
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->snooze()V

    goto :goto_0
.end method

.method private updateLayout()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x4

    const/16 v5, 0x8

    .line 384
    const-string v3, "AlarmAlertFullScreen"

    const-string v4, "updateLayout"

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 386
    .local v1, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->getLayoutResId()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 387
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->setContentView(Landroid/view/View;)V

    .line 389
    iget v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mSmartCoverType:I

    if-eq v3, v8, :cond_7

    .line 390
    const v3, 0x7f12006a

    invoke-virtual {p0, v3}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mSnooze:Landroid/widget/Button;

    .line 391
    const v3, 0x7f120068

    invoke-virtual {p0, v3}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mDismiss:Landroid/widget/Button;

    .line 392
    iget v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mSmartCoverType:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 393
    const v3, 0x7f120064

    invoke-virtual {p0, v3}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;

    .line 394
    .local v0, "dragLayout":Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;
    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {v0, p0}, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->setAlarmScreenLayoutListener(Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$AlarmFinishListener;)V

    .line 397
    :cond_0
    const v3, 0x7f12006f

    invoke-virtual {p0, v3}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mSnoozeView:Landroid/widget/FrameLayout;

    .line 398
    const v3, 0x7f120076

    invoke-virtual {p0, v3}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcn/nubia/deskclock/ui/HintView;

    iput-object v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mHintView:Lcn/nubia/deskclock/ui/HintView;

    .line 399
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mHintView:Lcn/nubia/deskclock/ui/HintView;

    invoke-virtual {v3}, Lcn/nubia/deskclock/ui/HintView;->startScanText()V

    .line 400
    const v3, 0x7f120063

    invoke-virtual {p0, v3}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mBg:Landroid/view/View;

    .line 401
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->checkAndRequestSdcardPermissions()V

    .line 402
    const v3, 0x7f120071

    invoke-virtual {p0, v3}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mAlerTitle:Landroid/widget/TextView;

    .line 403
    const v3, 0x7f120072

    invoke-virtual {p0, v3}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mAlartSnoozeTitle:Landroid/widget/TextView;

    .line 404
    const v3, 0x7f120070

    invoke-virtual {p0, v3}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mRingBackground:Landroid/view/View;

    .line 405
    const v3, 0x7f120073

    invoke-virtual {p0, v3}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;

    iput-object v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mLockScreenAnimLayout:Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;

    .line 407
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->setTitle()V

    .line 408
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mSnoozeView:Landroid/widget/FrameLayout;

    new-instance v4, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$4;

    invoke-direct {v4, p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$4;-><init>(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mSnooze:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 416
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mDismiss:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 419
    .end local v0    # "dragLayout":Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;
    :cond_1
    const v3, 0x7f120069

    invoke-virtual {p0, v3}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mSeparator:Landroid/view/View;

    .line 420
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mSnooze:Landroid/widget/Button;

    new-instance v4, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$5;

    invoke-direct {v4, p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$5;-><init>(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mDismiss:Landroid/widget/Button;

    new-instance v4, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$6;

    invoke-direct {v4, p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$6;-><init>(Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mAlarm:Lcn/nubia/deskclock/model/Alarm;

    iget v3, v3, Lcn/nubia/deskclock/model/Alarm;->snoozeCount:I

    iget v4, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mSnoozeMaxCount:I

    if-eq v3, v4, :cond_2

    iget-boolean v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mIsSnooze:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mSnoozeTime:I

    if-nez v3, :cond_5

    .line 437
    :cond_2
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mSnoozeView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v7}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 438
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mSnooze:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 439
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mSeparator:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 440
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mRingBackground:Landroid/view/View;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mRingBackground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v6, :cond_3

    .line 441
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mRingBackground:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 443
    :cond_3
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mAlartSnoozeTitle:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    .line 444
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mAlartSnoozeTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 446
    :cond_4
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mAlerTitle:Landroid/widget/TextView;

    if-eqz v3, :cond_5

    .line 447
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mAlerTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f004c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 449
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mAlerTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00a9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 454
    :cond_5
    const v3, 0x7f12006b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;

    iput-object v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mColock:Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;

    .line 455
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mColock:Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;

    invoke-virtual {v3, v7}, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->setLive(Z)V

    .line 459
    :cond_6
    :goto_0
    return-void

    .line 456
    :cond_7
    iget v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mSmartCoverType:I

    if-ne v3, v8, :cond_6

    .line 457
    invoke-direct {p0, v2}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->updateLayoutLatticeSmartCover(Landroid/view/View;)V

    goto :goto_0
.end method

.method private updateLayoutLatticeSmartCover(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x4

    const/high16 v5, 0x40400000    # 3.0f

    .line 462
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mAlarm:Lcn/nubia/deskclock/model/Alarm;

    if-eqz v3, :cond_0

    .line 464
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 465
    .local v1, "c":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "HH:mm"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 466
    .local v2, "ssDateFormat":Ljava/text/SimpleDateFormat;
    const v3, 0x7f120159

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcn/nubia/deskclock/ui/LatticeTextView;

    iput-object v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mLatticeView:Lcn/nubia/deskclock/ui/LatticeTextView;

    .line 467
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mLatticeView:Lcn/nubia/deskclock/ui/LatticeTextView;

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/deskclock/ui/LatticeTextView;->setText(Ljava/lang/String;)V

    .line 471
    .end local v1    # "c":Ljava/util/Date;
    .end local v2    # "ssDateFormat":Ljava/text/SimpleDateFormat;
    :cond_0
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mLatticeView:Lcn/nubia/deskclock/ui/LatticeTextView;

    invoke-virtual {v3}, Lcn/nubia/deskclock/ui/LatticeTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 472
    .local v0, "aLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v3, Lcn/nubia/deskclock/ui/LatticeBaseView;->LATTICE_UNIT_WIDTH:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 473
    const/high16 v3, 0x40800000    # 4.0f

    sget v4, Lcn/nubia/deskclock/ui/LatticeBaseView;->LATTICE_UNIT_WIDTH:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 474
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mLatticeView:Lcn/nubia/deskclock/ui/LatticeTextView;

    invoke-virtual {v3, v0}, Lcn/nubia/deskclock/ui/LatticeTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 476
    const v3, 0x7f12015b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;

    iput-object v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mLatticeArrow1:Lcn/nubia/deskclock/ui/LatticeAlarmArrow;

    .line 477
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mLatticeArrow1:Lcn/nubia/deskclock/ui/LatticeAlarmArrow;

    invoke-virtual {v3}, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "aLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 478
    .restart local v0    # "aLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v3, Lcn/nubia/deskclock/ui/LatticeBaseView;->LATTICE_UNIT_WIDTH:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 479
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mLatticeArrow1:Lcn/nubia/deskclock/ui/LatticeAlarmArrow;

    invoke-virtual {v3, v0}, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 481
    const v3, 0x7f12015c

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;

    iput-object v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mLatticeArrow2:Lcn/nubia/deskclock/ui/LatticeAlarmArrow;

    .line 482
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->hasFeature()Z

    move-result v3

    if-nez v3, :cond_1

    .line 483
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mLatticeArrow1:Lcn/nubia/deskclock/ui/LatticeAlarmArrow;

    invoke-virtual {v3, v6}, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->setVisibility(I)V

    .line 484
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mLatticeArrow2:Lcn/nubia/deskclock/ui/LatticeAlarmArrow;

    invoke-virtual {v3, v6}, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->setVisibility(I)V

    .line 486
    :cond_1
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mLatticeArrow1:Lcn/nubia/deskclock/ui/LatticeAlarmArrow;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->startRefresh(I)V

    .line 487
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mLatticeArrow2:Lcn/nubia/deskclock/ui/LatticeAlarmArrow;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcn/nubia/deskclock/ui/LatticeAlarmArrow;->startRefresh(I)V

    .line 488
    return-void
.end method

.method private updateNormalSmartCover()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 151
    iget v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mClose:I

    if-nez v0, :cond_1

    .line 152
    iget-boolean v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mIsLattice:Z

    if-nez v0, :cond_0

    .line 153
    iput-boolean v1, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mIsLattice:Z

    .line 155
    :cond_0
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->updateLayout()V

    .line 156
    iget v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mClose:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mClose:I

    .line 161
    :goto_0
    return-void

    .line 158
    :cond_1
    iput v1, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mClose:I

    .line 159
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->snooze()V

    goto :goto_0
.end method


# virtual methods
.method public checkAndRequestSdcardPermissions()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 765
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v3, v2, v5

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v2, v4

    .line 767
    .local v2, "permissions":[Ljava/lang/String;
    const/4 v0, 0x1

    .line 769
    .local v0, "checkPermissionsResult":Z
    array-length v7, v2

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v1, v2, v6

    .line 770
    .local v1, "permission":Ljava/lang/String;
    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    move v3, v4

    :goto_1
    and-int/2addr v0, v3

    .line 769
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_0

    :cond_0
    move v3, v5

    .line 770
    goto :goto_1

    .line 772
    .end local v1    # "permission":Ljava/lang/String;
    :cond_1
    const-string v3, "AlarmAlertFullScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkAndRequestSdcardPermissions: checkPermissionsResult : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    if-ne v0, v4, :cond_3

    .line 774
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mBg:Landroid/view/View;

    invoke-static {p0}, Lcn/nubia/deskclock/util/Utils;->getAlarmBg(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 780
    :cond_2
    :goto_2
    return-void

    .line 777
    :cond_3
    invoke-static {p0}, Lcn/nubia/deskclock/util/Utils;->isFirstLaunch(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 778
    invoke-static {p0}, Lcn/nubia/deskclock/util/PermissionRequestUtil;->requestSdcardPermissions(Landroid/app/Activity;)V

    goto :goto_2
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 607
    const-string v1, "AlarmAlertFullScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchKeyEvent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 626
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    :sswitch_0
    return v0

    .line 611
    :sswitch_1
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->dismiss()V

    goto :goto_0

    .line 618
    :sswitch_2
    const-string v1, "AlarmAlertFullScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key events snooze clock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->dismissOrSnooze()V

    goto :goto_0

    .line 608
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x1a -> :sswitch_1
        0x1b -> :sswitch_2
        0x50 -> :sswitch_2
        0xa4 -> :sswitch_2
    .end sparse-switch
.end method

.method protected getLayoutResId()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 346
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "smart_face_display"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mSmartCoverType:I

    .line 347
    const-string v2, "AlarmAlertFullScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SmartCover getLayoutResId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mSmartCoverType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget v2, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mSmartCoverType:I

    if-eqz v2, :cond_0

    move v0, v1

    .line 349
    .local v0, "smartfaceenabled":Z
    :cond_0
    iput-boolean v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mLastSmartCoverState:Z

    .line 350
    if-eqz v0, :cond_1

    iget v2, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mSmartCoverType:I

    if-ne v2, v1, :cond_1

    .line 351
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->getNormalLayoutResId()I

    move-result v1

    .line 355
    :goto_0
    return v1

    .line 352
    :cond_1
    if-eqz v0, :cond_2

    iget v1, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mSmartCoverType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 353
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->getLatticeLayoutResId()I

    move-result v1

    goto :goto_0

    .line 355
    :cond_2
    const v1, 0x7f04001a

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 642
    const-string v0, "AlarmAlertFullScreen"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 542
    const-string v0, "AlarmAlertFullScreen"

    const-string v1, "onConfigChanged"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->updateLayout()V

    .line 544
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 545
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 192
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 193
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->initSnoozeData()V

    .line 194
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->acquireWakeLock()V

    .line 195
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->getAlarmData()V

    .line 196
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->addWindowFlags()V

    .line 197
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->hideNavigationBar()V

    .line 198
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->updateLayout()V

    .line 199
    invoke-static {p0}, Lcn/nubia/deskclock/util/Utils;->setFullScreenActivityStatusBar(Landroid/app/Activity;)V

    .line 200
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->checkDockStatus()V

    .line 201
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->registerCloseReceiver()V

    .line 202
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->initGestureDetector()V

    .line 203
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->registerPowerReceiver()V

    .line 204
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 595
    const-string v1, "AlarmAlertFullScreen"

    const-string v2, "onDestroy()"

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 597
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    .line 598
    .local v0, "nm":Landroid/app/NotificationManager;
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mAlarm:Lcn/nubia/deskclock/model/Alarm;

    iget v1, v1, Lcn/nubia/deskclock/model/Alarm;->id:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 599
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->releaseResource()V

    .line 600
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mReceiverPower:Lcn/nubia/deskclock/activity/AlarmAlertFullScreen$PowerReceiver;

    invoke-virtual {p0, v1}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 601
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 602
    return-void
.end method

.method public onDismiss()V
    .locals 0

    .prologue
    .line 713
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->dismiss()V

    .line 714
    return-void
.end method

.method public onMove(F)V
    .locals 2
    .param p1, "mAp"    # F

    .prologue
    .line 723
    mul-float v0, p1, p1

    .line 724
    .local v0, "ap":F
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mHintView:Lcn/nubia/deskclock/ui/HintView;

    if-eqz v1, :cond_0

    .line 725
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mHintView:Lcn/nubia/deskclock/ui/HintView;

    invoke-virtual {v1, v0}, Lcn/nubia/deskclock/ui/HintView;->setAlpha(F)V

    .line 727
    :cond_0
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mLockScreenAnimLayout:Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;

    if-eqz v1, :cond_1

    .line 728
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mLockScreenAnimLayout:Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;

    invoke-virtual {v1, v0}, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;->setAlpha(F)V

    .line 730
    :cond_1
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 530
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 531
    const-string v0, "AlarmAlertFullScreen"

    const-string v1, "OnNewIntent()"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const-string v0, "intent.extra.alarm"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/model/Alarm;

    iput-object v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mAlarm:Lcn/nubia/deskclock/model/Alarm;

    .line 533
    iget v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mSmartCoverType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 534
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->setTitle()V

    .line 538
    :goto_0
    return-void

    .line 536
    :cond_0
    const-string v0, "AlarmAlertFullScreen"

    const-string v1, "OnNewIntent()"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 581
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 582
    const-string v0, "AlarmAlertFullScreen"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    invoke-static {v2}, Lcn/nubia/deskclock/util/Utils;->disableMenu(Z)V

    .line 585
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mLockScreenAnimLayout:Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mLockScreenAnimLayout:Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;

    invoke-virtual {v0}, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;->stopAnimation()V

    .line 588
    :cond_0
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->unregisterGestureSensorListener()V

    .line 589
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mSmartCoverObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 590
    invoke-direct {p0, v2}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->sendSmartFaceBroadcast(Z)V

    .line 591
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 745
    const-string v2, "AlarmAlertFullScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ---- onRequestPermissionsResult --- requestCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    const/16 v2, 0x15

    if-ne p1, v2, :cond_3

    .line 747
    const/4 v1, 0x1

    .line 748
    .local v1, "requestResult":Z
    array-length v3, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v0, p3, v2

    .line 749
    .local v0, "i":I
    if-eqz v0, :cond_1

    .line 750
    const/4 v1, 0x0

    .line 754
    .end local v0    # "i":I
    :cond_0
    const-string v2, "AlarmAlertFullScreen"

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

    .line 755
    if-eqz v1, :cond_2

    .line 756
    iget-object v2, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mBg:Landroid/view/View;

    invoke-static {p0}, Lcn/nubia/deskclock/util/Utils;->getAlarmBg(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 763
    .end local v1    # "requestResult":Z
    :goto_1
    return-void

    .line 748
    .restart local v0    # "i":I
    .restart local v1    # "requestResult":Z
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 759
    .end local v0    # "i":I
    :cond_2
    iget-object v2, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mBg:Landroid/view/View;

    invoke-static {p0}, Lcn/nubia/deskclock/util/Utils;->getAlarmBg(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 762
    .end local v1    # "requestResult":Z
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 549
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 550
    const-string v0, "AlarmAlertFullScreen"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreO()Z

    move-result v0

    if-nez v0, :cond_0

    .line 552
    invoke-virtual {p0, v3}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->setShowWhenLocked(Z)V

    .line 558
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mIsDocked:Z

    if-eqz v0, :cond_2

    .line 559
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->setRequestedOrientation(I)V

    .line 561
    :cond_2
    iget v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mSmartCoverType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mSmartCoverType:I

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mLockScreenAnimLayout:Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;

    if-eqz v0, :cond_3

    .line 563
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mLockScreenAnimLayout:Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;

    invoke-virtual {v0}, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;->startAnimation()V

    .line 566
    :cond_3
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->registerGestureSensorListener()V

    .line 567
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mSmartCoverUri:Landroid/net/Uri;

    iget-object v2, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mSmartCoverObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 568
    invoke-direct {p0, v3}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->sendSmartFaceBroadcast(Z)V

    .line 569
    invoke-static {v3}, Lcn/nubia/deskclock/util/Utils;->disableMenu(Z)V

    .line 570
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 702
    :try_start_0
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 703
    :catch_0
    move-exception v0

    .line 704
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AlarmAlertFullScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouchEvent e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    const/4 v1, 0x0

    invoke-static {v1}, Lcn/nubia/deskclock/util/Utils;->disableMenu(Z)V

    .line 706
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AlarmAlertFullScreen;->dismiss()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 208
    if-eqz p1, :cond_0

    .line 209
    invoke-static {p0}, Lcn/nubia/deskclock/util/Utils;->setFullScreenActivityStatusBar(Landroid/app/Activity;)V

    .line 211
    :cond_0
    return-void
.end method
