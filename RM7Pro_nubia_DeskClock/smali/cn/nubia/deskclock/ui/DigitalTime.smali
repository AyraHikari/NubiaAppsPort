.class public Lcn/nubia/deskclock/ui/DigitalTime;
.super Landroid/widget/LinearLayout;
.source "DigitalTime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deskclock/ui/DigitalTime$AmPm;
    }
.end annotation


# static fields
.field private static final HOURS_24_FORMAT:Ljava/lang/String; = "kk:mm"

.field private static final HOURS_FORMAT:Ljava/lang/String; = "hh:mm"

.field private static final TAG:Ljava/lang/String; = "DigitalTime"


# instance fields
.field private mAmPm:Lcn/nubia/deskclock/ui/DigitalTime$AmPm;

.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIs24HourFormat:Z

.field private mLive:Z

.field private mTimeDisplay:Landroid/widget/TextView;

.field private mTimeFormat:Ljava/lang/String;

.field private mTimeZoneId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/deskclock/ui/DigitalTime;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    iput-object p1, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mContext:Landroid/content/Context;

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mLive:Z

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mHandler:Landroid/os/Handler;

    .line 57
    new-instance v0, Lcn/nubia/deskclock/ui/DigitalTime$1;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/ui/DigitalTime$1;-><init>(Lcn/nubia/deskclock/ui/DigitalTime;)V

    iput-object v0, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 115
    iput-object p1, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mContext:Landroid/content/Context;

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/deskclock/ui/DigitalTime;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/DigitalTime;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mLive:Z

    return v0
.end method

