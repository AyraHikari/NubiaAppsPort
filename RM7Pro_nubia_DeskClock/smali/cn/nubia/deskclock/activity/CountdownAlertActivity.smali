.class public Lcn/nubia/deskclock/activity/CountdownAlertActivity;
.super Landroid/app/Activity;
.source "CountdownAlertActivity.java"

# interfaces
.implements Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$AlarmFinishListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deskclock/activity/CountdownAlertActivity$HomeAndPowerReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_CLOSE_COUNTDOWN_FROM_MENU:Ljava/lang/String; = "close_countdown_from_menu"

.field public static final ACTION_FROM_KEYGUARD_FULLSCREEN:Ljava/lang/String; = "from_keyguard_fullscreen"

.field private static final FRINGE_FULL_BLACK_SET:Ljava/lang/String; = "fringe_full_black_set"

.field private static final KEEP_ACTIVITY_EXIST_TIME:J = 0x7d0L

.field private static final TAG:Ljava/lang/String; = "DeskClock:[CountdownAlertActivity]"


# instance fields
.field private flag:I

.field private isFirstFromFullScreen:Z

.field private isFromKeyguard:Z

.field private mAlertNubiaFonts:Landroid/graphics/Typeface;

.field private mAmPmView:Landroid/widget/TextView;

.field private mAmString:Ljava/lang/String;

.field private mBackgroundView:Landroid/view/View;

.field private mCalendar:Ljava/util/Calendar;

.field private mCountDownTime:Landroid/widget/TextView;

.field private mCurTime:Ljava/lang/String;

.field private mFilterHome:Landroid/content/IntentFilter;

.field private mHintView:Lcn/nubia/deskclock/ui/HintView;

.field private mPmString:Ljava/lang/String;

.field private mReceiverHome:Lcn/nubia/deskclock/activity/CountdownAlertActivity$HomeAndPowerReceiver;

.field private mSAL:Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;

.field private mStartTime:J

.field private mTextTime:Landroid/widget/TextView;

.field private mTimerTitle:Landroid/widget/TextView;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    new-instance v0, Lcn/nubia/deskclock/activity/CountdownAlertActivity$HomeAndPowerReceiver;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/activity/CountdownAlertActivity$HomeAndPowerReceiver;-><init>(Lcn/nubia/deskclock/activity/CountdownAlertActivity;)V

    iput-object v0, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->mReceiverHome:Lcn/nubia/deskclock/activity/CountdownAlertActivity$HomeAndPowerReceiver;

    .line 67
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->mStartTime:J

    .line 74
    iput-boolean v2, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->isFromKeyguard:Z

    .line 75
    iput-boolean v2, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->isFirstFromFullScreen:Z

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/deskclock/activity/CountdownAlertActivity;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/CountdownAlertActivity;

    .prologue
    .line 51
    iget v0, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->flag:I

    return v0
.end method

