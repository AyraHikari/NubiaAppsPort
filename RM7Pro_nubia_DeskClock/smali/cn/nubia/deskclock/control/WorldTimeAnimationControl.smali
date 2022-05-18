.class public Lcn/nubia/deskclock/control/WorldTimeAnimationControl;
.super Ljava/lang/Object;
.source "WorldTimeAnimationControl.java"

# interfaces
.implements Lcn/nubia/deskclock/inter/IAnimationOperator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deskclock/control/WorldTimeAnimationControl$WorkerHandler;
    }
.end annotation


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

.field private mCalendar:Landroid/text/format/Time;

.field private mHomeCityAndDate:Landroid/widget/TextView;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mWorkerHandler:Lcn/nubia/deskclock/control/WorldTimeAnimationControl$WorkerHandler;

.field private mWorldTimeClockView:Lcn/nubia/deskclock/ui/WorldTimeClockView;

.field private mWorldTimeModel:Lcn/nubia/deskclock/model/WorldTimeModel;

.field private mWorldTimeTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl$WorkerHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/deskclock/control/WorldTimeAnimationControl$WorkerHandler;-><init>(Lcn/nubia/deskclock/control/WorldTimeAnimationControl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->mWorkerHandler:Lcn/nubia/deskclock/control/WorldTimeAnimationControl$WorkerHandler;

    .line 75
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Lcn/nubia/deskclock/DeskClock;

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->deskClockWeakReference:Ljava/lang/ref/WeakReference;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/deskclock/control/WorldTimeAnimationControl;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/control/WorldTimeAnimationControl;

    .prologue
    .line 33
    invoke-direct {p0}, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->startEnterAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/deskclock/control/WorldTimeAnimationControl;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/control/WorldTimeAnimationControl;

    .prologue
    .line 33
    invoke-direct {p0}, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->startUpdateTime()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/deskclock/control/WorldTimeAnimationControl;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/control/WorldTimeAnimationControl;

    .prologue
    .line 33
    invoke-direct {p0}, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->stopUpdateTime()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/deskclock/control/WorldTimeAnimationControl;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/control/WorldTimeAnimationControl;

    .prologue
    .line 33
    invoke-direct {p0}, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->updateDay()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/deskclock/control/WorldTimeAnimationControl;)Lcn/nubia/deskclock/model/WorldTimeModel;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/control/WorldTimeAnimationControl;

    .prologue
    .line 33
    iget-object v0, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->mWorldTimeModel:Lcn/nubia/deskclock/model/WorldTimeModel;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/deskclock/control/WorldTimeAnimationControl;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/control/WorldTimeAnimationControl;

    .prologue
    .line 33
    iget-object v0, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->mWorldTimeTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->deskClockWeakReference:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 82
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->deskClockWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0
.end method

.method private isZhOrEn()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 239
    invoke-direct {p0}, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_1

    .line 247
    :cond_0
    :goto_0
    return v2

    .line 242
    :cond_1
    invoke-direct {p0}, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v1, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 243
    .local v1, "locale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "language":Ljava/lang/String;
    const-string v3, "zh"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "en"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 247
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private startEnterAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 90
    iget-object v0, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->mWorldTimeClockView:Lcn/nubia/deskclock/ui/WorldTimeClockView;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->mWorldTimeClockView:Lcn/nubia/deskclock/ui/WorldTimeClockView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/WorldTimeClockView;->setEnableDraw(Z)V

    .line 92
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->mCalendar:Landroid/text/format/Time;

    .line 93
    iget-object v0, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->mCalendar:Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->mCalendar:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 95
    iget-object v0, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->mWorldTimeClockView:Lcn/nubia/deskclock/ui/WorldTimeClockView;

    iget-object v1, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->mCalendar:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->hour:I

    iget-object v2, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->mCalendar:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->minute:I

    iget-object v3, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->mCalendar:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->second:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/nubia/deskclock/ui/WorldTimeClockView;->startEnterAnimation(IIIZ)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->mHomeCityAndDate:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->mWorldTimeTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->mWorldTimeTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->mHomeCityAndDate:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    :cond_1
    return-void
.end method

.method private startUpdateTime()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->mWorldTimeClockView:Lcn/nubia/deskclock/ui/WorldTimeClockView;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->mWorldTimeClockView:Lcn/nubia/deskclock/ui/WorldTimeClockView;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/WorldTimeClockView;->startUpdateTime()V

    .line 110
    :cond_0
    return-void
.end method