.method static synthetic access$102(Lcn/nubia/deskclock/ui/DigitalTime;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/DigitalTime;
    .param p1, "x1"    # Ljava/util/Calendar;

    .prologue
    .line 41
    iput-object p1, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/deskclock/ui/DigitalTime;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/DigitalTime;

    .prologue
    .line 41
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/DigitalTime;->updateTime()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/deskclock/ui/DigitalTime;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/DigitalTime;

    .prologue
    .line 41
    iget-object v0, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private setDateFormat()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/deskclock/model/AlarmsDb;->get24HourMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mIs24HourFormat:Z

    .line 194
    iget-boolean v0, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mIs24HourFormat:Z

    if-eqz v0, :cond_0

    const-string v0, "kk:mm"

    :goto_0
    iput-object v0, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mTimeFormat:Ljava/lang/String;

    .line 195
    iget-object v1, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mAmPm:Lcn/nubia/deskclock/ui/DigitalTime$AmPm;

    iget-object v0, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/deskclock/model/AlarmsDb;->get24HourMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcn/nubia/deskclock/ui/DigitalTime$AmPm;->setShowAmPm(Z)V

    .line 196
    return-void

    .line 194
    :cond_0
    const-string v0, "hh:mm"

    goto :goto_0

    .line 195
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateTime()V
    .locals 6

    .prologue
    .line 171
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/DigitalTime;->setDateFormat()V

    .line 172
    iget-boolean v2, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mLive:Z

    if-eqz v2, :cond_0

    .line 173
    iget-object v2, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 175
    :cond_0
    iget-object v2, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mTimeZoneId:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 176
    iget-object v2, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mCalendar:Ljava/util/Calendar;

    iget-object v3, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mTimeZoneId:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 178
    :cond_1
    iget-object v2, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mTimeFormat:Ljava/lang/String;

    iget-object v3, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mCalendar:Ljava/util/Calendar;

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 179
    .local v1, "time":Ljava/lang/String;
    iget-object v2, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mTimeDisplay:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v2, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    .line 182
    .local v0, "isMorning":Z
    :goto_0
    iget-object v2, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mAmPm:Lcn/nubia/deskclock/ui/DigitalTime$AmPm;

    invoke-virtual {v2, v0}, Lcn/nubia/deskclock/ui/DigitalTime$AmPm;->setIsMorning(Z)V

    .line 184
    iget-boolean v2, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mIs24HourFormat:Z

    if-nez v2, :cond_3

    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mAmPm:Lcn/nubia/deskclock/ui/DigitalTime$AmPm;

    invoke-virtual {v3}, Lcn/nubia/deskclock/ui/DigitalTime$AmPm;->getAmPmText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcn/nubia/deskclock/ui/DigitalTime;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 189
    :goto_1
    return-void

    .line 181
    .end local v0    # "isMorning":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 187
    .restart local v0    # "isMorning":Z
    :cond_3
    invoke-virtual {p0, v1}, Lcn/nubia/deskclock/ui/DigitalTime;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public getAMPMSequence()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mAmPm:Lcn/nubia/deskclock/ui/DigitalTime$AmPm;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mAmPm:Lcn/nubia/deskclock/ui/DigitalTime$AmPm;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/DigitalTime$AmPm;->getAmPmText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 211
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public isDayLight()Z
    .locals 10

    .prologue
    const/16 v9, 0xc

    const/4 v8, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 217
    iget-boolean v2, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mLive:Z

    if-eqz v2, :cond_0

    .line 218
    iget-object v2, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 220
    :cond_0
    iget-object v2, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mTimeZoneId:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 221
    iget-object v2, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mCalendar:Ljava/util/Calendar;

    iget-object v5, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mTimeZoneId:Ljava/lang/String;

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 224
    :cond_1
    iget-boolean v2, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mIs24HourFormat:Z

    if-eqz v2, :cond_2

    const-string v2, "kk"

    :goto_0
    iget-object v5, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mCalendar:Ljava/util/Calendar;

    invoke-static {v2, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 226
    .local v1, "newTime":Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 227
    .local v0, "hour":I
    const-string v2, "DigitalTime"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDayLight hour = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v2, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/deskclock/model/AlarmsDb;->get24HourMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 230
    if-gt v8, v0, :cond_3

    const/16 v2, 0x12

    if-ge v0, v2, :cond_3

    move v2, v3

    .line 246
    :goto_1
    return v2

    .line 224
    .end local v0    # "hour":I
    .end local v1    # "newTime":Ljava/lang/CharSequence;
    :cond_2
    const-string v2, "hh"

    goto :goto_0

    .restart local v0    # "hour":I
    .restart local v1    # "newTime":Ljava/lang/CharSequence;
    :cond_3
    move v2, v4

    .line 233
    goto :goto_1

    .line 236
    :cond_4
    iget-object v2, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mAmPm:Lcn/nubia/deskclock/ui/DigitalTime$AmPm;

    invoke-virtual {v2}, Lcn/nubia/deskclock/ui/DigitalTime$AmPm;->getIsMoring()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 237
    if-gt v8, v0, :cond_5

    if-ge v0, v9, :cond_5

    move v2, v3

    .line 238
    goto :goto_1

    :cond_5
    move v2, v4

    .line 240
    goto :goto_1

    .line 243
    :cond_6
    if-gt v8, v0, :cond_7

    if-ge v0, v9, :cond_7

    move v2, v4

    .line 244
    goto :goto_1

    :cond_7
    move v2, v3

    .line 246
    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 129
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 130
    iget-boolean v1, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mAttached:Z

    if-eqz v1, :cond_0

    .line 141
    :goto_0
    return-void

    .line 132
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mAttached:Z

    .line 133
    iget-boolean v1, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mLive:Z

    if-eqz v1, :cond_1

    .line 135
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 136
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/DigitalTime;->updateTime()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 145
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 147
    iget-boolean v0, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mAttached:Z

    if-nez v0, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mAttached:Z

    .line 151
    iget-boolean v0, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mLive:Z

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 120
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 121
    const v0, 0x7f12007f

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/ui/DigitalTime;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mTimeDisplay:Landroid/widget/TextView;

    .line 122
    new-instance v0, Lcn/nubia/deskclock/ui/DigitalTime$AmPm;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/ui/DigitalTime$AmPm;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mAmPm:Lcn/nubia/deskclock/ui/DigitalTime$AmPm;

    .line 123
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mCalendar:Ljava/util/Calendar;

    .line 124
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/DigitalTime;->setDateFormat()V

    .line 125
    return-void
.end method

.method setLive(Z)V
    .locals 0
    .param p1, "live"    # Z

    .prologue
    .line 199
    iput-boolean p1, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mLive:Z

    .line 200
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 203
    iput-object p1, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mTimeZoneId:Ljava/lang/String;

    .line 204
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/DigitalTime;->updateTime()V

    .line 205
    return-void
.end method

.method public updateTime(II)V
    .locals 2
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .prologue
    .line 163
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 164
    .local v0, "c":Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 165
    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 166
    iput-object v0, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mCalendar:Ljava/util/Calendar;

    .line 167
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/DigitalTime;->updateTime()V

    .line 168
    return-void
.end method

.method updateTime(Ljava/util/Calendar;)V
    .locals 0
    .param p1, "c"    # Ljava/util/Calendar;

    .prologue
    .line 157
    iput-object p1, p0, Lcn/nubia/deskclock/ui/DigitalTime;->mCalendar:Ljava/util/Calendar;

    .line 158
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/DigitalTime;->updateTime()V

    .line 159
    return-void
.end method