.method static synthetic access$100(Lcn/nubia/deskclock/activity/CountdownAlertActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/CountdownAlertActivity;

    .prologue
    .line 51
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->finishCountDownAlart()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/deskclock/activity/CountdownAlertActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/CountdownAlertActivity;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->isFirstFromFullScreen:Z

    return v0
.end method

.method static synthetic access$202(Lcn/nubia/deskclock/activity/CountdownAlertActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/CountdownAlertActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->isFirstFromFullScreen:Z

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/deskclock/activity/CountdownAlertActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/CountdownAlertActivity;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->isFromKeyguard:Z

    return v0
.end method

.method private finishCountDownAlart()V
    .locals 4

    .prologue
    .line 267
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nubia.deskclock.countdown.action.COUNTDOWN_CLOSE_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    .local v0, "closeIntent":Landroid/content/Intent;
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreO()Z

    move-result v1

    if-nez v1, :cond_0

    .line 269
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "cn.nubia.deskclock.preset"

    const-string v3, "cn.nubia.deskclock.CountdownBroadCastReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 271
    :cond_0
    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 272
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->finish()V

    .line 273
    return-void
.end method

.method private finishCountDownAlartNotShowNotification()V
    .locals 4

    .prologue
    .line 276
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nubia.deskclock.countdown.action.COUNTDOWN_CLOSE_ACTION_NOT_SHOW_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 277
    .local v0, "closeNotificationIntent":Landroid/content/Intent;
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreO()Z

    move-result v1

    if-nez v1, :cond_0

    .line 278
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "cn.nubia.deskclock.preset"

    const-string v3, "cn.nubia.deskclock.CountdownBroadCastReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 280
    :cond_0
    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 281
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->finish()V

    .line 282
    return-void
.end method

.method private hideNavigationBar()V
    .locals 2

    .prologue
    .line 297
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 304
    return-void
.end method

.method private initAlertNubiaFonts()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->mAlertNubiaFonts:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Nubiafont2.0_Vertical.otf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->mAlertNubiaFonts:Landroid/graphics/Typeface;

    .line 159
    :cond_0
    return-void
.end method

.method private releaseResource()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 166
    :cond_0
    return-void
.end method


# virtual methods
.method public checkAndRequestSdcardPermissions()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 328
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v3, v2, v5

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v2, v4

    .line 330
    .local v2, "permissions":[Ljava/lang/String;
    const/4 v0, 0x1

    .line 332
    .local v0, "checkPermissionsResult":Z
    array-length v7, v2

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v1, v2, v6

    .line 333
    .local v1, "permission":Ljava/lang/String;
    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    move v3, v4

    :goto_1
    and-int/2addr v0, v3

    .line 332
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_0

    :cond_0
    move v3, v5

    .line 333
    goto :goto_1

    .line 335
    .end local v1    # "permission":Ljava/lang/String;
    :cond_1
    const-string v3, "DeskClock:[CountdownAlertActivity]"

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

    .line 336
    if-ne v0, v4, :cond_3

    .line 337
    iget-object v3, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->mBackgroundView:Landroid/view/View;

    invoke-static {p0}, Lcn/nubia/deskclock/util/Utils;->getAlarmBg(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 343
    :cond_2
    :goto_2
    return-void

    .line 340
    :cond_3
    invoke-static {p0}, Lcn/nubia/deskclock/util/Utils;->isFirstLaunch(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 341
    invoke-static {p0}, Lcn/nubia/deskclock/util/PermissionRequestUtil;->requestSdcardPermissions(Landroid/app/Activity;)V

    goto :goto_2
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 246
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 263
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 256
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 257
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->finishCountDownAlart()V

    goto :goto_0

    .line 246
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1b -> :sswitch_0
        0x50 -> :sswitch_0
        0x52 -> :sswitch_0
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v11, 0x0

    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    .line 82
    .local v9, "win":Landroid/view/Window;
    const/high16 v10, 0x80000

    invoke-virtual {v9, v10}, Landroid/view/Window;->addFlags(I)V

    .line 83
    const-string v10, "DeskClock:[CountdownAlertActivity]"

    const-string v12, " [onCreate] "

    invoke-static {v10, v12}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v12, "fringe_full_black_set"

    invoke-static {v10, v12, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 85
    .local v1, "fringeFullBlackSet":I
    const-string v10, "DeskClock:[CountdownAlertActivity]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "fringeFullBlackSet="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    if-ne v1, v2, :cond_0

    .line 87
    const/16 v10, 0x400

    invoke-virtual {v9, v10}, Landroid/view/Window;->clearFlags(I)V

    .line 89
    :cond_0
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->hideNavigationBar()V

    .line 90
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->initAlertNubiaFonts()V

    .line 93
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v12, "screen_off"

    invoke-virtual {v10, v12, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_1

    .line 94
    const-string v10, "DeskClock:[CountdownAlertActivity]"

    const-string v12, " [screen_off] "

    invoke-static {v10, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const v10, 0x200081

    invoke-virtual {v9, v10}, Landroid/view/Window;->addFlags(I)V

    .line 99
    :cond_1
    const-string v10, "from_keyguard_fullscreen"

    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->getIsFromKeygurad()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 100
    :cond_2
    iput-boolean v2, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->isFromKeyguard:Z

    .line 104
    :cond_3
    :goto_0
    const v10, 0x7f040030

    invoke-virtual {p0, v10}, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->setContentView(I)V

    .line 105
    const v10, 0x7f12006c

    invoke-virtual {p0, v10}, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->mAmPmView:Landroid/widget/TextView;

    .line 106
    const v10, 0x7f1200d2

    invoke-virtual {p0, v10}, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->mTimerTitle:Landroid/widget/TextView;

    .line 107
    invoke-static {}, Lcn/nubia/deskclock/database/CountDownSPUtils;->getTimeTitle()Ljava/lang/String;

    move-result-object v8

    .line 108
    .local v8, "timerTitle":Ljava/lang/String;
    const-string v10, "DeskClock:[CountdownAlertActivity]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onCreate: timerTitle : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 110
    iget-object v10, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->mTimerTitle:Landroid/widget/TextView;

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :cond_4
    new-instance v10, Ljava/text/DateFormatSymbols;

    invoke-direct {v10}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v10}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "ampm":[Ljava/lang/String;
    aget-object v10, v0, v11

    iput-object v10, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->mAmString:Ljava/lang/String;

    .line 114
    aget-object v10, v0, v2

    iput-object v10, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->mPmString:Ljava/lang/String;

    .line 115
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v10, "HH:mm"

    invoke-direct {v6, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 116
    .local v6, "mFormatter_24":Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v10, "hh:mm"

    invoke-direct {v5, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 117
    .local v5, "mFormatter_12":Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-direct {v4, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 118
    .local v4, "mCurDate":Ljava/util/Date;
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 119
    invoke-virtual {v6, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->mCurTime:Ljava/lang/String;

    .line 127
    :goto_1
    const v10, 0x7f1200cf

    invoke-virtual {p0, v10}, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;

    .line 128
    .local v3, "mAlarmLayout":Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;
    invoke-virtual {v3, p0}, Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;->setAlarmScreenLayoutListener(Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout$AlarmFinishListener;)V

    .line 129
    const v10, 0x7f1200ce

    invoke-virtual {p0, v10}, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->mBackgroundView:Landroid/view/View;

    .line 130
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->checkAndRequestSdcardPermissions()V

    .line 131
    const v10, 0x7f120073

    invoke-virtual {p0, v10}, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;

    iput-object v10, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->mSAL:Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;

    .line 132
    invoke-static {p0}, Lcn/nubia/deskclock/util/Utils;->setFullScreenActivityStatusBar(Landroid/app/Activity;)V

    .line 133
    const v10, 0x7f1200d1

    invoke-virtual {p0, v10}, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->mTextTime:Landroid/widget/TextView;

    .line 134
    iget-object v10, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->mTextTime:Landroid/widget/TextView;

    iget-object v12, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->mAlertNubiaFonts:Landroid/graphics/Typeface;

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 135
    const v10, 0x7f1200d3

    invoke-virtual {p0, v10}, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->mCountDownTime:Landroid/widget/TextView;

    .line 136
    const v10, 0x7f1200d4

    invoke-virtual {p0, v10}, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcn/nubia/deskclock/ui/HintView;

    iput-object v10, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->mHintView:Lcn/nubia/deskclock/ui/HintView;

    .line 137
    iget-object v10, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->mHintView:Lcn/nubia/deskclock/ui/HintView;

    invoke-virtual {v10}, Lcn/nubia/deskclock/ui/HintView;->startScanText()V

    .line 139
    iget-object v10, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->mTextTime:Landroid/widget/TextView;

    iget-object v12, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->mCurTime:Ljava/lang/String;

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    invoke-static {p0}, Lcn/nubia/deskclock/database/CountDownSPUtils;->readTimeNotficationFromPref(Landroid/content/Context;)I

    move-result v7

    .line 141
    .local v7, "mcs":I
    iget-object v10, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->mCountDownTime:Landroid/widget/TextView;

    invoke-static {p0, v7}, Lcn/nubia/deskclock/util/Utils;->formatCountDownSecond(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v12, "countdown_operation__flag"

    invoke-virtual {v10, v12, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->flag:I

    .line 144
    const-string v10, "DeskClock:[CountdownAlertActivity]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " [onCreate] flag : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->flag:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->mStartTime:J

    .line 146
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    iput-object v10, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->mFilterHome:Landroid/content/IntentFilter;

    .line 147
    iget-object v10, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->mFilterHome:Landroid/content/IntentFilter;

    const-string v11, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v10, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    iget-object v10, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->mFilterHome:Landroid/content/IntentFilter;

    const-string v11, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v10, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    iget-object v10, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->mFilterHome:Landroid/content/IntentFilter;

    const-string v11, "com.nubia.deskclock.countdown.action.COUNTDOWN_CLOSE_COUNTDOWN_ALERT_ACTIVITY"

    invoke-virtual {v10, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    iget-object v10, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->mFilterHome:Landroid/content/IntentFilter;

    const-string v11, "close_countdown_from_menu"

    invoke-virtual {v10, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    iget-object v10, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->mReceiverHome:Lcn/nubia/deskclock/activity/CountdownAlertActivity$HomeAndPowerReceiver;

    iget-object v11, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->mFilterHome:Landroid/content/IntentFilter;

    invoke-virtual {p0, v10, v11}, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 152
    return-void

    .line 101
    .end local v0    # "ampm":[Ljava/lang/String;
    .end local v3    # "mAlarmLayout":Lcn/nubia/deskclock/ui/AlarmFullScreenDragLayout;
    .end local v4    # "mCurDate":Ljava/util/Date;
    .end local v5    # "mFormatter_12":Ljava/text/SimpleDateFormat;
    .end local v6    # "mFormatter_24":Ljava/text/SimpleDateFormat;
    .end local v7    # "mcs":I
    .end local v8    # "timerTitle":Ljava/lang/String;
    :cond_5
    const-string v10, "fullscreen_activity"

    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 102
    iput-boolean v2, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->isFirstFromFullScreen:Z

    goto/16 :goto_0

    .line 121
    .restart local v0    # "ampm":[Ljava/lang/String;
    .restart local v4    # "mCurDate":Ljava/util/Date;
    .restart local v5    # "mFormatter_12":Ljava/text/SimpleDateFormat;
    .restart local v6    # "mFormatter_24":Ljava/text/SimpleDateFormat;
    .restart local v8    # "timerTitle":Ljava/lang/String;
    :cond_6
    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->mCurTime:Ljava/lang/String;

    .line 122
    iget-object v10, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->mAmPmView:Landroid/widget/TextView;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    iput-object v10, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->mCalendar:Ljava/util/Calendar;

    .line 124
    iget-object v10, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->mCalendar:Ljava/util/Calendar;

    const/16 v12, 0x9

    invoke-virtual {v10, v12}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-nez v10, :cond_7

    .line 125
    .local v2, "isMorning":Z
    :goto_2
    iget-object v12, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->mAmPmView:Landroid/widget/TextView;

    if-eqz v2, :cond_8

    iget-object v10, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->mAmString:Ljava/lang/String;

    :goto_3
    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .end local v2    # "isMorning":Z
    :cond_7
    move v2, v11

    .line 124
    goto :goto_2

    .line 125
    .restart local v2    # "isMorning":Z
    :cond_8
    iget-object v10, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->mPmString:Ljava/lang/String;

    goto :goto_3
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 193
    const-string v0, "DeskClock:[CountdownAlertActivity]"

    const-string v1, " [onDestroy] "

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 195
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->releaseResource()V

    .line 196
    iget-object v0, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->mReceiverHome:Lcn/nubia/deskclock/activity/CountdownAlertActivity$HomeAndPowerReceiver;

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 197
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->removeIsFromKeyguard()V

    .line 198
    iget-object v0, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->mHintView:Lcn/nubia/deskclock/ui/HintView;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/HintView;->stopScanText()V

    .line 200
    return-void
.end method

.method public onDismiss()V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->releaseResource()V

    .line 240
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->finishCountDownAlartNotShowNotification()V

    .line 241
    return-void
.end method

.method public onMove(F)V
    .locals 2
    .param p1, "mAp"    # F

    .prologue
    .line 286
    mul-float v0, p1, p1

    .line 287
    .local v0, "ap":F
    iget-object v1, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->mHintView:Lcn/nubia/deskclock/ui/HintView;

    if-eqz v1, :cond_0

    .line 288
    iget-object v1, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->mHintView:Lcn/nubia/deskclock/ui/HintView;

    invoke-virtual {v1, v0}, Lcn/nubia/deskclock/ui/HintView;->setAlpha(F)V

    .line 291
    :cond_0
    iget-object v1, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->mSAL:Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;

    if-eqz v1, :cond_1

    .line 292
    iget-object v1, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->mSAL:Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;

    invoke-virtual {v1, v0}, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;->setAlpha(F)V

    .line 294
    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 180
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 181
    const-string v0, "DeskClock:[CountdownAlertActivity]"

    const-string v1, " [onPause] "

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-static {v2}, Lcn/nubia/deskclock/util/Utils;->disableMenu(Z)V

    .line 183
    iget-object v0, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->mSAL:Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;

    invoke-virtual {v0}, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;->stopAnimation()V

    .line 185
    invoke-static {p0}, Lcn/nubia/deskclock/util/Utils;->isKeyguard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->isFirstFromFullScreen:Z

    if-nez v0, :cond_0

    .line 186
    const/16 v0, 0x8

    iput v0, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->flag:I

    .line 188
    :cond_0
    iput-boolean v2, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->isFirstFromFullScreen:Z

    .line 189
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
    .line 308
    const-string v2, "DeskClock:[CountdownAlertActivity]"

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

    .line 309
    const/16 v2, 0x15

    if-ne p1, v2, :cond_3

    .line 310
    const/4 v1, 0x1

    .line 311
    .local v1, "requestResult":Z
    array-length v3, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v0, p3, v2

    .line 312
    .local v0, "i":I
    if-eqz v0, :cond_1

    .line 313
    const/4 v1, 0x0

    .line 317
    .end local v0    # "i":I
    :cond_0
    const-string v2, "DeskClock:[CountdownAlertActivity]"

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

    .line 318
    if-eqz v1, :cond_2

    .line 319
    iget-object v2, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->mBackgroundView:Landroid/view/View;

    invoke-static {p0}, Lcn/nubia/deskclock/util/Utils;->getAlarmBg(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 326
    .end local v1    # "requestResult":Z
    :goto_1
    return-void

    .line 311
    .restart local v0    # "i":I
    .restart local v1    # "requestResult":Z
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 322
    .end local v0    # "i":I
    :cond_2
    iget-object v2, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->mBackgroundView:Landroid/view/View;

    invoke-static {p0}, Lcn/nubia/deskclock/util/Utils;->getAlarmBg(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 325
    .end local v1    # "requestResult":Z
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 170
    const-string v0, "DeskClock:[CountdownAlertActivity]"

    const-string v1, " [onResume] "

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const/16 v0, 0x3e9

    invoke-static {p0, v0}, Lcn/nubia/deskclock/model/Alarms;->cleanCountdownNotification(Landroid/content/Context;I)V

    .line 172
    iget-object v0, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->mSAL:Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;

    invoke-virtual {v0}, Lcn/nubia/deskclock/widget/lockscreenwave/LockScreenAnimLayout;->startAnimation()V

    .line 173
    const/4 v0, 0x1

    invoke-static {v0}, Lcn/nubia/deskclock/util/Utils;->disableMenu(Z)V

    .line 174
    iget-object v0, p0, Lcn/nubia/deskclock/activity/CountdownAlertActivity;->mBackgroundView:Landroid/view/View;

    invoke-static {p0}, Lcn/nubia/deskclock/util/Utils;->getAlarmBg(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 175
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 176
    return-void
.end method
