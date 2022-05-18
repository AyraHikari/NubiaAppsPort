.class public Lcn/nubia/calendar/util/TrackUtils;
.super Ljava/lang/Object;
.source "TrackUtils.java"


# static fields
.field private static APP_NAME:Ljava/lang/String; = null

.field public static final CALENDAR_DAY_VIEW:Ljava/lang/String; = "CalendarDayView"

.field public static final CALENDAR_MONTH_VIEW:Ljava/lang/String; = "CalendarMonthView"

.field public static final CALENDAR_SETTING:Ljava/lang/String; = "CalendarSetting"

.field public static final CALENDAR_SETTING_POP_REMINDER:Ljava/lang/String; = "AlarmReminder"

.field public static final CALENDAR_WEEK_VIEW:Ljava/lang/String; = "CalendarWeekView"

.field public static final CALENDAR_YEAR_VIEW:Ljava/lang/String; = "CalendarYearView"

.field public static final CLICK_REMINDER:Ljava/lang/String; = "ClickReminder"

.field public static final GAME_ID:Ljava/lang/String; = "gameID"

.field public static final OPEN_WEATHER_APPLICATION:Ljava/lang/String; = "OpenWeatherApplication"

.field public static final SELECT_DATE:Ljava/lang/String; = "Selectdate"

.field public static final SPORTS_EVENTS:Ljava/lang/String; = "SportsEvents"

.field private static final TAG:Ljava/lang/String; = "TrackUtils"

.field public static final THIRD_PARD_JUMP:Ljava/lang/String; = "ThirdPardJump"

.field public static final WEATHER_SWITCH:Ljava/lang/String; = "WeatherSwitch"

.field private static isOpen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "cn.nubia.calendar.preset"

    sput-object v0, Lcn/nubia/calendar/util/TrackUtils;->APP_NAME:Ljava/lang/String;

    .line 10
    const/4 v0, 0x0

    sput-boolean v0, Lcn/nubia/calendar/util/TrackUtils;->isOpen:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 32
    invoke-static {p0}, Lcn/nubia/calendar/util/CtaUtils;->isFirstLaunch(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcn/nubia/calendar/util/TrackUtils;->isOpen:Z

    .line 33
    sget-boolean v0, Lcn/nubia/calendar/util/TrackUtils;->isOpen:Z

    invoke-static {}, Lcn/nubia/calendar/util/TrackUtils;->isInternalVersion()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    and-int/2addr v0, v1

    sput-boolean v0, Lcn/nubia/calendar/util/TrackUtils;->isOpen:Z

    .line 34
    sget-boolean v0, Lcn/nubia/calendar/util/TrackUtils;->isOpen:Z

    if-eqz v0, :cond_0

    .line 35
    invoke-static {}, Lcn/nubia/calendar/util/NubiaTrackManager;->getInstance()Lcn/nubia/calendar/util/NubiaTrackManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/util/NubiaTrackManager;->init(Landroid/content/Context;)V

    .line 37
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 32
    goto :goto_0

    :cond_2
    move v1, v2

    .line 33
    goto :goto_1
.end method

.method public static isInternalVersion()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 64
    const-string v3, "sys.nubia_internal_version_flag"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 65
    .local v0, "flag":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static onClickReminder(I)V
    .locals 3
    .param p0, "gameID"    # I

    .prologue
    .line 46
    sget-boolean v1, Lcn/nubia/calendar/util/TrackUtils;->isOpen:Z

    if-eqz v1, :cond_0

    .line 47
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 48
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "event"

    const-string v2, "ClickReminder"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v1, "gameID"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 50
    invoke-static {}, Lcn/nubia/calendar/util/NubiaTrackManager;->getInstance()Lcn/nubia/calendar/util/NubiaTrackManager;

    move-result-object v1

    sget-object v2, Lcn/nubia/calendar/util/TrackUtils;->APP_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcn/nubia/calendar/util/NubiaTrackManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 52
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public static sendEvent(Ljava/lang/String;)V
    .locals 2
    .param p0, "event"    # Ljava/lang/String;

    .prologue
    .line 55
    sget-boolean v0, Lcn/nubia/calendar/util/TrackUtils;->isOpen:Z

    if-eqz v0, :cond_0

    .line 56
    invoke-static {}, Lcn/nubia/calendar/util/NubiaTrackManager;->getInstance()Lcn/nubia/calendar/util/NubiaTrackManager;

    move-result-object v0

    sget-object v1, Lcn/nubia/calendar/util/TrackUtils;->APP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcn/nubia/calendar/util/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_0
    return-void
.end method

.method public static uninit()V
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcn/nubia/calendar/util/TrackUtils;->isOpen:Z

    if-eqz v0, :cond_0

    .line 41
    invoke-static {}, Lcn/nubia/calendar/util/NubiaTrackManager;->getInstance()Lcn/nubia/calendar/util/NubiaTrackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/calendar/util/NubiaTrackManager;->unbindServiceInvoked()V

    .line 43
    :cond_0
    return-void
.end method
