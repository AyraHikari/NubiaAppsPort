.class public Lcn/nubia/deskclock/activity/AlarmSettings;
.super Lcn/nubia/commonui/actionbar/app/ActionBarActivity;
.source "AlarmSettings.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AlarmSettings"


# instance fields
.field private NUBIA_APPS_SETTINGS:Ljava/lang/String;

.field public mAlarmTypeView:Lcn/nubia/deskclock/ui/AlarmTypeSettingView;

.field private mAlertIncreasingSettingView:Lcn/nubia/deskclock/ui/AlertIncreasingSettingView;

.field private mIsAlertIncreasing:Z

.field private mIsPowerOffAlarm:Z

.field private mIsShowNextAlarmPoint:Z

.field private mIsSnooze:Z

.field private mNubiaCtaDialog:Lcn/nubia/deskclock/ui/NubiaCtaDialog;

.field private mPoweroffsetView:Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;

.field private mShowNextAlarmPointSettingView:Lcn/nubia/deskclock/ui/ShowNextAlarmPointSettingView;

.field private mSnoozeMaxCount:I

.field private mSnoozeTime:I

.field private mSnoozeView:Lcn/nubia/deskclock/ui/SnoozeSettingView;

.field private mVibrate:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;-><init>()V

    .line 44
    const-string v0, "nubia_apps_settings"

    iput-object v0, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->NUBIA_APPS_SETTINGS:Ljava/lang/String;

    return-void
.end method

.method private initActionBar()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 100
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/AlarmSettings;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 101
    .local v0, "actionBar":Lcn/nubia/commonui/actionbar/app/ActionBar;
    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0, v1, v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayOptions(II)V

    .line 105
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 86
    const v1, 0x7f120093

    invoke-virtual {p0, v1}, Lcn/nubia/deskclock/activity/AlarmSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/deskclock/ui/SnoozeSettingView;

    iput-object v1, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mSnoozeView:Lcn/nubia/deskclock/ui/SnoozeSettingView;

    .line 87
    const v1, 0x7f120094

    invoke-virtual {p0, v1}, Lcn/nubia/deskclock/activity/AlarmSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/deskclock/ui/AlarmTypeSettingView;

    iput-object v1, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mAlarmTypeView:Lcn/nubia/deskclock/ui/AlarmTypeSettingView;

    .line 88
    const v1, 0x7f120095

    invoke-virtual {p0, v1}, Lcn/nubia/deskclock/activity/AlarmSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;

    iput-object v1, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mPoweroffsetView:Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;

    .line 89
    const v1, 0x7f120096

    invoke-virtual {p0, v1}, Lcn/nubia/deskclock/activity/AlarmSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/deskclock/ui/AlertIncreasingSettingView;

    iput-object v1, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mAlertIncreasingSettingView:Lcn/nubia/deskclock/ui/AlertIncreasingSettingView;

    .line 90
    const v1, 0x7f120097

    invoke-virtual {p0, v1}, Lcn/nubia/deskclock/activity/AlarmSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/deskclock/ui/ShowNextAlarmPointSettingView;

    iput-object v1, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mShowNextAlarmPointSettingView:Lcn/nubia/deskclock/ui/ShowNextAlarmPointSettingView;

    .line 91
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->getSupportPowerOffAlarm()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "poweroffAlarmSupport":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "audioprofile"

    invoke-virtual {p0, v1}, Lcn/nubia/deskclock/activity/AlarmSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 93
    :cond_0
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mPoweroffsetView:Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;->setVisibility(I)V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mPoweroffsetView:Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;->setVisibility(I)V

    goto :goto_0
.end method

.method private loadData()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 61
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v1

    .line 62
    invoke-virtual {v1}, Lcn/nubia/deskclock/DeskClockApplication;->getDefaultSharedPref()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 63
    .local v0, "sharedPref":Landroid/content/SharedPreferences;
    const-string v1, "isSnooze"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mIsSnooze:Z

    .line 64
    const-string v1, "snoozeTime"

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mSnoozeTime:I

    .line 65
    const-string v1, "snoozeMaxCount"

    const/16 v2, 0x12c

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mSnoozeMaxCount:I

    .line 66
    const-string v1, "vibrate"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mVibrate:Z

    .line 67
    const-string v1, "isPowerOffAlarm"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mIsPowerOffAlarm:Z

    .line 68
    const-string v1, "isAlertIncreasing"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mIsAlertIncreasing:Z

    .line 69
    const-string v1, "isShowNextAlarmPoint"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mIsShowNextAlarmPoint:Z

    .line 70
    return-void
