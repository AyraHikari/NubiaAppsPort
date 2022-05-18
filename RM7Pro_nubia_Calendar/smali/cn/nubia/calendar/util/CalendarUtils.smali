.class public Lcn/nubia/calendar/util/CalendarUtils;
.super Ljava/lang/Object;
.source "CalendarUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CalendarUtils"

.field private static mEventId:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    const-wide/16 v0, -0x1

    sput-wide v0, Lcn/nubia/calendar/util/CalendarUtils;->mEventId:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 49
    sput-wide p0, Lcn/nubia/calendar/util/CalendarUtils;->mEventId:J

    return-wide p0
.end method

.method public static getCalendarIdByEventId(Landroid/content/ContentResolver;J)J
    .locals 9
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "id"    # J

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 55
    new-instance v0, Lcn/nubia/calendar/util/CalendarUtils$1;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/util/CalendarUtils$1;-><init>(Landroid/content/ContentResolver;)V

    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "calendar_id"

    aput-object v5, v4, v1

    const-string v5, "_id=?"

    new-array v6, v6, [Ljava/lang/String;

    .line 68
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    move-object v7, v2

    .line 66
    invoke-virtual/range {v0 .. v7}, Lcn/nubia/calendar/util/CalendarUtils$1;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    sget-wide v0, Lcn/nubia/calendar/util/CalendarUtils;->mEventId:J

    return-wide v0
.end method

.method public static getGapCountFromNow(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "end"    # J

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 434
    invoke-static {p0, p1, p2}, Lcn/nubia/calendar/util/CalendarUtils;->getGapCountFromNowCount(Landroid/content/Context;J)I

    move-result v0

    .line 435
    .local v0, "gapCount":I
    if-nez v0, :cond_0

    .line 436
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0094

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 442
    :goto_0
    return-object v1

    .line 437
    :cond_0
    if-lez v0, :cond_1

    .line 439
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c013b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 440
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 438
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 443
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c013c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 444
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 443
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getGapCountFromNowCount(Landroid/content/Context;J)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "end"    # J

    .prologue
    const/16 v8, 0xe

    const/16 v7, 0xd

    const/16 v6, 0xc

    const/16 v5, 0xb

    const/4 v4, 0x0

    .line 449
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 450
    .local v0, "endCalenadr":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 451
    invoke-virtual {v0, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 452
    invoke-virtual {v0, v6, v4}, Ljava/util/Calendar;->set(II)V

    .line 453
    invoke-virtual {v0, v7, v4}, Ljava/util/Calendar;->set(II)V

    .line 454
    invoke-virtual {v0, v8, v4}, Ljava/util/Calendar;->set(II)V

    .line 456
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 457
    .local v1, "nowCalendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 458
    invoke-virtual {v1, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 459
    invoke-virtual {v1, v6, v4}, Ljava/util/Calendar;->set(II)V

    .line 460
    invoke-virtual {v1, v7, v4}, Ljava/util/Calendar;->set(II)V

    .line 461
    invoke-virtual {v1, v8, v4}, Ljava/util/Calendar;->set(II)V

    .line 462
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 463
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    div-long/2addr v2, v4

    long-to-int v2, v2

    .line 462
    return v2
.end method

.method public static getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prefsName"    # Ljava/lang/String;

    .prologue
    .line 427
    sget-object v0, Lcn/nubia/calendar/util/Utils;->prefs0:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 428
    sget-object v0, Lcn/nubia/calendar/util/Utils;->prefs0:Landroid/content/SharedPreferences;

    .line 430
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method public static setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 400
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 401
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 402
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 403
    return-void
.end method

.method public static setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 419
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 420
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 421
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 422
    return-void
.end method
