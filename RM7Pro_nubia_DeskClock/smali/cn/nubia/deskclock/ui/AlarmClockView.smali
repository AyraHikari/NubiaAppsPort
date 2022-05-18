.class public Lcn/nubia/deskclock/ui/AlarmClockView;
.super Lcn/nubia/deskclock/ui/ClockView;
.source "AlarmClockView.java"


# instance fields
.field private mAlarmTime:J

.field private mCanvas:Landroid/graphics/Canvas;

.field private mIsAlarmInOneday:Z

.field private mIsShowNextAlarmPoint:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/ClockView;-><init>(Landroid/content/Context;)V

    .line 29
    iput-boolean v1, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mIsAlarmInOneday:Z

    .line 106
    new-instance v0, Lcn/nubia/deskclock/ui/AlarmClockView$1;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/ui/AlarmClockView$1;-><init>(Lcn/nubia/deskclock/ui/AlarmClockView;)V

    iput-object v0, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 35
    invoke-virtual {p0, v1}, Lcn/nubia/deskclock/ui/AlarmClockView;->loadImageResource(Z)V

    .line 36
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/AlarmClockView;->registerReceiver()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Lcn/nubia/deskclock/ui/ClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput-boolean v1, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mIsAlarmInOneday:Z

    .line 106
    new-instance v0, Lcn/nubia/deskclock/ui/AlarmClockView$1;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/ui/AlarmClockView$1;-><init>(Lcn/nubia/deskclock/ui/AlarmClockView;)V

    iput-object v0, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 41
    invoke-virtual {p0, v1}, Lcn/nubia/deskclock/ui/AlarmClockView;->loadImageResource(Z)V

    .line 42
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/AlarmClockView;->registerReceiver()V

    .line 43
    return-void
.end method

.method private initIsAlarmInOneDay(J)V
    .locals 7
    .param p1, "alarmTime"    # J

    .prologue
    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 82
    .local v0, "nowTime":J
    sub-long v2, p1, v0

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    sub-long v2, p1, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 83
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mIsAlarmInOneday:Z

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mIsAlarmInOneday:Z

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 97
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 98
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.nubia.deskclock.NEXT_ALARM_TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    sget-object v1, Lcn/nubia/deskclock/DeskClockApplication;->globalApplicationContext:Landroid/app/Application;

    iget-object v2, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 100
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 103
    sget-object v0, Lcn/nubia/deskclock/DeskClockApplication;->globalApplicationContext:Landroid/app/Application;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 104
    return-void
.end method


# virtual methods
.method public initIsShowNextAlarmPoint()V
    .locals 3

    .prologue
    .line 90
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Lcn/nubia/deskclock/DeskClockApplication;->getDefaultSharedPref()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 92
    .local v0, "sharedPref":Landroid/content/SharedPreferences;
    const-string v1, "isShowNextAlarmPoint"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mIsShowNextAlarmPoint:Z

    .line 94
    return-void
.end method

.method public initShowNextAlarmPoint()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 69
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v1

    .line 70
    invoke-virtual {v1}, Lcn/nubia/deskclock/DeskClockApplication;->getAlarmsPrefereceSharedPref()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 71
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "next_alarm_without_snooze"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mAlarmTime:J

    .line 72
    iget-wide v2, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mAlarmTime:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 73
    iget-wide v2, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mAlarmTime:J

    invoke-direct {p0, v2, v3}, Lcn/nubia/deskclock/ui/AlarmClockView;->initIsAlarmInOneDay(J)V

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/AlarmClockView;->initIsShowNextAlarmPoint()V

    .line 76
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/AlarmClockView;->invalidate()V

    .line 78
    return-void
.end method

