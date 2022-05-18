.class public Lcn/nubia/deskclock/DeskClock;
.super Landroid/app/Activity;
.source "DeskClock.java"

# interfaces
.implements Lcn/nubia/deskclock/ui/ActionBarLayout$Listener;
.implements Lcn/nubia/deskclock/inter/INubiaCtaCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deskclock/DeskClock$ExecuteDataRunnable;
    }
.end annotation


# static fields
.field public static final ASSISTANT_NEW_COUNTDOWN_ACTION:Ljava/lang/String; = "cn.nubia.assistant.NEW_COUNTDOWN"

.field public static final ASSISTANT_NEW_STOPWATCH_ACTION:Ljava/lang/String; = "cn.nubia.assistant.NEW_STOPWATCH"

.field public static final ASSISTANT_NEW_WORLDTIME_ACTION:Ljava/lang/String; = "cn.nubia.assistant.NEW_WORLDTIME"

.field public static final CLOCK_TAB_INDEX:I = 0x1

.field public static final DELAY_TIME:J = 0x0L

.field public static final DESKCLOCK_FEATURE:Ljava/lang/String; = "nubia_deskclock_feature"

.field private static final ENABLE_CTS:Ljava/lang/String; = "DeskClock_enableCts"

.field private static final IS_FIRST_LAUNCH:Ljava/lang/String; = "isFirstLaunch"

.field private static final KEY_SELECTED_TAB:Ljava/lang/String; = "selected_tab"

.field private static final LAUNCHER_KEY_UMENG:Ljava/lang/String; = "Launcher_onCreate"

.field private static final MOBILE_MODEL:Ljava/lang/String;

.field private static final MY_PERMISSIONS_REQUEST_READ_PHONE_STATE:I = 0x14

.field public static final NEW_COUNTDOWN_ACTION:Ljava/lang/String; = "cn.nubia.deskclock.NEW_COUNTDOWN"

.field public static final NEW_STOPWATCH_ACTION:Ljava/lang/String; = "cn.nubia.deskclock.NEW_STOPWATCH"

.field public static final PAGE_LIMIT:I = 0x3

.field public static final PAUSE_COUNTDOWN_ACTION:Ljava/lang/String; = "cn.nubia.deskclock.PAUSE_COUNTDOWN"

.field public static final PAUSE_STOPWATCH_ACTION:Ljava/lang/String; = "cn.nubia.deskclock.PAUSE_STOPWATCH"

.field private static final PERMISSION_POWER_OFF_ALARM:Ljava/lang/String; = "org.codeaurora.permission.POWER_OFF_ALARM"

.field public static final RESUME_COUNTDOWN_ACTION:Ljava/lang/String; = "cn.nubia.deskclock.RESUME_COUNTDOWN"

.field public static final RESUME_STOPWATCH_ACTION:Ljava/lang/String; = "cn.nubia.deskclock.RESUME_STOPWATCH"

.field public static final SELECT_TAB_INTENT_EXTRA:Ljava/lang/String; = "deskclock.select.tab"

.field public static final STOPWATCH_TAB_INDEX:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DeskClock"

.field public static final TIMER_TAB_INDEX:I = 0x3

.field private static final WIDGET_KEY_UMENG:Ljava/lang/String; = "Widget_onCreate"

.field public static final WIDGIT_ACTION:Ljava/lang/String; = "cn.nubia.intent.action.NUBIA.TIMEMANAGER"

.field public static final WORLDTIME_TAB_INDEX:I

.field public static mIsLaunching:Z


# instance fields
.field private downY:F

.field private mActionBarLayout:Lcn/nubia/deskclock/ui/ActionBarLayout;

.field private mAlarmClockModel:Lcn/nubia/deskclock/model/AlarmClockModel;

.field private mAnimationManager:Lcn/nubia/deskclock/control/AnimationClockManager;

.field private mApplicationContext:Landroid/content/Context;

.field private mButtonView:Lcn/nubia/deskclock/ui/ClockBottomLayout;

.field private mClockBottomLayout:Lcn/nubia/deskclock/ui/ClockBottomLayout;

.field private mClockContainer:Lcn/nubia/deskclock/ui/ClockContainer;

.field private mContext:Landroid/content/Context;

.field private mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/deskclock/model/CountDownModel",
            "<*>;"
        }
    .end annotation
.end field

.field private mDelayLoadHandler:Landroid/os/Handler;

.field private mFragmentClasses:[Ljava/lang/Class;

.field private mIntentAction:Ljava/lang/String;

.field public mIsFirstLaunch:Z

.field private mLocalWorkingModel:Lcn/nubia/deskclock/model/LocalWorkingModel;

.field private mMotionHelper:Lcn/nubia/deskclock/ui/ClockMotionHelper;

.field private mNubiaCtaDialog:Lcn/nubia/deskclock/ui/NubiaCtaDialog;

.field private mReplaceFragmentRunnable:Ljava/lang/Runnable;

.field private mSelectedTab:I

.field private mStopWatchModel:Lcn/nubia/deskclock/model/StopWatchModel;

.field private mTabPagerAdapter:Lcn/nubia/deskclock/adapter/TabPagerAdapter;

.field private mTabPagerListener:Lcn/nubia/deskclock/listener/TabPagerListener;

.field private mVerticalMotionLayout:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

.field private mViewPager:Lcn/nubia/deskclock/ui/DeskClockViewPager;

.field public mViewPagerEnableListener:Lcn/nubia/deskclock/inter/IViewPagerEnableListener;

.field private mViewPagerTabs:Lcn/nubia/commonui/widget/tab/NubiaPagerTab;

.field private mWorldTimeModel:Lcn/nubia/deskclock/model/WorldTimeModel;

.field private verdownY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    sput-boolean v0, Lcn/nubia/deskclock/DeskClock;->mIsLaunching:Z

    .line 158
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->getMobileModel()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/deskclock/DeskClock;->MOBILE_MODEL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 95
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 146
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcn/nubia/deskclock/fragment/WorldTimeFragment;

    aput-object v2, v0, v1

    const-class v1, Lcn/nubia/deskclock/fragment/AlarmClockFragment;

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-class v2, Lcn/nubia/deskclock/fragment/StopwatchFragment;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcn/nubia/deskclock/fragment/CountdownFragment;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mFragmentClasses:[Ljava/lang/Class;

    .line 153
    iput-boolean v4, p0, Lcn/nubia/deskclock/DeskClock;->mIsFirstLaunch:Z

    .line 445
    new-instance v0, Lcn/nubia/deskclock/DeskClock$3;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/DeskClock$3;-><init>(Lcn/nubia/deskclock/DeskClock;)V

    iput-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mReplaceFragmentRunnable:Ljava/lang/Runnable;

    .line 689
    iput v3, p0, Lcn/nubia/deskclock/DeskClock;->downY:F

    .line 690
    iput v3, p0, Lcn/nubia/deskclock/DeskClock;->verdownY:F

    .line 882
    new-instance v0, Lcn/nubia/deskclock/DeskClock$7;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/DeskClock$7;-><init>(Lcn/nubia/deskclock/DeskClock;)V

    iput-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mViewPagerEnableListener:Lcn/nubia/deskclock/inter/IViewPagerEnableListener;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/deskclock/DeskClock;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/DeskClock;

    .prologue
    .line 95
    iget v0, p0, Lcn/nubia/deskclock/DeskClock;->mSelectedTab:I

    return v0
.end method

.method static synthetic access$100(Lcn/nubia/deskclock/DeskClock;)Lcn/nubia/deskclock/control/AnimationClockManager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/DeskClock;

    .prologue
    .line 95
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mAnimationManager:Lcn/nubia/deskclock/control/AnimationClockManager;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/deskclock/DeskClock;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/DeskClock;

    .prologue
    .line 95
    invoke-direct {p0}, Lcn/nubia/deskclock/DeskClock;->checkHoliday()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/deskclock/DeskClock;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/DeskClock;

    .prologue
    .line 95
    invoke-direct {p0}, Lcn/nubia/deskclock/DeskClock;->getReyunSdkLaunchCount()V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/deskclock/DeskClock;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/DeskClock;

    .prologue
    .line 95
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/deskclock/DeskClock;)Lcn/nubia/deskclock/adapter/TabPagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/DeskClock;

    .prologue
    .line 95
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mTabPagerAdapter:Lcn/nubia/deskclock/adapter/TabPagerAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/deskclock/DeskClock;)Lcn/nubia/deskclock/ui/DeskClockViewPager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/DeskClock;

    .prologue
    .line 95
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mViewPager:Lcn/nubia/deskclock/ui/DeskClockViewPager;

    return-object v0
.end method

.method private addFragment(I)V
    .locals 4
    .param p1, "tab"    # I

    .prologue
    .line 363
    const-string v1, "DeskClock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " [addFragment] tab : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 366
    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock;->mTabPagerAdapter:Lcn/nubia/deskclock/adapter/TabPagerAdapter;

    iget-object v2, p0, Lcn/nubia/deskclock/DeskClock;->mFragmentClasses:[Ljava/lang/Class;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2, v0}, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->addTab(Ljava/lang/Class;I)V

    .line 364
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    :cond_0
    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock;->mTabPagerAdapter:Lcn/nubia/deskclock/adapter/TabPagerAdapter;

    invoke-virtual {v1}, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->notifyDataSetChanged()V

    .line 372
    invoke-virtual {p0, p1}, Lcn/nubia/deskclock/DeskClock;->getMainClock(I)Landroid/view/ViewStub;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 373
    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock;->mAnimationManager:Lcn/nubia/deskclock/control/AnimationClockManager;

    invoke-virtual {v1, p1}, Lcn/nubia/deskclock/control/AnimationClockManager;->getAnimationOperator(I)Lcn/nubia/deskclock/inter/IAnimationOperator;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/deskclock/inter/IAnimationOperator;->initAnimantionParam()V

    .line 374
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/DeskClock;->showCurrentView(I)V

    .line 375
    return-void
.end method

