.class public final Lorg/joda/time/Interval;
.super Lorg/joda/time/base/BaseInterval;
.source "Interval.java"

# interfaces
.implements Lorg/joda/time/ReadableInterval;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x44500feba8e6e200L


# direct methods
.method public constructor <init>(JJ)V
    .locals 7

    .prologue
    .line 159
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/joda/time/base/BaseInterval;-><init>(JJLorg/joda/time/Chronology;)V

    .line 160
    return-void
.end method

.method public constructor <init>(JJLorg/joda/time/Chronology;)V
    .locals 1

    .prologue
    .line 186
    invoke-direct/range {p0 .. p5}, Lorg/joda/time/base/BaseInterval;-><init>(JJLorg/joda/time/Chronology;)V

    .line 187
    return-void
.end method

.method public constructor <init>(JJLorg/joda/time/DateTimeZone;)V
    .locals 7

    .prologue
    .line 173
    invoke-static {p5}, Lorg/joda/time/chrono/ISOChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/ISOChronology;

    move-result-object v6

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/joda/time/base/BaseInterval;-><init>(JJLorg/joda/time/Chronology;)V

    .line 174
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/joda/time/base/BaseInterval;-><init>(Ljava/lang/Object;Lorg/joda/time/Chronology;)V

    .line 271
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/joda/time/Chronology;)V
    .locals 0

    .prologue
    .line 289
    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BaseInterval;-><init>(Ljava/lang/Object;Lorg/joda/time/Chronology;)V

    .line 290
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/ReadableDuration;Lorg/joda/time/ReadableInstant;)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BaseInterval;-><init>(Lorg/joda/time/ReadableDuration;Lorg/joda/time/ReadableInstant;)V

    .line 224
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableDuration;)V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BaseInterval;-><init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableDuration;)V

    .line 212
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BaseInterval;-><init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)V

    .line 200
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadablePeriod;)V
    .locals 0

    .prologue
    .line 238
    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BaseInterval;-><init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadablePeriod;)V

    .line 239
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/ReadablePeriod;Lorg/joda/time/ReadableInstant;)V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BaseInterval;-><init>(Lorg/joda/time/ReadablePeriod;Lorg/joda/time/ReadableInstant;)V

    .line 254
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lorg/joda/time/Interval;
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lorg/joda/time/Interval;

    invoke-direct {v0, p0}, Lorg/joda/time/Interval;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static parseWithOffset(Ljava/lang/String;)Lorg/joda/time/Interval;
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/16 v8, 0x70

    const/16 v7, 0x50

    const/4 v6, 0x0

    .line 105
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 106
    if-gez v1, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Format requires a \'/\' separator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Format invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_1
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Format invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_2
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateTimeParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/format/DateTimeFormatter;->withOffsetParsed()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v4

    .line 119
    invoke-static {}, Lorg/joda/time/format/ISOPeriodFormat;->standard()Lorg/joda/time/format/PeriodFormatter;

    move-result-object v5

    .line 124
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 125
    if-eq v1, v7, :cond_3

    if-ne v1, v8, :cond_5

    .line 126
    :cond_3
    invoke-static {}, Lorg/joda/time/PeriodType;->standard()Lorg/joda/time/PeriodType;

    move-result-object v1

    invoke-virtual {v5, v1}, Lorg/joda/time/format/PeriodFormatter;->withParseType(Lorg/joda/time/PeriodType;)Lorg/joda/time/format/PeriodFormatter;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/joda/time/format/PeriodFormatter;->parsePeriod(Ljava/lang/String;)Lorg/joda/time/Period;

    move-result-object v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    .line 132
    :goto_0
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 133
    if-eq v2, v7, :cond_4

    if-ne v2, v8, :cond_7

    .line 134
    :cond_4
    if-eqz v0, :cond_6

    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interval composed of two durations: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_5
    invoke-virtual {v4, v2}, Lorg/joda/time/format/DateTimeFormatter;->parseDateTime(Ljava/lang/String;)Lorg/joda/time/DateTime;

    move-result-object v1

    goto :goto_0

    .line 137
    :cond_6
    invoke-static {}, Lorg/joda/time/PeriodType;->standard()Lorg/joda/time/PeriodType;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/joda/time/format/PeriodFormatter;->withParseType(Lorg/joda/time/PeriodType;)Lorg/joda/time/format/PeriodFormatter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/joda/time/format/PeriodFormatter;->parsePeriod(Ljava/lang/String;)Lorg/joda/time/Period;

    move-result-object v2

    .line 138
    new-instance v0, Lorg/joda/time/Interval;

    invoke-direct {v0, v1, v2}, Lorg/joda/time/Interval;-><init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadablePeriod;)V

    .line 144
    :goto_1
    return-object v0

    .line 140
    :cond_7
    invoke-virtual {v4, v3}, Lorg/joda/time/format/DateTimeFormatter;->parseDateTime(Ljava/lang/String;)Lorg/joda/time/DateTime;

    move-result-object v2

    .line 141
    if-eqz v0, :cond_8

    .line 142
    new-instance v1, Lorg/joda/time/Interval;

    invoke-direct {v1, v0, v2}, Lorg/joda/time/Interval;-><init>(Lorg/joda/time/ReadablePeriod;Lorg/joda/time/ReadableInstant;)V

    move-object v0, v1

    goto :goto_1

    .line 144
    :cond_8
    new-instance v0, Lorg/joda/time/Interval;

    invoke-direct {v0, v1, v2}, Lorg/joda/time/Interval;-><init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)V

    goto :goto_1
