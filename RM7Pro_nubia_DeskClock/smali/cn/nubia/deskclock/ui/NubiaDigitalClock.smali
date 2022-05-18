.class public Lcn/nubia/deskclock/ui/NubiaDigitalClock;
.super Landroid/widget/LinearLayout;
.source "NubiaDigitalClock.java"


# static fields
.field private static final HOURS:Ljava/lang/String; = "hh"

.field private static final HOURS_24:Ljava/lang/String; = "kk"

.field private static final MINUTES:Ljava/lang/String; = "mm"

.field private static final TAG:Ljava/lang/String; = "NubiaDigitalClock"


# instance fields
.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHoursFormat:Ljava/lang/String;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIs24HourFormat:Z

.field private mIsAlert:Z

.field private mLive:Z

.field private mNubiaFonts:Landroid/graphics/Typeface;

.field private mTimeDisplay:Landroid/widget/TextView;

.field private mTimeZoneId:Ljava/lang/String;

.field private mUpdateFlag:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/deskclock/ui/NubiaDigitalClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    iput-object p1, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->mContext:Landroid/content/Context;

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    iput-boolean v1, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->mLive:Z

    .line 62
    iput-boolean v2, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->mIsAlert:Z

    .line 66
    iput-boolean v1, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->mUpdateFlag:Z

    .line 69
    new-instance v1, Lcn/nubia/deskclock/ui/NubiaDigitalClock$1;

    invoke-direct {v1, p0}, Lcn/nubia/deskclock/ui/NubiaDigitalClock$1;-><init>(Lcn/nubia/deskclock/ui/NubiaDigitalClock;)V

    iput-object v1, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->mHandler:Landroid/os/Handler;

    .line 75
    new-instance v1, Lcn/nubia/deskclock/ui/NubiaDigitalClock$2;

    invoke-direct {v1, p0}, Lcn/nubia/deskclock/ui/NubiaDigitalClock$2;-><init>(Lcn/nubia/deskclock/ui/NubiaDigitalClock;)V

    iput-object v1, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 99
    sget-object v1, Lcn/nubia/deskclock/preset/R$styleable;->DigitalClock:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 101
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->mIsAlert:Z

    .line 102
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    iput-object p1, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->mContext:Landroid/content/Context;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/deskclock/ui/NubiaDigitalClock;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/NubiaDigitalClock;

    .prologue
    .line 49
    iget-object v0, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->mTimeDisplay:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/deskclock/ui/NubiaDigitalClock;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/NubiaDigitalClock;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->mLive:Z

    return v0
.end method

.method static synthetic access$202(Lcn/nubia/deskclock/ui/NubiaDigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/NubiaDigitalClock;
    .param p1, "x1"    # Ljava/util/Calendar;

    .prologue
    .line 49
    iput-object p1, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$300(Lcn/nubia/deskclock/ui/NubiaDigitalClock;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/NubiaDigitalClock;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->mUpdateFlag:Z

    return v0
.end method

.method private setDateFormat()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/deskclock/model/AlarmsDb;->get24HourMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->mIs24HourFormat:Z

    .line 186
    iget-boolean v0, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->mIs24HourFormat:Z

    if-eqz v0, :cond_0

    const-string v0, "kk"

    :goto_0
    iput-object v0, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->mHoursFormat:Ljava/lang/String;

    .line 187
    return-void

    .line 186
    :cond_0
    const-string v0, "hh"

    goto :goto_0
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 121
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 122
    iget-boolean v1, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->mAttached:Z

    if-eqz v1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->mAttached:Z

    .line 126
    iget-boolean v1, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->mLive:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->mIsAlert:Z

    if-nez v1, :cond_0

    .line 128
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 129
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-static {}, Lcn/nubia/deskclock/AsyncHandler;->getAsyncHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 138
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 140
    iget-boolean v0, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->mAttached:Z

    if-nez v0, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->mAttached:Z

    .line 144
    iget-boolean v0, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->mLive:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->mIsAlert:Z

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 108
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 110
    const v0, 0x7f12007f

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->mTimeDisplay:Landroid/widget/TextView;

    .line 111
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/deskclock/DeskClockApplication;->getDinMediumFonts()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->mNubiaFonts:Landroid/graphics/Typeface;

    .line 112
    iget-object v0, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->mTimeDisplay:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->mNubiaFonts:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 113
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 115
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->setDateFormat()V

    .line 116
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->updateTime()V

    .line 117
    return-void
.end method

.method public setLive(Z)V
    .locals 0
    .param p1, "live"    # Z

    .prologue
    .line 190
    iput-boolean p1, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->mLive:Z

    .line 191
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->mTimeDisplay:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 200
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 194
    iput-object p1, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->mTimeZoneId:Ljava/lang/String;

    .line 195
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->updateTime()V

    .line 196
    return-void
.end method

.method public setUpdateFlag(Z)V
    .locals 0
    .param p1, "updateFlag"    # Z

    .prologue
    .line 209
    iput-boolean p1, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->mUpdateFlag:Z

    .line 211
    if-eqz p1, :cond_0

    .line 212
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->updateTime()V

    .line 214
    :cond_0
    return-void
.end method

.method public updateTime()V
    .locals 6

    .prologue
    .line 165
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->setDateFormat()V

    .line 166
    iget-boolean v3, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->mLive:Z

    if-eqz v3, :cond_0

    .line 167
    iget-object v3, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 169
    :cond_0
    iget-object v3, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->mTimeZoneId:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 170
    iget-object v3, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->mCalendar:Ljava/util/Calendar;

    iget-object v4, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->mTimeZoneId:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 173
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->mHoursFormat:Ljava/lang/String;

    iget-object v5, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mm"

    iget-object v5, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 174
    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "fullTimeStr":Ljava/lang/String;
    iget-object v3, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 176
    .local v2, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 177
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "time"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 179
    iget-object v3, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 181
    invoke-virtual {p0, v1}, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 182
    return-void
.end method

.method public updateTime(II)V
    .locals 2
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .prologue
    .line 156
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 157
    .local v0, "c":Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 158
    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 159
    iput-object v0, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 160
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->updateTime()V

    .line 161
    return-void
.end method

.method public updateTime(Ljava/util/Calendar;)V
    .locals 0
    .param p1, "c"    # Ljava/util/Calendar;

    .prologue
    .line 150
    iput-object p1, p0, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 151
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/NubiaDigitalClock;->updateTime()V

    .line 152
    return-void
.end method
