.class public Lcn/nubia/deskclock/control/AlarmClockAnimationControl;
.super Ljava/lang/Object;
.source "AlarmClockAnimationControl.java"

# interfaces
.implements Lcn/nubia/deskclock/inter/IAnimationOperator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deskclock/control/AlarmClockAnimationControl$WorkerHandler;
    }
.end annotation


# static fields
.field private static final ALARM_SETTING_CLICK:Ljava/lang/String; = "alarmsetting_click"

.field private static final SWITCH_LOG_PRINT_MAX_COUNT:I = 0x5


# instance fields
.field private deskClockWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/nubia/deskclock/DeskClock;",
            ">;"
        }
    .end annotation
.end field

.field private mAlarmClockModel:Lcn/nubia/deskclock/model/AlarmClockModel;

.field private mAlarmClockView:Lcn/nubia/deskclock/ui/AlarmClockView;

.field private mAlarmTitle:Landroid/widget/TextView;

.field private mCalendar:Landroid/text/format/Time;

.field private mClickCount:I

.field private mClockDate:Landroid/widget/TextView;

.field private mDebugSwitch:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSettingImage:Landroid/widget/ImageView;

.field private mWorkerHandler:Lcn/nubia/deskclock/control/AlarmClockAnimationControl$WorkerHandler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl$WorkerHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/deskclock/control/AlarmClockAnimationControl$WorkerHandler;-><init>(Lcn/nubia/deskclock/control/AlarmClockAnimationControl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mWorkerHandler:Lcn/nubia/deskclock/control/AlarmClockAnimationControl$WorkerHandler;

    .line 51
    iput v2, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mClickCount:I

    .line 52
    iput-boolean v2, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mDebugSwitch:Z

    .line 93
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Lcn/nubia/deskclock/DeskClock;

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->deskClockWeakReference:Ljava/lang/ref/WeakReference;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/deskclock/control/AlarmClockAnimationControl;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/control/AlarmClockAnimationControl;

    .prologue
    .line 40
    invoke-direct {p0}, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->startEnterAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/deskclock/control/AlarmClockAnimationControl;)Lcn/nubia/deskclock/ui/AlarmClockView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/control/AlarmClockAnimationControl;

    .prologue
    .line 40
    iget-object v0, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mAlarmClockView:Lcn/nubia/deskclock/ui/AlarmClockView;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/deskclock/control/AlarmClockAnimationControl;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/control/AlarmClockAnimationControl;

    .prologue
    .line 40
    invoke-direct {p0}, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->stopUpdateTime()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/deskclock/control/AlarmClockAnimationControl;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/control/AlarmClockAnimationControl;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->updateDay(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/deskclock/control/AlarmClockAnimationControl;)Lcn/nubia/deskclock/model/AlarmClockModel;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/control/AlarmClockAnimationControl;

    .prologue
    .line 40
    iget-object v0, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mAlarmClockModel:Lcn/nubia/deskclock/model/AlarmClockModel;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/deskclock/control/AlarmClockAnimationControl;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/control/AlarmClockAnimationControl;

    .prologue
    .line 40
    iget-object v0, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mAlarmTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/deskclock/control/AlarmClockAnimationControl;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/control/AlarmClockAnimationControl;

    .prologue
    .line 40
    invoke-direct {p0}, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->formatDay()V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/deskclock/control/AlarmClockAnimationControl;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/control/AlarmClockAnimationControl;

    .prologue
    .line 40
    invoke-direct {p0}, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->calculateCount()V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/deskclock/control/AlarmClockAnimationControl;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/control/AlarmClockAnimationControl;

    .prologue
    .line 40
    invoke-direct {p0}, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcn/nubia/deskclock/control/AlarmClockAnimationControl;)Lcn/nubia/deskclock/control/AlarmClockAnimationControl$WorkerHandler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/control/AlarmClockAnimationControl;

    .prologue
    .line 40
    iget-object v0, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mWorkerHandler:Lcn/nubia/deskclock/control/AlarmClockAnimationControl$WorkerHandler;

    return-object v0
.end method

