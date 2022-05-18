.class public Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;
.super Landroid/widget/LinearLayout;
.source "NubiaAlertDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock$FormatChangeObserver;,
        Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock$AmPm;
    }
.end annotation


# static fields
.field private static final HOURS:Ljava/lang/String; = "hh"

.field private static final HOURS_24:Ljava/lang/String; = "kk"

.field private static final MINUTES:Ljava/lang/String; = "mm"


# instance fields
.field private isAlert:Z

.field private mAlertNubiaFonts:Landroid/graphics/Typeface;

.field private mAmPm:Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock$AmPm;

.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mContext:Landroid/content/Context;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mHoursFormat:Ljava/lang/String;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIs24HourFormat:Z

.field private mLive:Z

.field private mTimeDisplayHours:Landroid/widget/TextView;

.field private mTimeDisplayMinutes:Landroid/widget/TextView;

.field private mTimeZoneId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    iput-object p1, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mContext:Landroid/content/Context;

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 126
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mLive:Z

    .line 58
    iput-boolean v2, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->isAlert:Z

    .line 65
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mHandler:Landroid/os/Handler;

    .line 66
    new-instance v1, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock$1;

    invoke-direct {v1, p0}, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock$1;-><init>(Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;)V

    iput-object v1, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 127
    sget-object v1, Lcn/nubia/deskclock/preset/R$styleable;->DigitalClock:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 129
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->isAlert:Z

    .line 130
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 131
    iput-object p1, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mContext:Landroid/content/Context;

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mLive:Z

    return v0
.end method

.method static synthetic access$102(Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;
    .param p1, "x1"    # Ljava/util/Calendar;

    .prologue
    .line 45
    iput-object p1, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;

    .prologue
    .line 45
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->setDateFormat()V

    return-void
.end method

.method private initAlertNubiaFonts()V
    .locals 3

    .prologue
    .line 151
    iget-object v1, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mAlertNubiaFonts:Landroid/graphics/Typeface;

    if-nez v1, :cond_0

    .line 153
    :try_start_0
    iget-object v1, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/Nubiafont2.0_Vertical.otf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mAlertNubiaFonts:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setDateFormat()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/deskclock/model/AlarmsDb;->get24HourMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mIs24HourFormat:Z

    .line 240
    iget-boolean v0, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mIs24HourFormat:Z

    if-eqz v0, :cond_0

    const-string v0, "kk"

    :goto_0
    iput-object v0, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mHoursFormat:Ljava/lang/String;

    .line 241
    iget-object v1, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mAmPm:Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock$AmPm;

    iget-boolean v0, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mIs24HourFormat:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock$AmPm;->setShowAmPm(Z)V

    .line 242
    return-void

    .line 240
    :cond_0
    const-string v0, "hh"

    goto :goto_0

    .line 241
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 163
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 164
    iget-boolean v1, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mAttached:Z

    if-eqz v1, :cond_0

    .line 180
    :goto_0
    return-void

    .line 166
    :cond_0
    iput-boolean v5, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mAttached:Z

    .line 167
    iget-boolean v1, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mLive:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->isAlert:Z

    if-nez v1, :cond_1

    .line 169
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 170
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-static {}, Lcn/nubia/deskclock/AsyncHandler;->getAsyncHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 177
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    new-instance v1, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock$FormatChangeObserver;

    invoke-direct {v1, p0}, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock$FormatChangeObserver;-><init>(Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;)V

    iput-object v1, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 178
    iget-object v1, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 184
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 186
    iget-boolean v0, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mAttached:Z

    if-nez v0, :cond_0

    .line 196
    :goto_0
    return-void

    .line 188
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mAttached:Z

    .line 190
    iget-boolean v0, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mLive:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->isAlert:Z

    if-nez v0, :cond_1

    .line 191
    iget-object v0, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 193
    :cond_1
    iget-object v0, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 136
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 137
    const v0, 0x7f12006d

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mTimeDisplayHours:Landroid/widget/TextView;

    .line 138
    const v0, 0x7f12006e

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mTimeDisplayMinutes:Landroid/widget/TextView;

    .line 139
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->initAlertNubiaFonts()V

    .line 140
    iget-object v0, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mAlertNubiaFonts:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mTimeDisplayHours:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mAlertNubiaFonts:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 142
    iget-object v0, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mTimeDisplayMinutes:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mAlertNubiaFonts:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 144
    :cond_0
    new-instance v0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock$AmPm;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock$AmPm;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mAmPm:Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock$AmPm;

    .line 145
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 146
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->setDateFormat()V

    .line 147
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->updateTime()V

    .line 148
    return-void
.end method

.method public setLive(Z)V
    .locals 0
    .param p1, "live"    # Z

    .prologue
    .line 245
    iput-boolean p1, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mLive:Z

    .line 246
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 254
    iget-object v0, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mTimeDisplayHours:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 255
    iget-object v0, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mAmPm:Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock$AmPm;

    invoke-virtual {v0, p1}, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock$AmPm;->setTextColor(I)V

    .line 256
    iget-object v0, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mTimeDisplayMinutes:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 257
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 249
    iput-object p1, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mTimeZoneId:Ljava/lang/String;

    .line 250
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->updateTime()V

    .line 251
    return-void
.end method

.method public updateTime()V
    .locals 6

    .prologue
    .line 213
    iget-boolean v3, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mLive:Z

    if-eqz v3, :cond_0

    .line 214
    iget-object v3, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 216
    :cond_0
    iget-object v3, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mTimeZoneId:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 217
    iget-object v3, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mCalendar:Ljava/util/Calendar;

    iget-object v4, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mTimeZoneId:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 220
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .local v0, "fullTimeStr":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mHoursFormat:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 222
    .local v2, "newTime":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mTimeDisplayHours:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 224
    const-string v3, "mm"

    iget-object v4, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 225
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 226
    iget-object v3, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mTimeDisplayMinutes:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v3, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-nez v3, :cond_3

    const/4 v1, 0x1

    .line 229
    .local v1, "isMorning":Z
    :goto_0
    iget-object v3, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mAmPm:Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock$AmPm;

    invoke-virtual {v3, v1}, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock$AmPm;->setIsMorning(Z)V

    .line 230
    iget-object v3, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcn/nubia/deskclock/model/AlarmsDb;->get24HourMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 231
    iget-object v3, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mAmPm:Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock$AmPm;

    invoke-virtual {v3}, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock$AmPm;->getAmPmText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 235
    :cond_2
    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 236
    return-void

    .line 228
    .end local v1    # "isMorning":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateTime(II)V
    .locals 2
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .prologue
    .line 205
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 206
    .local v0, "c":Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 207
    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 208
    iput-object v0, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 209
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->updateTime()V

    .line 210
    return-void
.end method

.method public updateTime(Ljava/util/Calendar;)V
    .locals 0
    .param p1, "c"    # Ljava/util/Calendar;

    .prologue
    .line 199
    iput-object p1, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 200
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;->updateTime()V

    .line 201
    return-void
.end method
