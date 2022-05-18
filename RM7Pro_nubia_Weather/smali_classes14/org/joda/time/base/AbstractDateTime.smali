.class public abstract Lorg/joda/time/base/AbstractDateTime;
.super Lorg/joda/time/base/AbstractInstant;
.source "AbstractDateTime.java"

# interfaces
.implements Lorg/joda/time/ReadableDateTime;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/joda/time/base/AbstractInstant;-><init>()V

    .line 53
    return-void
.end method


# virtual methods
.method public get(Lorg/joda/time/DateTimeFieldType;)I
    .locals 4

    .prologue
    .line 67
    if-nez p1, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The DateTimeFieldType must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getCenturyOfEra()I
    .locals 4

    .prologue
    .line 89
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->centuryOfEra()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getDayOfMonth()I
    .locals 4

    .prologue
    .line 174
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getDayOfWeek()I
    .locals 4

    .prologue
    .line 185
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfWeek()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getDayOfYear()I
    .locals 4

    .prologue
    .line 163
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getEra()I
    .locals 4

    .prologue
    .line 80
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->era()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getHourOfDay()I
    .locals 4

    .prologue
    .line 195
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->hourOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getMillisOfDay()I
    .locals 4

    .prologue
    .line 240
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getMillisOfSecond()I
    .locals 4

    .prologue
    .line 249
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->millisOfSecond()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getMinuteOfDay()I
    .locals 4

    .prologue
    .line 204
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->minuteOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getMinuteOfHour()I
    .locals 4

    .prologue
    .line 213
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->minuteOfHour()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getMonthOfYear()I
    .locals 4

    .prologue
    .line 140
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getSecondOfDay()I
    .locals 4

    .prologue
    .line 222
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->secondOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getSecondOfMinute()I
    .locals 4

    .prologue
    .line 231
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->secondOfMinute()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getWeekOfWeekyear()I
    .locals 4

    .prologue
    .line 154
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->weekOfWeekyear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getWeekyear()I
    .locals 4

    .prologue
    .line 131
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->weekyear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 4

    .prologue
    .line 116
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getYearOfCentury()I
    .locals 4

    .prologue
    .line 107
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->yearOfCentury()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getYearOfEra()I
    .locals 4

    .prologue
    .line 98
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->yearOfEra()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public toCalendar(Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 2

    .prologue
    .line 271
    if-nez p1, :cond_0

    .line 272
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 274
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Lorg/joda/time/DateTimeZone;->toTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 276
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->toDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 277
    return-object v0
.end method

.method public toGregorianCalendar()Ljava/util/GregorianCalendar;
    .locals 2

    .prologue
    .line 295
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 296
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeZone;->toTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 297
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->toDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 298
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/joda/convert/ToString;
    .end annotation

    .prologue
    .line 314
    invoke-super {p0}, Lorg/joda/time/base/AbstractInstant;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    if-nez p1, :cond_0

    .line 326
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->toString()Ljava/lang/String;

    move-result-object v0

    .line 328
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadableInstant;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 340
    if-nez p1, :cond_0

    .line 341
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractDateTime;->toString()Ljava/lang/String;

    move-result-object v0

    .line 343
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/joda/time/format/DateTimeFormatter;->withLocale(Ljava/util/Locale;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadableInstant;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