.method private calculateCount()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 272
    invoke-direct {p0}, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    invoke-direct {p0}, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "deskclock_log_switch_in_system"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mDebugSwitch:Z

    .line 276
    const-string v0, "SwitchLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " calculateCount  mClickCount : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mClickCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ;; mDebugSwitch : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mDebugSwitch:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget v0, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mClickCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mClickCount:I

    const/4 v3, 0x5

    if-lt v0, v3, :cond_0

    .line 281
    iget-boolean v0, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mDebugSwitch:Z

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mDebugSwitch:Z

    .line 282
    const-string v0, "SwitchLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " calculateCount  mDebugSwitch : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mDebugSwitch:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-direct {p0}, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 284
    invoke-direct {p0}, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v3, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mDebugSwitch:Z

    if-eqz v3, :cond_5

    :goto_3
    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->switchDebugMode(Landroid/content/Context;I)V

    .line 286
    :cond_2
    iput v2, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mClickCount:I

    goto :goto_0

    :cond_3
    move v0, v2

    .line 275
    goto :goto_1

    :cond_4
    move v0, v2

    .line 281
    goto :goto_2

    :cond_5
    move v1, v2

    .line 284
    goto :goto_3
.end method

.method private formatDay()V
    .locals 2

    .prologue
    .line 192
    invoke-direct {p0}, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 232
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-static {}, Lcn/nubia/deskclock/util/ThreadPool;->getInstance()Lcn/nubia/deskclock/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcn/nubia/deskclock/control/AlarmClockAnimationControl$4;

    invoke-direct {v1, p0}, Lcn/nubia/deskclock/control/AlarmClockAnimationControl$4;-><init>(Lcn/nubia/deskclock/control/AlarmClockAnimationControl;)V

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/util/ThreadPool;->addTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->deskClockWeakReference:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 98
    const/4 v0, 0x0

    .line 100
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->deskClockWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 174
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 175
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.nubia.deskclock.ALARM_DONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    const-string v1, "com.nubia.deskclock.ALARM_SNOOZE_CANCELLED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    new-instance v1, Lcn/nubia/deskclock/control/AlarmClockAnimationControl$3;

    invoke-direct {v1, p0}, Lcn/nubia/deskclock/control/AlarmClockAnimationControl$3;-><init>(Lcn/nubia/deskclock/control/AlarmClockAnimationControl;)V

    iput-object v1, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 186
    invoke-direct {p0}, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 187
    invoke-direct {p0}, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 189
    :cond_0
    return-void
.end method

.method private startEnterAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 108
    iget-object v0, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mAlarmClockView:Lcn/nubia/deskclock/ui/AlarmClockView;

    if-nez v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mCalendar:Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mCalendar:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 113
    iget-object v0, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mAlarmClockView:Lcn/nubia/deskclock/ui/AlarmClockView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/AlarmClockView;->setEnableDraw(Z)V

    .line 114
    iget-object v0, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mAlarmClockView:Lcn/nubia/deskclock/ui/AlarmClockView;

    iget-object v1, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mCalendar:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->hour:I

    iget-object v2, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mCalendar:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->minute:I

    iget-object v3, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mCalendar:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->second:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/nubia/deskclock/ui/AlarmClockView;->startEnterAnimation(IIIZ)V

    .line 117
    iget-object v0, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mClockDate:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mAlarmTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mSettingImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private stopUpdateTime()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 123
    iget-object v0, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mAlarmClockView:Lcn/nubia/deskclock/ui/AlarmClockView;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mAlarmClockView:Lcn/nubia/deskclock/ui/AlarmClockView;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/AlarmClockView;->stopUpdateTime()V

    .line 125
    iget-object v0, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mAlarmClockView:Lcn/nubia/deskclock/ui/AlarmClockView;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/AlarmClockView;->startCloseAnimation()V

    .line 126
    iget-object v0, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mClockDate:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mAlarmTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mSettingImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mAlarmClockView:Lcn/nubia/deskclock/ui/AlarmClockView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/AlarmClockView;->setEnableDraw(Z)V

    .line 131
    :cond_0
    return-void
.end method

