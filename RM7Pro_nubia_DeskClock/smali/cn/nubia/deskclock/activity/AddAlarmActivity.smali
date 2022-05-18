.class public Lcn/nubia/deskclock/activity/AddAlarmActivity;
.super Landroid/app/Activity;
.source "AddAlarmActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcn/nubia/commonui/widget/TimePickerView$OnTimeChangeListener;
.implements Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$OnWeekSelecedListener;
.implements Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$StartActivityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deskclock/activity/AddAlarmActivity$MyBackgroundHandler;,
        Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread;
    }
.end annotation


# static fields
.field private static final ADD_ALARM_KEY_UMENG:Ljava/lang/String; = "add_alarm"

.field private static final ALARM_DETAIL_DATA:Ljava/lang/String; = "alarm_detail_data"

.field private static final MEDIA_COLUMNS:[Ljava/lang/String;

.field private static final MSG_GET_ALARM_RINGTONE_TITLE:I = 0x2

.field private static final MSG_GET_ALARM_TIME:I = 0x1

.field private static final MSG_GET_MUSICPICKER_INTENT:I = 0x3

.field private static final MSG_SAVE_ALARM:I = 0x0

.field private static final NEW_CLOCK_KEY_UMENG:Ljava/lang/String; = "new_clock"

.field private static final REQUEST_CODE_MUSIC_PICK:I = 0x1

.field private static final SILENT_ITEM:Ljava/lang/String; = "content://media/internal/audio/media/10000"

.field private static final TAG:Ljava/lang/String; = "AddAlarmActivity"


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mAlarm:Lcn/nubia/deskclock/model/Alarm;

.field private mAlarmNameView:Lcn/nubia/deskclock/ui/AlarmNameSettingView;

.field private mAlarmRingtoneView:Lcn/nubia/deskclock/ui/AlarmRingtonePicker;

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsNewAlarm:Z

.field private mNubiaCtaDialog:Lcn/nubia/deskclock/ui/NubiaCtaDialog;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mRepeatView:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

.field private mRevertButton:Landroid/widget/Button;

.field private mSaveButton:Landroid/widget/Button;

.field private mTimePicker:Lcn/nubia/commonui/widget/TimePickerView;

.field private mTimePickerText:Landroid/widget/TextView;

.field private mToast:Landroid/widget/Toast;

.field private mUri:Landroid/net/Uri;

.field private mValidateThread:Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 87
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->MEDIA_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mIsNewAlarm:Z

    .line 97
    iput-object v1, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mHandlerThread:Landroid/os/HandlerThread;

    .line 98
    iput-object v1, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mBackgroundHandler:Landroid/os/Handler;

    .line 103
    new-instance v0, Lcn/nubia/deskclock/activity/AddAlarmActivity$1;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/activity/AddAlarmActivity$1;-><init>(Lcn/nubia/deskclock/activity/AddAlarmActivity;)V

    iput-object v0, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/deskclock/activity/AddAlarmActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/AddAlarmActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->showTextToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/deskclock/activity/AddAlarmActivity;Landroid/content/Context;J)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/AddAlarmActivity;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # J

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->popAlarmSetToast(Landroid/content/Context;J)V

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/deskclock/activity/AddAlarmActivity;Lcn/nubia/commonui/widget/TimePickerView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/AddAlarmActivity;
    .param p1, "x1"    # Lcn/nubia/commonui/widget/TimePickerView;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->getAlarmTime(Lcn/nubia/commonui/widget/TimePickerView;)V

    return-void
.end method

.method static synthetic access$1100(Lcn/nubia/deskclock/activity/AddAlarmActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/AddAlarmActivity;

    .prologue
    .line 69
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->getMusicPickerIntent()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/deskclock/activity/AddAlarmActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/AddAlarmActivity;

    .prologue
    .line 69
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->updateToReyun()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/deskclock/activity/AddAlarmActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/AddAlarmActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mTimePickerText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->MEDIA_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/deskclock/activity/AddAlarmActivity;)Lcn/nubia/deskclock/model/Alarm;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/AddAlarmActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mAlarm:Lcn/nubia/deskclock/model/Alarm;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/deskclock/activity/AddAlarmActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/AddAlarmActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/deskclock/activity/AddAlarmActivity;)Lcn/nubia/deskclock/ui/AlarmRingtonePicker;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/AddAlarmActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mAlarmRingtoneView:Lcn/nubia/deskclock/ui/AlarmRingtonePicker;

    return-object v0
.end method

.method static synthetic access$802(Lcn/nubia/deskclock/activity/AddAlarmActivity;Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread;)Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/AddAlarmActivity;
    .param p1, "x1"    # Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread;

    .prologue
    .line 69
    iput-object p1, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mValidateThread:Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread;

    return-object p1
.end method