.end method


# virtual methods
.method public abuts(Lorg/joda/time/ReadableInterval;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 415
    if-nez p1, :cond_2

    .line 416
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v2

    .line 417
    invoke-virtual {p0}, Lorg/joda/time/Interval;->getStartMillis()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lorg/joda/time/Interval;->getEndMillis()J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 419
    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getEndMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/joda/time/Interval;->getStartMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lorg/joda/time/Interval;->getEndMillis()J

    move-result-wide v2

    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getStartMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public gap(Lorg/joda/time/ReadableInterval;)Lorg/joda/time/Interval;
    .locals 12

    .prologue
    .line 363
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getReadableInterval(Lorg/joda/time/ReadableInterval;)Lorg/joda/time/ReadableInterval;

    move-result-object v0

    .line 364
    invoke-interface {v0}, Lorg/joda/time/ReadableInterval;->getStartMillis()J

    move-result-wide v8

    .line 365
    invoke-interface {v0}, Lorg/joda/time/ReadableInterval;->getEndMillis()J

    move-result-wide v2

    .line 366
    invoke-virtual {p0}, Lorg/joda/time/Interval;->getStartMillis()J

    move-result-wide v4

    .line 367
    invoke-virtual {p0}, Lorg/joda/time/Interval;->getEndMillis()J

    move-result-wide v10

    .line 368
    cmp-long v0, v4, v2

    if-lez v0, :cond_0

    .line 369
    new-instance v1, Lorg/joda/time/Interval;

    invoke-virtual {p0}, Lorg/joda/time/Interval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lorg/joda/time/Interval;-><init>(JJLorg/joda/time/Chronology;)V

    .line 373
    :goto_0
    return-object v1

    .line 370
    :cond_0
    cmp-long v0, v8, v10

    if-lez v0, :cond_1

    .line 371
    new-instance v1, Lorg/joda/time/Interval;

    invoke-virtual {p0}, Lorg/joda/time/Interval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v6

    move-wide v2, v10

    move-wide v4, v8

    invoke-direct/range {v1 .. v6}, Lorg/joda/time/Interval;-><init>(JJLorg/joda/time/Chronology;)V

    goto :goto_0

    .line 373
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public overlap(Lorg/joda/time/ReadableInterval;)Lorg/joda/time/Interval;
    .locals 7

    .prologue
    .line 328
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getReadableInterval(Lorg/joda/time/ReadableInterval;)Lorg/joda/time/ReadableInterval;

    move-result-object v0

    .line 329
    invoke-virtual {p0, v0}, Lorg/joda/time/Interval;->overlaps(Lorg/joda/time/ReadableInterval;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 330
    const/4 v1, 0x0

    .line 334
    :goto_0
    return-object v1

    .line 332
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/Interval;->getStartMillis()J

    move-result-wide v2

    invoke-interface {v0}, Lorg/joda/time/ReadableInterval;->getStartMillis()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 333
    invoke-virtual {p0}, Lorg/joda/time/Interval;->getEndMillis()J

    move-result-wide v4

    invoke-interface {v0}, Lorg/joda/time/ReadableInterval;->getEndMillis()J

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 334
    new-instance v1, Lorg/joda/time/Interval;

    invoke-virtual {p0}, Lorg/joda/time/Interval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lorg/joda/time/Interval;-><init>(JJLorg/joda/time/Chronology;)V

    goto :goto_0
.end method

.method public toInterval()Lorg/joda/time/Interval;
    .locals 0

    .prologue
    .line 300
    return-object p0
.end method

.method public withChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Interval;
    .locals 7

    .prologue
    .line 432
    invoke-virtual {p0}, Lorg/joda/time/Interval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 435
    :goto_0
    return-object p0

    :cond_0
    new-instance v1, Lorg/joda/time/Interval;

    invoke-virtual {p0}, Lorg/joda/time/Interval;->getStartMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/joda/time/Interval;->getEndMillis()J

    move-result-wide v4

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/joda/time/Interval;-><init>(JJLorg/joda/time/Chronology;)V

    move-object p0, v1

    goto :goto_0
.end method

.method public withDurationAfterStart(Lorg/joda/time/ReadableDuration;)Lorg/joda/time/Interval;
    .locals 11

    .prologue
    .line 499
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getDurationMillis(Lorg/joda/time/ReadableDuration;)J

    move-result-wide v4

    .line 500
    invoke-virtual {p0}, Lorg/joda/time/Interval;->toDurationMillis()J

    move-result-wide v0

    cmp-long v0, v4, v0

    if-nez v0, :cond_0

    .line 506
    :goto_0
    return-object p0

    .line 503
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/Interval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    .line 504
    invoke-virtual {p0}, Lorg/joda/time/Interval;->getStartMillis()J

    move-result-wide v2

    .line 505
    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lorg/joda/time/Chronology;->add(JJI)J

    move-result-wide v8

    .line 506
    new-instance v5, Lorg/joda/time/Interval;

    move-wide v6, v2

    move-object v10, v1

    invoke-direct/range {v5 .. v10}, Lorg/joda/time/Interval;-><init>(JJLorg/joda/time/Chronology;)V

    move-object p0, v5

    goto :goto_0
.end method

.method public withDurationBeforeEnd(Lorg/joda/time/ReadableDuration;)Lorg/joda/time/Interval;
    .locals 11

    .prologue
    .line 517
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getDurationMillis(Lorg/joda/time/ReadableDuration;)J

    move-result-wide v4

    .line 518
    invoke-virtual {p0}, Lorg/joda/time/Interval;->toDurationMillis()J

    move-result-wide v0

    cmp-long v0, v4, v0

    if-nez v0, :cond_0

    .line 524
    :goto_0
    return-object p0

    .line 521
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/Interval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    .line 522
    invoke-virtual {p0}, Lorg/joda/time/Interval;->getEndMillis()J

    move-result-wide v2

    .line 523
    const/4 v6, -0x1

    invoke-virtual/range {v1 .. v6}, Lorg/joda/time/Chronology;->add(JJI)J

    move-result-wide v6

    .line 524
    new-instance v5, Lorg/joda/time/Interval;

    move-wide v8, v2

    move-object v10, v1

    invoke-direct/range {v5 .. v10}, Lorg/joda/time/Interval;-><init>(JJLorg/joda/time/Chronology;)V

    move-object p0, v5

    goto :goto_0
.end method

.method public withEnd(Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Interval;
    .locals 2

    .prologue
    .line 486
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v0

    .line 487
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/Interval;->withEndMillis(J)Lorg/joda/time/Interval;

    move-result-object v0

    return-object v0
.end method

.method public withEndMillis(J)Lorg/joda/time/Interval;
    .locals 7

    .prologue
    .line 472
    invoke-virtual {p0}, Lorg/joda/time/Interval;->getEndMillis()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 475
    :goto_0
    return-object p0

    :cond_0
    new-instance v1, Lorg/joda/time/Interval;

    invoke-virtual {p0}, Lorg/joda/time/Interval;->getStartMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/joda/time/Interval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v6

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/joda/time/Interval;-><init>(JJLorg/joda/time/Chronology;)V

    move-object p0, v1

    goto :goto_0
.end method

.method public withPeriodAfterStart(Lorg/joda/time/ReadablePeriod;)Lorg/joda/time/Interval;
    .locals 7

    .prologue
    .line 536
    if-nez p1, :cond_0

    .line 537
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/joda/time/Interval;->withDurationAfterStart(Lorg/joda/time/ReadableDuration;)Lorg/joda/time/Interval;

    move-result-object v1

    .line 542
    :goto_0
    return-object v1

    .line 539
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/Interval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v6

    .line 540
    invoke-virtual {p0}, Lorg/joda/time/Interval;->getStartMillis()J

    move-result-wide v2

    .line 541
    const/4 v0, 0x1

    invoke-virtual {v6, p1, v2, v3, v0}, Lorg/joda/time/Chronology;->add(Lorg/joda/time/ReadablePeriod;JI)J

    move-result-wide v4

    .line 542
    new-instance v1, Lorg/joda/time/Interval;

    invoke-direct/range {v1 .. v6}, Lorg/joda/time/Interval;-><init>(JJLorg/joda/time/Chronology;)V

    goto :goto_0
.end method

.method public withPeriodBeforeEnd(Lorg/joda/time/ReadablePeriod;)Lorg/joda/time/Interval;
    .locals 7

    .prologue
    .line 553
    if-nez p1, :cond_0

    .line 554
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/joda/time/Interval;->withDurationBeforeEnd(Lorg/joda/time/ReadableDuration;)Lorg/joda/time/Interval;

    move-result-object v1

    .line 559
    :goto_0
    return-object v1

    .line 556
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/Interval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v6

    .line 557
    invoke-virtual {p0}, Lorg/joda/time/Interval;->getEndMillis()J

    move-result-wide v4

    .line 558
    const/4 v0, -0x1

    invoke-virtual {v6, p1, v4, v5, v0}, Lorg/joda/time/Chronology;->add(Lorg/joda/time/ReadablePeriod;JI)J

    move-result-wide v2

    .line 559
    new-instance v1, Lorg/joda/time/Interval;

    invoke-direct/range {v1 .. v6}, Lorg/joda/time/Interval;-><init>(JJLorg/joda/time/Chronology;)V

    goto :goto_0
.end method

.method public withStart(Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Interval;
    .locals 2

    .prologue
    .line 460
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v0

    .line 461
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/Interval;->withStartMillis(J)Lorg/joda/time/Interval;

    move-result-object v0

    return-object v0
.end method

.method public withStartMillis(J)Lorg/joda/time/Interval;
    .locals 7

    .prologue
    .line 446
    invoke-virtual {p0}, Lorg/joda/time/Interval;->getStartMillis()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 449
    :goto_0
    return-object p0

    :cond_0
    new-instance v1, Lorg/joda/time/Interval;

    invoke-virtual {p0}, Lorg/joda/time/Interval;->getEndMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lorg/joda/time/Interval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v6

    move-wide v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/joda/time/Interval;-><init>(JJLorg/joda/time/Chronology;)V

    move-object p0, v1

    goto :goto_0
.end method