.method private updateDay(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 235
    iget-object v1, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mClockDate:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 241
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "Date":Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mClockDate:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .end local v0    # "Date":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .restart local v0    # "Date":Ljava/lang/String;
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method


# virtual methods
.method public endAnimation()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mWorkerHandler:Lcn/nubia/deskclock/control/AlarmClockAnimationControl$WorkerHandler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/control/AlarmClockAnimationControl$WorkerHandler;->sendEmptyMessage(I)Z

    .line 142
    return-void
.end method

.method public getWorkerHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mWorkerHandler:Lcn/nubia/deskclock/control/AlarmClockAnimationControl$WorkerHandler;

    return-object v0
.end method

.method public initAnimantionParam()V
    .locals 3

    .prologue
    .line 146
    invoke-direct {p0}, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 171
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-direct {p0}, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/DeskClock;

    .line 150
    .local v0, "deskClock":Lcn/nubia/deskclock/DeskClock;
    const v1, 0x7f12009c

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/DeskClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/deskclock/ui/AlarmClockView;

    iput-object v1, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mAlarmClockView:Lcn/nubia/deskclock/ui/AlarmClockView;

    .line 151
    iget-object v1, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mAlarmClockView:Lcn/nubia/deskclock/ui/AlarmClockView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/nubia/deskclock/ui/AlarmClockView;->setEnableDraw(Z)V

    .line 152
    const v1, 0x7f12004b

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/DeskClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mAlarmTitle:Landroid/widget/TextView;

    .line 153
    iget-object v1, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mAlarmTitle:Landroid/widget/TextView;

    new-instance v2, Lcn/nubia/deskclock/control/AlarmClockAnimationControl$1;

    invoke-direct {v2, p0}, Lcn/nubia/deskclock/control/AlarmClockAnimationControl$1;-><init>(Lcn/nubia/deskclock/control/AlarmClockAnimationControl;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    const v1, 0x7f120099

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/DeskClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mClockDate:Landroid/widget/TextView;

    .line 160
    const v1, 0x7f12009a

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/DeskClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mSettingImage:Landroid/widget/ImageView;

    .line 161
    iget-object v1, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mSettingImage:Landroid/widget/ImageView;

    new-instance v2, Lcn/nubia/deskclock/control/AlarmClockAnimationControl$2;

    invoke-direct {v2, p0, v0}, Lcn/nubia/deskclock/control/AlarmClockAnimationControl$2;-><init>(Lcn/nubia/deskclock/control/AlarmClockAnimationControl;Lcn/nubia/deskclock/DeskClock;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    invoke-direct {p0}, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->registerReceiver()V

    .line 170
    invoke-direct {p0}, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->formatDay()V

    goto :goto_0
.end method

.method public releaseResource()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 250
    iget-object v0, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mWorkerHandler:Lcn/nubia/deskclock/control/AlarmClockAnimationControl$WorkerHandler;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mWorkerHandler:Lcn/nubia/deskclock/control/AlarmClockAnimationControl$WorkerHandler;

    invoke-virtual {v0, v2}, Lcn/nubia/deskclock/control/AlarmClockAnimationControl$WorkerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 253
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mAlarmClockView:Lcn/nubia/deskclock/ui/AlarmClockView;

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mAlarmClockView:Lcn/nubia/deskclock/ui/AlarmClockView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/AlarmClockView;->setForceStop(Z)V

    .line 255
    iget-object v0, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mAlarmClockView:Lcn/nubia/deskclock/ui/AlarmClockView;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/AlarmClockView;->release()V

    .line 256
    iput-object v2, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mAlarmClockView:Lcn/nubia/deskclock/ui/AlarmClockView;

    .line 258
    :cond_1
    iget-object v0, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 259
    invoke-direct {p0}, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 260
    invoke-direct {p0}, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 262
    :cond_2
    iput-object v2, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 264
    :cond_3
    return-void
.end method

.method public setWorkingMode(Lcn/nubia/deskclock/model/AlarmClockModel;)V
    .locals 0
    .param p1, "model"    # Lcn/nubia/deskclock/model/AlarmClockModel;

    .prologue
    .line 104
    iput-object p1, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mAlarmClockModel:Lcn/nubia/deskclock/model/AlarmClockModel;

    .line 105
    return-void
.end method

.method public startAnimation()V
    .locals 2

    .prologue
    .line 135
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mCalendar:Landroid/text/format/Time;

    .line 136
    iget-object v0, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->mWorkerHandler:Lcn/nubia/deskclock/control/AlarmClockAnimationControl$WorkerHandler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/control/AlarmClockAnimationControl$WorkerHandler;->sendEmptyMessage(I)Z

    .line 137
    return-void
.end method

.method public updateDate()V
    .locals 0

    .prologue
    .line 268
    invoke-direct {p0}, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->formatDay()V

    .line 269
    return-void
.end method
