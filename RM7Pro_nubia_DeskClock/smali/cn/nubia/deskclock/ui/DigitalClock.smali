.class public Lcn/nubia/deskclock/ui/DigitalClock;
.super Landroid/widget/LinearLayout;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deskclock/ui/DigitalClock$AmPm;
    }
.end annotation


# static fields
.field private static final HOURS_24_FORMAT:Ljava/lang/String; = "kk:mm"

.field private static final HOURS_FORMAT:Ljava/lang/String; = "hh:mm"


# instance fields
.field private mAmPm:Lcn/nubia/deskclock/ui/DigitalClock$AmPm;

.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mContext:Landroid/content/Context;

.field private mIsAlert:Z

.field private mLive:Z

.field private mTimeDisplay:Landroid/widget/TextView;

.field private mTimeFormat:Ljava/lang/String;

.field private mTimeZoneId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/deskclock/ui/DigitalClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    iput-object p1, p0, Lcn/nubia/deskclock/ui/DigitalClock;->mContext:Landroid/content/Context;

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 92
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/deskclock/ui/DigitalClock;->mLive:Z

    .line 52
    iput-boolean v2, p0, Lcn/nubia/deskclock/ui/DigitalClock;->mIsAlert:Z

    .line 93
    sget-object v1, Lcn/nubia/deskclock/preset/R$styleable;->DigitalClock:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 95
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/deskclock/ui/DigitalClock;->mIsAlert:Z

    .line 96
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    iput-object p1, p0, Lcn/nubia/deskclock/ui/DigitalClock;->mContext:Landroid/content/Context;

    .line 98
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 113
    iget-boolean v0, p0, Lcn/nubia/deskclock/ui/DigitalClock;->mAttached:Z

    if-eqz v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 115
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/deskclock/ui/DigitalClock;->mAttached:Z

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 120
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 122
    iget-boolean v0, p0, Lcn/nubia/deskclock/ui/DigitalClock;->mAttached:Z

    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 124
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/deskclock/ui/DigitalClock;->mAttached:Z

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 104
    const v0, 0x7f12007f

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/ui/DigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/deskclock/ui/DigitalClock;->mTimeDisplay:Landroid/widget/TextView;

    .line 105
    new-instance v0, Lcn/nubia/deskclock/ui/DigitalClock$AmPm;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/ui/DigitalClock$AmPm;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcn/nubia/deskclock/ui/DigitalClock;->mAmPm:Lcn/nubia/deskclock/ui/DigitalClock$AmPm;

    .line 106
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/DigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 107
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/DigitalClock;->updateTime()V

    .line 108
    return-void
.end method

.method public setAmPmTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 184
    iget-object v0, p0, Lcn/nubia/deskclock/ui/DigitalClock;->mAmPm:Lcn/nubia/deskclock/ui/DigitalClock$AmPm;

    invoke-virtual {v0, p1}, Lcn/nubia/deskclock/ui/DigitalClock$AmPm;->setTextColor(I)V

    .line 185
    return-void
.end method

.method public setLive(Z)V
    .locals 0
    .param p1, "live"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcn/nubia/deskclock/ui/DigitalClock;->mLive:Z

    .line 172
    return-void
.end method

.method public setTimeDisplayTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 180
    iget-object v0, p0, Lcn/nubia/deskclock/ui/DigitalClock;->mTimeDisplay:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 181
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 175
    iput-object p1, p0, Lcn/nubia/deskclock/ui/DigitalClock;->mTimeZoneId:Ljava/lang/String;

    .line 176
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/DigitalClock;->updateTime()V

    .line 177
    return-void
.end method

