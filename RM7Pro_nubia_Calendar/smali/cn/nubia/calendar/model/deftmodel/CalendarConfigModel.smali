.class public Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;
.super Lcn/nubia/deftmachanism/DeftModel;
.source "CalendarConfigModel.java"


# static fields
.field public static final KEY_DEFAULT_REMINDERTIMER:Ljava/lang/String; = "preferences_default_reminder"

.field public static final SHARED_PREFS_NAME:Ljava/lang/String; = "cn.nubia.calendar.preset_preferences"

.field private static final TAG:Ljava/lang/String; = "CalendarConfigModel"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurTimeZoneType:I

.field private mIsChooserIntent:Z

.field private mOrientation:I

.field private mTimeZoneModel:Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Lcn/nubia/deftmachanism/DeftModel;-><init>()V

    .line 161
    iput v0, p0, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->mCurTimeZoneType:I

    .line 162
    iput-boolean v0, p0, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->mIsChooserIntent:Z

    .line 163
    iput-object v1, p0, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->mContext:Landroid/content/Context;

    .line 164
    iput-object v1, p0, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->mTimeZoneModel:Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;

    .line 16
    return-void
.end method

.method private initRemiderTimer(Landroid/content/Context;)V
    .locals 4
    .param p1, "cxt"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 28
    const/4 v0, 0x0

    .line 29
    .local v0, "reminderSharedPref":Ljava/lang/String;
    sget-object v1, Lcn/nubia/calendar/util/Utils;->prefs0:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    .line 30
    sget-object v1, Lcn/nubia/calendar/util/Utils;->prefs0:Landroid/content/SharedPreferences;

    const-string v2, "preferences_default_reminder"

    const-string v3, "-2"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    :goto_0
    const-string v1, "-2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    :try_start_0
    sget-object v1, Lcn/nubia/calendar/util/Utils;->prefs0:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_2

    .line 40
    sget-object v1, Lcn/nubia/calendar/util/Utils;->prefs0:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "preferences_default_reminder"

    const-string v3, "15"

    .line 41
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :cond_0
    :goto_1
    return-void

    .line 33
    :cond_1
    const-string v1, "cn.nubia.calendar.preset_preferences"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "preferences_default_reminder"

    const-string v3, "-2"

    .line 34
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 43
    :cond_2
    :try_start_1
    const-string v1, "cn.nubia.calendar.preset_preferences"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 44
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "preferences_default_reminder"

    const-string v3, "15"

    .line 45
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 47
    :catch_0
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public formatDateRange(JJI)Ljava/lang/String;
    .locals 7
    .param p1, "startMillis"    # J
    .param p3, "endMillis"    # J
    .param p5, "flags"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->mTimeZoneModel:Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->mTimeZoneModel:Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;

    iget-object v1, p0, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->mContext:Landroid/content/Context;

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    .line 151
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getCurTimeZoneType()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->mCurTimeZoneType:I

    return v0
.end method

.method public getDispOrientation()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->mOrientation:I

    return v0
.end method

.method public getHomeTZ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->mTimeZoneModel:Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->mTimeZoneModel:Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;

    invoke-virtual {v0}, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->getHomeTZ()Ljava/lang/String;

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getHomeTZCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->mTimeZoneModel:Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->mTimeZoneModel:Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;

    invoke-virtual {v0}, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->getHomeTZCity()Ljava/lang/String;

    move-result-object v0

    .line 134
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->mTimeZoneModel:Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->mTimeZoneModel:Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;

    iget-object v1, p0, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    .line 106
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getTimeZone(Ljava/lang/Runnable;)Ljava/lang/String;
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 111
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->mTimeZoneModel:Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->mTimeZoneModel:Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;

    iget-object v1, p0, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getTimeZoneModel()Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->mTimeZoneModel:Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    iput-object p1, p0, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->mContext:Landroid/content/Context;

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 21
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->setDispOrientation(IZ)V

    .line 22
    invoke-direct {p0, p1}, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->initRemiderTimer(Landroid/content/Context;)V

    .line 23
    new-instance v1, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;

    invoke-direct {v1}, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;-><init>()V

    iput-object v1, p0, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->mTimeZoneModel:Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;

    .line 24
    iget-object v1, p0, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->mTimeZoneModel:Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;

    iget-object v2, p0, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->init(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public isChooserIntent()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->mIsChooserIntent:Z

    return v0
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    if-nez p1, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const-string v0, "key_is_choose"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const-string v0, "key_is_choose"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->mIsChooserIntent:Z

    goto :goto_0
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    if-nez p1, :cond_0

    .line 58
    :goto_0
    return-void

    .line 57
    :cond_0
    const-string v0, "key_is_choose"

    iget-boolean v1, p0, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->mIsChooserIntent:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public setCurTimeZoneType(IZ)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "needNotify"    # Z

    .prologue
    .line 85
    iget v0, p0, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->mCurTimeZoneType:I

    if-ne v0, p1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iput p1, p0, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->mCurTimeZoneType:I

    .line 89
    if-eqz p2, :cond_0

    .line 90
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->notifyChanged(I)V

    goto :goto_0
.end method

.method public setDispOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "needNotify"    # Z

    .prologue
    .line 72
    iget v0, p0, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->mOrientation:I

    if-ne v0, p1, :cond_0

    .line 76
    :goto_0
    return-void

    .line 75
    :cond_0
    iput p1, p0, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->mOrientation:I

    goto :goto_0
.end method

.method public setHomeTZCity(Ljava/lang/String;)V
    .locals 1
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 125
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->mTimeZoneModel:Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->mTimeZoneModel:Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;

    invoke-virtual {v0, p1}, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->setHomeTZCity(Ljava/lang/String;)V

    .line 128
    :cond_0
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 2
    .param p1, "tz"    # Ljava/lang/String;

    .prologue
    .line 119
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->mTimeZoneModel:Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->mTimeZoneModel:Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;

    iget-object v1, p0, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->setTimeZone(Landroid/content/Context;Ljava/lang/String;)V

    .line 122
    :cond_0
    return-void
.end method
