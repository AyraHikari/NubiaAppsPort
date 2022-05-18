.class public final Lnet/fortuna/ical4j/util/Dates;
.super Ljava/lang/Object;
.source "Dates.java"


# static fields
.field public static final DAYS_PER_WEEK:I = 0x7

.field private static final INVALID_MONTH_DAY_MESSAGE:Ljava/lang/String; = "Invalid month day [{0}]"

.field private static final INVALID_WEEK_MESSAGE:Ljava/lang/String; = "Invalid week number [{0}]"

.field private static final INVALID_YEAR_DAY_MESSAGE:Ljava/lang/String; = "Invalid year day [{0}]"

.field public static final MAX_DAYS_PER_MONTH:I = 0x1f

.field public static final MAX_DAYS_PER_YEAR:I = 0x16e

.field public static final MAX_WEEKS_PER_YEAR:I = 0x35

.field public static final MILLIS_PER_DAY:J = 0x5265c00L

.field public static final MILLIS_PER_HOUR:J = 0x36ee80L

.field public static final MILLIS_PER_MINUTE:J = 0xea60L

.field public static final MILLIS_PER_SECOND:J = 0x3e8L

.field public static final MILLIS_PER_WEEK:J = 0x240c8400L

.field public static final PRECISION_DAY:I = 0x1

.field public static final PRECISION_SECOND:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    return-void
.end method

.method public static getAbsMonthDay(Ljava/util/Date;I)I
    .locals 8
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "monthDay"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x5

    const/4 v5, 0x1

    .line 192
    if-eqz p1, :cond_0

    const/16 v3, -0x1f

    if-lt p1, v3, :cond_0

    const/16 v3, 0x1f

    if-le p1, v3, :cond_1

    .line 193
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid month day [{0}]"

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 196
    :cond_1
    if-lez p1, :cond_2

    .line 209
    .end local p1    # "monthDay":I
    :goto_0
    return p1

    .line 199
    .restart local p1    # "monthDay":I
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 200
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 201
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 203
    .local v2, "month":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v1, "days":Ljava/util/List;
    invoke-virtual {v0, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 205
    :goto_1
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 206
    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-virtual {v0, v6, v5}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    .line 209
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, p1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0
.end method

.method public static getAbsWeekNo(Ljava/util/Date;I)I
    .locals 8
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "weekNo"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 132
    if-eqz p1, :cond_0

    const/16 v3, -0x35

    if-lt p1, v3, :cond_0

    const/16 v3, 0x35

    if-le p1, v3, :cond_1

    .line 133
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid week number [{0}]"

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 136
    :cond_1
    if-lez p1, :cond_2

    .line 149
    .end local p1    # "weekNo":I
    :goto_0
    return p1

    .line 139
    .restart local p1    # "weekNo":I
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 140
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 141
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 143
    .local v2, "year":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v1, "weeks":Ljava/util/List;
    invoke-virtual {v0, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 145
    :goto_1
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 146
    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-virtual {v0, v6, v5}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    .line 149
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, p1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0
.end method

.method public static getAbsYearDay(Ljava/util/Date;I)I
    .locals 8
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "yearDay"    # I

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x1

    .line 162
    if-eqz p1, :cond_0

    const/16 v3, -0x16e

    if-lt p1, v3, :cond_0

    const/16 v3, 0x16e

    if-le p1, v3, :cond_1

    .line 163
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid year day [{0}]"

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 166
    :cond_1
    if-lez p1, :cond_2

    .line 179
    .end local p1    # "yearDay":I
    :goto_0
    return p1

    .line 169
    .restart local p1    # "yearDay":I
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 170
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 171
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 173
    .local v2, "year":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v1, "days":Ljava/util/List;
    invoke-virtual {v0, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 175
    :goto_1
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 176
    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-virtual {v0, v6, v5}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    .line 179
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, p1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0
.end method

.method public static getCalendarInstance(Lnet/fortuna/ical4j/model/Date;)Ljava/util/Calendar;
    .locals 3
    .param p0, "date"    # Lnet/fortuna/ical4j/model/Date;

    .prologue
    .line 233
    const/4 v1, 0x0

    .line 234
    .local v1, "instance":Ljava/util/Calendar;
    instance-of v2, p0, Lnet/fortuna/ical4j/model/DateTime;

    if-eqz v2, :cond_2

    move-object v0, p0

    .line 235
    check-cast v0, Lnet/fortuna/ical4j/model/DateTime;

    .line 236
    .local v0, "dateTime":Lnet/fortuna/ical4j/model/DateTime;
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/DateTime;->getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 237
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/DateTime;->getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 250
    .end local v0    # "dateTime":Lnet/fortuna/ical4j/model/DateTime;
    :goto_0
    return-object v1

    .line 239
    .restart local v0    # "dateTime":Lnet/fortuna/ical4j/model/DateTime;
    :cond_0
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/DateTime;->isUtc()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 240
    invoke-static {}, Lnet/fortuna/ical4j/util/TimeZones;->getUtcTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    goto :goto_0

    .line 244
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    goto :goto_0

    .line 248
    .end local v0    # "dateTime":Lnet/fortuna/ical4j/model/DateTime;
    :cond_2
    invoke-static {}, Lnet/fortuna/ical4j/util/TimeZones;->getDateTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    goto :goto_0
.end method

.method public static getCurrentTimeRounded()J
    .locals 4

    .prologue
    .line 313
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static getInstance(Ljava/util/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/Date;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "type"    # Lnet/fortuna/ical4j/model/parameter/Value;

    .prologue
    .line 220
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->DATE:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    new-instance v0, Lnet/fortuna/ical4j/model/Date;

    invoke-direct {v0, p0}, Lnet/fortuna/ical4j/model/Date;-><init>(Ljava/util/Date;)V

    .line 223
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lnet/fortuna/ical4j/model/DateTime;

    invoke-direct {v0, p0}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/util/Date;)V

    goto :goto_0
.end method

.method public static round(JI)J
    .locals 2
    .param p0, "time"    # J
    .param p2, "precision"    # I

    .prologue
    .line 261
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lnet/fortuna/ical4j/util/Dates;->round(JILjava/util/TimeZone;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static round(JILjava/util/TimeZone;)J
    .locals 8
    .param p0, "time"    # J
    .param p2, "precision"    # I
    .param p3, "tz"    # Ljava/util/TimeZone;

    .prologue
    const/16 v6, 0xe

    .line 286
    if-nez p2, :cond_0

    const-wide/16 v2, 0x3e8

    rem-long v2, p0, v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 303
    .end local p0    # "time":J
    :goto_0
    return-wide p0

    .line 289
    .restart local p0    # "time":J
    :cond_0
    invoke-static {p3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 290
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 291
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 293
    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 294
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->clear(I)V

    .line 295
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->clear(I)V

    .line 296
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->clear(I)V

    .line 303
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    goto :goto_0

    .line 298
    :cond_2
    if-nez p2, :cond_1

    .line 300
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->clear(I)V

    goto :goto_1
.end method