.method public updateTime()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 142
    iget-object v3, p0, Lcn/nubia/deskclock/ui/DigitalClock;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcn/nubia/deskclock/model/AlarmsDb;->get24HourMode(Landroid/content/Context;)Z

    move-result v0

    .line 143
    .local v0, "is24HourFormat":Z
    if-eqz v0, :cond_4

    const-string v3, "kk:mm"

    :goto_0
    iput-object v3, p0, Lcn/nubia/deskclock/ui/DigitalClock;->mTimeFormat:Ljava/lang/String;

    .line 144
    iget-object v6, p0, Lcn/nubia/deskclock/ui/DigitalClock;->mAmPm:Lcn/nubia/deskclock/ui/DigitalClock$AmPm;

    if-nez v0, :cond_5

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Lcn/nubia/deskclock/ui/DigitalClock$AmPm;->setShowAmPm(Z)V

    .line 145
    iget-boolean v3, p0, Lcn/nubia/deskclock/ui/DigitalClock;->mLive:Z

    if-eqz v3, :cond_0

    .line 146
    iget-object v3, p0, Lcn/nubia/deskclock/ui/DigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 148
    :cond_0
    iget-object v3, p0, Lcn/nubia/deskclock/ui/DigitalClock;->mTimeZoneId:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 149
    iget-object v3, p0, Lcn/nubia/deskclock/ui/DigitalClock;->mCalendar:Ljava/util/Calendar;

    iget-object v6, p0, Lcn/nubia/deskclock/ui/DigitalClock;->mTimeZoneId:Ljava/lang/String;

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 152
    :cond_1
    iget-object v3, p0, Lcn/nubia/deskclock/ui/DigitalClock;->mTimeFormat:Ljava/lang/String;

    iget-object v6, p0, Lcn/nubia/deskclock/ui/DigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v3, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 153
    .local v2, "time":Ljava/lang/String;
    iget-object v3, p0, Lcn/nubia/deskclock/ui/DigitalClock;->mTimeDisplay:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 154
    iget-object v3, p0, Lcn/nubia/deskclock/ui/DigitalClock;->mTimeDisplay:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :cond_2
    iget-object v3, p0, Lcn/nubia/deskclock/ui/DigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v6, 0x9

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-nez v3, :cond_6

    move v1, v4

    .line 158
    .local v1, "isMorning":Z
    :goto_2
    iget-object v3, p0, Lcn/nubia/deskclock/ui/DigitalClock;->mAmPm:Lcn/nubia/deskclock/ui/DigitalClock$AmPm;

    if-eqz v3, :cond_3

    .line 159
    iget-object v3, p0, Lcn/nubia/deskclock/ui/DigitalClock;->mAmPm:Lcn/nubia/deskclock/ui/DigitalClock$AmPm;

    invoke-virtual {v3, v1}, Lcn/nubia/deskclock/ui/DigitalClock$AmPm;->setIsMorning(Z)V

    .line 163
    :cond_3
    if-nez v0, :cond_7

    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/deskclock/ui/DigitalClock;->mAmPm:Lcn/nubia/deskclock/ui/DigitalClock$AmPm;

    invoke-virtual {v4}, Lcn/nubia/deskclock/ui/DigitalClock$AmPm;->getAmPmText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcn/nubia/deskclock/ui/DigitalClock;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 168
    :goto_3
    return-void

    .line 143
    .end local v1    # "isMorning":Z
    .end local v2    # "time":Ljava/lang/String;
    :cond_4
    const-string v3, "hh:mm"

    goto :goto_0

    :cond_5
    move v3, v5

    .line 144
    goto :goto_1

    .restart local v2    # "time":Ljava/lang/String;
    :cond_6
    move v1, v5

    .line 157
    goto :goto_2

    .line 166
    .restart local v1    # "isMorning":Z
    :cond_7
    invoke-virtual {p0, v2}, Lcn/nubia/deskclock/ui/DigitalClock;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public updateTime(II)V
    .locals 2
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .prologue
    .line 134
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 135
    .local v0, "c":Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 136
    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 137
    iput-object v0, p0, Lcn/nubia/deskclock/ui/DigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 138
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/DigitalClock;->updateTime()V

    .line 139
    return-void
.end method

.method public updateTime(Ljava/util/Calendar;)V
    .locals 0
    .param p1, "c"    # Ljava/util/Calendar;

    .prologue
    .line 128
    iput-object p1, p0, Lcn/nubia/deskclock/ui/DigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 129
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/DigitalClock;->updateTime()V

    .line 130
    return-void
.end method