.method static synthetic access$900(Lcn/nubia/deskclock/activity/AddAlarmActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/AddAlarmActivity;

    .prologue
    .line 69
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->saveAlarmData()V

    return-void
.end method

.method private addLineHorizontal()V
    .locals 4

    .prologue
    .line 395
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 396
    .local v1, "lineH":Landroid/widget/ImageView;
    const v2, 0x7f020057

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 397
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 399
    .local v0, "layoutP":Landroid/view/ViewGroup$LayoutParams;
    return-void
.end method

.method private buildAlarmFromUi()Lcn/nubia/deskclock/model/Alarm;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 584
    new-instance v0, Lcn/nubia/deskclock/model/Alarm;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/model/Alarm;-><init>(Landroid/content/Context;)V

    .line 585
    .local v0, "alarm":Lcn/nubia/deskclock/model/Alarm;
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcn/nubia/deskclock/model/Alarm;->enabled:Z

    .line 586
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mTimePicker:Lcn/nubia/commonui/widget/TimePickerView;

    invoke-virtual {v3}, Lcn/nubia/commonui/widget/TimePickerView;->getCurrentHour()I

    move-result v3

    iput v3, v0, Lcn/nubia/deskclock/model/Alarm;->hour:I

    .line 587
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mTimePicker:Lcn/nubia/commonui/widget/TimePickerView;

    invoke-virtual {v3}, Lcn/nubia/commonui/widget/TimePickerView;->getCurrentMinute()I

    move-result v3

    iput v3, v0, Lcn/nubia/deskclock/model/Alarm;->minutes:I

    .line 588
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mRepeatView:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-virtual {v3}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->getDaysOfWeek()Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    move-result-object v3

    iput-object v3, v0, Lcn/nubia/deskclock/model/Alarm;->daysOfWeek:Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    .line 589
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mRepeatView:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-virtual {v3}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->getHolidayAlarm()Z

    move-result v3

    iput-boolean v3, v0, Lcn/nubia/deskclock/model/Alarm;->isHolidayAlarm:Z

    .line 590
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mAlarmRingtoneView:Lcn/nubia/deskclock/ui/AlarmRingtonePicker;

    invoke-virtual {v3}, Lcn/nubia/deskclock/ui/AlarmRingtonePicker;->isSlient()Z

    move-result v3

    iput-boolean v3, v0, Lcn/nubia/deskclock/model/Alarm;->silent:Z

    .line 591
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mAlarmRingtoneView:Lcn/nubia/deskclock/ui/AlarmRingtonePicker;

    invoke-virtual {v3}, Lcn/nubia/deskclock/ui/AlarmRingtonePicker;->getRingtone()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v0, Lcn/nubia/deskclock/model/Alarm;->alert:Landroid/net/Uri;

    .line 592
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mAlarmNameView:Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    invoke-virtual {v3}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->getAlarmName()Ljava/lang/String;

    move-result-object v2

    .line 593
    .local v2, "editable":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    .line 594
    .local v1, "alarmName":Ljava/lang/String;
    :goto_0
    iput-object v1, v0, Lcn/nubia/deskclock/model/Alarm;->label:Ljava/lang/String;

    .line 595
    iput v4, v0, Lcn/nubia/deskclock/model/Alarm;->snoozeCount:I

    .line 596
    iput v4, v0, Lcn/nubia/deskclock/model/Alarm;->cancelCount:I

    .line 597
    return-object v0

    .line 593
    .end local v1    # "alarmName":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private formatTimeToDate(J)Ljava/lang/String;
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 262
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 263
    .local v1, "sf":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 264
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getAlarmRepeate(Lcn/nubia/deskclock/model/Alarm;)Ljava/lang/String;
    .locals 3
    .param p1, "alarm"    # Lcn/nubia/deskclock/model/Alarm;

    .prologue
    .line 268
    const/4 v0, 0x0

    .line 269
    .local v0, "AlarmRepeate":Ljava/lang/String;
    iget-boolean v1, p1, Lcn/nubia/deskclock/model/Alarm;->isHolidayAlarm:Z

    if-nez v1, :cond_0

    .line 270
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v0, v1, v2

    .line 275
    :goto_0
    return-object v0

    .line 272
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcn/nubia/deskclock/model/Alarm;->daysOfWeek:Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    .line 273
    invoke-virtual {v2}, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->getBooleanArray()[Z

    move-result-object v2

    .line 272
    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/Utils;->updateWeekSelectAllDayView(Landroid/content/Context;[Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getAlarmTime(Lcn/nubia/commonui/widget/TimePickerView;)V
    .locals 8
    .param p1, "view"    # Lcn/nubia/commonui/widget/TimePickerView;

    .prologue
    const/4 v7, 0x1

    .line 891
    const-wide/16 v2, 0x0

    .line 892
    .local v2, "timeInMillis":J
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mRepeatView:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-virtual {v1}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->getHolidayAlarm()Z

    move-result v1

    if-nez v1, :cond_2

    .line 893
    invoke-virtual {p1}, Lcn/nubia/commonui/widget/TimePickerView;->getCurrentHour()I

    move-result v1

    .line 894
    invoke-virtual {p1}, Lcn/nubia/commonui/widget/TimePickerView;->getCurrentMinute()I

    move-result v4

    iget-object v5, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mRepeatView:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-virtual {v5}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->getDaysOfWeek()Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    move-result-object v5

    const/4 v6, 0x0

    .line 893
    invoke-static {p0, v1, v4, v5, v6}, Lcn/nubia/deskclock/model/Alarms;->calculateAlarm(Landroid/content/Context;IILcn/nubia/deskclock/model/Alarm$DaysOfWeek;Z)Ljava/util/Calendar;

    move-result-object v1

    .line 895
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 901
    :goto_0
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 902
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 903
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 905
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 906
    .local v0, "msg":Landroid/os/Message;
    iput v7, v0, Landroid/os/Message;->what:I

    .line 907
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 908
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 910
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    return-void

    .line 898
    :cond_2
    invoke-virtual {p1}, Lcn/nubia/commonui/widget/TimePickerView;->getCurrentHour()I

    move-result v1

    invoke-virtual {p1}, Lcn/nubia/commonui/widget/TimePickerView;->getCurrentMinute()I

    move-result v4

    iget-object v5, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mRepeatView:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    .line 899
    invoke-virtual {v5}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->getDaysOfWeek()Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    move-result-object v5

    .line 897
    invoke-static {p0, v1, v4, v5, v7}, Lcn/nubia/deskclock/model/Alarms;->calculateAlarm(Landroid/content/Context;IILcn/nubia/deskclock/model/Alarm$DaysOfWeek;Z)Ljava/util/Calendar;

    move-result-object v1

    .line 899
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    goto :goto_0
.end method

.method private getMusicPickerIntent()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    .line 856
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 857
    .local v2, "resultIntent":Landroid/content/Intent;
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->isNewMusicPickActionExist()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 858
    new-instance v1, Landroid/content/Intent;

    const-string v4, "cn.nubia.intent.action.NUBIA_MUSIC_PICK"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 859
    .local v1, "newIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 860
    const-string v4, "cn.nubia.intent.action.NUBIA_MUSIC_PICK"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 868
    .end local v1    # "newIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mAlarmRingtoneView:Lcn/nubia/deskclock/ui/AlarmRingtonePicker;

    invoke-virtual {v4}, Lcn/nubia/deskclock/ui/AlarmRingtonePicker;->getRingtone()Landroid/net/Uri;

    move-result-object v3

    .line 869
    .local v3, "ringtoneUri":Landroid/net/Uri;
    if-nez v3, :cond_1

    iget-object v4, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mAlarmRingtoneView:Lcn/nubia/deskclock/ui/AlarmRingtonePicker;

    invoke-virtual {v4}, Lcn/nubia/deskclock/ui/AlarmRingtonePicker;->isSlient()Z

    move-result v4

    if-nez v4, :cond_1

    .line 871
    invoke-static {v6}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 873
    :cond_1
    sget-object v4, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 874
    invoke-static {p0, v6}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    .line 877
    :cond_2
    iget-object v4, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mAlarmRingtoneView:Lcn/nubia/deskclock/ui/AlarmRingtonePicker;

    invoke-virtual {v4}, Lcn/nubia/deskclock/ui/AlarmRingtonePicker;->isSlient()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 878
    const/4 v3, 0x0

    .line 879
    :cond_3
    const-string v5, "URL_VALUE"

    if-nez v3, :cond_7

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 881
    const-string v4, "music_type"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 882
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 883
    .local v0, "msg":Landroid/os/Message;
    const/4 v4, 0x3

    iput v4, v0, Landroid/os/Message;->what:I

    .line 884
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 885
    iget-object v4, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_4

    .line 886
    iget-object v4, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 888
    :cond_4
    return-void

    .line 862
    .end local v0    # "msg":Landroid/os/Message;
    .end local v3    # "ringtoneUri":Landroid/net/Uri;
    .restart local v1    # "newIntent":Landroid/content/Intent;
    :cond_5
    const-string v4, "android.intent.action.NUBIA_MUSIC_PICK"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 864
    .end local v1    # "newIntent":Landroid/content/Intent;
    :cond_6
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->isMusicPickActionExist()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 865
    const-string v4, "android.intent.action.MUSIC_PICK"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 880
    .restart local v3    # "ringtoneUri":Landroid/net/Uri;
    :cond_7
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private getScreenOrientation()I
    .locals 1

    .prologue
    .line 633
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method private initActionBar(Lcn/nubia/deskclock/model/Alarm;)V
    .locals 2
    .param p1, "alarm"    # Lcn/nubia/deskclock/model/Alarm;

    .prologue
    .line 214
    const v1, 0x7f12004b

    invoke-virtual {p0, v1}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 215
    .local v0, "alarmTitle":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 216
    if-nez p1, :cond_1

    .line 217
    const v1, 0x7f0d0019

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    const v1, 0x7f0d0062

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private isMusicPickActionExist()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 292
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MUSIC_PICK"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 293
    .local v0, "mIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 294
    .local v1, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method private isNewMusicPickActionExist()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 279
    new-instance v1, Landroid/content/Intent;

    const-string v5, "cn.nubia.intent.action.NUBIA_MUSIC_PICK"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 280
    .local v1, "newIntent":Landroid/content/Intent;
    const/4 v0, 0x0

    .line 281
    .local v0, "mIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 282
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "mIntent":Landroid/content/Intent;
    const-string v5, "cn.nubia.intent.action.NUBIA_MUSIC_PICK"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 287
    .restart local v0    # "mIntent":Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 288
    .local v2, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v3, :cond_1

    :goto_1
    return v3

    .line 284
    .end local v2    # "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "mIntent":Landroid/content/Intent;
    const-string v5, "android.intent.action.NUBIA_MUSIC_PICK"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0    # "mIntent":Landroid/content/Intent;
    goto :goto_0

    .restart local v2    # "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    move v3, v4

    .line 288
    goto :goto_1
.end method

.method private popAlarmSetToast(Landroid/content/Context;J)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "timeInMillis"    # J

    .prologue
    .line 620
    invoke-static {p1, p2, p3}, Lcn/nubia/deskclock/util/AlarmUtils;->formatToast(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 621
    .local v0, "toastText":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->showTextToast(Ljava/lang/String;)V

    .line 622
    return-void
.end method

.method private saveAlarm(Lcn/nubia/deskclock/model/Alarm;)J
    .locals 4
    .param p1, "alarm"    # Lcn/nubia/deskclock/model/Alarm;

    .prologue
    .line 573
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->updateAlarm(Lcn/nubia/deskclock/model/Alarm;)V

    .line 575
    iget v2, p1, Lcn/nubia/deskclock/model/Alarm;->id:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 576
    invoke-static {p0, p1}, Lcn/nubia/deskclock/model/Alarms;->addAlarm(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)J

    move-result-wide v0

    .line 580
    .local v0, "time":J
    :goto_0
    return-wide v0

    .line 578
    .end local v0    # "time":J
    :cond_0
    invoke-static {p0, p1}, Lcn/nubia/deskclock/model/Alarms;->setAlarm(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)J

    move-result-wide v0

    .restart local v0    # "time":J
    goto :goto_0
.end method

.method private saveAlarmData()V
    .locals 6

    .prologue
    .line 835
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/deskclock/util/Utils;->isAlarmKlaxonRunning(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 853
    :cond_0
    :goto_0
    return-void

    .line 838
    :cond_1
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mAlarm:Lcn/nubia/deskclock/model/Alarm;

    const-wide/16 v4, 0x1

    invoke-virtual {v1, v4, v5}, Lcn/nubia/deskclock/model/Alarm;->setEnableRecentAlarm(J)V

    .line 839
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mAlarm:Lcn/nubia/deskclock/model/Alarm;

    invoke-direct {p0, v1}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->updateAlarm(Lcn/nubia/deskclock/model/Alarm;)V

    .line 840
    const-wide/16 v2, 0x0

    .line 841
    .local v2, "time":J
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v4, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mAlarm:Lcn/nubia/deskclock/model/Alarm;

    invoke-static {v1, v4}, Lcn/nubia/deskclock/model/Alarms;->hasSameTime(Landroid/content/ContentResolver;Lcn/nubia/deskclock/model/Alarm;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 842
    const-wide/16 v2, 0x0

    .line 846
    :goto_1
    const-string v1, "AddAlarmActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveAlarmData: time : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 848
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 849
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 850
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 851
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 844
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mAlarm:Lcn/nubia/deskclock/model/Alarm;

    invoke-direct {p0, v1}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->saveAlarm(Lcn/nubia/deskclock/model/Alarm;)J

    move-result-wide v2

    goto :goto_1
.end method

.method private setAlarmNameLayoutParams(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v6, 0xf

    const/4 v5, 0x0

    .line 422
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 423
    .local v2, "screenWidth":I
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0044

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    .line 425
    .local v0, "padding":I
    const/4 v1, 0x0

    .line 427
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v3, 0x2

    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->getScreenOrientation()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 428
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    mul-int/lit8 v3, v2, 0x9

    div-int/lit8 v3, v3, 0x11

    const/16 v4, 0x168

    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 429
    .restart local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1, v6, v5, v6, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 430
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    const/4 v3, 0x1

    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->getScreenOrientation()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 432
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 433
    .restart local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1, v0, v5, v0, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 434
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private setLayoutParams(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v7, 0xf

    const/4 v6, 0x0

    .line 403
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 404
    .local v3, "screenWidth":I
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0042

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v0, v4

    .line 405
    .local v0, "minHeight":I
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0044

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v1, v4

    .line 407
    .local v1, "padding":I
    const/4 v2, 0x0

    .line 409
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, 0x2

    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->getScreenOrientation()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 410
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .end local v2    # "params":Landroid/view/ViewGroup$LayoutParams;
    mul-int/lit8 v4, v3, 0x9

    div-int/lit8 v4, v4, 0x11

    const/16 v5, 0x168

    invoke-direct {v2, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 411
    .restart local v2    # "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1, v7, v6, v7, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 412
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    const/4 v4, 0x1

    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->getScreenOrientation()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 414
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .end local v2    # "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v2, v3, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 415
    .restart local v2    # "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1, v1, v6, v1, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 416
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private setTimePickerTextHeight()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 203
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v2, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 204
    .local v2, "locale":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "language":Ljava/lang/String;
    const-string v3, "ru"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 206
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mTimePickerText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 207
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 208
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mTimePickerText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mTimePickerText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHeight(I)V

    .line 211
    .end local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method private showTextToast(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 684
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mToast:Landroid/widget/Toast;

    if-eqz v1, :cond_0

    .line 685
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 687
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mToast:Landroid/widget/Toast;

    .line 688
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    .line 689
    .local v0, "mNextView":Landroid/view/View;
    const-string v1, "AddAlarmActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showTextToast: mNextView : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ;; Toast : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 691
    return-void
.end method

.method private showWaringDialog()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 789
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 790
    .local v1, "permissionInCtsDialog":Ljava/lang/StringBuffer;
    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v4, v2, v3

    const/4 v4, 0x1

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v5, v2, v4

    .line 791
    .local v2, "permissions":[Ljava/lang/String;
    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    .line 792
    .local v0, "permission":Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 793
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0052

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 794
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v5

    invoke-static {v5, v0}, Lcn/nubia/deskclock/util/PermissionRequestUtil;->getPermissionShowInCtsDialog(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 791
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 798
    .end local v0    # "permission":Ljava/lang/String;
    :cond_1
    invoke-static {v1, p0}, Lcn/nubia/deskclock/util/PermissionRequestUtil;->showWarningDialog(Ljava/lang/StringBuffer;Landroid/app/Activity;)V

    .line 799
    return-void
.end method

.method private startMusicPicker()V
    .locals 2

    .prologue
    .line 761
    const-string v0, "AddAlarmActivity"

    const-string v1, "startMusicPicker: "

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/deskclock/util/Utils;->isAlarmKlaxonRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 768
    :cond_0
    :goto_0
    return-void

    .line 765
    :cond_1
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mBackgroundHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mBackgroundHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private updateAlarm(Lcn/nubia/deskclock/model/Alarm;)V
    .locals 5
    .param p1, "alarm"    # Lcn/nubia/deskclock/model/Alarm;

    .prologue
    const/4 v4, 0x0

    .line 601
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcn/nubia/deskclock/model/Alarm;->enabled:Z

    .line 602
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mTimePicker:Lcn/nubia/commonui/widget/TimePickerView;

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/TimePickerView;->getCurrentHour()I

    move-result v1

    iput v1, p1, Lcn/nubia/deskclock/model/Alarm;->hour:I

    .line 603
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mTimePicker:Lcn/nubia/commonui/widget/TimePickerView;

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/TimePickerView;->getCurrentMinute()I

    move-result v1

    iput v1, p1, Lcn/nubia/deskclock/model/Alarm;->minutes:I

    .line 604
    const-string v1, "AddAlarmActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alarm.daysOfWeek"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcn/nubia/deskclock/model/Alarm;->daysOfWeek:Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mRepeatView:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-virtual {v1}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->getDaysOfWeek()Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    move-result-object v1

    iput-object v1, p1, Lcn/nubia/deskclock/model/Alarm;->daysOfWeek:Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    .line 606
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mRepeatView:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-virtual {v1}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->getHolidayAlarm()Z

    move-result v1

    iput-boolean v1, p1, Lcn/nubia/deskclock/model/Alarm;->isHolidayAlarm:Z

    .line 607
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mAlarmRingtoneView:Lcn/nubia/deskclock/ui/AlarmRingtonePicker;

    invoke-virtual {v1}, Lcn/nubia/deskclock/ui/AlarmRingtonePicker;->getRingtone()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p1, Lcn/nubia/deskclock/model/Alarm;->alert:Landroid/net/Uri;

    .line 608
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mAlarmRingtoneView:Lcn/nubia/deskclock/ui/AlarmRingtonePicker;

    invoke-virtual {v1}, Lcn/nubia/deskclock/ui/AlarmRingtonePicker;->isSlient()Z

    move-result v1

    iput-boolean v1, p1, Lcn/nubia/deskclock/model/Alarm;->silent:Z

    .line 609
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mAlarmNameView:Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    invoke-virtual {v1}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->getTextviewAlarmNameTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 610
    .local v0, "tmpLabel":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "isCustomLabel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 611
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mAlarmNameView:Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    invoke-virtual {v1}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->getAlarmName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcn/nubia/deskclock/model/Alarm;->label:Ljava/lang/String;

    .line 615
    :goto_0
    iput v4, p1, Lcn/nubia/deskclock/model/Alarm;->snoozeCount:I

    .line 616
    iput v4, p1, Lcn/nubia/deskclock/model/Alarm;->cancelCount:I

    .line 617
    return-void

    .line 613
    :cond_0
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mAlarmNameView:Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    invoke-virtual {v1}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->getAlarmName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcn/nubia/deskclock/model/Alarm;->label:Ljava/lang/String;

    goto :goto_0
.end method

.method private updateAlarmTypeView(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 625
    if-nez p1, :cond_0

    .line 626
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mAlarmRingtoneView:Lcn/nubia/deskclock/ui/AlarmRingtonePicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/AlarmRingtonePicker;->setSilent(Z)V

    .line 630
    :goto_0
    return-void

    .line 628
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mAlarmRingtoneView:Lcn/nubia/deskclock/ui/AlarmRingtonePicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/AlarmRingtonePicker;->setSilent(Z)V

    goto :goto_0
.end method

.method private updatePrefs(Lcn/nubia/deskclock/model/Alarm;)V
    .locals 7
    .param p1, "alarm"    # Lcn/nubia/deskclock/model/Alarm;

    .prologue
    const/4 v6, 0x0

    .line 472
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mTimePicker:Lcn/nubia/commonui/widget/TimePickerView;

    iget v4, p1, Lcn/nubia/deskclock/model/Alarm;->hour:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/widget/TimePickerView;->setCurrentHour(Ljava/lang/Integer;)V

    .line 473
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mTimePicker:Lcn/nubia/commonui/widget/TimePickerView;

    iget v4, p1, Lcn/nubia/deskclock/model/Alarm;->minutes:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/widget/TimePickerView;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 474
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mRepeatView:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    iget-object v4, p1, Lcn/nubia/deskclock/model/Alarm;->daysOfWeek:Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    invoke-virtual {v3, v4}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->setDaysOfWeek(Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;)V

    .line 475
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mRepeatView:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-virtual {p1}, Lcn/nubia/deskclock/model/Alarm;->getHolidayAlarm()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->setHolidayAlarm(Z)V

    .line 476
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mAlarmRingtoneView:Lcn/nubia/deskclock/ui/AlarmRingtonePicker;

    iget-boolean v4, p1, Lcn/nubia/deskclock/model/Alarm;->silent:Z

    invoke-virtual {v3, v4}, Lcn/nubia/deskclock/ui/AlarmRingtonePicker;->setSilent(Z)V

    .line 477
    const/4 v2, 0x0

    .line 479
    .local v2, "repeatLabel":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 480
    if-eqz v2, :cond_1

    .line 481
    const/4 v3, 0x0

    aget-object v3, v2, v3

    iget-object v4, p1, Lcn/nubia/deskclock/model/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    aget-object v3, v2, v3

    iget-object v4, p1, Lcn/nubia/deskclock/model/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x2

    aget-object v3, v2, v3

    iget-object v4, p1, Lcn/nubia/deskclock/model/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 482
    :cond_0
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mAlarmNameView:Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    iget-object v4, p1, Lcn/nubia/deskclock/model/Alarm;->label:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->setAlarmName(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 492
    :cond_1
    :goto_0
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mTimePicker:Lcn/nubia/commonui/widget/TimePickerView;

    invoke-virtual {p0, v3, v6, v6}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->onTimeChanged(Lcn/nubia/commonui/widget/TimePickerView;II)V

    .line 493
    const-string v3, "AddAlarmActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePrefs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mAlarm:Lcn/nubia/deskclock/model/Alarm;

    iget-object v5, v5, Lcn/nubia/deskclock/model/Alarm;->alert:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    new-instance v3, Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread;

    iget-object v4, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mAlarm:Lcn/nubia/deskclock/model/Alarm;

    iget-object v4, v4, Lcn/nubia/deskclock/model/Alarm;->alert:Landroid/net/Uri;

    invoke-direct {v3, p0, v4}, Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread;-><init>(Lcn/nubia/deskclock/activity/AddAlarmActivity;Landroid/net/Uri;)V

    iput-object v3, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mValidateThread:Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread;

    .line 496
    :try_start_1
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mValidateThread:Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread;

    invoke-virtual {v3}, Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 500
    :goto_1
    return-void

    .line 484
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mAlarmNameView:Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    iget-object v4, p1, Lcn/nubia/deskclock/model/Alarm;->label:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->setAlarmName(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 487
    :catch_0
    move-exception v1

    .line 488
    .local v1, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0

    .line 489
    .end local v1    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 490
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 497
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 498
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1
.end method

.method private updateToReyun()V
    .locals 8

    .prologue
    .line 252
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 253
    .local v2, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v5, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mAlarm:Lcn/nubia/deskclock/model/Alarm;

    iget-wide v6, v5, Lcn/nubia/deskclock/model/Alarm;->time:J

    invoke-direct {p0, v6, v7}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->formatTimeToDate(J)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "alarmTime":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->formatTimeToDate(J)Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "currenttime":Ljava/lang/String;
    iget-object v5, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mAlarm:Lcn/nubia/deskclock/model/Alarm;

    iget-object v3, v5, Lcn/nubia/deskclock/model/Alarm;->label:Ljava/lang/String;

    .line 256
    .local v3, "label":Ljava/lang/String;
    iget-object v5, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mAlarm:Lcn/nubia/deskclock/model/Alarm;

    invoke-direct {p0, v5}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->getAlarmRepeate(Lcn/nubia/deskclock/model/Alarm;)Ljava/lang/String;

    move-result-object v4

    .line 257
    .local v4, "repeat":Ljava/lang/String;
    const-string v5, "new_clock"

    invoke-static {p0, v5}, Lcn/nubia/deskclock/util/ReyunUtils;->trackCustomEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 258
    invoke-static {p0, v0, v1, v3, v4}, Lcn/nubia/deskclock/util/ReyunUtils;->trackCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    return-void
.end method


# virtual methods
.method public beginStartActivity()V
    .locals 4

    .prologue
    .line 658
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcn/nubia/deskclock/ui/WeekSelectActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 659
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 660
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "alarm_repeat_selected_index"

    iget-object v3, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mRepeatView:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-virtual {v3}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->getSelectedDayIndex()[Z

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 661
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 662
    const/16 v2, 0x1f5

    invoke-virtual {p0, v1, v2}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 663
    return-void
.end method

.method public checkAndRequestPermissions()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 694
    const/4 v3, 0x0

    .line 695
    .local v3, "permissions":[Ljava/lang/String;
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->needCheckPowerOffAlarmPermission()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 696
    new-array v3, v6, [Ljava/lang/String;

    .end local v3    # "permissions":[Ljava/lang/String;
    const-string v5, "org.codeaurora.permission.POWER_OFF_ALARM"

    aput-object v5, v3, v7

    .line 700
    .restart local v3    # "permissions":[Ljava/lang/String;
    const/4 v0, 0x1

    .line 701
    .local v0, "checkPermissionsResult":Z
    const/4 v4, 0x0

    .line 703
    .local v4, "requestPermissionRationale":Z
    array-length v9, v3

    move v8, v7

    :goto_0
    if-ge v8, v9, :cond_1

    aget-object v1, v3, v8

    .line 704
    .local v1, "permission":Ljava/lang/String;
    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    move v5, v6

    :goto_1
    and-int/2addr v0, v5

    .line 705
    invoke-static {p0, v1}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v5

    or-int/2addr v4, v5

    .line 703
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    goto :goto_0

    :cond_0
    move v5, v7

    .line 704
    goto :goto_1

    .line 708
    .end local v1    # "permission":Ljava/lang/String;
    :cond_1
    if-ne v0, v6, :cond_3

    .line 722
    .end local v0    # "checkPermissionsResult":Z
    .end local v4    # "requestPermissionRationale":Z
    :cond_2
    :goto_2
    return-void

    .line 711
    .restart local v0    # "checkPermissionsResult":Z
    .restart local v4    # "requestPermissionRationale":Z
    :cond_3
    invoke-static {p0}, Lcn/nubia/deskclock/util/Utils;->isFirstLaunch(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_6

    if-nez v4, :cond_6

    .line 712
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 713
    .local v2, "permissionInCtsDialog":Ljava/lang/StringBuffer;
    array-length v5, v3

    :goto_3
    if-ge v7, v5, :cond_5

    aget-object v1, v3, v7

    .line 714
    .restart local v1    # "permission":Ljava/lang/String;
    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_4

    .line 715
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v6

    invoke-static {v6, v1}, Lcn/nubia/deskclock/util/PermissionRequestUtil;->getPermissionShowInCtsDialog(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 713
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 718
    .end local v1    # "permission":Ljava/lang/String;
    :cond_5
    invoke-static {v2, p0}, Lcn/nubia/deskclock/util/PermissionRequestUtil;->showWarningDialog(Ljava/lang/StringBuffer;Landroid/app/Activity;)V

    goto :goto_2

    .line 720
    .end local v2    # "permissionInCtsDialog":Ljava/lang/StringBuffer;
    :cond_6
    invoke-static {p0}, Lcn/nubia/deskclock/util/PermissionRequestUtil;->requestPermissions(Landroid/app/Activity;)V

    goto :goto_2
.end method

.method public checkAndRequestSdcardPermissions()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 771
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v3, v2, v5

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v2, v4

    .line 773
    .local v2, "permissions":[Ljava/lang/String;
    const/4 v0, 0x1

    .line 775
    .local v0, "checkPermissionsResult":Z
    array-length v7, v2

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v1, v2, v6

    .line 776
    .local v1, "permission":Ljava/lang/String;
    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    move v3, v4

    :goto_1
    and-int/2addr v0, v3

    .line 775
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_0

    :cond_0
    move v3, v5

    .line 776
    goto :goto_1

    .line 778
    .end local v1    # "permission":Ljava/lang/String;
    :cond_1
    const-string v3, "AddAlarmActivity"

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

    .line 779
    if-ne v0, v4, :cond_3

    .line 780
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->startMusicPicker()V

    .line 786
    :cond_2
    :goto_2
    return-void

    .line 783
    :cond_3
    invoke-static {p0}, Lcn/nubia/deskclock/util/Utils;->isFirstLaunch(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 784
    invoke-static {p0}, Lcn/nubia/deskclock/util/PermissionRequestUtil;->requestSdcardPermissions(Landroid/app/Activity;)V

    goto :goto_2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    .line 440
    if-ne p1, v5, :cond_4

    const/4 v3, -0x1

    if-ne p2, v3, :cond_4

    .line 441
    const/4 v2, 0x0

    .line 442
    .local v2, "ringtoneUri":Landroid/net/Uri;
    if-eqz p3, :cond_1

    .line 443
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 444
    if-nez v2, :cond_0

    .line 445
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mAlarmRingtoneView:Lcn/nubia/deskclock/ui/AlarmRingtonePicker;

    invoke-virtual {v3}, Lcn/nubia/deskclock/ui/AlarmRingtonePicker;->getRingtone()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mUri:Landroid/net/Uri;

    .line 447
    :cond_0
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mAlarmRingtoneView:Lcn/nubia/deskclock/ui/AlarmRingtonePicker;

    iget-object v4, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v2}, Lcn/nubia/deskclock/ui/AlarmRingtonePicker;->setRingtone(Landroid/os/Handler;Landroid/net/Uri;)V

    .line 448
    if-nez v2, :cond_3

    .line 449
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mAlarmRingtoneView:Lcn/nubia/deskclock/ui/AlarmRingtonePicker;

    invoke-virtual {v3, v5}, Lcn/nubia/deskclock/ui/AlarmRingtonePicker;->setSilent(Z)V

    .line 450
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mAlarm:Lcn/nubia/deskclock/model/Alarm;

    iput-boolean v5, v3, Lcn/nubia/deskclock/model/Alarm;->silent:Z

    .line 455
    :cond_1
    :goto_0
    invoke-direct {p0, v2}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->updateAlarmTypeView(Landroid/net/Uri;)V

    .line 468
    .end local v2    # "ringtoneUri":Landroid/net/Uri;
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 469
    return-void

    .line 452
    .restart local v2    # "ringtoneUri":Landroid/net/Uri;
    :cond_3
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mAlarmRingtoneView:Lcn/nubia/deskclock/ui/AlarmRingtonePicker;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcn/nubia/deskclock/ui/AlarmRingtonePicker;->setSilent(Z)V

    goto :goto_0

    .line 457
    .end local v2    # "ringtoneUri":Landroid/net/Uri;
    :cond_4
    const/16 v3, 0x1f5

    if-ne p1, v3, :cond_2

    const/16 v3, 0x1f6

    if-ne p2, v3, :cond_2

    .line 459
    const-string v3, "AddAlarmActivity"

    const-string v4, "onActivityResult = "

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string v3, "alarm_repeat_selected_index"

    .line 461
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getBooleanArrayExtra(Ljava/lang/String;)[Z

    move-result-object v1

    .line 462
    .local v1, "intentdatadate":[Z
    const-string v3, "AddAlarmActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActivityResult = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v3, v1

    if-ge v0, v3, :cond_5

    .line 464
    const-string v3, "AddAlarmActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActivityResult = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-boolean v5, v1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 466
    :cond_5
    iget-object v3, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mRepeatView:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-virtual {v3, v1}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->setSelectedDayIndex([Z)V

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 569
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->finish()V

    .line 570
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 226
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 227
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 249
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 229
    :pswitch_1
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->checkAndRequestSdcardPermissions()V

    goto :goto_0

    .line 233
    :pswitch_2
    const-string v1, "AddAlarmActivity"

    const-string v2, "onClick: alarm_save"

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mBackgroundHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 238
    :cond_1
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 243
    :pswitch_3
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->finish()V

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x7f120054
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 145
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 146
    invoke-virtual {p0, v8}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->requestWindowFeature(I)Z

    .line 147
    invoke-static {p0}, Lcn/nubia/deskclock/util/Utils;->isSingleReverseOpen(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 148
    const v4, 0x7f040018

    invoke-virtual {p0, v4}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->setContentView(I)V

    .line 152
    :goto_0
    const-string v4, "AddAlarmActivity"

    const-string v5, "onCreate: "

    invoke-static {v4, v5}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-static {p0}, Lcn/nubia/deskclock/util/Utils;->GrayStatusBar(Landroid/app/Activity;)V

    .line 154
    invoke-virtual {p0, v9}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->setVolumeControlStream(I)V

    .line 155
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 156
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "addAlarmThread"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mHandlerThread:Landroid/os/HandlerThread;

    .line 157
    iget-object v4, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 158
    sget-object v4, Lcn/nubia/deskclock/util/Utils;->chineseHolidayMap:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    sget-object v4, Lcn/nubia/deskclock/util/Utils;->chineseWeekendWorkMap:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    .line 159
    invoke-static {v7}, Lcn/nubia/deskclock/model/holiday/ParseXml;->setmCheckHolidayData(Z)V

    .line 160
    const-string v4, "AddAlarmActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcn/nubia/deskclock/model/holiday/ParseXml;->getmCheckHolidayData()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_0
    new-instance v4, Lcn/nubia/deskclock/activity/AddAlarmActivity$MyBackgroundHandler;

    iget-object v5, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcn/nubia/deskclock/activity/AddAlarmActivity$MyBackgroundHandler;-><init>(Lcn/nubia/deskclock/activity/AddAlarmActivity;Landroid/os/Looper;)V

    iput-object v4, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mBackgroundHandler:Landroid/os/Handler;

    .line 163
    const v4, 0x7f120051

    invoke-virtual {p0, v4}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mTimePickerText:Landroid/widget/TextView;

    .line 165
    const v4, 0x7f120050

    invoke-virtual {p0, v4}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcn/nubia/commonui/widget/TimePickerView;

    iput-object v4, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mTimePicker:Lcn/nubia/commonui/widget/TimePickerView;

    .line 166
    iget-object v4, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mTimePicker:Lcn/nubia/commonui/widget/TimePickerView;

    invoke-virtual {v4, p0}, Lcn/nubia/commonui/widget/TimePickerView;->setOnTimeChangedListener(Lcn/nubia/commonui/widget/TimePickerView$OnTimeChangeListener;)V

    .line 167
    const v4, 0x7f120052

    invoke-virtual {p0, v4}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    iput-object v4, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mRepeatView:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    .line 168
    iget-object v4, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mRepeatView:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-virtual {v4, p0}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->setOnWeekSelecedListener(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$OnWeekSelecedListener;)V

    .line 169
    iget-object v4, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mRepeatView:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-virtual {v4, p0}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->setOnStartActivityListener(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$StartActivityListener;)V

    .line 170
    const v4, 0x7f120054

    invoke-virtual {p0, v4}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcn/nubia/deskclock/ui/AlarmRingtonePicker;

    iput-object v4, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mAlarmRingtoneView:Lcn/nubia/deskclock/ui/AlarmRingtonePicker;

    .line 171
    iget-object v4, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mAlarmRingtoneView:Lcn/nubia/deskclock/ui/AlarmRingtonePicker;

    invoke-virtual {v4}, Lcn/nubia/deskclock/ui/AlarmRingtonePicker;->setSummaryViewDefault()V

    .line 172
    const v4, 0x7f120053

    invoke-virtual {p0, v4}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    iput-object v4, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mAlarmNameView:Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    .line 173
    iget-object v4, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mAlarmRingtoneView:Lcn/nubia/deskclock/ui/AlarmRingtonePicker;

    invoke-virtual {v4, p0}, Lcn/nubia/deskclock/ui/AlarmRingtonePicker;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    const v4, 0x7f120057

    invoke-virtual {p0, v4}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mSaveButton:Landroid/widget/Button;

    .line 175
    const v4, 0x7f120056

    invoke-virtual {p0, v4}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mRevertButton:Landroid/widget/Button;

    .line 176
    iget-object v4, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v4, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mRevertButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 180
    .local v3, "i":Landroid/content/Intent;
    const-string v4, "intent.extra.alarm"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/model/Alarm;

    .line 181
    .local v0, "alarm":Lcn/nubia/deskclock/model/Alarm;
    invoke-direct {p0, v0}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->initActionBar(Lcn/nubia/deskclock/model/Alarm;)V

    .line 183
    if-nez v0, :cond_2

    .line 185
    iput-boolean v8, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mIsNewAlarm:Z

    .line 186
    new-instance v0, Lcn/nubia/deskclock/model/Alarm;

    .end local v0    # "alarm":Lcn/nubia/deskclock/model/Alarm;
    invoke-direct {v0, p0}, Lcn/nubia/deskclock/model/Alarm;-><init>(Landroid/content/Context;)V

    .line 187
    .restart local v0    # "alarm":Lcn/nubia/deskclock/model/Alarm;
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v7

    iput-object v4, v0, Lcn/nubia/deskclock/model/Alarm;->label:Ljava/lang/String;

    .line 188
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 189
    .local v2, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v2, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 190
    .local v1, "alarmVolume":I
    iput v1, v0, Lcn/nubia/deskclock/model/Alarm;->volumeValue:I

    .line 195
    .end local v1    # "alarmVolume":I
    .end local v2    # "audioManager":Landroid/media/AudioManager;
    :goto_1
    iput-object v0, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mAlarm:Lcn/nubia/deskclock/model/Alarm;

    .line 196
    iget-object v4, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mAlarm:Lcn/nubia/deskclock/model/Alarm;

    invoke-direct {p0, v4}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->updatePrefs(Lcn/nubia/deskclock/model/Alarm;)V

    .line 197
    const v4, 0x7f12004c

    invoke-virtual {p0, v4}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 198
    new-instance v4, Lcn/nubia/deskclock/ui/NubiaCtaDialog;

    invoke-direct {v4}, Lcn/nubia/deskclock/ui/NubiaCtaDialog;-><init>()V

    iput-object v4, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mNubiaCtaDialog:Lcn/nubia/deskclock/ui/NubiaCtaDialog;

    .line 199
    iget-object v4, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mNubiaCtaDialog:Lcn/nubia/deskclock/ui/NubiaCtaDialog;

    const/4 v5, 0x0

    invoke-virtual {v4, p0, v5}, Lcn/nubia/deskclock/ui/NubiaCtaDialog;->showCtaDialog(Landroid/content/Context;Lcn/nubia/deskclock/inter/INubiaCtaCallback;)V

    .line 200
    return-void

    .line 150
    .end local v0    # "alarm":Lcn/nubia/deskclock/model/Alarm;
    .end local v3    # "i":Landroid/content/Intent;
    :cond_1
    const v4, 0x7f040017

    invoke-virtual {p0, v4}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->setContentView(I)V

    goto/16 :goto_0

    .line 192
    .restart local v0    # "alarm":Lcn/nubia/deskclock/model/Alarm;
    .restart local v3    # "i":Landroid/content/Intent;
    :cond_2
    iput-boolean v7, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mIsNewAlarm:Z

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 360
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 361
    const-string v0, "AddAlarmActivity"

    const-string v1, "onDestroy: "

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mAlarmRingtoneView:Lcn/nubia/deskclock/ui/AlarmRingtonePicker;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mAlarmRingtoneView:Lcn/nubia/deskclock/ui/AlarmRingtonePicker;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/AlarmRingtonePicker;->clearThreadIfPossiable()V

    .line 365
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mValidateThread:Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread;

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mValidateThread:Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread;

    invoke-virtual {v0}, Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread;->waitForCancel()V

    .line 367
    iput-object v2, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mValidateThread:Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread;

    .line 369
    :cond_1
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mRepeatView:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    if-eqz v0, :cond_2

    .line 370
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mRepeatView:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->release()V

    .line 372
    :cond_2
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mAlarmNameView:Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    if-eqz v0, :cond_3

    .line 373
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mAlarmNameView:Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->release()V

    .line 375
    :cond_3
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mNubiaCtaDialog:Lcn/nubia/deskclock/ui/NubiaCtaDialog;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/NubiaCtaDialog;->dismissDialog()V

    .line 376
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_4

    .line 377
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 379
    :cond_4
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mBackgroundHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 380
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 381
    iput-object v2, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mBackgroundHandler:Landroid/os/Handler;

    .line 383
    :cond_5
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_6

    .line 384
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 385
    iput-object v2, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mHandler:Landroid/os/Handler;

    .line 387
    :cond_6
    iput-object v2, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mNubiaCtaDialog:Lcn/nubia/deskclock/ui/NubiaCtaDialog;

    .line 388
    const/4 v0, 0x0

    invoke-static {v0}, Lcn/nubia/deskclock/model/holiday/ParseXml;->setmParseXmlError(Z)V

    .line 389
    invoke-static {}, Lcn/nubia/deskclock/model/holiday/ParseXml;->getmCheckHolidayData()Z

    move-result v0

    if-nez v0, :cond_7

    .line 390
    const/4 v0, 0x1

    invoke-static {v0}, Lcn/nubia/deskclock/model/holiday/ParseXml;->setmCheckHolidayData(Z)V

    .line 392
    :cond_7
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 676
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 677
    const-string v0, "AddAlarmActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    invoke-static {}, Lcn/nubia/deskclock/model/holiday/ParseXml;->getmCheckHolidayData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 679
    const/4 v0, 0x1

    invoke-static {v0}, Lcn/nubia/deskclock/model/holiday/ParseXml;->setmCheckHolidayData(Z)V

    .line 681
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v2, 0x0

    .line 726
    const-string v3, "AddAlarmActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ---- onRequestPermissionsResult --- requestCode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    const/16 v3, 0x14

    if-ne p1, v3, :cond_2

    .line 728
    const/4 v1, 0x1

    .line 729
    .local v1, "requestResult":Z
    array-length v3, p3

    :goto_0
    if-ge v2, v3, :cond_0

    aget v0, p3, v2

    .line 730
    .local v0, "i":I
    if-eqz v0, :cond_1

    .line 731
    const/4 v1, 0x0

    .line 735
    .end local v0    # "i":I
    :cond_0
    const-string v2, "AddAlarmActivity"

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

    .line 736
    if-eqz v1, :cond_6

    .line 758
    .end local v1    # "requestResult":Z
    :goto_1
    return-void

    .line 729
    .restart local v0    # "i":I
    .restart local v1    # "requestResult":Z
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 741
    .end local v0    # "i":I
    .end local v1    # "requestResult":Z
    :cond_2
    const/16 v3, 0x15

    if-ne p1, v3, :cond_6

    .line 742
    const/4 v1, 0x1

    .line 743
    .restart local v1    # "requestResult":Z
    array-length v3, p3

    :goto_2
    if-ge v2, v3, :cond_3

    aget v0, p3, v2

    .line 744
    .restart local v0    # "i":I
    if-eqz v0, :cond_4

    .line 745
    const/4 v1, 0x0

    .line 749
    .end local v0    # "i":I
    :cond_3
    const-string v2, "AddAlarmActivity"

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

    .line 750
    if-eqz v1, :cond_5

    .line 751
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->startMusicPicker()V

    goto :goto_1

    .line 743
    .restart local v0    # "i":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 754
    .end local v0    # "i":I
    :cond_5
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->showWaringDialog()V

    .line 757
    .end local v1    # "requestResult":Z
    :cond_6
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 321
    if-eqz p1, :cond_2

    .line 322
    :try_start_0
    const-string v10, "hour"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 323
    .local v2, "hour":I
    const-string v10, "minute"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 324
    .local v6, "minute":I
    iget-object v10, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mTimePicker:Lcn/nubia/commonui/widget/TimePickerView;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcn/nubia/commonui/widget/TimePickerView;->setCurrentHour(Ljava/lang/Integer;)V

    .line 325
    iget-object v10, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mTimePicker:Lcn/nubia/commonui/widget/TimePickerView;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcn/nubia/commonui/widget/TimePickerView;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 327
    const-string v10, "daysOfWeek"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 328
    .local v8, "repeatCode":I
    new-instance v7, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    invoke-direct {v7, v8}, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;-><init>(I)V

    .line 329
    .local v7, "repeat":Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;
    iget-object v10, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mRepeatView:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-virtual {v10, v7}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->setDaysOfWeek(Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;)V

    .line 331
    const-string v10, "alert"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 332
    .local v9, "uriStr":Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 333
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 334
    .local v0, "alert":Landroid/net/Uri;
    iget-object v10, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mAlarmRingtoneView:Lcn/nubia/deskclock/ui/AlarmRingtonePicker;

    iget-object v11, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v11, v0}, Lcn/nubia/deskclock/ui/AlarmRingtonePicker;->setRingtone(Landroid/os/Handler;Landroid/net/Uri;)V

    .line 337
    .end local v0    # "alert":Landroid/net/Uri;
    :cond_0
    const-string v10, "label"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 339
    .local v5, "label":Ljava/lang/String;
    if-eqz v5, :cond_3

    const-string v10, "0"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "1"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "2"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 341
    :cond_1
    iget-object v10, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mAlarmNameView:Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    const/4 v11, 0x0

    invoke-virtual {v10, v5, v11}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->setAlarmName(Ljava/lang/String;Z)V

    .line 346
    :goto_0
    const-string v10, "isSlient"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 347
    .local v4, "isSlient":Z
    iget-object v10, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mAlarmRingtoneView:Lcn/nubia/deskclock/ui/AlarmRingtonePicker;

    invoke-virtual {v10, v4}, Lcn/nubia/deskclock/ui/AlarmRingtonePicker;->setSilent(Z)V

    .line 350
    .end local v2    # "hour":I
    .end local v4    # "isSlient":Z
    .end local v5    # "label":Ljava/lang/String;
    .end local v6    # "minute":I
    .end local v7    # "repeat":Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;
    .end local v8    # "repeatCode":I
    .end local v9    # "uriStr":Ljava/lang/String;
    :cond_2
    const-string v10, "isHolidayAlarm"

    const/4 v11, 0x1

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 351
    .local v3, "isHolidayAlarm":Z
    iget-object v10, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mRepeatView:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-virtual {v10, v3}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->setHolidayAlarm(Z)V

    .line 356
    .end local v3    # "isHolidayAlarm":Z
    :goto_1
    return-void

    .line 343
    .restart local v2    # "hour":I
    .restart local v5    # "label":Ljava/lang/String;
    .restart local v6    # "minute":I
    .restart local v7    # "repeat":Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;
    .restart local v8    # "repeatCode":I
    .restart local v9    # "uriStr":Ljava/lang/String;
    :cond_3
    iget-object v10, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mAlarmNameView:Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    const/4 v11, 0x1

    invoke-virtual {v10, v5, v11}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->setAlarmName(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 352
    .end local v2    # "hour":I
    .end local v5    # "label":Ljava/lang/String;
    .end local v6    # "minute":I
    .end local v7    # "repeat":Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;
    .end local v8    # "repeatCode":I
    .end local v9    # "uriStr":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 353
    .local v1, "e":Ljava/lang/Exception;
    const-string v10, "AddAlarmActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onRestoreInstanceState+e:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 667
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 668
    const-string v0, "AddAlarmActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    sget-object v0, Lcn/nubia/deskclock/util/Utils;->chineseHolidayMap:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    sget-object v0, Lcn/nubia/deskclock/util/Utils;->chineseWeekendWorkMap:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 670
    const/4 v0, 0x0

    invoke-static {v0}, Lcn/nubia/deskclock/model/holiday/ParseXml;->setmCheckHolidayData(Z)V

    .line 672
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 299
    if-eqz p1, :cond_0

    .line 300
    const-string v1, "hour"

    iget-object v2, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mTimePicker:Lcn/nubia/commonui/widget/TimePickerView;

    invoke-virtual {v2}, Lcn/nubia/commonui/widget/TimePickerView;->getCurrentHour()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 301
    const-string v1, "minute"

    iget-object v2, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mTimePicker:Lcn/nubia/commonui/widget/TimePickerView;

    invoke-virtual {v2}, Lcn/nubia/commonui/widget/TimePickerView;->getCurrentMinute()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 303
    const-string v1, "daysOfWeek"

    iget-object v2, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mRepeatView:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-virtual {v2}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->getDaysOfWeek()Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->getCoded()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 304
    const-string v1, "isHolidayAlarm"

    iget-object v2, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mRepeatView:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-virtual {v2}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->getHolidayAlarm()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 305
    const-string v1, "daysOfWeek"

    iget-object v2, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mRepeatView:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    invoke-virtual {v2}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->getHolidayAlarm()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 306
    const-string v1, "isSlient"

    iget-object v2, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mAlarmRingtoneView:Lcn/nubia/deskclock/ui/AlarmRingtonePicker;

    invoke-virtual {v2}, Lcn/nubia/deskclock/ui/AlarmRingtonePicker;->isSlient()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 307
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mAlarmRingtoneView:Lcn/nubia/deskclock/ui/AlarmRingtonePicker;

    invoke-virtual {v1}, Lcn/nubia/deskclock/ui/AlarmRingtonePicker;->getRingtone()Landroid/net/Uri;

    move-result-object v0

    .line 308
    .local v0, "alert":Landroid/net/Uri;
    if-eqz v0, :cond_1

    .line 309
    const-string v1, "alert"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :goto_0
    const-string v1, "label"

    iget-object v2, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mAlarmNameView:Lcn/nubia/deskclock/ui/AlarmNameSettingView;

    invoke-virtual {v2}, Lcn/nubia/deskclock/ui/AlarmNameSettingView;->getAlarmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    .end local v0    # "alert":Landroid/net/Uri;
    :cond_0
    return-void

    .line 311
    .restart local v0    # "alert":Landroid/net/Uri;
    :cond_1
    const-string v1, "alert"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSeleced()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 652
    const-string v0, "AddAlarmActivity"

    const-string v1, "onSeleced"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    iget-object v0, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mTimePicker:Lcn/nubia/commonui/widget/TimePickerView;

    invoke-virtual {p0, v0, v2, v2}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->onTimeChanged(Lcn/nubia/commonui/widget/TimePickerView;II)V

    .line 654
    return-void
.end method

.method public onTimeChanged(Lcn/nubia/commonui/widget/TimePickerView;II)V
    .locals 3
    .param p1, "view"    # Lcn/nubia/commonui/widget/TimePickerView;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    const/4 v2, 0x1

    .line 638
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mBackgroundHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 639
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 640
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 642
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 643
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 644
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 645
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 648
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method