.method private checkHoliday()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 474
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 475
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 476
    .local v6, "year":I
    invoke-virtual {p0}, Lcn/nubia/deskclock/DeskClock;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 477
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1, v6}, Lcn/nubia/deskclock/util/Utils;->initCurrentYearHolidayMap(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 478
    .local v2, "currentYearHolidayMap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "DeskClock"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[checkHoliday] initCurrentYearHolidayMap : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    if-eqz v2, :cond_0

    invoke-static {v1, v12}, Lcn/nubia/deskclock/util/Utils;->updateYearHoliday(Landroid/content/Context;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 480
    :cond_0
    invoke-static {v1, v6}, Lcn/nubia/deskclock/model/holiday/ParseXml;->parseXml(Landroid/content/Context;I)V

    .line 481
    invoke-static {v1, v6}, Lcn/nubia/deskclock/util/Utils;->initCurrentYearHolidayMap(Landroid/content/Context;I)Ljava/util/ArrayList;

    .line 482
    const-string v7, "update_time"

    invoke-virtual {v1, v7, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "last_update_current_year_holiday_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-interface {v7, v8, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 484
    :cond_1
    add-int/lit8 v7, v6, 0x1

    invoke-static {v1, v7}, Lcn/nubia/deskclock/util/Utils;->initNextYearHolidayMap(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 485
    .local v4, "nextYearHolidayMap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "DeskClock"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[checkHoliday] initNextYearHolidayMap : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    if-eqz v4, :cond_2

    invoke-static {v1, v13}, Lcn/nubia/deskclock/util/Utils;->updateYearHoliday(Landroid/content/Context;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 487
    :cond_2
    add-int/lit8 v7, v6, 0x1

    invoke-static {v1, v7}, Lcn/nubia/deskclock/model/holiday/ParseXml;->parseXml(Landroid/content/Context;I)V

    .line 488
    add-int/lit8 v7, v6, 0x1

    invoke-static {v1, v7}, Lcn/nubia/deskclock/util/Utils;->initNextYearHolidayMap(Landroid/content/Context;I)Ljava/util/ArrayList;

    .line 489
    const-string v7, "update_time"

    invoke-virtual {v1, v7, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "last_update_next_year_holiday_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-interface {v7, v8, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 491
    :cond_3
    invoke-static {v1, v6}, Lcn/nubia/deskclock/util/Utils;->initWeekendWorkList(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v5

    .line 492
    .local v5, "weekendWorkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "DeskClock"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[checkHoliday] initWeekendWorkList : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    if-eqz v5, :cond_4

    invoke-static {v1, v14}, Lcn/nubia/deskclock/util/Utils;->updateYearHoliday(Landroid/content/Context;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 494
    :cond_4
    invoke-static {v1, v6}, Lcn/nubia/deskclock/model/holiday/ParseXml;->parseWeekendWork(Landroid/content/Context;I)V

    .line 495
    invoke-static {v1, v6}, Lcn/nubia/deskclock/util/Utils;->initWeekendWorkList(Landroid/content/Context;I)Ljava/util/ArrayList;

    .line 496
    const-string v7, "update_time"

    invoke-virtual {v1, v7, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "last_update_current_year_weekend_work_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-interface {v7, v8, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 499
    :cond_5
    add-int/lit8 v7, v6, 0x1

    invoke-static {v1, v7}, Lcn/nubia/deskclock/util/Utils;->initNextYearWeekendWorkList(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 500
    .local v3, "nexYearWeekendWorkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "DeskClock"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[checkHoliday] nexYearWeekendWorkList : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    if-eqz v3, :cond_6

    invoke-static {v1, v14}, Lcn/nubia/deskclock/util/Utils;->updateYearHoliday(Landroid/content/Context;I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 502
    :cond_6
    add-int/lit8 v7, v6, 0x1

    invoke-static {v1, v7}, Lcn/nubia/deskclock/model/holiday/ParseXml;->parseWeekendWork(Landroid/content/Context;I)V

    .line 503
    add-int/lit8 v7, v6, 0x1

    invoke-static {v1, v7}, Lcn/nubia/deskclock/util/Utils;->initNextYearWeekendWorkList(Landroid/content/Context;I)Ljava/util/ArrayList;

    .line 504
    const-string v7, "update_time"

    invoke-virtual {v1, v7, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "last_update_current_year_weekend_work_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-interface {v7, v8, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 506
    :cond_7
    return-void
.end method

.method private delayReplaceFragment()V
    .locals 4

    .prologue
    .line 247
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mDelayLoadHandler:Landroid/os/Handler;

    .line 248
    const/4 v0, 0x1

    sput-boolean v0, Lcn/nubia/deskclock/DeskClock;->mIsLaunching:Z

    .line 249
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mViewPager:Lcn/nubia/deskclock/ui/DeskClockViewPager;

    sget-boolean v1, Lcn/nubia/deskclock/DeskClock;->mIsLaunching:Z

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/DeskClockViewPager;->setDeleteMode(Z)V

    .line 250
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mDelayLoadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock;->mReplaceFragmentRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 251
    return-void
.end method

.method private executeExtraDataFunction()V
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/deskclock/util/Utils;->isAllowAccessNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 413
    const-string v0, "DeskClock"

    const-string v1, " not allow network !!! "

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :goto_0
    return-void

    .line 416
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lcn/nubia/deskclock/DeskClock$2;

    invoke-direct {v1, p0}, Lcn/nubia/deskclock/DeskClock$2;-><init>(Lcn/nubia/deskclock/DeskClock;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    goto :goto_0
.end method

.method private firstLoadFragmentAndViews()V
    .locals 3

    .prologue
    .line 343
    const-string v0, "DeskClock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "firstLoadFragmentAndViews: mSelectedTab : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/deskclock/DeskClock;->mSelectedTab:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget v0, p0, Lcn/nubia/deskclock/DeskClock;->mSelectedTab:I

    packed-switch v0, :pswitch_data_0

    .line 360
    :goto_0
    return-void

    .line 346
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/nubia/deskclock/DeskClock;->addFragment(I)V

    goto :goto_0

    .line 349
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/nubia/deskclock/DeskClock;->addFragment(I)V

    goto :goto_0

    .line 352
    :pswitch_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcn/nubia/deskclock/DeskClock;->addFragment(I)V

    goto :goto_0

    .line 355
    :pswitch_3
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcn/nubia/deskclock/DeskClock;->addFragment(I)V

    goto :goto_0

    .line 344
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getAlarmClockModel()Lcn/nubia/deskclock/model/AlarmClockModel;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mAlarmClockModel:Lcn/nubia/deskclock/model/AlarmClockModel;

    if-nez v0, :cond_0

    .line 400
    new-instance v0, Lcn/nubia/deskclock/model/AlarmClockModel;

    invoke-direct {v0}, Lcn/nubia/deskclock/model/AlarmClockModel;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mAlarmClockModel:Lcn/nubia/deskclock/model/AlarmClockModel;

    .line 402
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mAlarmClockModel:Lcn/nubia/deskclock/model/AlarmClockModel;

    return-object v0
.end method

.method private getAssistantCountDownStatus()I
    .locals 4

    .prologue
    .line 943
    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/deskclock/database/CountDownSPUtils;->readAssisStatusFromPref(Landroid/content/Context;)I

    move-result v0

    .line 944
    .local v0, "status":I
    const-string v1, "DeskClock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " [getAssistantCountDownStatus] status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    return v0
.end method

.method private getAssistantStopWatchStatus()I
    .locals 5

    .prologue
    .line 936
    const-string v1, "stopwatch_sharedpref"

    const-string v2, "assistant_start_sw_status"

    const/4 v3, -0x1

    .line 937
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-class v4, Ljava/lang/Integer;

    .line 936
    invoke-static {v1, v2, v3, v4}, Lcn/nubia/deskclock/util/Utils;->readFromPref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 938
    .local v0, "status":I
    const-string v1, "DeskClock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " [getAssistantStopWatchStatus] status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    return v0
.end method

.method private getLaunchIntent()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v4, -0x1

    .line 254
    invoke-virtual {p0}, Lcn/nubia/deskclock/DeskClock;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 255
    .local v1, "launchIntent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 256
    const-string v3, "deskclock.select.tab"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 257
    .local v2, "tab":I
    if-eq v2, v4, :cond_0

    .line 258
    iput v2, p0, Lcn/nubia/deskclock/DeskClock;->mSelectedTab:I

    .line 261
    .end local v2    # "tab":I
    :cond_0
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "action":Ljava/lang/String;
    const-string v3, "DeskClock"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " getLaunchIntent mSelectedTab : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcn/nubia/deskclock/DeskClock;->mSelectedTab:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ;; action : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    return-object v0
.end method

.method private getPermissionShowInCtsDialog(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 788
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 793
    :goto_0
    return-object v0

    .line 790
    :cond_0
    const-string v0, "org.codeaurora.permission.POWER_OFF_ALARM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 791
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 793
    :cond_1
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getReyunSdkLaunchCount()V
    .locals 2

    .prologue
    .line 438
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p0}, Lcn/nubia/deskclock/DeskClock;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mApplicationContext:Landroid/content/Context;

    const-string v1, "Launcher_onCreate"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/ReyunUtils;->trackCustomEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    const-string v0, "cn.nubia.intent.action.NUBIA.TIMEMANAGER"

    invoke-virtual {p0}, Lcn/nubia/deskclock/DeskClock;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mApplicationContext:Landroid/content/Context;

    const-string v1, "Widget_onCreate"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/ReyunUtils;->trackCustomEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getWorldTimeModel()Lcn/nubia/deskclock/model/WorldTimeModel;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mWorldTimeModel:Lcn/nubia/deskclock/model/WorldTimeModel;

    if-nez v0, :cond_0

    .line 393
    new-instance v0, Lcn/nubia/deskclock/model/WorldTimeModel;

    invoke-direct {v0}, Lcn/nubia/deskclock/model/WorldTimeModel;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mWorldTimeModel:Lcn/nubia/deskclock/model/WorldTimeModel;

    .line 395
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mWorldTimeModel:Lcn/nubia/deskclock/model/WorldTimeModel;

    return-object v0
.end method

.method private initClockMotionHelper()V
    .locals 5

    .prologue
    .line 406
    new-instance v0, Lcn/nubia/deskclock/ui/ClockMotionHelper;

    invoke-virtual {p0}, Lcn/nubia/deskclock/DeskClock;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/DeskClock;->mClockContainer:Lcn/nubia/deskclock/ui/ClockContainer;

    iget-object v3, p0, Lcn/nubia/deskclock/DeskClock;->mButtonView:Lcn/nubia/deskclock/ui/ClockBottomLayout;

    iget-object v4, p0, Lcn/nubia/deskclock/DeskClock;->mVerticalMotionLayout:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/nubia/deskclock/ui/ClockMotionHelper;-><init>(Landroid/content/Context;Lcn/nubia/deskclock/ui/ClockContainer;Lcn/nubia/deskclock/ui/ClockBottomLayout;Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;)V

    iput-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mMotionHelper:Lcn/nubia/deskclock/ui/ClockMotionHelper;

    .line 408
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mMotionHelper:Lcn/nubia/deskclock/ui/ClockMotionHelper;

    iget v1, p0, Lcn/nubia/deskclock/DeskClock;->mSelectedTab:I

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/ClockMotionHelper;->setClockVisibilityControl(I)V

    .line 409
    return-void
.end method

.method private initContext()V
    .locals 1

    .prologue
    .line 242
    iput-object p0, p0, Lcn/nubia/deskclock/DeskClock;->mContext:Landroid/content/Context;

    .line 243
    invoke-virtual {p0}, Lcn/nubia/deskclock/DeskClock;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mApplicationContext:Landroid/content/Context;

    .line 244
    return-void
.end method

.method private initControl()V
    .locals 4

    .prologue
    .line 298
    new-instance v0, Lcn/nubia/deskclock/control/AnimationClockManager;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/control/AnimationClockManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mAnimationManager:Lcn/nubia/deskclock/control/AnimationClockManager;

    .line 299
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mAnimationManager:Lcn/nubia/deskclock/control/AnimationClockManager;

    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock;->mClockContainer:Lcn/nubia/deskclock/ui/ClockContainer;

    iget-object v2, p0, Lcn/nubia/deskclock/DeskClock;->mClockBottomLayout:Lcn/nubia/deskclock/ui/ClockBottomLayout;

    iget-object v3, p0, Lcn/nubia/deskclock/DeskClock;->mActionBarLayout:Lcn/nubia/deskclock/ui/ActionBarLayout;

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/deskclock/control/AnimationClockManager;->setClockViews(Lcn/nubia/deskclock/ui/ClockContainer;Lcn/nubia/deskclock/ui/ClockBottomLayout;Lcn/nubia/deskclock/ui/ActionBarLayout;)V

    .line 300
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mAnimationManager:Lcn/nubia/deskclock/control/AnimationClockManager;

    iget v1, p0, Lcn/nubia/deskclock/DeskClock;->mSelectedTab:I

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/control/AnimationClockManager;->initCurrentTable(I)V

    .line 301
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mTabPagerAdapter:Lcn/nubia/deskclock/adapter/TabPagerAdapter;

    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock;->mAnimationManager:Lcn/nubia/deskclock/control/AnimationClockManager;

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->setAnimationManager(Lcn/nubia/deskclock/control/AnimationClockManager;)V

    .line 302
    return-void
.end method

.method private initCts()V
    .locals 3

    .prologue
    .line 570
    const-string v0, "false"

    .line 573
    .local v0, "enableCts":Ljava/lang/String;
    :try_start_0
    const-string v0, "true"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 577
    invoke-virtual {p0}, Lcn/nubia/deskclock/DeskClock;->checkAndRequestPermissions()V

    .line 579
    :cond_0
    return-void

    .line 574
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private initForcetouch(Ljava/lang/String;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 454
    iput-object p1, p0, Lcn/nubia/deskclock/DeskClock;->mIntentAction:Ljava/lang/String;

    .line 455
    const-string v0, "DeskClock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initForcetouch: action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    if-eqz p1, :cond_1

    .line 457
    const-string v0, "cn.nubia.intent.action.NUBIA.TIMEMANAGER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.SHOW_ALARMS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 458
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcn/nubia/deskclock/DeskClock;->mSelectedTab:I

    .line 470
    :cond_1
    :goto_0
    const-string v0, "DeskClock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " initForcetouch  mIntentAction : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/DeskClock;->mIntentAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  ;; mSelectedTab : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/deskclock/DeskClock;->mSelectedTab:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    return-void

    .line 459
    :cond_2
    const-string v0, "cn.nubia.deskclock.NEW_STOPWATCH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "cn.nubia.deskclock.PAUSE_STOPWATCH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "cn.nubia.deskclock.RESUME_STOPWATCH"

    .line 460
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "cn.nubia.assistant.NEW_STOPWATCH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 461
    :cond_3
    const/4 v0, 0x2

    iput v0, p0, Lcn/nubia/deskclock/DeskClock;->mSelectedTab:I

    goto :goto_0

    .line 462
    :cond_4
    const-string v0, "cn.nubia.deskclock.NEW_COUNTDOWN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "cn.nubia.deskclock.PAUSE_COUNTDOWN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "cn.nubia.deskclock.RESUME_COUNTDOWN"

    .line 463
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "cn.nubia.assistant.NEW_COUNTDOWN"

    .line 464
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 465
    :cond_5
    const/4 v0, 0x3

    iput v0, p0, Lcn/nubia/deskclock/DeskClock;->mSelectedTab:I

    goto :goto_0

    .line 466
    :cond_6
    const-string v0, "cn.nubia.assistant.NEW_WORLDTIME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 467
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/deskclock/DeskClock;->mSelectedTab:I

    goto :goto_0
.end method

.method private initModel()V
    .locals 3

    .prologue
    .line 309
    const-string v0, "DeskClock"

    const-string v1, "  [initModel] "

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    new-instance v0, Lcn/nubia/deskclock/model/LocalWorkingModel;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/model/LocalWorkingModel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mLocalWorkingModel:Lcn/nubia/deskclock/model/LocalWorkingModel;

    .line 311
    new-instance v0, Lcn/nubia/deskclock/model/AlarmClockModel;

    invoke-direct {v0}, Lcn/nubia/deskclock/model/AlarmClockModel;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mAlarmClockModel:Lcn/nubia/deskclock/model/AlarmClockModel;

    .line 312
    new-instance v0, Lcn/nubia/deskclock/model/WorldTimeModel;

    invoke-direct {v0}, Lcn/nubia/deskclock/model/WorldTimeModel;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mWorldTimeModel:Lcn/nubia/deskclock/model/WorldTimeModel;

    .line 313
    invoke-virtual {p0}, Lcn/nubia/deskclock/DeskClock;->getStopWatchModel()Lcn/nubia/deskclock/model/StopWatchModel;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mStopWatchModel:Lcn/nubia/deskclock/model/StopWatchModel;

    .line 314
    invoke-virtual {p0}, Lcn/nubia/deskclock/DeskClock;->getCountDownModel()Lcn/nubia/deskclock/model/CountDownModel;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    .line 316
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mLocalWorkingModel:Lcn/nubia/deskclock/model/LocalWorkingModel;

    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock;->mWorldTimeModel:Lcn/nubia/deskclock/model/WorldTimeModel;

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/model/LocalWorkingModel;->setWorldTimeModel(Lcn/nubia/deskclock/model/WorldTimeModel;)V

    .line 317
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mLocalWorkingModel:Lcn/nubia/deskclock/model/LocalWorkingModel;

    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock;->mAlarmClockModel:Lcn/nubia/deskclock/model/AlarmClockModel;

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/model/LocalWorkingModel;->setAlarmClockModel(Lcn/nubia/deskclock/model/AlarmClockModel;)V

    .line 318
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mLocalWorkingModel:Lcn/nubia/deskclock/model/LocalWorkingModel;

    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock;->mStopWatchModel:Lcn/nubia/deskclock/model/StopWatchModel;

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/model/LocalWorkingModel;->setStopWatchModel(Lcn/nubia/deskclock/model/StopWatchModel;)V

    .line 319
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mLocalWorkingModel:Lcn/nubia/deskclock/model/LocalWorkingModel;

    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/model/LocalWorkingModel;->setCountDownModel(Lcn/nubia/deskclock/model/CountDownModel;)V

    .line 321
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mAnimationManager:Lcn/nubia/deskclock/control/AnimationClockManager;

    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock;->mWorldTimeModel:Lcn/nubia/deskclock/model/WorldTimeModel;

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/control/AnimationClockManager;->setWorldTimeModel(Lcn/nubia/deskclock/model/WorldTimeModel;)V

    .line 322
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mAnimationManager:Lcn/nubia/deskclock/control/AnimationClockManager;

    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock;->mAlarmClockModel:Lcn/nubia/deskclock/model/AlarmClockModel;

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/control/AnimationClockManager;->setAlarmClockModel(Lcn/nubia/deskclock/model/AlarmClockModel;)V

    .line 323
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mAnimationManager:Lcn/nubia/deskclock/control/AnimationClockManager;

    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock;->mStopWatchModel:Lcn/nubia/deskclock/model/StopWatchModel;

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/control/AnimationClockManager;->setStopWatchModel(Lcn/nubia/deskclock/model/StopWatchModel;)V

    .line 324
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mAnimationManager:Lcn/nubia/deskclock/control/AnimationClockManager;

    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/control/AnimationClockManager;->setCountDownModel(Lcn/nubia/deskclock/model/CountDownModel;)V

    .line 326
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mLocalWorkingModel:Lcn/nubia/deskclock/model/LocalWorkingModel;

    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock;->mAnimationManager:Lcn/nubia/deskclock/control/AnimationClockManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/nubia/deskclock/control/AnimationClockManager;->getAnimationOperator(I)Lcn/nubia/deskclock/inter/IAnimationOperator;

    move-result-object v1

    .line 327
    invoke-interface {v1}, Lcn/nubia/deskclock/inter/IAnimationOperator;->getWorkerHandler()Landroid/os/Handler;

    move-result-object v1

    .line 326
    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/model/LocalWorkingModel;->setWorldTimeHandler(Landroid/os/Handler;)V

    .line 328
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mLocalWorkingModel:Lcn/nubia/deskclock/model/LocalWorkingModel;

    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock;->mAnimationManager:Lcn/nubia/deskclock/control/AnimationClockManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/nubia/deskclock/control/AnimationClockManager;->getAnimationOperator(I)Lcn/nubia/deskclock/inter/IAnimationOperator;

    move-result-object v1

    .line 329
    invoke-interface {v1}, Lcn/nubia/deskclock/inter/IAnimationOperator;->getWorkerHandler()Landroid/os/Handler;

    move-result-object v1

    .line 328
    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/model/LocalWorkingModel;->setAlarmClockHandler(Landroid/os/Handler;)V

    .line 330
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mLocalWorkingModel:Lcn/nubia/deskclock/model/LocalWorkingModel;

    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock;->mAnimationManager:Lcn/nubia/deskclock/control/AnimationClockManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcn/nubia/deskclock/control/AnimationClockManager;->getAnimationOperator(I)Lcn/nubia/deskclock/inter/IAnimationOperator;

    move-result-object v1

    .line 331
    invoke-interface {v1}, Lcn/nubia/deskclock/inter/IAnimationOperator;->getWorkerHandler()Landroid/os/Handler;

    move-result-object v1

    .line 330
    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/model/LocalWorkingModel;->setStopWatchHandler(Landroid/os/Handler;)V

    .line 332
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mLocalWorkingModel:Lcn/nubia/deskclock/model/LocalWorkingModel;

    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock;->mAnimationManager:Lcn/nubia/deskclock/control/AnimationClockManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcn/nubia/deskclock/control/AnimationClockManager;->getAnimationOperator(I)Lcn/nubia/deskclock/inter/IAnimationOperator;

    move-result-object v1

    .line 333
    invoke-interface {v1}, Lcn/nubia/deskclock/inter/IAnimationOperator;->getWorkerHandler()Landroid/os/Handler;

    move-result-object v1

    .line 332
    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/model/LocalWorkingModel;->setCountDownHandler(Landroid/os/Handler;)V

    .line 335
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mTabPagerAdapter:Lcn/nubia/deskclock/adapter/TabPagerAdapter;

    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock;->mLocalWorkingModel:Lcn/nubia/deskclock/model/LocalWorkingModel;

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->setLocalWorkingModel(Lcn/nubia/deskclock/model/LocalWorkingModel;)V

    .line 336
    return-void
.end method

.method private initSelectedTab(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 234
    iput v1, p0, Lcn/nubia/deskclock/DeskClock;->mSelectedTab:I

    .line 235
    if-eqz p1, :cond_0

    .line 236
    const-string v0, "selected_tab"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/deskclock/DeskClock;->mSelectedTab:I

    .line 238
    :cond_0
    const-string v0, "DeskClock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " initSelectedTab  mSelectedTab : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/deskclock/DeskClock;->mSelectedTab:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method private initTabPagerListener()V
    .locals 5

    .prologue
    .line 229
    new-instance v0, Lcn/nubia/deskclock/listener/TabPagerListener;

    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock;->mAnimationManager:Lcn/nubia/deskclock/control/AnimationClockManager;

    iget-object v2, p0, Lcn/nubia/deskclock/DeskClock;->mActionBarLayout:Lcn/nubia/deskclock/ui/ActionBarLayout;

    iget-object v3, p0, Lcn/nubia/deskclock/DeskClock;->mMotionHelper:Lcn/nubia/deskclock/ui/ClockMotionHelper;

    iget-object v4, p0, Lcn/nubia/deskclock/DeskClock;->mTabPagerAdapter:Lcn/nubia/deskclock/adapter/TabPagerAdapter;

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/nubia/deskclock/listener/TabPagerListener;-><init>(Lcn/nubia/deskclock/control/AnimationClockManager;Lcn/nubia/deskclock/ui/ActionBarLayout;Lcn/nubia/deskclock/ui/ClockMotionHelper;Lcn/nubia/deskclock/adapter/TabPagerAdapter;)V

    iput-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mTabPagerListener:Lcn/nubia/deskclock/listener/TabPagerListener;

    .line 231
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    const v1, 0x7f1200ad

    .line 268
    const v0, 0x7f04002b

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/DeskClock;->setContentView(I)V

    .line 269
    const v0, 0x7f1200c5

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/DeskClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/ui/DeskClockViewPager;

    iput-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mViewPager:Lcn/nubia/deskclock/ui/DeskClockViewPager;

    .line 270
    const v0, 0x7f1200ba

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/DeskClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/ui/ClockContainer;

    iput-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mClockContainer:Lcn/nubia/deskclock/ui/ClockContainer;

    .line 271
    invoke-virtual {p0, v1}, Lcn/nubia/deskclock/DeskClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/ui/ClockBottomLayout;

    iput-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mButtonView:Lcn/nubia/deskclock/ui/ClockBottomLayout;

    .line 272
    const v0, 0x7f1200c6

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/DeskClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/ui/ActionBarLayout;

    iput-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mActionBarLayout:Lcn/nubia/deskclock/ui/ActionBarLayout;

    .line 273
    invoke-virtual {p0, v1}, Lcn/nubia/deskclock/DeskClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/ui/ClockBottomLayout;

    iput-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mClockBottomLayout:Lcn/nubia/deskclock/ui/ClockBottomLayout;

    .line 274
    const v0, 0x7f1200c4

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/DeskClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    iput-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mVerticalMotionLayout:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    .line 275
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mVerticalMotionLayout:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock;->mViewPagerEnableListener:Lcn/nubia/deskclock/inter/IViewPagerEnableListener;

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->setEnableViewPageListener(Lcn/nubia/deskclock/inter/IViewPagerEnableListener;)V

    .line 276
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mViewPager:Lcn/nubia/deskclock/ui/DeskClockViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/DeskClockViewPager;->setOffscreenPageLimit(I)V

    .line 277
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mViewPager:Lcn/nubia/deskclock/ui/DeskClockViewPager;

    const v1, 0x7f1200e3

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/DeskClockViewPager;->setId(I)V

    .line 278
    new-instance v0, Lcn/nubia/deskclock/adapter/TabPagerAdapter;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/adapter/TabPagerAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mTabPagerAdapter:Lcn/nubia/deskclock/adapter/TabPagerAdapter;

    .line 279
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mTabPagerAdapter:Lcn/nubia/deskclock/adapter/TabPagerAdapter;

    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock;->mViewPagerEnableListener:Lcn/nubia/deskclock/inter/IViewPagerEnableListener;

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->setViewPagerEnableListener(Lcn/nubia/deskclock/inter/IViewPagerEnableListener;)V

    .line 280
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mTabPagerAdapter:Lcn/nubia/deskclock/adapter/TabPagerAdapter;

    iget v1, p0, Lcn/nubia/deskclock/DeskClock;->mSelectedTab:I

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->setCurrentTab(I)V

    .line 281
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mViewPager:Lcn/nubia/deskclock/ui/DeskClockViewPager;

    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock;->mTabPagerAdapter:Lcn/nubia/deskclock/adapter/TabPagerAdapter;

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/DeskClockViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 282
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mActionBarLayout:Lcn/nubia/deskclock/ui/ActionBarLayout;

    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock;->mViewPager:Lcn/nubia/deskclock/ui/DeskClockViewPager;

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/ActionBarLayout;->initialize(Lcn/nubia/deskclock/ui/DeskClockViewPager;)V

    .line 283
    invoke-virtual {p0}, Lcn/nubia/deskclock/DeskClock;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 284
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_0

    .line 285
    invoke-virtual {p0}, Lcn/nubia/deskclock/DeskClock;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {p0, v0}, Lcn/nubia/deskclock/util/Utils;->setDarkStatusIcon(Landroid/app/Activity;Z)V

    .line 289
    :goto_0
    const v0, 0x7f1200c7

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/DeskClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;

    iput-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mViewPagerTabs:Lcn/nubia/commonui/widget/tab/NubiaPagerTab;

    .line 290
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mViewPagerTabs:Lcn/nubia/commonui/widget/tab/NubiaPagerTab;

    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock;->mViewPager:Lcn/nubia/deskclock/ui/DeskClockViewPager;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/tab/NubiaPagerTab;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 291
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mViewPager:Lcn/nubia/deskclock/ui/DeskClockViewPager;

    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock;->mViewPagerTabs:Lcn/nubia/commonui/widget/tab/NubiaPagerTab;

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/DeskClockViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 292
    return-void

    .line 287
    :cond_0
    invoke-static {p0}, Lcn/nubia/deskclock/util/Utils;->GrayStatusBar(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private isAssistant()Z
    .locals 6

    .prologue
    .line 923
    invoke-virtual {p0}, Lcn/nubia/deskclock/DeskClock;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 924
    .local v2, "launchIntent":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 925
    .local v1, "flag":Z
    if-eqz v2, :cond_1

    .line 926
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 927
    .local v0, "action":Ljava/lang/String;
    const-string v3, "cn.nubia.assistant.NEW_STOPWATCH"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "cn.nubia.assistant.NEW_COUNTDOWN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "cn.nubia.assistant.NEW_WORLDTIME"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 928
    :cond_0
    const/4 v1, 0x1

    .line 931
    .end local v0    # "action":Ljava/lang/String;
    :cond_1
    const-string v3, "DeskClock"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " [isAssistant] flag : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    return v1
.end method

.method private isLaunchFromForchTouch()Z
    .locals 3

    .prologue
    .line 908
    const/4 v0, 0x0

    .line 909
    .local v0, "isLaunchFromForchTouch":Z
    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock;->mIntentAction:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 910
    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock;->mIntentAction:Ljava/lang/String;

    const-string v2, "cn.nubia.deskclock.NEW_COUNTDOWN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock;->mIntentAction:Ljava/lang/String;

    const-string v2, "cn.nubia.deskclock.PAUSE_COUNTDOWN"

    .line 911
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock;->mIntentAction:Ljava/lang/String;

    const-string v2, "cn.nubia.deskclock.RESUME_COUNTDOWN"

    .line 912
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock;->mIntentAction:Ljava/lang/String;

    const-string v2, "cn.nubia.deskclock.NEW_STOPWATCH"

    .line 913
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock;->mIntentAction:Ljava/lang/String;

    const-string v2, "cn.nubia.deskclock.PAUSE_STOPWATCH"

    .line 914
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock;->mIntentAction:Ljava/lang/String;

    const-string v2, "cn.nubia.deskclock.RESUME_STOPWATCH"

    .line 915
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock;->mIntentAction:Ljava/lang/String;

    const-string v2, "cn.nubia.assistant.NEW_STOPWATCH"

    .line 916
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock;->mIntentAction:Ljava/lang/String;

    const-string v2, "cn.nubia.assistant.NEW_COUNTDOWN"

    .line 917
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 919
    :cond_1
    :goto_0
    return v0

    .line 917
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private requestPermissions()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 829
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v3

    .line 831
    .local v0, "permissions":[Ljava/lang/String;
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->needCheckPowerOffAlarmPermission()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 832
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    .end local v0    # "permissions":[Ljava/lang/String;
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v3

    const-string v1, "org.codeaurora.permission.POWER_OFF_ALARM"

    aput-object v1, v0, v4

    .line 837
    .restart local v0    # "permissions":[Ljava/lang/String;
    :cond_0
    const/16 v1, 0x14

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 838
    return-void
.end method

.method private showCurrentView(I)V
    .locals 5
    .param p1, "tab"    # I

    .prologue
    .line 965
    const-string v2, "DeskClock"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showCurrentView: tab : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    const/4 v1, 0x0

    .line 967
    .local v1, "mainClockView":Landroid/view/View;
    const/4 v0, 0x0

    .line 968
    .local v0, "currentViewStub":Landroid/view/ViewStub;
    if-ltz p1, :cond_0

    sget-object v2, Lcn/nubia/deskclock/ui/ClockContainer;->mClockMainInflateIds:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-gt p1, v2, :cond_0

    .line 969
    sget-object v2, Lcn/nubia/deskclock/ui/ClockContainer;->mClockMainInflateIds:[I

    aget v2, v2, p1

    invoke-virtual {p0, v2}, Lcn/nubia/deskclock/DeskClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 970
    invoke-virtual {p0, p1}, Lcn/nubia/deskclock/DeskClock;->getMainClock(I)Landroid/view/ViewStub;

    move-result-object v0

    .line 972
    :cond_0
    if-eqz v0, :cond_1

    .line 973
    const-string v2, "DeskClock"

    const-string v3, "showCurrentView: currentViewStub is not null"

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 975
    iget-object v2, p0, Lcn/nubia/deskclock/DeskClock;->mAnimationManager:Lcn/nubia/deskclock/control/AnimationClockManager;

    invoke-virtual {v2, p1}, Lcn/nubia/deskclock/control/AnimationClockManager;->getAnimationOperator(I)Lcn/nubia/deskclock/inter/IAnimationOperator;

    move-result-object v2

    .line 976
    invoke-interface {v2}, Lcn/nubia/deskclock/inter/IAnimationOperator;->initAnimantionParam()V

    .line 978
    :cond_1
    if-eqz v1, :cond_2

    .line 979
    const-string v2, "DeskClock"

    const-string v3, "showCurrentView: mainClockView is not null"

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 983
    :cond_2
    return-void
.end method

.method private showWarningDialog(Ljava/lang/StringBuffer;)V
    .locals 8
    .param p1, "permissionInCtsDialog"    # Ljava/lang/StringBuffer;

    .prologue
    const/4 v7, 0x0

    .line 799
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 800
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f040034

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 801
    .local v1, "layout":Landroid/widget/RelativeLayout;
    const v4, 0x7f1200e1

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 802
    .local v3, "msg":Landroid/widget/TextView;
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 803
    new-instance v4, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 804
    invoke-virtual {v4, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    .line 805
    invoke-virtual {p0, v5}, Lcn/nubia/deskclock/DeskClock;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcn/nubia/deskclock/DeskClock$6;

    invoke-direct {v6, p0}, Lcn/nubia/deskclock/DeskClock$6;-><init>(Lcn/nubia/deskclock/DeskClock;)V

    invoke-virtual {v4, v5, v6}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0d0065

    .line 812
    invoke-virtual {p0, v5}, Lcn/nubia/deskclock/DeskClock;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcn/nubia/deskclock/DeskClock$5;

    invoke-direct {v6, p0}, Lcn/nubia/deskclock/DeskClock$5;-><init>(Lcn/nubia/deskclock/DeskClock;)V

    invoke-virtual {v4, v5, v6}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v4

    .line 822
    invoke-virtual {v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v2

    .line 823
    .local v2, "mDialog":Lcn/nubia/commonui/app/AlertDialog;
    invoke-virtual {v2}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 824
    invoke-virtual {v2, v7}, Lcn/nubia/commonui/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 825
    invoke-virtual {v2, v7}, Lcn/nubia/commonui/app/AlertDialog;->setCancelable(Z)V

    .line 826
    return-void
.end method

.method private startAnimation()V
    .locals 4

    .prologue
    .line 207
    invoke-direct {p0}, Lcn/nubia/deskclock/DeskClock;->isLaunchFromForchTouch()Z

    move-result v2

    if-nez v2, :cond_0

    .line 208
    const v2, 0x7f12009c

    invoke-virtual {p0, v2}, Lcn/nubia/deskclock/DeskClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 209
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 210
    monitor-enter p0

    .line 212
    :try_start_0
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcn/nubia/deskclock/DeskClock$1;

    invoke-direct {v3, p0, v1}, Lcn/nubia/deskclock/DeskClock$1;-><init>(Lcn/nubia/deskclock/DeskClock;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 227
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    :goto_1
    return-void

    .line 219
    .restart local v1    # "v":Landroid/view/View;
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 222
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 224
    :cond_1
    iget-object v2, p0, Lcn/nubia/deskclock/DeskClock;->mAnimationManager:Lcn/nubia/deskclock/control/AnimationClockManager;

    iget v3, p0, Lcn/nubia/deskclock/DeskClock;->mSelectedTab:I

    invoke-virtual {v2, v3}, Lcn/nubia/deskclock/control/AnimationClockManager;->getAnimationOperator(I)Lcn/nubia/deskclock/inter/IAnimationOperator;

    move-result-object v2

    invoke-interface {v2}, Lcn/nubia/deskclock/inter/IAnimationOperator;->startAnimation()V

    goto :goto_1
.end method


# virtual methods
.method public checkAndRequestPermissions()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 763
    new-array v2, v5, [Ljava/lang/String;

    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v4, v2, v6

    .line 766
    .local v2, "permissions":[Ljava/lang/String;
    const-string v4, "DeskClock"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkAndRequestPermissions: MOBILE_MODEL : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcn/nubia/deskclock/DeskClock;->MOBILE_MODEL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->needCheckPowerOffAlarmPermission()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 768
    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/String;

    .end local v2    # "permissions":[Ljava/lang/String;
    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v4, v2, v6

    const-string v4, "org.codeaurora.permission.POWER_OFF_ALARM"

    aput-object v4, v2, v5

    .line 770
    .restart local v2    # "permissions":[Ljava/lang/String;
    :cond_0
    const/4 v0, 0x1

    .line 771
    .local v0, "checkPermissionsResult":Z
    const/4 v3, 0x0

    .line 773
    .local v3, "requestPermissionRationale":Z
    array-length v8, v2

    move v7, v6

    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v1, v2, v7

    .line 774
    .local v1, "permission":Ljava/lang/String;
    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    move v4, v5

    :goto_1
    and-int/2addr v0, v4

    .line 775
    invoke-static {p0, v1}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 773
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_0

    :cond_1
    move v4, v6

    .line 774
    goto :goto_1

    .line 778
    .end local v1    # "permission":Ljava/lang/String;
    :cond_2
    const-string v4, "DeskClock"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " -- checkAndRequestPermissions --  checkPermissionsResult : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ;; requestPermissionRationale : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    if-ne v0, v5, :cond_3

    .line 785
    :goto_2
    return-void

    .line 782
    :cond_3
    invoke-direct {p0}, Lcn/nubia/deskclock/DeskClock;->requestPermissions()V

    goto :goto_2
.end method

.method public getCountDownHandle()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 949
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mAnimationManager:Lcn/nubia/deskclock/control/AnimationClockManager;

    if-nez v0, :cond_0

    .line 950
    new-instance v0, Lcn/nubia/deskclock/control/AnimationClockManager;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/control/AnimationClockManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mAnimationManager:Lcn/nubia/deskclock/control/AnimationClockManager;

    .line 952
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mAnimationManager:Lcn/nubia/deskclock/control/AnimationClockManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/control/AnimationClockManager;->getAnimationOperator(I)Lcn/nubia/deskclock/inter/IAnimationOperator;

    move-result-object v0

    .line 953
    invoke-interface {v0}, Lcn/nubia/deskclock/inter/IAnimationOperator;->getWorkerHandler()Landroid/os/Handler;

    move-result-object v0

    .line 952
    return-object v0
.end method

.method public getCountDownModel()Lcn/nubia/deskclock/model/CountDownModel;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    if-nez v0, :cond_0

    .line 386
    new-instance v0, Lcn/nubia/deskclock/model/CountDownModel;

    invoke-direct {v0}, Lcn/nubia/deskclock/model/CountDownModel;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    .line 388
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mCountDownModel:Lcn/nubia/deskclock/model/CountDownModel;

    return-object v0
.end method

.method public getIntentAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mIntentAction:Ljava/lang/String;

    return-object v0
.end method

.method public getIsFirstLaunch()Z
    .locals 1

    .prologue
    .line 733
    iget-boolean v0, p0, Lcn/nubia/deskclock/DeskClock;->mIsFirstLaunch:Z

    return v0
.end method

.method public getMainBottom(I)Landroid/view/View;
    .locals 1
    .param p1, "tab"    # I

    .prologue
    .line 686
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mAnimationManager:Lcn/nubia/deskclock/control/AnimationClockManager;

    invoke-virtual {v0, p1}, Lcn/nubia/deskclock/control/AnimationClockManager;->getClockBottom(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMainClock(I)Landroid/view/ViewStub;
    .locals 1
    .param p1, "tab"    # I

    .prologue
    .line 682
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mAnimationManager:Lcn/nubia/deskclock/control/AnimationClockManager;

    invoke-virtual {v0, p1}, Lcn/nubia/deskclock/control/AnimationClockManager;->getClockView(I)Landroid/view/ViewStub;

    move-result-object v0

    return-object v0
.end method

.method public getMotionHelper()Lcn/nubia/deskclock/ui/ClockMotionHelper;
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mMotionHelper:Lcn/nubia/deskclock/ui/ClockMotionHelper;

    return-object v0
.end method

.method public getSelectTable()I
    .locals 1

    .prologue
    .line 873
    iget v0, p0, Lcn/nubia/deskclock/DeskClock;->mSelectedTab:I

    return v0
.end method

.method public getStopWatchHandle()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 957
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mAnimationManager:Lcn/nubia/deskclock/control/AnimationClockManager;

    if-nez v0, :cond_0

    .line 958
    new-instance v0, Lcn/nubia/deskclock/control/AnimationClockManager;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/control/AnimationClockManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mAnimationManager:Lcn/nubia/deskclock/control/AnimationClockManager;

    .line 960
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mAnimationManager:Lcn/nubia/deskclock/control/AnimationClockManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/control/AnimationClockManager;->getAnimationOperator(I)Lcn/nubia/deskclock/inter/IAnimationOperator;

    move-result-object v0

    .line 961
    invoke-interface {v0}, Lcn/nubia/deskclock/inter/IAnimationOperator;->getWorkerHandler()Landroid/os/Handler;

    move-result-object v0

    .line 960
    return-object v0
.end method

.method public getStopWatchModel()Lcn/nubia/deskclock/model/StopWatchModel;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mStopWatchModel:Lcn/nubia/deskclock/model/StopWatchModel;

    if-nez v0, :cond_0

    .line 379
    new-instance v0, Lcn/nubia/deskclock/model/StopWatchModel;

    invoke-direct {v0}, Lcn/nubia/deskclock/model/StopWatchModel;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mStopWatchModel:Lcn/nubia/deskclock/model/StopWatchModel;

    .line 381
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mStopWatchModel:Lcn/nubia/deskclock/model/StopWatchModel;

    return-object v0
.end method

.method public getVerticalMotion()Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mVerticalMotionLayout:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    return-object v0
.end method

.method public getViewPager()Lcn/nubia/deskclock/ui/DeskClockViewPager;
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mViewPager:Lcn/nubia/deskclock/ui/DeskClockViewPager;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 865
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mTabPagerAdapter:Lcn/nubia/deskclock/adapter/TabPagerAdapter;

    invoke-virtual {v0}, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->getCurrentFragemt()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/fragment/BaseFragment;

    invoke-virtual {v0}, Lcn/nubia/deskclock/fragment/BaseFragment;->doBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 866
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 870
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 654
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 655
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 188
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 189
    const-string v0, "DeskClock"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-direct {p0}, Lcn/nubia/deskclock/DeskClock;->initContext()V

    .line 191
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/DeskClock;->initSelectedTab(Landroid/os/Bundle;)V

    .line 192
    invoke-direct {p0}, Lcn/nubia/deskclock/DeskClock;->getLaunchIntent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/deskclock/DeskClock;->initForcetouch(Ljava/lang/String;)V

    .line 193
    invoke-direct {p0}, Lcn/nubia/deskclock/DeskClock;->initViews()V

    .line 194
    invoke-direct {p0}, Lcn/nubia/deskclock/DeskClock;->initControl()V

    .line 195
    invoke-direct {p0}, Lcn/nubia/deskclock/DeskClock;->initModel()V

    .line 196
    invoke-direct {p0}, Lcn/nubia/deskclock/DeskClock;->firstLoadFragmentAndViews()V

    .line 197
    invoke-direct {p0}, Lcn/nubia/deskclock/DeskClock;->initClockMotionHelper()V

    .line 198
    invoke-direct {p0}, Lcn/nubia/deskclock/DeskClock;->delayReplaceFragment()V

    .line 199
    invoke-direct {p0}, Lcn/nubia/deskclock/DeskClock;->executeExtraDataFunction()V

    .line 200
    invoke-direct {p0}, Lcn/nubia/deskclock/DeskClock;->startAnimation()V

    .line 201
    invoke-direct {p0}, Lcn/nubia/deskclock/DeskClock;->initTabPagerListener()V

    .line 202
    new-instance v0, Lcn/nubia/deskclock/ui/NubiaCtaDialog;

    invoke-direct {v0}, Lcn/nubia/deskclock/ui/NubiaCtaDialog;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mNubiaCtaDialog:Lcn/nubia/deskclock/ui/NubiaCtaDialog;

    .line 203
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mNubiaCtaDialog:Lcn/nubia/deskclock/ui/NubiaCtaDialog;

    invoke-virtual {v0, p0, p0}, Lcn/nubia/deskclock/ui/NubiaCtaDialog;->showCtaDialog(Landroid/content/Context;Lcn/nubia/deskclock/inter/INubiaCtaCallback;)V

    .line 204
    return-void
.end method

.method public onCtaShown()V
    .locals 2

    .prologue
    .line 878
    const-string v0, "DeskClock"

    const-string v1, " ---- onCtaShown --- "

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    invoke-direct {p0}, Lcn/nubia/deskclock/DeskClock;->executeExtraDataFunction()V

    .line 880
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 604
    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock;->mActionBarLayout:Lcn/nubia/deskclock/ui/ActionBarLayout;

    if-eqz v1, :cond_0

    .line 605
    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock;->mActionBarLayout:Lcn/nubia/deskclock/ui/ActionBarLayout;

    invoke-virtual {v1, v3}, Lcn/nubia/deskclock/ui/ActionBarLayout;->setListener(Lcn/nubia/deskclock/ui/ActionBarLayout$Listener;)V

    .line 607
    :cond_0
    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock;->mDelayLoadHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock;->mReplaceFragmentRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 608
    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock;->mDelayLoadHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcn/nubia/deskclock/DeskClock;->mReplaceFragmentRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 609
    iput-object v3, p0, Lcn/nubia/deskclock/DeskClock;->mReplaceFragmentRunnable:Ljava/lang/Runnable;

    .line 611
    :cond_1
    sput-boolean v4, Lcn/nubia/deskclock/DeskClock;->mIsLaunching:Z

    .line 612
    const/4 v0, 0x0

    .local v0, "tab":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    .line 613
    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock;->mAnimationManager:Lcn/nubia/deskclock/control/AnimationClockManager;

    invoke-virtual {v1, v0}, Lcn/nubia/deskclock/control/AnimationClockManager;->getAnimationOperator(I)Lcn/nubia/deskclock/inter/IAnimationOperator;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/deskclock/inter/IAnimationOperator;->releaseResource()V

    .line 612
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 615
    :cond_2
    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock;->mAnimationManager:Lcn/nubia/deskclock/control/AnimationClockManager;

    if-eqz v1, :cond_3

    .line 616
    iput-object v3, p0, Lcn/nubia/deskclock/DeskClock;->mAnimationManager:Lcn/nubia/deskclock/control/AnimationClockManager;

    .line 618
    :cond_3
    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock;->mNubiaCtaDialog:Lcn/nubia/deskclock/ui/NubiaCtaDialog;

    invoke-virtual {v1}, Lcn/nubia/deskclock/ui/NubiaCtaDialog;->dismissDialog()V

    .line 619
    iput-object v3, p0, Lcn/nubia/deskclock/DeskClock;->mNubiaCtaDialog:Lcn/nubia/deskclock/ui/NubiaCtaDialog;

    .line 620
    iput-object v3, p0, Lcn/nubia/deskclock/DeskClock;->mMotionHelper:Lcn/nubia/deskclock/ui/ClockMotionHelper;

    .line 621
    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock;->mClockContainer:Lcn/nubia/deskclock/ui/ClockContainer;

    if-eqz v1, :cond_4

    .line 622
    iput-object v3, p0, Lcn/nubia/deskclock/DeskClock;->mClockContainer:Lcn/nubia/deskclock/ui/ClockContainer;

    .line 624
    :cond_4
    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock;->mTabPagerAdapter:Lcn/nubia/deskclock/adapter/TabPagerAdapter;

    if-eqz v1, :cond_5

    .line 625
    iput-object v3, p0, Lcn/nubia/deskclock/DeskClock;->mTabPagerAdapter:Lcn/nubia/deskclock/adapter/TabPagerAdapter;

    .line 627
    :cond_5
    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock;->mVerticalMotionLayout:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    if-eqz v1, :cond_6

    .line 628
    iput-object v3, p0, Lcn/nubia/deskclock/DeskClock;->mVerticalMotionLayout:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    .line 630
    :cond_6
    invoke-static {v4}, Lcn/nubia/deskclock/model/holiday/ParseXml;->setmParseXmlError(Z)V

    .line 632
    invoke-static {}, Lcn/nubia/deskclock/database/WorldclockDbHelper;->clearAllSupportCities()V

    .line 633
    invoke-static {}, Lcn/nubia/deskclock/util/ReyunUtils;->unbindReYun()V

    .line 634
    const-string v1, "DeskClock"

    const-string v2, "onDestroy"

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 636
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "newIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, -0x1

    .line 162
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 165
    invoke-virtual {p0, p1}, Lcn/nubia/deskclock/DeskClock;->setIntent(Landroid/content/Intent;)V

    .line 168
    const-string v2, "DeskClock"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  [onNewIntent]  mSelectedTab : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcn/nubia/deskclock/DeskClock;->mSelectedTab:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v2, "deskclock.select.tab"

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 170
    .local v1, "tab":I
    const-string v2, "DeskClock"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  [onNewIntent]  tab : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "action":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcn/nubia/deskclock/DeskClock;->initForcetouch(Ljava/lang/String;)V

    .line 173
    if-eq v1, v5, :cond_1

    .line 174
    iput v1, p0, Lcn/nubia/deskclock/DeskClock;->mSelectedTab:I

    .line 179
    :goto_0
    if-eq v1, v5, :cond_0

    iget v2, p0, Lcn/nubia/deskclock/DeskClock;->mSelectedTab:I

    if-eq v2, v5, :cond_0

    .line 180
    iget-object v2, p0, Lcn/nubia/deskclock/DeskClock;->mActionBarLayout:Lcn/nubia/deskclock/ui/ActionBarLayout;

    iget v3, p0, Lcn/nubia/deskclock/DeskClock;->mSelectedTab:I

    invoke-virtual {v2, v3}, Lcn/nubia/deskclock/ui/ActionBarLayout;->setCurrentTab(I)V

    .line 181
    iget-object v2, p0, Lcn/nubia/deskclock/DeskClock;->mTabPagerAdapter:Lcn/nubia/deskclock/adapter/TabPagerAdapter;

    iget v3, p0, Lcn/nubia/deskclock/DeskClock;->mSelectedTab:I

    invoke-virtual {v2, v3}, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->setCurrentTab(I)V

    .line 183
    :cond_0
    invoke-direct {p0}, Lcn/nubia/deskclock/DeskClock;->executeExtraDataFunction()V

    .line 184
    return-void

    .line 176
    :cond_1
    iget v1, p0, Lcn/nubia/deskclock/DeskClock;->mSelectedTab:I

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 583
    const-string v0, "DeskClock"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 585
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mIntentAction:Ljava/lang/String;

    .line 587
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mMotionHelper:Lcn/nubia/deskclock/ui/ClockMotionHelper;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mMotionHelper:Lcn/nubia/deskclock/ui/ClockMotionHelper;

    invoke-virtual {v0, v2, v2}, Lcn/nubia/deskclock/ui/ClockMotionHelper;->setDigitalClockUpdate(IZ)V

    .line 589
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mMotionHelper:Lcn/nubia/deskclock/ui/ClockMotionHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/nubia/deskclock/ui/ClockMotionHelper;->setDigitalClockUpdate(IZ)V

    .line 591
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v3, 0x0

    .line 842
    const/16 v2, 0x14

    if-ne p1, v2, :cond_3

    .line 843
    const/4 v1, 0x1

    .line 844
    .local v1, "requestResult":Z
    array-length v4, p3

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget v0, p3, v2

    .line 845
    .local v0, "i":I
    if-eqz v0, :cond_1

    .line 846
    const/4 v1, 0x0

    .line 850
    .end local v0    # "i":I
    :cond_0
    const-string v2, "DeskClock"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ---- onRequestPermissionsResult --- requestResult : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    if-eqz v1, :cond_2

    .line 852
    iget-object v2, p0, Lcn/nubia/deskclock/DeskClock;->mApplicationContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/Utils;->saveFirstLaunchToSharedPref(Landroid/content/Context;Z)V

    .line 853
    iget-object v2, p0, Lcn/nubia/deskclock/DeskClock;->mApplicationContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/Utils;->saveAllowAccessNetworkToSharedPref(Landroid/content/Context;Z)V

    .line 854
    invoke-virtual {p0}, Lcn/nubia/deskclock/DeskClock;->onCtaShown()V

    .line 861
    .end local v1    # "requestResult":Z
    :goto_1
    return-void

    .line 844
    .restart local v0    # "i":I
    .restart local v1    # "requestResult":Z
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 857
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/deskclock/DeskClock;->onCtaShown()V

    .line 860
    .end local v1    # "requestResult":Z
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/4 v4, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 510
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 511
    const-string v2, "DeskClock"

    const-string v3, "onResume"

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v2

    new-instance v3, Lcn/nubia/deskclock/DeskClock$4;

    invoke-direct {v3, p0}, Lcn/nubia/deskclock/DeskClock$4;-><init>(Lcn/nubia/deskclock/DeskClock;)V

    invoke-virtual {v2, v3}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 524
    iget-object v2, p0, Lcn/nubia/deskclock/DeskClock;->mActionBarLayout:Lcn/nubia/deskclock/ui/ActionBarLayout;

    invoke-virtual {v2, p0}, Lcn/nubia/deskclock/ui/ActionBarLayout;->setListener(Lcn/nubia/deskclock/ui/ActionBarLayout$Listener;)V

    .line 525
    iget-object v2, p0, Lcn/nubia/deskclock/DeskClock;->mViewPager:Lcn/nubia/deskclock/ui/DeskClockViewPager;

    if-eqz v2, :cond_1

    .line 526
    iget-object v2, p0, Lcn/nubia/deskclock/DeskClock;->mViewPager:Lcn/nubia/deskclock/ui/DeskClockViewPager;

    iget-object v3, p0, Lcn/nubia/deskclock/DeskClock;->mTabPagerListener:Lcn/nubia/deskclock/listener/TabPagerListener;

    invoke-virtual {v2, v3}, Lcn/nubia/deskclock/ui/DeskClockViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 527
    iget-object v2, p0, Lcn/nubia/deskclock/DeskClock;->mViewPager:Lcn/nubia/deskclock/ui/DeskClockViewPager;

    invoke-virtual {v2}, Lcn/nubia/deskclock/ui/DeskClockViewPager;->getDeleteMode()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-direct {p0}, Lcn/nubia/deskclock/DeskClock;->isAssistant()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 528
    invoke-direct {p0}, Lcn/nubia/deskclock/DeskClock;->getAssistantCountDownStatus()I

    move-result v2

    if-ne v2, v4, :cond_0

    invoke-direct {p0}, Lcn/nubia/deskclock/DeskClock;->getAssistantStopWatchStatus()I

    move-result v2

    if-eq v2, v4, :cond_4

    .line 529
    :cond_0
    invoke-direct {p0}, Lcn/nubia/deskclock/DeskClock;->getLaunchIntent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/nubia/deskclock/DeskClock;->initForcetouch(Ljava/lang/String;)V

    .line 530
    iget v2, p0, Lcn/nubia/deskclock/DeskClock;->mSelectedTab:I

    iget-object v3, p0, Lcn/nubia/deskclock/DeskClock;->mViewPager:Lcn/nubia/deskclock/ui/DeskClockViewPager;

    invoke-virtual {v3}, Lcn/nubia/deskclock/ui/DeskClockViewPager;->getCurrentItem()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 531
    iget-object v2, p0, Lcn/nubia/deskclock/DeskClock;->mViewPager:Lcn/nubia/deskclock/ui/DeskClockViewPager;

    iget v3, p0, Lcn/nubia/deskclock/DeskClock;->mSelectedTab:I

    invoke-virtual {v2, v3, v5}, Lcn/nubia/deskclock/ui/DeskClockViewPager;->setCurrentItem(IZ)V

    .line 558
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcn/nubia/deskclock/DeskClock;->mIsFirstLaunch:Z

    if-nez v2, :cond_2

    .line 559
    iget-object v2, p0, Lcn/nubia/deskclock/DeskClock;->mAnimationManager:Lcn/nubia/deskclock/control/AnimationClockManager;

    iget v3, p0, Lcn/nubia/deskclock/DeskClock;->mSelectedTab:I

    invoke-virtual {v2, v3}, Lcn/nubia/deskclock/control/AnimationClockManager;->getAnimationOperator(I)Lcn/nubia/deskclock/inter/IAnimationOperator;

    move-result-object v2

    invoke-interface {v2}, Lcn/nubia/deskclock/inter/IAnimationOperator;->startAnimation()V

    .line 561
    :cond_2
    iput-boolean v5, p0, Lcn/nubia/deskclock/DeskClock;->mIsFirstLaunch:Z

    .line 563
    iget-object v2, p0, Lcn/nubia/deskclock/DeskClock;->mMotionHelper:Lcn/nubia/deskclock/ui/ClockMotionHelper;

    if-eqz v2, :cond_3

    .line 564
    iget-object v2, p0, Lcn/nubia/deskclock/DeskClock;->mMotionHelper:Lcn/nubia/deskclock/ui/ClockMotionHelper;

    invoke-virtual {v2, v5, v6}, Lcn/nubia/deskclock/ui/ClockMotionHelper;->setDigitalClockUpdate(IZ)V

    .line 565
    iget-object v2, p0, Lcn/nubia/deskclock/DeskClock;->mMotionHelper:Lcn/nubia/deskclock/ui/ClockMotionHelper;

    invoke-virtual {v2, v6, v6}, Lcn/nubia/deskclock/ui/ClockMotionHelper;->setDigitalClockUpdate(IZ)V

    .line 567
    :cond_3
    return-void

    .line 533
    :cond_4
    const-string v2, "cn.nubia.assistant.NEW_WORLDTIME"

    invoke-direct {p0}, Lcn/nubia/deskclock/DeskClock;->getLaunchIntent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 534
    const-string v2, "DeskClock"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ASSISTANT_NEW_WORLDTIME_ACTION  tab : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/deskclock/DeskClock;->mViewPager:Lcn/nubia/deskclock/ui/DeskClockViewPager;

    invoke-virtual {v4}, Lcn/nubia/deskclock/ui/DeskClockViewPager;->getCurrentItem()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    invoke-direct {p0}, Lcn/nubia/deskclock/DeskClock;->getLaunchIntent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/nubia/deskclock/DeskClock;->initForcetouch(Ljava/lang/String;)V

    .line 536
    iget v2, p0, Lcn/nubia/deskclock/DeskClock;->mSelectedTab:I

    iget-object v3, p0, Lcn/nubia/deskclock/DeskClock;->mViewPager:Lcn/nubia/deskclock/ui/DeskClockViewPager;

    invoke-virtual {v3}, Lcn/nubia/deskclock/ui/DeskClockViewPager;->getCurrentItem()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 537
    const-string v2, "DeskClock"

    const-string v3, " onResume 555555 "

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    iget-object v2, p0, Lcn/nubia/deskclock/DeskClock;->mViewPager:Lcn/nubia/deskclock/ui/DeskClockViewPager;

    iget v3, p0, Lcn/nubia/deskclock/DeskClock;->mSelectedTab:I

    invoke-virtual {v2, v3, v5}, Lcn/nubia/deskclock/ui/DeskClockViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 542
    :cond_5
    iget-object v2, p0, Lcn/nubia/deskclock/DeskClock;->mActionBarLayout:Lcn/nubia/deskclock/ui/ActionBarLayout;

    invoke-virtual {v2}, Lcn/nubia/deskclock/ui/ActionBarLayout;->getCurrentTab()I

    move-result v1

    .line 544
    .local v1, "tab":I
    const-string v3, "cn.nubia.assistant.NEW_WORLDTIME"

    invoke-virtual {p0}, Lcn/nubia/deskclock/DeskClock;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcn/nubia/deskclock/DeskClock;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 545
    const-string v2, "DeskClock"

    const-string v3, " onResume  ASSISTANT_NEW_WORLDTIME_ACTION"

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    iget-object v2, p0, Lcn/nubia/deskclock/DeskClock;->mTabPagerListener:Lcn/nubia/deskclock/listener/TabPagerListener;

    invoke-virtual {v2, v1}, Lcn/nubia/deskclock/listener/TabPagerListener;->setLastItem(I)V

    .line 548
    :cond_6
    iget-object v2, p0, Lcn/nubia/deskclock/DeskClock;->mViewPager:Lcn/nubia/deskclock/ui/DeskClockViewPager;

    invoke-virtual {v2}, Lcn/nubia/deskclock/ui/DeskClockViewPager;->getCurrentItem()I

    move-result v0

    .line 549
    .local v0, "pagerItem":I
    const-string v2, "DeskClock"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " onResume tab : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  ;; mViewPager.getCurrentItem() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    if-eq v1, v0, :cond_8

    .line 551
    iget-object v2, p0, Lcn/nubia/deskclock/DeskClock;->mViewPager:Lcn/nubia/deskclock/ui/DeskClockViewPager;

    invoke-virtual {v2, v1, v5}, Lcn/nubia/deskclock/ui/DeskClockViewPager;->setCurrentItem(IZ)V

    goto/16 :goto_0

    .line 544
    .end local v0    # "pagerItem":I
    :cond_7
    const/4 v2, 0x0

    goto :goto_1

    .line 553
    .restart local v0    # "pagerItem":I
    :cond_8
    iget-object v2, p0, Lcn/nubia/deskclock/DeskClock;->mTabPagerListener:Lcn/nubia/deskclock/listener/TabPagerListener;

    invoke-virtual {v2, v1}, Lcn/nubia/deskclock/listener/TabPagerListener;->setLastItem(I)V

    .line 554
    invoke-direct {p0, v1}, Lcn/nubia/deskclock/DeskClock;->showCurrentView(I)V

    goto/16 :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 640
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 641
    const-string v0, "DeskClock"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mActionBarLayout:Lcn/nubia/deskclock/ui/ActionBarLayout;

    invoke-virtual {v0, v2}, Lcn/nubia/deskclock/ui/ActionBarLayout;->setListener(Lcn/nubia/deskclock/ui/ActionBarLayout$Listener;)V

    .line 643
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mViewPager:Lcn/nubia/deskclock/ui/DeskClockViewPager;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mViewPager:Lcn/nubia/deskclock/ui/DeskClockViewPager;

    invoke-virtual {v0, v2}, Lcn/nubia/deskclock/ui/DeskClockViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 646
    :cond_0
    return-void
.end method

.method public onSelectedTabChanged()V
    .locals 4

    .prologue
    .line 673
    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock;->mActionBarLayout:Lcn/nubia/deskclock/ui/ActionBarLayout;

    invoke-virtual {v1}, Lcn/nubia/deskclock/ui/ActionBarLayout;->getCurrentTab()I

    move-result v0

    .line 674
    .local v0, "tab":I
    iput v0, p0, Lcn/nubia/deskclock/DeskClock;->mSelectedTab:I

    .line 675
    const-string v1, "DeskClock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onSelectedTabChanged  tab = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ;; mViewPager.getCurrentItem() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/deskclock/DeskClock;->mViewPager:Lcn/nubia/deskclock/ui/DeskClockViewPager;

    invoke-virtual {v3}, Lcn/nubia/deskclock/ui/DeskClockViewPager;->getCurrentItem()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock;->mViewPager:Lcn/nubia/deskclock/ui/DeskClockViewPager;

    invoke-virtual {v1}, Lcn/nubia/deskclock/ui/DeskClockViewPager;->getCurrentItem()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 677
    iget-object v1, p0, Lcn/nubia/deskclock/DeskClock;->mViewPager:Lcn/nubia/deskclock/ui/DeskClockViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcn/nubia/deskclock/ui/DeskClockViewPager;->setCurrentItem(IZ)V

    .line 679
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 595
    const-string v0, "DeskClock"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 597
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mAnimationManager:Lcn/nubia/deskclock/control/AnimationClockManager;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mAnimationManager:Lcn/nubia/deskclock/control/AnimationClockManager;

    iget v1, p0, Lcn/nubia/deskclock/DeskClock;->mSelectedTab:I

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/control/AnimationClockManager;->getAnimationOperator(I)Lcn/nubia/deskclock/inter/IAnimationOperator;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/deskclock/inter/IAnimationOperator;->endAnimation()V

    .line 600
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 694
    iget-object v4, p0, Lcn/nubia/deskclock/DeskClock;->mViewPager:Lcn/nubia/deskclock/ui/DeskClockViewPager;

    invoke-virtual {v4}, Lcn/nubia/deskclock/ui/DeskClockViewPager;->getDeleteMode()Z

    move-result v4

    if-nez v4, :cond_1

    .line 695
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 697
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 709
    :goto_0
    :pswitch_0
    :try_start_0
    iget-object v4, p0, Lcn/nubia/deskclock/DeskClock;->mViewPager:Lcn/nubia/deskclock/ui/DeskClockViewPager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcn/nubia/deskclock/ui/DeskClockViewPager;->setChildViewEnable(Z)V

    .line 710
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 711
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 712
    .local v3, "y":F
    const/high16 v4, 0x43480000    # 200.0f

    add-float/2addr v4, v3

    invoke-virtual {p1, v2, v4}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 716
    iget v4, p0, Lcn/nubia/deskclock/DeskClock;->downY:F

    iget v5, p0, Lcn/nubia/deskclock/DeskClock;->verdownY:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 717
    iget-object v4, p0, Lcn/nubia/deskclock/DeskClock;->mVerticalMotionLayout:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    invoke-virtual {v4, p1}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_0
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 724
    .end local v0    # "action":I
    :goto_2
    return v4

    .line 699
    .restart local v0    # "action":I
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcn/nubia/deskclock/DeskClock;->downY:F

    .line 700
    iget-object v4, p0, Lcn/nubia/deskclock/DeskClock;->mVerticalMotionLayout:Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    invoke-virtual {v4}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->getTranslationY()F

    move-result v4

    iput v4, p0, Lcn/nubia/deskclock/DeskClock;->verdownY:F

    goto :goto_0

    .line 719
    :catch_0
    move-exception v1

    .line 720
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "DeskClock"

    const-string v5, "dispatchTouchEvent error"

    invoke-static {v4, v5, v1}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 724
    .end local v0    # "action":I
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_2

    .line 697
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public removeActionCustomView()V
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mActionBarLayout:Lcn/nubia/deskclock/ui/ActionBarLayout;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/ActionBarLayout;->removeActionModeView()V

    .line 760
    return-void
.end method

.method public setActionBarLayoutDelete(Z)V
    .locals 1
    .param p1, "isDeleteMode"    # Z

    .prologue
    .line 749
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mActionBarLayout:Lcn/nubia/deskclock/ui/ActionBarLayout;

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mActionBarLayout:Lcn/nubia/deskclock/ui/ActionBarLayout;

    invoke-virtual {v0, p1}, Lcn/nubia/deskclock/ui/ActionBarLayout;->setActionDeleteMode(Z)V

    .line 752
    :cond_0
    return-void
.end method

.method public setActionCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 755
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mActionBarLayout:Lcn/nubia/deskclock/ui/ActionBarLayout;

    invoke-virtual {v0, p1}, Lcn/nubia/deskclock/ui/ActionBarLayout;->setActionModeView(Landroid/view/View;)V

    .line 756
    return-void
.end method

.method public setEmptyLayoutVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 666
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mMotionHelper:Lcn/nubia/deskclock/ui/ClockMotionHelper;

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock;->mMotionHelper:Lcn/nubia/deskclock/ui/ClockMotionHelper;

    invoke-virtual {v0, p1}, Lcn/nubia/deskclock/ui/ClockMotionHelper;->setEmptyLayoutVisible(Z)V

    .line 669
    :cond_0
    return-void
.end method

.method public setIsFirstLaunch(Z)V
    .locals 0
    .param p1, "set"    # Z

    .prologue
    .line 737
    iput-boolean p1, p0, Lcn/nubia/deskclock/DeskClock;->mIsFirstLaunch:Z

    .line 738
    return-void
.end method

.method public setMotionContentView(Landroid/widget/ListView;)V
    .locals 3
    .param p1, "view"    # Landroid/widget/ListView;

    .prologue
    .line 658
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 659
    .local v1, "listViewWeakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/widget/ListView;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 660
    .local v0, "listView":Landroid/widget/ListView;
    iget-object v2, p0, Lcn/nubia/deskclock/DeskClock;->mMotionHelper:Lcn/nubia/deskclock/ui/ClockMotionHelper;

    if-eqz v2, :cond_0

    .line 661
    iget-object v2, p0, Lcn/nubia/deskclock/DeskClock;->mMotionHelper:Lcn/nubia/deskclock/ui/ClockMotionHelper;

    invoke-virtual {v2, v0}, Lcn/nubia/deskclock/ui/ClockMotionHelper;->setContentView(Landroid/widget/ListView;)V

    .line 663
    :cond_0
    return-void
.end method