.method protected loadImageResource(Z)V
    .locals 3
    .param p1, "isWorldClock"    # Z

    .prologue
    .line 48
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mNextAlarmPointImage:Lcn/nubia/deskclock/ui/ClockImage;

    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/AlarmClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020094

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 51
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/AlarmClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a019e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mSecBasePointDistance:F

    .line 53
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/AlarmClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a019d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mMinBasePointDistance:F

    .line 55
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/AlarmClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a019c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mHourBasePointDistance:F

    .line 57
    invoke-super {p0, p1}, Lcn/nubia/deskclock/ui/ClockView;->loadImageResource(Z)V

    .line 58
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcn/nubia/deskclock/ui/ClockView;->onDraw(Landroid/graphics/Canvas;)V

    .line 63
    iget-boolean v0, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mIsShowNextAlarmPoint:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mIsAlarmInOneday:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mAlarmTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 64
    iget-wide v0, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mAlarmTime:J

    invoke-virtual {p0, p1, v0, v1}, Lcn/nubia/deskclock/ui/AlarmClockView;->drawNextAlarmPoint(Landroid/graphics/Canvas;J)V

    .line 66
    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mDialImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mDialImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 133
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mDialImage:Lcn/nubia/deskclock/ui/ClockImage;

    iput-object v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 135
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mSecHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mSecHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 137
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mSecHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iput-object v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 139
    :cond_1
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mMinHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mMinHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 141
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mMinHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iput-object v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 143
    :cond_2
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mHourHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 144
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mHourHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 145
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mHourHandImage:Lcn/nubia/deskclock/ui/ClockImage;

    iput-object v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 147
    :cond_3
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mNextAlarmPointImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 148
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mNextAlarmPointImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 149
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mNextAlarmPointImage:Lcn/nubia/deskclock/ui/ClockImage;

    iput-object v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 152
    :cond_4
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mHandMarkImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 153
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mHandMarkImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 154
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mHandMarkImage:Lcn/nubia/deskclock/ui/ClockImage;

    iput-object v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 156
    :cond_5
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mTimeTableImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_6

    .line 157
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mTimeTableImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 158
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mTimeTableImage:Lcn/nubia/deskclock/ui/ClockImage;

    iput-object v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 160
    :cond_6
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mClockBackgroundImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_7

    .line 161
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mClockBackgroundImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 162
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mClockBackgroundImage:Lcn/nubia/deskclock/ui/ClockImage;

    iput-object v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 164
    :cond_7
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mOuterCircleImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_8

    .line 165
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mOuterCircleImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 166
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mOuterCircleImage:Lcn/nubia/deskclock/ui/ClockImage;

    iput-object v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 168
    :cond_8
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mHandMarkSmallImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_9

    .line 169
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mHandMarkSmallImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 170
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mHandMarkSmallImage:Lcn/nubia/deskclock/ui/ClockImage;

    iput-object v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 172
    :cond_9
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mSecondHandleImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_a

    .line 173
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mSecondHandleImage:Lcn/nubia/deskclock/ui/ClockImage;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 174
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmClockView;->mSecondHandleImage:Lcn/nubia/deskclock/ui/ClockImage;

    iput-object v1, v0, Lcn/nubia/deskclock/ui/ClockImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 177
    :cond_a
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/AlarmClockView;->unregisterReceiver()V

    .line 178
    return-void
.end method

.method public startCloseAnimation()V
    .locals 0

    .prologue
    .line 127
    invoke-super {p0}, Lcn/nubia/deskclock/ui/ClockView;->startCloseAnimation()V

    .line 128
    return-void
.end method

.method public startEnterAnimation(IIIZ)V
    .locals 0
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I
    .param p4, "isDelay"    # Z

    .prologue
    .line 116
    invoke-super {p0, p1, p2, p3, p4}, Lcn/nubia/deskclock/ui/ClockView;->startEnterAnimation(IIIZ)V

    .line 117
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/AlarmClockView;->initShowNextAlarmPoint()V

    .line 118
    return-void
.end method

.method public startUpdateTime()V
    .locals 0

    .prologue
    .line 122
    invoke-super {p0}, Lcn/nubia/deskclock/ui/ClockView;->startUpdateTime()V

    .line 123
    return-void
.end method
