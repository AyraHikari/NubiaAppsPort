.class public Lcn/nubia/deskclock/fragment/StopwatchFragment;
.super Lcn/nubia/deskclock/fragment/BaseFragment;
.source "StopwatchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deskclock/fragment/StopwatchFragment$ImageLabelAdapter;
    }
.end annotation


# static fields
.field private static final START_STOPWATCH_KEY_UMENG:Ljava/lang/String; = "start_stopwatch"

.field public static final STOPWATCH_SHORTCUT_LABEL:Ljava/lang/String; = "stopwatch_shortcut"

.field private static final TAG:Ljava/lang/String; = "StopwatchFragment"

.field public static mAssistantStartSwTimeStatus:I

.field public static mState:I


# instance fields
.field private mAccumulatedTime:J

.field private mAction:Ljava/lang/String;

.field private mLapsList:Landroid/widget/ListView;

.field private mLeftButton:Landroid/widget/TextView;

.field private mRightButton:Landroid/widget/TextView;

.field private mStartButton:Landroid/widget/TextView;

.field private mStartTime:J

.field private mStopWatchAdapter:Lcn/nubia/deskclock/adapter/StopWatchAdapter;

.field private mStopWatchHandler:Landroid/os/Handler;

.field private mStopWatchModel:Lcn/nubia/deskclock/model/StopWatchModel;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput v0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mState:I

    .line 43
    const/4 v0, -0x1

    sput v0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mAssistantStartSwTimeStatus:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/BaseFragment;-><init>()V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/deskclock/fragment/StopwatchFragment;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/fragment/StopwatchFragment;

    .prologue
    .line 38
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->controlStopWatchFromForceTouch()V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 3

    .prologue
    .line 468
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    if-nez v1, :cond_0

    .line 479
    :goto_0
    return-void

    .line 471
    :cond_0
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_1

    .line 472
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    const-string v2, "power"

    .line 473
    invoke-virtual {v1, v2}, Lcn/nubia/deskclock/DeskClock;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 474
    .local v0, "pm":Landroid/os/PowerManager;
    const v1, 0x2000000a

    const-string v2, "StopwatchFragment"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 476
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 478
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_1
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0
.end method

.method private addLapTime(J)V
    .locals 11
    .param p1, "time"    # J

    .prologue
    .line 320
    const-string v6, "StopwatchFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " [addLapTime] time : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ;; mStartTime : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStartTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ;; mAccumulatedTime : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mAccumulatedTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-wide v6, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStartTime:J

    sub-long v6, p1, v6

    iget-wide v8, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mAccumulatedTime:J

    add-long v0, v6, v8

    .line 322
    .local v0, "curTime":J
    iget-object v6, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStopWatchAdapter:Lcn/nubia/deskclock/adapter/StopWatchAdapter;

    invoke-virtual {v6}, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->getCount()I

    move-result v3

    .line 323
    .local v3, "size":I
    const-string v6, "StopwatchFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " [addLapTime] size : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    if-nez v3, :cond_0

    .line 326
    new-instance v2, Lcn/nubia/deskclock/model/StopwatchLap;

    invoke-direct {v2, v0, v1, v0, v1}, Lcn/nubia/deskclock/model/StopwatchLap;-><init>(JJ)V

    .line 327
    .local v2, "firstLap":Lcn/nubia/deskclock/model/StopwatchLap;
    iget-object v6, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStopWatchAdapter:Lcn/nubia/deskclock/adapter/StopWatchAdapter;

    invoke-virtual {v6, v2}, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->addLap(Lcn/nubia/deskclock/model/StopwatchLap;)V

    .line 328
    iget-object v6, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStopWatchAdapter:Lcn/nubia/deskclock/adapter/StopWatchAdapter;

    invoke-virtual {v6, v2}, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->updateTimeFormats(Lcn/nubia/deskclock/model/StopwatchLap;)Z

    .line 333
    .end local v2    # "firstLap":Lcn/nubia/deskclock/model/StopwatchLap;
    :goto_0
    iget-object v6, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStopWatchAdapter:Lcn/nubia/deskclock/adapter/StopWatchAdapter;

    invoke-virtual {v6}, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->notifyDataSetChanged()V

    .line 334
    return-void

    .line 330
    :cond_0
    iget-object v6, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStopWatchAdapter:Lcn/nubia/deskclock/adapter/StopWatchAdapter;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/deskclock/model/StopwatchLap;

    iget-wide v6, v6, Lcn/nubia/deskclock/model/StopwatchLap;->mLapTime:J

    sub-long v4, v0, v6

    .line 331
    .local v4, "lapTime":J
    iget-object v6, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStopWatchAdapter:Lcn/nubia/deskclock/adapter/StopWatchAdapter;

    new-instance v7, Lcn/nubia/deskclock/model/StopwatchLap;

    invoke-direct {v7, v0, v1, v4, v5}, Lcn/nubia/deskclock/model/StopwatchLap;-><init>(JJ)V

    invoke-virtual {v6, v7}, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->addLap(Lcn/nubia/deskclock/model/StopwatchLap;)V

    goto :goto_0