.method private stopUpdateTime()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 113
    iget-object v0, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->mWorldTimeClockView:Lcn/nubia/deskclock/ui/WorldTimeClockView;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->mWorldTimeClockView:Lcn/nubia/deskclock/ui/WorldTimeClockView;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/WorldTimeClockView;->stopUpdateTime()V

    .line 115
    iget-object v0, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->mWorldTimeClockView:Lcn/nubia/deskclock/ui/WorldTimeClockView;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/WorldTimeClockView;->startCloseAnimation()V

    .line 116
    iget-object v0, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->mWorldTimeClockView:Lcn/nubia/deskclock/ui/WorldTimeClockView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/WorldTimeClockView;->setEnableDraw(Z)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->mHomeCityAndDate:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->mWorldTimeTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->mHomeCityAndDate:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->mWorldTimeTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    :cond_1
    return-void
.end method

.method private updateDay()V
    .locals 22

    .prologue
    .line 125
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->mHomeCityAndDate:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    invoke-direct/range {p0 .. p0}, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 130
    .local v10, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v10, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 131
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v19

    .line 132
    .local v19, "tz":Ljava/util/TimeZone;
    invoke-virtual/range {v19 .. v19}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    .line 134
    .local v11, "cityname":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/deskclock/model/AlarmsDb;->get24HourMode(Landroid/content/Context;)Z

    move-result v16

    .line 135
    .local v16, "mIs24HourMode":Z
    new-instance v3, Ljava/text/DateFormatSymbols;

    invoke-direct {v3}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "ampm":[Ljava/lang/String;
    const-string v9, ""

    .line 137
    .local v9, "ampmString":Ljava/lang/String;
    if-nez v16, :cond_2

    .line 138
    const/16 v3, 0x9

    invoke-virtual {v10, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-nez v3, :cond_3

    const/4 v15, 0x1

    .line 139
    .local v15, "isMorning":Z
    :goto_1
    if-eqz v15, :cond_4

    .line 140
    const/4 v3, 0x0

    aget-object v9, v2, v3

    .line 146
    .end local v15    # "isMorning":Z
    :cond_2
    :goto_2
    const-string v3, " EEEE"

    invoke-static {v3, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v20

    .line 147
    .local v20, "week":Ljava/lang/CharSequence;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    invoke-direct/range {p0 .. p0}, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const v8, 0x10014

    .line 147
    invoke-static/range {v3 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v3

    .line 152
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 154
    .local v12, "homedate":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    invoke-direct/range {p0 .. p0}, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const v8, 0x10018

    .line 154
    invoke-static/range {v3 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v3

    .line 159
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 161
    .local v13, "homedateClock":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->isZhOrEn()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 162
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->mHomeCityAndDate:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    :goto_3
    const/16 v3, 0xa

    invoke-virtual {v10, v3}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 168
    .local v14, "hour":I
    const/16 v3, 0xc

    invoke-virtual {v10, v3}, Ljava/util/Calendar;->get(I)I

    move-result v17

    .line 169
    .local v17, "minute":I
    const/16 v3, 0xd

    invoke-virtual {v10, v3}, Ljava/util/Calendar;->get(I)I

    move-result v18

    .line 170
    .local v18, "second":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->mWorkerHandler:Lcn/nubia/deskclock/control/WorldTimeAnimationControl$WorkerHandler;

    const/16 v4, 0x7d4

    invoke-virtual {v3, v4}, Lcn/nubia/deskclock/control/WorldTimeAnimationControl$WorkerHandler;->removeMessages(I)V

    .line 171
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->mWorkerHandler:Lcn/nubia/deskclock/control/WorldTimeAnimationControl$WorkerHandler;

    const/16 v4, 0x7d4

    rsub-int/lit8 v5, v14, 0xc

    mul-int/lit8 v5, v5, 0x3c

    mul-int/lit8 v5, v5, 0x3c

    mul-int/lit16 v5, v5, 0x3e8

    mul-int/lit8 v6, v17, 0x3c

    mul-int/lit16 v6, v6, 0x3e8

    sub-int/2addr v5, v6

    move/from16 v0, v18

    mul-int/lit16 v6, v0, 0x3e8

    sub-int/2addr v5, v6

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Lcn/nubia/deskclock/control/WorldTimeAnimationControl$WorkerHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 138
    .end local v12    # "homedate":Ljava/lang/String;
    .end local v13    # "homedateClock":Ljava/lang/String;
    .end local v14    # "hour":I
    .end local v17    # "minute":I
    .end local v18    # "second":I
    .end local v20    # "week":Ljava/lang/CharSequence;
    :cond_3
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 142
    .restart local v15    # "isMorning":Z
    :cond_4
    const/4 v3, 0x1

    aget-object v9, v2, v3

    goto/16 :goto_2

    .line 164
    .end local v15    # "isMorning":Z
    .restart local v12    # "homedate":Ljava/lang/String;
    .restart local v13    # "homedateClock":Ljava/lang/String;
    .restart local v20    # "week":Ljava/lang/CharSequence;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->mHomeCityAndDate:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method


# virtual methods
.method public endAnimation()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->mWorkerHandler:Lcn/nubia/deskclock/control/WorldTimeAnimationControl$WorkerHandler;

    const/16 v1, 0x7d2

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/control/WorldTimeAnimationControl$WorkerHandler;->sendEmptyMessage(I)Z

    .line 183
    return-void
.end method

.method public getWorkerHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->mWorkerHandler:Lcn/nubia/deskclock/control/WorldTimeAnimationControl$WorkerHandler;

    return-object v0
.end method

.method public initAnimantionParam()V
    .locals 4

    .prologue
    .line 187
    invoke-direct {p0}, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    .line 210
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-direct {p0}, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/DeskClock;

    .line 191
    .local v0, "deskClock":Lcn/nubia/deskclock/DeskClock;
    const v2, 0x7f120175

    .line 192
    invoke-virtual {v0, v2}, Lcn/nubia/deskclock/DeskClock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcn/nubia/deskclock/ui/WorldTimeClockView;

    iput-object v2, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->mWorldTimeClockView:Lcn/nubia/deskclock/ui/WorldTimeClockView;

    .line 193
    iget-object v2, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->mWorldTimeClockView:Lcn/nubia/deskclock/ui/WorldTimeClockView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcn/nubia/deskclock/ui/WorldTimeClockView;->setEnableDraw(Z)V

    .line 194
    const v2, 0x7f120173

    invoke-virtual {v0, v2}, Lcn/nubia/deskclock/DeskClock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->mHomeCityAndDate:Landroid/widget/TextView;

    .line 195
    const v2, 0x7f120172

    invoke-virtual {v0, v2}, Lcn/nubia/deskclock/DeskClock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->mWorldTimeTitle:Landroid/widget/TextView;

    .line 196
    new-instance v2, Lcn/nubia/deskclock/control/WorldTimeAnimationControl$1;

    invoke-direct {v2, p0}, Lcn/nubia/deskclock/control/WorldTimeAnimationControl$1;-><init>(Lcn/nubia/deskclock/control/WorldTimeAnimationControl;)V

    iput-object v2, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 202
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 203
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.nubia.deskclock.ALARM_DONE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    const-string v2, "com.nubia.deskclock.ALARM_SNOOZE_CANCELLED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v0}, Lcn/nubia/deskclock/DeskClock;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 209
    invoke-direct {p0}, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->updateDay()V

    goto :goto_0
.end method

.method public releaseResource()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 219
    iget-object v0, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->mWorkerHandler:Lcn/nubia/deskclock/control/WorldTimeAnimationControl$WorkerHandler;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->mWorkerHandler:Lcn/nubia/deskclock/control/WorldTimeAnimationControl$WorkerHandler;

    invoke-virtual {v0, v2}, Lcn/nubia/deskclock/control/WorldTimeAnimationControl$WorkerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 222
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->mWorldTimeClockView:Lcn/nubia/deskclock/ui/WorldTimeClockView;

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->mWorldTimeClockView:Lcn/nubia/deskclock/ui/WorldTimeClockView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/WorldTimeClockView;->setForceStop(Z)V

    .line 224
    iget-object v0, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->mWorldTimeClockView:Lcn/nubia/deskclock/ui/WorldTimeClockView;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/WorldTimeClockView;->release()V

    .line 225
    iput-object v2, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->mWorldTimeClockView:Lcn/nubia/deskclock/ui/WorldTimeClockView;

    .line 227
    :cond_1
    iget-object v0, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 228
    invoke-direct {p0}, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 229
    iput-object v2, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 231
    :cond_2
    return-void
.end method

.method public setWorkingMode(Lcn/nubia/deskclock/model/WorldTimeModel;)V
    .locals 0
    .param p1, "model"    # Lcn/nubia/deskclock/model/WorldTimeModel;

    .prologue
    .line 86
    iput-object p1, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->mWorldTimeModel:Lcn/nubia/deskclock/model/WorldTimeModel;

    .line 87
    return-void
.end method

.method public startAnimation()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->mWorkerHandler:Lcn/nubia/deskclock/control/WorldTimeAnimationControl$WorkerHandler;

    const/16 v1, 0x7d1

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/control/WorldTimeAnimationControl$WorkerHandler;->sendEmptyMessage(I)Z

    .line 178
    return-void
.end method

.method public updateDate()V
    .locals 0

    .prologue
    .line 235
    invoke-direct {p0}, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->updateDay()V

    .line 236
    return-void
.end method
