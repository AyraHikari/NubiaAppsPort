.class public Lcn/nubia/calendar/util/DateTimeCalcUtil;
.super Ljava/lang/Object;
.source "DateTimeCalcUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DateTimeCalcUtil"

.field public static mMonthStr:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFormatStrBdr:Ljava/lang/StringBuilder;

.field private mFormatter:Ljava/util/Formatter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object v0, p0, Lcn/nubia/calendar/util/DateTimeCalcUtil;->mContext:Landroid/content/Context;

    .line 149
    iput-object v0, p0, Lcn/nubia/calendar/util/DateTimeCalcUtil;->mFormatter:Ljava/util/Formatter;

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/util/DateTimeCalcUtil;->mFormatStrBdr:Ljava/lang/StringBuilder;

    .line 29
    iput-object p1, p0, Lcn/nubia/calendar/util/DateTimeCalcUtil;->mContext:Landroid/content/Context;

    .line 30
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcn/nubia/calendar/util/DateTimeCalcUtil;->mFormatStrBdr:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcn/nubia/calendar/util/DateTimeCalcUtil;->mFormatter:Ljava/util/Formatter;

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcn/nubia/calendar/util/DateTimeCalcUtil;->mMonthStr:[Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public buildMonthDate(J)I
    .locals 5
    .param p1, "milliTime"    # J

    .prologue
    .line 44
    iget-object v3, p0, Lcn/nubia/calendar/util/DateTimeCalcUtil;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcn/nubia/SportsGameEvents/SportsUtils/TimeZoneOprate;->getCurrentTimeZoneID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, "timeZoneId":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 46
    .local v1, "timeZone":Ljava/util/TimeZone;
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 47
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 48
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    return v3
.end method

.method public buildMonthYearDate(Landroid/text/format/Time;)Ljava/lang/String;
    .locals 9
    .param p1, "time"    # Landroid/text/format/Time;

    .prologue
    const/4 v1, 0x0

    .line 56
    const/4 v8, 0x0

    .line 57
    .local v8, "date":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 58
    .local v2, "milliTime":J
    const/4 v7, 0x0

    .line 60
    .local v7, "timeZone":Ljava/lang/String;
    iget-object v0, p0, Lcn/nubia/calendar/util/DateTimeCalcUtil;->mFormatStrBdr:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 61
    iget-object v0, p0, Lcn/nubia/calendar/util/DateTimeCalcUtil;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/calendar/util/DateTimeCalcUtil;->mFormatter:Ljava/util/Formatter;

    const v6, 0x10034

    move-wide v4, v2

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v8

    .line 69
    return-object v8
.end method

.method public buildYearDate(J)I
    .locals 5
    .param p1, "milliTime"    # J

    .prologue
    .line 36
    iget-object v3, p0, Lcn/nubia/calendar/util/DateTimeCalcUtil;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcn/nubia/SportsGameEvents/SportsUtils/TimeZoneOprate;->getCurrentTimeZoneID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, "timeZoneId":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 38
    .local v1, "timeZone":Ljava/util/TimeZone;
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 39
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 40
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    return v3
.end method

.method public buildYearDate(I)Ljava/lang/String;
    .locals 3
    .param p1, "year"    # I

    .prologue
    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "yearStr":Ljava/lang/String;
    return-object v0
.end method

.method public buildYearDate(Landroid/text/format/Time;)Ljava/lang/String;
    .locals 3
    .param p1, "time"    # Landroid/text/format/Time;

    .prologue
    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Landroid/text/format/Time;->year:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "yearStr":Ljava/lang/String;
    return-object v0
.end method

.method public buildYearDateWithShowWeek(Landroid/text/format/Time;J)Ljava/lang/String;
    .locals 12
    .param p1, "time"    # Landroid/text/format/Time;
    .param p2, "millis"    # J

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 80
    const/4 v1, 0x0

    .line 81
    .local v1, "date":Ljava/lang/String;
    invoke-virtual {p1, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    .line 82
    .local v4, "milliTime":J
    const/4 v3, 0x0

    .line 84
    .local v3, "timeZone":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd"

    invoke-direct {v2, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 85
    .local v2, "df":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 86
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 87
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    .line 88
    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 90
    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v7, v8, :cond_0

    .line 91
    iget-object v7, p0, Lcn/nubia/calendar/util/DateTimeCalcUtil;->mContext:Landroid/content/Context;

    .line 92
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00e7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x3

    .line 94
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    .line 91
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 107
    .local v6, "weekofYear":Ljava/lang/String;
    :goto_0
    move-object v1, v6

    .line 111
    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v2    # "df":Ljava/text/SimpleDateFormat;
    .end local v6    # "weekofYear":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 95
    .restart local v0    # "cal":Ljava/util/Calendar;
    .restart local v2    # "df":Ljava/text/SimpleDateFormat;
    :cond_0
    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 96
    iget-object v7, p0, Lcn/nubia/calendar/util/DateTimeCalcUtil;->mContext:Landroid/content/Context;

    .line 97
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00e8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x3

    .line 99
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    .line 96
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "weekofYear":Ljava/lang/String;
    goto :goto_0

    .line 101
    .end local v6    # "weekofYear":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcn/nubia/calendar/util/DateTimeCalcUtil;->mContext:Landroid/content/Context;

    .line 102
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00e6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x3

    .line 104
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    .line 101
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .restart local v6    # "weekofYear":Ljava/lang/String;
    goto :goto_0

    .line 108
    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v2    # "df":Ljava/text/SimpleDateFormat;
    .end local v6    # "weekofYear":Ljava/lang/String;
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public getMonthStr(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 115
    sget-object v0, Lcn/nubia/calendar/util/DateTimeCalcUtil;->mMonthStr:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getYearString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcn/nubia/calendar/util/DateTimeCalcUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0184

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final timeFromIntentInMillis(Landroid/content/Intent;)J
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v6, -0x1

    .line 126
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 127
    .local v0, "data":Landroid/net/Uri;
    const-string v5, "beginTime"

    invoke-virtual {p1, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 129
    .local v2, "millis":J
    cmp-long v5, v2, v6

    if-nez v5, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->isHierarchical()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 130
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    .line 131
    .local v4, "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "time"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 133
    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 141
    .end local v4    # "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-gtz v5, :cond_1

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 144
    :cond_1
    return-wide v2

    .line 134
    .restart local v4    # "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 135
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v5, "Calendar"

    const-string v6, "timeFromIntentInMillis: Data existed but no valid time found. Using current time."

    invoke-static {v5, v6}, Lcn/nubia/calendar/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
