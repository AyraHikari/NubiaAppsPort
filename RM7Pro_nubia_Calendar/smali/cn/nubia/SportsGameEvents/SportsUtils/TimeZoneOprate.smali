.class public Lcn/nubia/SportsGameEvents/SportsUtils/TimeZoneOprate;
.super Ljava/lang/Object;
.source "TimeZoneOprate.java"


# static fields
.field public static final APPSPORTSVERSION:Ljava/lang/String; = "sportsMatchesVersion"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentPhoneTimeZoneID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 40
    .local v1, "timeZone":Ljava/util/TimeZone;
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "homeTZID":Ljava/lang/String;
    return-object v0
.end method

.method public static getCurrentTimeZoneID(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-static {p0}, Lcn/nubia/calendar/CalendarSettingsActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "preferences_home_tz_enabled_1"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 25
    .local v0, "checked":Z
    if-eqz v0, :cond_0

    .line 26
    new-instance v2, Lcn/nubia/calendar/util/SharedPrefUtil;

    invoke-direct {v2, p0}, Lcn/nubia/calendar/util/SharedPrefUtil;-><init>(Landroid/content/Context;)V

    .line 27
    .local v2, "mSharedPrefUtil":Lcn/nubia/calendar/util/SharedPrefUtil;
    const-string v5, "preferences_home_tz"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0263

    .line 28
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 27
    invoke-virtual {v2, v5, v6}, Lcn/nubia/calendar/util/SharedPrefUtil;->getSharedPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 33
    .end local v2    # "mSharedPrefUtil":Lcn/nubia/calendar/util/SharedPrefUtil;
    :goto_0
    return-object v3

    .line 31
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    .line 32
    .local v4, "timeZone":Ljava/util/TimeZone;
    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    .local v1, "homeTZID":Ljava/lang/String;
    move-object v3, v1

    .line 33
    goto :goto_0
.end method