.end method

.method private controlStopWatchFromForceTouch()V
    .locals 4

    .prologue
    .line 143
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    invoke-static {v1}, Lcn/nubia/deskclock/util/Utils;->isFirstLaunch(Landroid/content/Context;)Z

    move-result v0

    .line 144
    .local v0, "isFirstLaunch":Z
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    invoke-virtual {v1}, Lcn/nubia/deskclock/DeskClock;->getIntentAction()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mAction:Ljava/lang/String;

    .line 145
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mAction:Ljava/lang/String;

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 146
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mAction:Ljava/lang/String;

    const-string v2, "cn.nubia.deskclock.RESUME_STOPWATCH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mAction:Ljava/lang/String;

    const-string v2, "cn.nubia.deskclock.PAUSE_STOPWATCH"

    .line 147
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 148
    :cond_0
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->rightButtonAction()V

    .line 160
    :cond_1
    :goto_0
    return-void

    .line 149
    :cond_2
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mAction:Ljava/lang/String;

    const-string v2, "cn.nubia.deskclock.NEW_STOPWATCH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 150
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->startButtonAction()V

    goto :goto_0

    .line 151
    :cond_3
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mAction:Ljava/lang/String;

    const-string v2, "cn.nubia.assistant.NEW_STOPWATCH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    const-string v1, "StopwatchFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " [controlStopWatchFromForceTouch]   mAssistantStartSwTimeStatus : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mAssistantStartSwTimeStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    sget v1, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mAssistantStartSwTimeStatus:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 154
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->startButtonAction()V

    .line 155
    const-string v1, "stopwatch_sharedpref"

    const-string v2, "assistant_start_sw_status"

    const/4 v3, -0x1

    .line 156
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 155
    invoke-static {v1, v2, v3}, Lcn/nubia/deskclock/util/Utils;->writeToPref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private leftButtonAciton()V
    .locals 7

    .prologue
    .line 502
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->getTimeNow()J

    move-result-wide v2

    .line 503
    .local v2, "time":J
    sget v1, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 514
    const-string v1, "StopwatchFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " while pressing the left stopwatch button"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    :goto_0
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    iget-object v4, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mLapsList:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Lcn/nubia/deskclock/DeskClock;->setMotionContentView(Landroid/widget/ListView;)V

    .line 519
    return-void

    .line 505
    :pswitch_0
    invoke-direct {p0, v2, v3}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->addLapTime(J)V

    goto :goto_0

    .line 508
    :pswitch_1
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->reset()V

    .line 509
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.deskclock.NEW_STOPWATCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 510
    .local v0, "newIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    const-string v4, "stopwatch_shortcut"

    invoke-virtual {p0}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d00f7

    .line 511
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 510
    invoke-static {v1, v4, v5, v0}, Lcn/nubia/deskclock/util/Utils;->updateForceTouch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 503
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private readFromSharedPref()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 364
    const-string v7, "stopwatch_sharedpref"

    const-string v10, "sw_start_time"

    .line 365
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-class v12, Ljava/lang/Long;

    .line 364
    invoke-static {v7, v10, v11, v12}, Lcn/nubia/deskclock/util/Utils;->readFromPref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iput-wide v10, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStartTime:J

    .line 366
    const-string v7, "stopwatch_sharedpref"

    const-string v10, "sw_accum_time"

    .line 367
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-class v12, Ljava/lang/Long;

    .line 366
    invoke-static {v7, v10, v11, v12}, Lcn/nubia/deskclock/util/Utils;->readFromPref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iput-wide v10, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mAccumulatedTime:J

    .line 368
    const-string v7, "stopwatch_sharedpref"

    const-string v10, "sw_state"

    .line 369
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-class v12, Ljava/lang/Integer;

    .line 368
    invoke-static {v7, v10, v11, v12}, Lcn/nubia/deskclock/util/Utils;->readFromPref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sput v7, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mState:I

    .line 370
    const-string v7, "stopwatch_sharedpref"

    const-string v10, "assistant_start_sw_status"

    const/4 v11, -0x1

    .line 371
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-class v12, Ljava/lang/Integer;

    .line 370
    invoke-static {v7, v10, v11, v12}, Lcn/nubia/deskclock/util/Utils;->readFromPref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sput v7, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mAssistantStartSwTimeStatus:I

    .line 372
    const-string v7, "StopwatchFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "readFromSharedPref: mStartTime : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStartTime:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ;; mState : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mState:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object v7, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStopWatchModel:Lcn/nubia/deskclock/model/StopWatchModel;

    if-nez v7, :cond_1

    .line 374
    const-string v7, "StopwatchFragment"

    const-string v10, "readFromSharedPref: return"

    invoke-static {v7, v10}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    iget-object v7, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStopWatchModel:Lcn/nubia/deskclock/model/StopWatchModel;

    iget-wide v10, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mAccumulatedTime:J

    invoke-virtual {v7, v10, v11}, Lcn/nubia/deskclock/model/StopWatchModel;->setAccumulatedTime(J)V

    .line 378
    iget-object v7, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStopWatchModel:Lcn/nubia/deskclock/model/StopWatchModel;

    iget-wide v10, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStartTime:J

    invoke-virtual {v7, v10, v11}, Lcn/nubia/deskclock/model/StopWatchModel;->setStartTime(J)V

    .line 379
    const-string v7, "stopwatch_sharedpref"

    const-string v10, "sw_lap_num"

    .line 380
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-class v12, Ljava/lang/Integer;

    .line 379
    invoke-static {v7, v10, v11, v12}, Lcn/nubia/deskclock/util/Utils;->readFromPref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 381
    .local v5, "numLaps":I
    iget-object v7, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStopWatchAdapter:Lcn/nubia/deskclock/adapter/StopWatchAdapter;

    if-eqz v7, :cond_0

    .line 382
    iget-object v7, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStopWatchAdapter:Lcn/nubia/deskclock/adapter/StopWatchAdapter;

    invoke-virtual {v7}, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->getLapTimes()[J

    move-result-object v6

    .line 383
    .local v6, "oldLaps":[J
    if-eqz v6, :cond_2

    array-length v7, v6

    if-ge v7, v5, :cond_0

    .line 384
    :cond_2
    new-array v4, v5, [J

    .line 385
    .local v4, "laps":[J
    const-wide/16 v8, 0x0

    .line 386
    .local v8, "prevLapElapsedTime":J
    const/4 v1, 0x0

    .local v1, "lap_i":I
    :goto_1
    if-ge v1, v5, :cond_3

    .line 387
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sw_lap_time_"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v10, v1, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, "key":Ljava/lang/String;
    const-string v7, "stopwatch_sharedpref"

    .line 389
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-class v11, Ljava/lang/Long;

    invoke-static {v7, v0, v10, v11}, Lcn/nubia/deskclock/util/Utils;->readFromPref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 388
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 390
    .local v2, "lap":J
    sub-int v7, v5, v1

    add-int/lit8 v7, v7, -0x1

    sub-long v10, v2, v8

    aput-wide v10, v4, v7

    .line 391
    move-wide v8, v2

    .line 386
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 394
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "lap":J
    :cond_3
    iget-object v7, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStopWatchAdapter:Lcn/nubia/deskclock/adapter/StopWatchAdapter;

    invoke-virtual {v7, v4}, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->setLapTimes([J)V

    goto :goto_0
.end method

.method private releaseWakeLock()V
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 485
    :cond_0
    return-void
.end method

.method private reset()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 233
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStopWatchModel:Lcn/nubia/deskclock/model/StopWatchModel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStopWatchHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/deskclock/DeskClockApplication;->getStopWatchSharedPref()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 237
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcn/nubia/deskclock/util/Utils;->clearSwSharedPref(Landroid/content/SharedPreferences;)V

    .line 238
    iput-wide v6, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mAccumulatedTime:J

    .line 239
    const-string v1, "stopwatch_sharedpref"

    const-string v2, "sw_accum_time"

    iget-wide v4, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mAccumulatedTime:J

    .line 240
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 239
    invoke-static {v1, v2, v3}, Lcn/nubia/deskclock/util/Utils;->writeToPref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 241
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStopWatchModel:Lcn/nubia/deskclock/model/StopWatchModel;

    invoke-virtual {v1, v6, v7}, Lcn/nubia/deskclock/model/StopWatchModel;->setAccumulatedTime(J)V

    .line 242
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStopWatchAdapter:Lcn/nubia/deskclock/adapter/StopWatchAdapter;

    invoke-virtual {v1}, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->clearLaps()V

    .line 243
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->showLaps()V

    .line 244
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStopWatchHandler:Landroid/os/Handler;

    const/16 v2, 0xbbd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 245
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->setButtons(I)V

    goto :goto_0
.end method

.method private rightButtonAction()V
    .locals 8

    .prologue
    .line 522
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->getTimeNow()J

    move-result-wide v2

    .line 523
    .local v2, "time":J
    sget v4, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mState:I

    packed-switch v4, :pswitch_data_0

    .line 540
    const-string v4, "StopwatchFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " while pressing the right stopwatch button"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    :goto_0
    return-void

    .line 525
    :pswitch_0
    invoke-direct {p0, v2, v3}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->start(J)V

    .line 526
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->acquireWakeLock()V

    .line 527
    new-instance v0, Landroid/content/Intent;

    const-string v4, "cn.nubia.deskclock.PAUSE_STOPWATCH"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 528
    .local v0, "pauseIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    const-string v5, "stopwatch_shortcut"

    invoke-virtual {p0}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d00f9

    .line 529
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 528
    invoke-static {v4, v5, v6, v0}, Lcn/nubia/deskclock/util/Utils;->updateForceTouch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 532
    .end local v0    # "pauseIntent":Landroid/content/Intent;
    :pswitch_1
    iget-wide v4, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mAccumulatedTime:J

    iget-wide v6, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStartTime:J

    sub-long v6, v2, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mAccumulatedTime:J

    .line 533
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->stop()V

    .line 534
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->releaseWakeLock()V

    .line 535
    new-instance v1, Landroid/content/Intent;

    const-string v4, "cn.nubia.deskclock.RESUME_STOPWATCH"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 536
    .local v1, "resumeIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    const-string v5, "stopwatch_shortcut"

    invoke-virtual {p0}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d00fb

    .line 537
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 536
    invoke-static {v4, v5, v6, v1}, Lcn/nubia/deskclock/util/Utils;->updateForceTouch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 523
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setButton(Landroid/widget/TextView;IIZI)V
    .locals 1
    .param p1, "button"    # Landroid/widget/TextView;
    .param p2, "text"    # I
    .param p3, "resId"    # I
    .param p4, "enabled"    # Z
    .param p5, "visibility"    # I

    .prologue
    .line 304
    if-nez p1, :cond_0

    .line 312
    :goto_0
    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    invoke-virtual {v0}, Lcn/nubia/deskclock/DeskClock;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 309
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 310
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 311
    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setButtons(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    .line 252
    packed-switch p1, :pswitch_data_0

    .line 271
    :goto_0
    return-void

    .line 254
    :pswitch_0
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->setButtonsWhenReset()V

    goto :goto_0

    .line 257
    :pswitch_1
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->setButtonsWhenRunning()V

    .line 258
    new-instance v0, Landroid/content/Intent;

    const-string v2, "cn.nubia.deskclock.PAUSE_STOPWATCH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 259
    .local v0, "pauseIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    const-string v3, "stopwatch_shortcut"

    invoke-virtual {p0}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d00f9

    .line 260
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 259
    invoke-static {v2, v3, v4, v0}, Lcn/nubia/deskclock/util/Utils;->updateForceTouch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 263
    .end local v0    # "pauseIntent":Landroid/content/Intent;
    :pswitch_2
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->setButtonsWhenStop()V

    .line 264
    new-instance v1, Landroid/content/Intent;

    const-string v2, "cn.nubia.deskclock.RESUME_STOPWATCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 265
    .local v1, "resumeIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    const-string v3, "stopwatch_shortcut"

    invoke-virtual {p0}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d00fb

    .line 266
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 265
    invoke-static {v2, v3, v4, v1}, Lcn/nubia/deskclock/util/Utils;->updateForceTouch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 252
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setButtonsWhenReset()V
    .locals 11

    .prologue
    const v2, 0x7f0d00d0

    const v3, 0x7f0201ab

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 274
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mLeftButton:Landroid/widget/TextView;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->setButton(Landroid/widget/TextView;IIZI)V

    .line 275
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mRightButton:Landroid/widget/TextView;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->setButton(Landroid/widget/TextView;IIZI)V

    .line 276
    iget-object v6, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStartButton:Landroid/widget/TextView;

    const v7, 0x7f0d00d4

    const v8, 0x7f0201b3

    const/4 v9, 0x1

    move-object v5, p0

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->setButton(Landroid/widget/TextView;IIZI)V

    .line 277
    return-void
.end method

.method private setButtonsWhenRunning()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 280
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mLeftButton:Landroid/widget/TextView;

    const v2, 0x7f0d00d0

    const v3, 0x7f0201ab

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->setButton(Landroid/widget/TextView;IIZI)V

    .line 281
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mRightButton:Landroid/widget/TextView;

    const v2, 0x7f0d00be

    const v3, 0x7f020070

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->setButton(Landroid/widget/TextView;IIZI)V

    .line 282
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStartButton:Landroid/widget/TextView;

    const v3, 0x7f0d00d4

    const v4, 0x7f0201b3

    const/16 v6, 0x8

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->setButton(Landroid/widget/TextView;IIZI)V

    .line 283
    return-void
.end method

.method private setButtonsWhenStop()V
    .locals 8

    .prologue
    const v7, 0x7f0201b3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 286
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mLeftButton:Landroid/widget/TextView;

    const v2, 0x7f0d00d1

    const v3, 0x7f0201ae

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->setButton(Landroid/widget/TextView;IIZI)V

    .line 287
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mRightButton:Landroid/widget/TextView;

    const v2, 0x7f0d003f

    move-object v0, p0

    move v3, v7

    invoke-direct/range {v0 .. v5}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->setButton(Landroid/widget/TextView;IIZI)V

    .line 288
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStartButton:Landroid/widget/TextView;

    const v3, 0x7f0d00d4

    const/16 v6, 0x8

    move-object v1, p0

    move v4, v7

    invoke-direct/range {v1 .. v6}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->setButton(Landroid/widget/TextView;IIZI)V

    .line 289
    return-void
.end method

.method private setClockTime(J)V
    .locals 7
    .param p1, "inputTime"    # J

    .prologue
    .line 454
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStopWatchHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    .line 465
    :goto_0
    return-void

    .line 457
    :cond_0
    iput-wide p1, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mAccumulatedTime:J

    .line 458
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStopWatchModel:Lcn/nubia/deskclock/model/StopWatchModel;

    iget-wide v4, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mAccumulatedTime:J

    invoke-virtual {v2, v4, v5}, Lcn/nubia/deskclock/model/StopWatchModel;->setAccumulatedTime(J)V

    .line 459
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 460
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 461
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "stop_watch_set_time"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 462
    const/16 v2, 0xbbe

    iput v2, v1, Landroid/os/Message;->what:I

    .line 463
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 464
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStopWatchHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private showLaps()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 337
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStopWatchAdapter:Lcn/nubia/deskclock/adapter/StopWatchAdapter;

    invoke-virtual {v0}, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 338
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mLapsList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 342
    :goto_0
    return-void

    .line 340
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mLapsList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method

.method private start(J)V
    .locals 5
    .param p1, "time"    # J

    .prologue
    const/4 v4, 0x1

    .line 221
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStopWatchModel:Lcn/nubia/deskclock/model/StopWatchModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStopWatchHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iput-wide p1, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStartTime:J

    .line 225
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStopWatchModel:Lcn/nubia/deskclock/model/StopWatchModel;

    iget-wide v2, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStartTime:J

    invoke-virtual {v0, v2, v3}, Lcn/nubia/deskclock/model/StopWatchModel;->setStartTime(J)V

    .line 226
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStopWatchModel:Lcn/nubia/deskclock/model/StopWatchModel;

    iget-wide v2, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mAccumulatedTime:J

    invoke-virtual {v0, v2, v3}, Lcn/nubia/deskclock/model/StopWatchModel;->setAccumulatedTime(J)V

    .line 227
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStopWatchHandler:Landroid/os/Handler;

    const/16 v1, 0xbbb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 228
    invoke-direct {p0, v4}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->setButtons(I)V

    .line 229
    sput v4, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mState:I

    goto :goto_0
.end method

.method private startButtonAction()V
    .locals 7

    .prologue
    .line 547
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->getTimeNow()J

    move-result-wide v2

    .line 548
    .local v2, "time":J
    const-string v1, "StopwatchFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[startButtonAction] mState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    sget v1, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 561
    const-string v1, "StopwatchFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " while pressing the center stopwatch button"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    :goto_0
    return-void

    .line 551
    :pswitch_0
    invoke-direct {p0, v2, v3}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->start(J)V

    .line 552
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->acquireWakeLock()V

    .line 553
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    if-eqz v1, :cond_0

    .line 554
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    const-string v4, "start_stopwatch"

    invoke-static {v1, v4}, Lcn/nubia/deskclock/util/ReyunUtils;->trackCustomEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 556
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.deskclock.PAUSE_STOPWATCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 557
    .local v0, "pauseIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    const-string v4, "stopwatch_shortcut"

    invoke-virtual {p0}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d00f9

    .line 558
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 557
    invoke-static {v1, v4, v5, v0}, Lcn/nubia/deskclock/util/Utils;->updateForceTouch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 549
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private stop()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 212
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStopWatchHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 218
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStopWatchHandler:Landroid/os/Handler;

    const/16 v1, 0xbbc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 216
    invoke-direct {p0, v2}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->setButtons(I)V

    .line 217
    sput v2, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mState:I

    goto :goto_0
.end method

.method private writeToSharedPref()V
    .locals 8

    .prologue
    .line 345
    const-string v3, "stopwatch_sharedpref"

    const-string v4, "sw_start_time"

    iget-wide v6, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStartTime:J

    .line 346
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 345
    invoke-static {v3, v4, v5}, Lcn/nubia/deskclock/util/Utils;->writeToPref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 347
    const-string v3, "stopwatch_sharedpref"

    const-string v4, "sw_accum_time"

    iget-wide v6, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mAccumulatedTime:J

    .line 348
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 347
    invoke-static {v3, v4, v5}, Lcn/nubia/deskclock/util/Utils;->writeToPref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 349
    const-string v3, "stopwatch_sharedpref"

    const-string v4, "sw_state"

    sget v5, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mState:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcn/nubia/deskclock/util/Utils;->writeToPref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 350
    iget-object v3, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStopWatchAdapter:Lcn/nubia/deskclock/adapter/StopWatchAdapter;

    if-eqz v3, :cond_0

    .line 351
    iget-object v3, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStopWatchAdapter:Lcn/nubia/deskclock/adapter/StopWatchAdapter;

    invoke-virtual {v3}, Lcn/nubia/deskclock/adapter/StopWatchAdapter;->getLapTimes()[J

    move-result-object v2

    .line 352
    .local v2, "laps":[J
    if-eqz v2, :cond_0

    .line 353
    const-string v3, "stopwatch_sharedpref"

    const-string v4, "sw_lap_num"

    array-length v5, v2

    .line 354
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 353
    invoke-static {v3, v4, v5}, Lcn/nubia/deskclock/util/Utils;->writeToPref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 355
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 356
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sw_lap_time_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v2

    sub-int/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 357
    .local v1, "key":Ljava/lang/String;
    const-string v3, "stopwatch_sharedpref"

    aget-wide v4, v2, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lcn/nubia/deskclock/util/Utils;->writeToPref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 355
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 361
    .end local v0    # "i":I
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "laps":[J
    :cond_0
    return-void
.end method


# virtual methods
.method public doBackPressed()Z
    .locals 1

    .prologue
    .line 498
    const/4 v0, 0x1

    return v0
.end method

.method public getMotionContentView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mLapsList:Landroid/widget/ListView;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 493
    const/4 v0, 0x0

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcn/nubia/deskclock/fragment/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 62
    check-cast p1, Lcn/nubia/deskclock/DeskClock;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    .line 63
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 570
    invoke-virtual {p0}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 586
    :goto_0
    return-void

    .line 573
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 575
    :pswitch_0
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->leftButtonAciton()V

    goto :goto_0

    .line 578
    :pswitch_1
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->rightButtonAction()V

    goto :goto_0

    .line 581
    :pswitch_2
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->startButtonAction()V

    goto :goto_0

    .line 573
    nop

    :pswitch_data_0
    .packed-switch 0x7f1200b3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 70
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mLocalWorkingModel:Lcn/nubia/deskclock/model/LocalWorkingModel;

    if-eqz v2, :cond_0

    .line 71
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mLocalWorkingModel:Lcn/nubia/deskclock/model/LocalWorkingModel;

    invoke-virtual {v2}, Lcn/nubia/deskclock/model/LocalWorkingModel;->getStopWatchHandler()Landroid/os/Handler;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStopWatchHandler:Landroid/os/Handler;

    .line 72
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mLocalWorkingModel:Lcn/nubia/deskclock/model/LocalWorkingModel;

    invoke-virtual {v2}, Lcn/nubia/deskclock/model/LocalWorkingModel;->getStopWatchMode()Lcn/nubia/deskclock/model/StopWatchModel;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStopWatchModel:Lcn/nubia/deskclock/model/StopWatchModel;

    .line 74
    :cond_0
    const v2, 0x7f040079

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 75
    .local v1, "v":Landroid/view/View;
    const v2, 0x7f120160

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mLapsList:Landroid/widget/ListView;

    .line 76
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mLapsList:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 77
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mLapsList:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 78
    new-instance v2, Lcn/nubia/deskclock/adapter/StopWatchAdapter;

    iget-object v3, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    invoke-direct {v2, v3}, Lcn/nubia/deskclock/adapter/StopWatchAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStopWatchAdapter:Lcn/nubia/deskclock/adapter/StopWatchAdapter;

    .line 79
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mLapsList:Landroid/widget/ListView;

    if-eqz v2, :cond_1

    .line 80
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mLapsList:Landroid/widget/ListView;

    iget-object v3, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStopWatchAdapter:Lcn/nubia/deskclock/adapter/StopWatchAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 82
    :cond_1
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    invoke-virtual {v2, v4}, Lcn/nubia/deskclock/DeskClock;->getMainBottom(I)Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, "buttonView":Landroid/view/View;
    const v2, 0x7f1200b3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mLeftButton:Landroid/widget/TextView;

    .line 84
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mLeftButton:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const v2, 0x7f1200b4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStartButton:Landroid/widget/TextView;

    .line 86
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStartButton:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const v2, 0x7f1200b5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mRightButton:Landroid/widget/TextView;

    .line 88
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mRightButton:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    invoke-virtual {v2}, Lcn/nubia/deskclock/DeskClock;->getViewPager()Lcn/nubia/deskclock/ui/DeskClockViewPager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/deskclock/ui/DeskClockViewPager;->getCurrentItem()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 90
    iget-object v2, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    iget-object v3, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mLapsList:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Lcn/nubia/deskclock/DeskClock;->setMotionContentView(Landroid/widget/ListView;)V

    .line 92
    :cond_2
    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 195
    invoke-super {p0}, Lcn/nubia/deskclock/fragment/BaseFragment;->onDestroy()V

    .line 196
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStopWatchHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStopWatchHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 198
    iput-object v1, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStopWatchHandler:Landroid/os/Handler;

    .line 200
    :cond_0
    return-void
.end method

.method public onPageChanged(I)V
    .locals 2
    .param p1, "page"    # I

    .prologue
    .line 204
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget v0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 205
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->acquireWakeLock()V

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_0
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->releaseWakeLock()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 8

    .prologue
    .line 168
    invoke-super {p0}, Lcn/nubia/deskclock/fragment/BaseFragment;->onPause()V

    .line 169
    iget-object v3, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStopWatchModel:Lcn/nubia/deskclock/model/StopWatchModel;

    if-nez v3, :cond_0

    .line 191
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 173
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 174
    invoke-virtual {p0}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->getView()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 177
    :cond_1
    sget v3, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 178
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->getTimeNow()J

    move-result-wide v0

    .line 179
    .local v0, "curTime":J
    iget-wide v4, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mAccumulatedTime:J

    iget-wide v6, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStartTime:J

    sub-long v6, v0, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mAccumulatedTime:J

    .line 180
    iput-wide v0, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStartTime:J

    .line 181
    iget-object v3, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStopWatchModel:Lcn/nubia/deskclock/model/StopWatchModel;

    iget-wide v4, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStartTime:J

    invoke-virtual {v3, v4, v5}, Lcn/nubia/deskclock/model/StopWatchModel;->setStartTime(J)V

    .line 182
    iget-object v3, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStopWatchModel:Lcn/nubia/deskclock/model/StopWatchModel;

    iget-wide v4, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mAccumulatedTime:J

    invoke-virtual {v3, v4, v5}, Lcn/nubia/deskclock/model/StopWatchModel;->setAccumulatedTime(J)V

    .line 183
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->releaseWakeLock()V

    .line 185
    .end local v0    # "curTime":J
    :cond_2
    sget v3, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mState:I

    if-nez v3, :cond_3

    .line 186
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->reset()V

    .line 188
    :cond_3
    const-string v3, "StopwatchFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " [onPause] mState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->writeToSharedPref()V

    .line 190
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->releaseWakeLock()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    .line 97
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->readFromSharedPref()V

    .line 98
    const-string v5, "StopwatchFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onResume mState : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v5, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mLocalWorkingModel:Lcn/nubia/deskclock/model/LocalWorkingModel;

    if-nez v5, :cond_0

    .line 100
    const-string v5, "StopwatchFragment"

    const-string v6, "onResume: mLocalWorkingModel is null"

    invoke-static {v5, v6}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v5, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    invoke-virtual {v5}, Lcn/nubia/deskclock/DeskClock;->getStopWatchHandle()Landroid/os/Handler;

    move-result-object v5

    iput-object v5, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStopWatchHandler:Landroid/os/Handler;

    .line 102
    iget-object v5, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    invoke-virtual {v5}, Lcn/nubia/deskclock/DeskClock;->getStopWatchModel()Lcn/nubia/deskclock/model/StopWatchModel;

    move-result-object v5

    iput-object v5, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStopWatchModel:Lcn/nubia/deskclock/model/StopWatchModel;

    .line 104
    :cond_0
    sget v5, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mAssistantStartSwTimeStatus:I

    if-ne v5, v8, :cond_5

    .line 105
    const-string v5, "StopwatchFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onResume 000 mState : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    sget v5, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mState:I

    if-eqz v5, :cond_2

    .line 107
    sget v5, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mState:I

    if-ne v5, v8, :cond_1

    .line 108
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->rightButtonAction()V

    .line 110
    :cond_1
    const-string v5, "StopwatchFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onResume 111 mState : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->leftButtonAciton()V

    .line 112
    const-string v5, "StopwatchFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onResume 222 mState : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_2
    :goto_0
    sget v5, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mState:I

    if-ne v5, v8, :cond_6

    .line 118
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->acquireWakeLock()V

    .line 119
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->getTimeNow()J

    move-result-wide v0

    .line 120
    .local v0, "curTime":J
    iget-wide v6, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mAccumulatedTime:J

    iget-wide v8, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStartTime:J

    sub-long v8, v0, v8

    add-long v2, v6, v8

    .line 121
    .local v2, "totalTime":J
    const-string v5, "StopwatchFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onResume: mAccumulatedTime : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mAccumulatedTime:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";; curTime : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ;; mStartTime : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mStartTime:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-direct {p0, v2, v3}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->setClockTime(J)V

    .line 123
    invoke-direct {p0, v0, v1}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->start(J)V

    .line 128
    .end local v0    # "curTime":J
    .end local v2    # "totalTime":J
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->showLaps()V

    .line 129
    invoke-virtual {p0}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->getView()Landroid/view/View;

    move-result-object v4

    .line 130
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_4

    .line 131
    invoke-virtual {p0}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->getView()Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 133
    :cond_4
    new-instance v5, Lcn/nubia/deskclock/fragment/StopwatchFragment$1;

    invoke-direct {v5, p0}, Lcn/nubia/deskclock/fragment/StopwatchFragment$1;-><init>(Lcn/nubia/deskclock/fragment/StopwatchFragment;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 139
    invoke-super {p0}, Lcn/nubia/deskclock/fragment/BaseFragment;->onResume()V

    .line 140
    return-void

    .line 115
    .end local v4    # "v":Landroid/view/View;
    :cond_5
    sget v5, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mState:I

    invoke-direct {p0, v5}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->setButtons(I)V

    goto :goto_0

    .line 124
    :cond_6
    sget v5, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    iget-wide v6, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mAccumulatedTime:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_3

    .line 125
    iget-wide v6, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment;->mAccumulatedTime:J

    invoke-direct {p0, v6, v7}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->setClockTime(J)V

    goto :goto_1
.end method