.end method

.method private setNextAlarm(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 153
    invoke-static {}, Lcn/nubia/deskclock/util/ThreadPool;->getInstance()Lcn/nubia/deskclock/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcn/nubia/deskclock/activity/AlarmSettings$1;

    invoke-direct {v1, p0, p1}, Lcn/nubia/deskclock/activity/AlarmSettings$1;-><init>(Lcn/nubia/deskclock/activity/AlarmSettings;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/util/ThreadPool;->addTask(Ljava/lang/Runnable;)V

    .line 159
    return-void
.end method

.method private settingEnterAndExitAni()V
    .locals 4

    .prologue
    .line 162
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/AlarmSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 163
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 164
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 165
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 166
    iget-object v2, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->NUBIA_APPS_SETTINGS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 167
    const v2, 0x7f050025

    const v3, 0x7f050026

    invoke-virtual {p0, v2, v3}, Lcn/nubia/deskclock/activity/AlarmSettings;->overridePendingTransition(II)V

    .line 172
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method private updateData()V
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mSnoozeView:Lcn/nubia/deskclock/ui/SnoozeSettingView;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/SnoozeSettingView;->isSnoozeEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mIsSnooze:Z

    .line 120
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mSnoozeView:Lcn/nubia/deskclock/ui/SnoozeSettingView;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/SnoozeSettingView;->getSnoozeInterVal()I

    move-result v0

    iput v0, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mSnoozeTime:I

    .line 121
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mSnoozeView:Lcn/nubia/deskclock/ui/SnoozeSettingView;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/SnoozeSettingView;->getSnoozeTimes()I

    move-result v0

    iput v0, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mSnoozeMaxCount:I

    .line 122
    const-string v0, "AlarmSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [updateData]  mIsSnooze : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mIsSnooze:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  ;; mSnoozeMaxCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mSnoozeMaxCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  ;; mSnoozeTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mSnoozeTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mAlarmTypeView:Lcn/nubia/deskclock/ui/AlarmTypeSettingView;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/AlarmTypeSettingView;->isVibrate()Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mVibrate:Z

    .line 125
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mPoweroffsetView:Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;->isPowoffAlarm()Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mIsPowerOffAlarm:Z

    .line 126
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mAlertIncreasingSettingView:Lcn/nubia/deskclock/ui/AlertIncreasingSettingView;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/AlertIncreasingSettingView;->isAlertIncreasing()Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mIsAlertIncreasing:Z

    .line 127
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mShowNextAlarmPointSettingView:Lcn/nubia/deskclock/ui/ShowNextAlarmPointSettingView;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/ShowNextAlarmPointSettingView;->isShowNextAlarmPoint()Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mIsShowNextAlarmPoint:Z

    .line 128
    return-void
.end method

.method private updatePrefs()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mSnoozeView:Lcn/nubia/deskclock/ui/SnoozeSettingView;

    iget-boolean v1, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mIsSnooze:Z

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/SnoozeSettingView;->setSnooze(Z)V

    .line 109
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mSnoozeView:Lcn/nubia/deskclock/ui/SnoozeSettingView;

    iget v1, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mSnoozeTime:I

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/SnoozeSettingView;->setSnoozeInterVal(I)V

    .line 110
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mSnoozeView:Lcn/nubia/deskclock/ui/SnoozeSettingView;

    iget v1, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mSnoozeMaxCount:I

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/SnoozeSettingView;->setSnoozeTimes(I)V

    .line 112
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mAlarmTypeView:Lcn/nubia/deskclock/ui/AlarmTypeSettingView;

    iget-boolean v1, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mVibrate:Z

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/AlarmTypeSettingView;->setVibrate(Z)V

    .line 113
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mPoweroffsetView:Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;

    iget-boolean v1, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mIsPowerOffAlarm:Z

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;->setPowerOffStatus(Z)V

    .line 114
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mAlertIncreasingSettingView:Lcn/nubia/deskclock/ui/AlertIncreasingSettingView;

    iget-boolean v1, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mIsAlertIncreasing:Z

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/AlertIncreasingSettingView;->setAlertIncreasingStatus(Z)V

    .line 115
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mShowNextAlarmPointSettingView:Lcn/nubia/deskclock/ui/ShowNextAlarmPointSettingView;

    iget-boolean v1, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mIsShowNextAlarmPoint:Z

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/ShowNextAlarmPointSettingView;->setShowNextAlarmPointStatus(Z)V

    .line 116
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AlarmSettings;->updateData()V

    .line 148
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AlarmSettings;->settingEnterAndExitAni()V

    .line 149
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/AlarmSettings;->finish()V

    .line 150
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f040024

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/activity/AlarmSettings;->setContentView(I)V

    .line 51
    invoke-static {p0}, Lcn/nubia/deskclock/util/Utils;->GrayStatusBar(Landroid/app/Activity;)V

    .line 52
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AlarmSettings;->initView()V

    .line 53
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AlarmSettings;->initActionBar()V

    .line 54
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/activity/AlarmSettings;->setVolumeControlStream(I)V

    .line 55
    const v0, 0x7f120092

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/activity/AlarmSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 56
    new-instance v0, Lcn/nubia/deskclock/ui/NubiaCtaDialog;

    invoke-direct {v0}, Lcn/nubia/deskclock/ui/NubiaCtaDialog;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mNubiaCtaDialog:Lcn/nubia/deskclock/ui/NubiaCtaDialog;

    .line 57
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mNubiaCtaDialog:Lcn/nubia/deskclock/ui/NubiaCtaDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcn/nubia/deskclock/ui/NubiaCtaDialog;->showCtaDialog(Landroid/content/Context;Lcn/nubia/deskclock/inter/INubiaCtaCallback;)V

    .line 58
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 223
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onDestroy()V

    .line 224
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mAlarmTypeView:Lcn/nubia/deskclock/ui/AlarmTypeSettingView;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mAlarmTypeView:Lcn/nubia/deskclock/ui/AlarmTypeSettingView;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/AlarmTypeSettingView;->release()V

    .line 227
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mPoweroffsetView:Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mPoweroffsetView:Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;->release()V

    .line 230
    :cond_1
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mSnoozeView:Lcn/nubia/deskclock/ui/SnoozeSettingView;

    if-eqz v0, :cond_2

    .line 231
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mSnoozeView:Lcn/nubia/deskclock/ui/SnoozeSettingView;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/SnoozeSettingView;->release()V

    .line 233
    :cond_2
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mNubiaCtaDialog:Lcn/nubia/deskclock/ui/NubiaCtaDialog;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/NubiaCtaDialog;->dismissDialog()V

    .line 234
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 132
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 142
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 135
    :pswitch_0
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AlarmSettings;->updateData()V

    .line 136
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AlarmSettings;->settingEnterAndExitAni()V

    .line 137
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/AlarmSettings;->finish()V

    .line 138
    const/4 v0, 0x1

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onPause()V

    .line 82
    invoke-direct {p0, p0}, Lcn/nubia/deskclock/activity/AlarmSettings;->setNextAlarm(Landroid/content/Context;)V

    .line 83
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 192
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 194
    if-eqz p1, :cond_0

    .line 195
    :try_start_0
    const-string v8, "isSnooze"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 196
    .local v4, "isSnooze":Z
    iget-object v8, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mSnoozeView:Lcn/nubia/deskclock/ui/SnoozeSettingView;

    invoke-virtual {v8, v4}, Lcn/nubia/deskclock/ui/SnoozeSettingView;->setSnooze(Z)V

    .line 198
    const-string v8, "snoozeTime"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 199
    .local v7, "snoozeTime":I
    iget-object v8, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mSnoozeView:Lcn/nubia/deskclock/ui/SnoozeSettingView;

    invoke-virtual {v8, v7}, Lcn/nubia/deskclock/ui/SnoozeSettingView;->setSnoozeInterVal(I)V

    .line 201
    const-string v8, "snoozeMaxCount"

    const/16 v9, 0x12c

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 202
    .local v6, "snoozeMaxCount":I
    iget-object v8, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mSnoozeView:Lcn/nubia/deskclock/ui/SnoozeSettingView;

    invoke-virtual {v8, v6}, Lcn/nubia/deskclock/ui/SnoozeSettingView;->setSnoozeTimes(I)V

    .line 204
    const-string v8, "vibrate"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 205
    .local v5, "isVibrate":Z
    iget-object v8, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mAlarmTypeView:Lcn/nubia/deskclock/ui/AlarmTypeSettingView;

    invoke-virtual {v8, v5}, Lcn/nubia/deskclock/ui/AlarmTypeSettingView;->setVibrate(Z)V

    .line 208
    .end local v4    # "isSnooze":Z
    .end local v5    # "isVibrate":Z
    .end local v6    # "snoozeMaxCount":I
    .end local v7    # "snoozeTime":I
    :cond_0
    const-string v8, "isPowerOffAlarm"

    const/4 v9, 0x1

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 209
    .local v2, "isPowerOffAlarm":Z
    iget-object v8, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mPoweroffsetView:Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;

    invoke-virtual {v8, v2}, Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;->setPowerOffStatus(Z)V

    .line 210
    const-string v8, "isAlertIncreasing"

    const/4 v9, 0x1

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 211
    .local v1, "isAlertIncreasing":Z
    iget-object v8, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mAlertIncreasingSettingView:Lcn/nubia/deskclock/ui/AlertIncreasingSettingView;

    invoke-virtual {v8, v1}, Lcn/nubia/deskclock/ui/AlertIncreasingSettingView;->setAlertIncreasingStatus(Z)V

    .line 212
    const-string v8, "isShowNextAlarmPoint"

    const/4 v9, 0x1

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 214
    .local v3, "isShowNextAlarmPoint":Z
    iget-object v8, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mShowNextAlarmPointSettingView:Lcn/nubia/deskclock/ui/ShowNextAlarmPointSettingView;

    invoke-virtual {v8, v3}, Lcn/nubia/deskclock/ui/ShowNextAlarmPointSettingView;->setShowNextAlarmPointStatus(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .end local v1    # "isAlertIncreasing":Z
    .end local v2    # "isPowerOffAlarm":Z
    .end local v3    # "isShowNextAlarmPoint":Z
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "DeskClock:[AlarmSetting]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onRestoreInstanceState+e:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 217
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 216
    invoke-static {v8, v9}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onResume()V

    .line 75
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AlarmSettings;->loadData()V

    .line 76
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AlarmSettings;->updatePrefs()V

    .line 77
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 176
    if-eqz p1, :cond_0

    .line 177
    const-string v0, "isSnooze"

    iget-object v1, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mSnoozeView:Lcn/nubia/deskclock/ui/SnoozeSettingView;

    invoke-virtual {v1}, Lcn/nubia/deskclock/ui/SnoozeSettingView;->isSnoozeEnable()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 178
    const-string v0, "snoozeTime"

    iget-object v1, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mSnoozeView:Lcn/nubia/deskclock/ui/SnoozeSettingView;

    invoke-virtual {v1}, Lcn/nubia/deskclock/ui/SnoozeSettingView;->getSnoozeInterVal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 179
    const-string v0, "snoozeMaxCount"

    iget-object v1, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mSnoozeView:Lcn/nubia/deskclock/ui/SnoozeSettingView;

    invoke-virtual {v1}, Lcn/nubia/deskclock/ui/SnoozeSettingView;->getSnoozeTimes()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 180
    const-string v0, "vibrate"

    iget-object v1, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mAlarmTypeView:Lcn/nubia/deskclock/ui/AlarmTypeSettingView;

    invoke-virtual {v1}, Lcn/nubia/deskclock/ui/AlarmTypeSettingView;->isVibrate()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 181
    const-string v0, "isPowerOffAlarm"

    iget-object v1, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mPoweroffsetView:Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;

    invoke-virtual {v1}, Lcn/nubia/deskclock/ui/AlarmPowoffSettingView;->isPowoffAlarm()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 182
    const-string v0, "isAlertIncreasing"

    iget-object v1, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mAlertIncreasingSettingView:Lcn/nubia/deskclock/ui/AlertIncreasingSettingView;

    .line 183
    invoke-virtual {v1}, Lcn/nubia/deskclock/ui/AlertIncreasingSettingView;->isAlertIncreasing()Z

    move-result v1

    .line 182
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 184
    const-string v0, "isShowNextAlarmPoint"

    iget-object v1, p0, Lcn/nubia/deskclock/activity/AlarmSettings;->mShowNextAlarmPointSettingView:Lcn/nubia/deskclock/ui/ShowNextAlarmPointSettingView;

    .line 185
    invoke-virtual {v1}, Lcn/nubia/deskclock/ui/ShowNextAlarmPointSettingView;->isShowNextAlarmPoint()Z

    move-result v1

    .line 184
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 187
    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 188
    return-void
.end method
