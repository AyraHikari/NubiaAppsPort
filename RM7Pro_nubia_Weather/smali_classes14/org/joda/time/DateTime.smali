.class public final Lorg/joda/time/DateTime;
.super Lorg/joda/time/base/BaseDateTime;
.source "DateTime.java"

# interfaces
.implements Lorg/joda/time/ReadableDateTime;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/DateTime$Property;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x47c3879b95a42207L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Lorg/joda/time/base/BaseDateTime;-><init>()V

    .line 172
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 323
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lorg/joda/time/base/BaseDateTime;-><init>(IIIIIII)V

    .line 324
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 8

    .prologue
    .line 397
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/joda/time/base/BaseDateTime;-><init>(IIIIIII)V

    .line 398
    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 0

    .prologue
    .line 476
    invoke-direct/range {p0 .. p7}, Lorg/joda/time/base/BaseDateTime;-><init>(IIIIIII)V

    .line 477
    return-void
.end method

.method public constructor <init>(IIIIIIILorg/joda/time/Chronology;)V
    .locals 0

    .prologue
    .line 532
    invoke-direct/range {p0 .. p8}, Lorg/joda/time/base/BaseDateTime;-><init>(IIIIIIILorg/joda/time/Chronology;)V

    .line 534
    return-void
.end method

.method public constructor <init>(IIIIIIILorg/joda/time/DateTimeZone;)V
    .locals 0

    .prologue
    .line 503
    invoke-direct/range {p0 .. p8}, Lorg/joda/time/base/BaseDateTime;-><init>(IIIIIIILorg/joda/time/DateTimeZone;)V

    .line 505
    return-void
.end method

.method public constructor <init>(IIIIIILorg/joda/time/Chronology;)V
    .locals 9

    .prologue
    .line 451
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/joda/time/base/BaseDateTime;-><init>(IIIIIIILorg/joda/time/Chronology;)V

    .line 453
    return-void
.end method

.method public constructor <init>(IIIIIILorg/joda/time/DateTimeZone;)V
    .locals 9

    .prologue
    .line 423
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/joda/time/base/BaseDateTime;-><init>(IIIIIIILorg/joda/time/DateTimeZone;)V

    .line 425
    return-void
.end method

.method public constructor <init>(IIIIILorg/joda/time/Chronology;)V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 373
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, v6

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/joda/time/base/BaseDateTime;-><init>(IIIIIIILorg/joda/time/Chronology;)V

    .line 375
    return-void
.end method

.method public constructor <init>(IIIIILorg/joda/time/DateTimeZone;)V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 347
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, v6

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/joda/time/base/BaseDateTime;-><init>(IIIIIIILorg/joda/time/DateTimeZone;)V

    .line 349
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 209
    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BaseDateTime;-><init>(J)V

    .line 210
    return-void
.end method

.method public constructor <init>(JLorg/joda/time/Chronology;)V
    .locals 1

    .prologue
    .line 236
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/base/BaseDateTime;-><init>(JLorg/joda/time/Chronology;)V

    .line 237
    return-void
.end method

.method public constructor <init>(JLorg/joda/time/DateTimeZone;)V
    .locals 1

    .prologue
    .line 222
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/base/BaseDateTime;-><init>(JLorg/joda/time/DateTimeZone;)V

    .line 223
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    check-cast v0, Lorg/joda/time/Chronology;

    invoke-direct {p0, p1, v0}, Lorg/joda/time/base/BaseDateTime;-><init>(Ljava/lang/Object;Lorg/joda/time/Chronology;)V

    .line 258
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/joda/time/Chronology;)V
    .locals 1

    .prologue
    .line 302
    invoke-static {p2}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/joda/time/base/BaseDateTime;-><init>(Ljava/lang/Object;Lorg/joda/time/Chronology;)V

    .line 303
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/joda/time/DateTimeZone;)V
    .locals 0

    .prologue
    .line 281
    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BaseDateTime;-><init>(Ljava/lang/Object;Lorg/joda/time/DateTimeZone;)V

    .line 282
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/Chronology;)V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lorg/joda/time/base/BaseDateTime;-><init>(Lorg/joda/time/Chronology;)V

    .line 199
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/DateTimeZone;)V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lorg/joda/time/base/BaseDateTime;-><init>(Lorg/joda/time/DateTimeZone;)V

    .line 185
    return-void
.end method

.method public static now()Lorg/joda/time/DateTime;
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0}, Lorg/joda/time/DateTime;-><init>()V

    return-object v0
.end method

.method public static now(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTime;
    .locals 2

    .prologue
    .line 116
    if-nez p0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Chronology must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0, p0}, Lorg/joda/time/DateTime;-><init>(Lorg/joda/time/Chronology;)V

    return-object v0
.end method

.method public static now(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;
    .locals 2

    .prologue
    .line 101
    if-nez p0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Zone must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0, p0}, Lorg/joda/time/DateTime;-><init>(Lorg/joda/time/DateTimeZone;)V

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lorg/joda/time/DateTime;
    .locals 1
    .annotation runtime Lorg/joda/convert/FromString;
    .end annotation

    .prologue
    .line 149
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateTimeParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatter;->withOffsetParsed()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/joda/time/DateTime;->parse(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/DateTime;
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p1, p0}, Lorg/joda/time/format/DateTimeFormatter;->parseDateTime(Ljava/lang/String;)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public centuryOfEra()Lorg/joda/time/DateTime$Property;
    .locals 2

    .prologue
    .line 1899
    new-instance v0, Lorg/joda/time/DateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->centuryOfEra()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateTime$Property;-><init>(Lorg/joda/time/DateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public dayOfMonth()Lorg/joda/time/DateTime$Property;
    .locals 2

    .prologue
    .line 1971
    new-instance v0, Lorg/joda/time/DateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateTime$Property;-><init>(Lorg/joda/time/DateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public dayOfWeek()Lorg/joda/time/DateTime$Property;
    .locals 2

    .prologue
    .line 1980
    new-instance v0, Lorg/joda/time/DateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->dayOfWeek()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateTime$Property;-><init>(Lorg/joda/time/DateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public dayOfYear()Lorg/joda/time/DateTime$Property;
    .locals 2

    .prologue
    .line 1962
    new-instance v0, Lorg/joda/time/DateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->dayOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateTime$Property;-><init>(Lorg/joda/time/DateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public era()Lorg/joda/time/DateTime$Property;
    .locals 2

    .prologue
    .line 1890
    new-instance v0, Lorg/joda/time/DateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->era()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateTime$Property;-><init>(Lorg/joda/time/DateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public hourOfDay()Lorg/joda/time/DateTime$Property;
    .locals 2

    .prologue
    .line 1991
    new-instance v0, Lorg/joda/time/DateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->hourOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateTime$Property;-><init>(Lorg/joda/time/DateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public millisOfDay()Lorg/joda/time/DateTime$Property;
    .locals 2

    .prologue
    .line 2036
    new-instance v0, Lorg/joda/time/DateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateTime$Property;-><init>(Lorg/joda/time/DateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public millisOfSecond()Lorg/joda/time/DateTime$Property;
    .locals 2

    .prologue
    .line 2045
    new-instance v0, Lorg/joda/time/DateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->millisOfSecond()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateTime$Property;-><init>(Lorg/joda/time/DateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public minus(J)Lorg/joda/time/DateTime;
    .locals 1

    .prologue
    .line 1245
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/DateTime;->withDurationAdded(JI)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public minus(Lorg/joda/time/ReadableDuration;)Lorg/joda/time/DateTime;
    .locals 1

    .prologue
    .line 1259
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/DateTime;->withDurationAdded(Lorg/joda/time/ReadableDuration;I)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public minus(Lorg/joda/time/ReadablePeriod;)Lorg/joda/time/DateTime;
    .locals 1

    .prologue
    .line 1286
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/DateTime;->withPeriodAdded(Lorg/joda/time/ReadablePeriod;I)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public minusDays(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1404
    if-nez p1, :cond_0

    .line 1408
    :goto_0
    return-object p0

    .line 1407
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->days()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DurationField;->subtract(JI)J

    move-result-wide v0

    .line 1408
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public minusHours(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1436
    if-nez p1, :cond_0

    .line 1440
    :goto_0
    return-object p0

    .line 1439
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->hours()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DurationField;->subtract(JI)J

    move-result-wide v0

    .line 1440
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public minusMillis(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1517
    if-nez p1, :cond_0

    .line 1521
    :goto_0
    return-object p0

    .line 1520
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->millis()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DurationField;->subtract(JI)J

    move-result-wide v0

    .line 1521
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public minusMinutes(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1463
    if-nez p1, :cond_0

    .line 1467
    :goto_0
    return-object p0

    .line 1466
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->minutes()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DurationField;->subtract(JI)J

    move-result-wide v0

    .line 1467
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public minusMonths(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1343
    if-nez p1, :cond_0

    .line 1347
    :goto_0
    return-object p0

    .line 1346
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->months()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DurationField;->subtract(JI)J

    move-result-wide v0

    .line 1347
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public minusSeconds(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1490
    if-nez p1, :cond_0

    .line 1494
    :goto_0
    return-object p0

    .line 1493
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->seconds()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DurationField;->subtract(JI)J

    move-result-wide v0

    .line 1494
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public minusWeeks(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1369
    if-nez p1, :cond_0

    .line 1373
    :goto_0
    return-object p0

    .line 1372
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->weeks()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DurationField;->subtract(JI)J

    move-result-wide v0

    .line 1373
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public minusYears(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1313
    if-nez p1, :cond_0

    .line 1317
    :goto_0
    return-object p0

    .line 1316
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->years()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DurationField;->subtract(JI)J

    move-result-wide v0

    .line 1317
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public minuteOfDay()Lorg/joda/time/DateTime$Property;
    .locals 2

    .prologue
    .line 2000
    new-instance v0, Lorg/joda/time/DateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->minuteOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateTime$Property;-><init>(Lorg/joda/time/DateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public minuteOfHour()Lorg/joda/time/DateTime$Property;
    .locals 2

    .prologue
    .line 2009
    new-instance v0, Lorg/joda/time/DateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->minuteOfHour()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateTime$Property;-><init>(Lorg/joda/time/DateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public monthOfYear()Lorg/joda/time/DateTime$Property;
    .locals 2

    .prologue
    .line 1944
    new-instance v0, Lorg/joda/time/DateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateTime$Property;-><init>(Lorg/joda/time/DateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public plus(J)Lorg/joda/time/DateTime;
    .locals 1

    .prologue
    .line 957
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/DateTime;->withDurationAdded(JI)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public plus(Lorg/joda/time/ReadableDuration;)Lorg/joda/time/DateTime;
    .locals 1

    .prologue
    .line 971
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/DateTime;->withDurationAdded(Lorg/joda/time/ReadableDuration;I)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public plus(Lorg/joda/time/ReadablePeriod;)Lorg/joda/time/DateTime;
    .locals 1

    .prologue
    .line 997
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/DateTime;->withPeriodAdded(Lorg/joda/time/ReadablePeriod;I)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public plusDays(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1115
    if-nez p1, :cond_0

    .line 1119
    :goto_0
    return-object p0

    .line 1118
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->days()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    .line 1119
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public plusHours(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1146
    if-nez p1, :cond_0

    .line 1150
    :goto_0
    return-object p0

    .line 1149
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->hours()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    .line 1150
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public plusMillis(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1226
    if-nez p1, :cond_0

    .line 1230
    :goto_0
    return-object p0

    .line 1229
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->millis()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    .line 1230
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public plusMinutes(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1173
    if-nez p1, :cond_0

    .line 1177
    :goto_0
    return-object p0

    .line 1176
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->minutes()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    .line 1177
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public plusMonths(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1054
    if-nez p1, :cond_0

    .line 1058
    :goto_0
    return-object p0

    .line 1057
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->months()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    .line 1058
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public plusSeconds(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1200
    if-nez p1, :cond_0

    .line 1204
    :goto_0
    return-object p0

    .line 1203
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->seconds()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    .line 1204
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public plusWeeks(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1080
    if-nez p1, :cond_0

    .line 1084
    :goto_0
    return-object p0

    .line 1083
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->weeks()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    .line 1084
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public plusYears(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1024
    if-nez p1, :cond_0

    .line 1028
    :goto_0
    return-object p0

    .line 1027
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->years()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    .line 1028
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public property(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/DateTime$Property;
    .locals 3

    .prologue
    .line 1533
    if-nez p1, :cond_0

    .line 1534
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The DateTimeFieldType must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1536
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    .line 1537
    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->isSupported()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1538
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1540
    :cond_1
    new-instance v1, Lorg/joda/time/DateTime$Property;

    invoke-direct {v1, p0, v0}, Lorg/joda/time/DateTime$Property;-><init>(Lorg/joda/time/DateTime;Lorg/joda/time/DateTimeField;)V

    return-object v1
.end method

.method public secondOfDay()Lorg/joda/time/DateTime$Property;
    .locals 2

    .prologue
    .line 2018
    new-instance v0, Lorg/joda/time/DateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->secondOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateTime$Property;-><init>(Lorg/joda/time/DateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public secondOfMinute()Lorg/joda/time/DateTime$Property;
    .locals 2

    .prologue
    .line 2027
    new-instance v0, Lorg/joda/time/DateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->secondOfMinute()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateTime$Property;-><init>(Lorg/joda/time/DateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public toDateMidnight()Lorg/joda/time/DateMidnight;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1553
    new-instance v0, Lorg/joda/time/DateMidnight;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lorg/joda/time/DateMidnight;-><init>(JLorg/joda/time/Chronology;)V

    return-object v0
.end method

.method public toDateTime()Lorg/joda/time/DateTime;
    .locals 0

    .prologue
    .line 543
    return-object p0
.end method

.method public toDateTime(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTime;
    .locals 2

    .prologue
    .line 580
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v0

    .line 581
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 584
    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, v0}, Lorg/joda/time/base/BaseDateTime;->toDateTime(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public toDateTime(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;
    .locals 2

    .prologue
    .line 566
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 567
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 570
    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, v0}, Lorg/joda/time/base/BaseDateTime;->toDateTime(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public toDateTimeISO()Lorg/joda/time/DateTime;
    .locals 2

    .prologue
    .line 553
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstance()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 556
    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0}, Lorg/joda/time/base/BaseDateTime;->toDateTimeISO()Lorg/joda/time/DateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public toLocalDate()Lorg/joda/time/LocalDate;
    .locals 4

    .prologue
    .line 1599
    new-instance v0, Lorg/joda/time/LocalDate;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lorg/joda/time/LocalDate;-><init>(JLorg/joda/time/Chronology;)V

    return-object v0
.end method

.method public toLocalDateTime()Lorg/joda/time/LocalDateTime;
    .locals 4

    .prologue
    .line 1588
    new-instance v0, Lorg/joda/time/LocalDateTime;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lorg/joda/time/LocalDateTime;-><init>(JLorg/joda/time/Chronology;)V

    return-object v0
.end method

.method public toLocalTime()Lorg/joda/time/LocalTime;
    .locals 4

    .prologue
    .line 1610
    new-instance v0, Lorg/joda/time/LocalTime;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lorg/joda/time/LocalTime;-><init>(JLorg/joda/time/Chronology;)V

    return-object v0
.end method

.method public toTimeOfDay()Lorg/joda/time/TimeOfDay;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1577
    new-instance v0, Lorg/joda/time/TimeOfDay;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lorg/joda/time/TimeOfDay;-><init>(JLorg/joda/time/Chronology;)V

    return-object v0
.end method

.method public toYearMonthDay()Lorg/joda/time/YearMonthDay;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1565
    new-instance v0, Lorg/joda/time/YearMonthDay;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lorg/joda/time/YearMonthDay;-><init>(JLorg/joda/time/Chronology;)V

    return-object v0
.end method

.method public weekOfWeekyear()Lorg/joda/time/DateTime$Property;
    .locals 2

    .prologue
    .line 1953
    new-instance v0, Lorg/joda/time/DateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->weekOfWeekyear()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateTime$Property;-><init>(Lorg/joda/time/DateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public weekyear()Lorg/joda/time/DateTime$Property;
    .locals 2

    .prologue
    .line 1935
    new-instance v0, Lorg/joda/time/DateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->weekyear()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateTime$Property;-><init>(Lorg/joda/time/DateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public withCenturyOfEra(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1643
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->centuryOfEra()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public withChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 611
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v1

    .line 612
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    if-ne v1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3, v1}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/Chronology;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withDate(III)Lorg/joda/time/DateTime;
    .locals 6

    .prologue
    .line 727
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    .line 728
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillisOfDay()I

    move-result v2

    invoke-virtual {v1, p1, p2, p3, v2}, Lorg/joda/time/Chronology;->getDateTimeMillis(IIII)J

    move-result-wide v1

    .line 729
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/DateTimeZone;->convertLocalToUTC(JZJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public withDate(Lorg/joda/time/LocalDate;)Lorg/joda/time/DateTime;
    .locals 3

    .prologue
    .line 745
    invoke-virtual {p1}, Lorg/joda/time/LocalDate;->getYear()I

    move-result v0

    invoke-virtual {p1}, Lorg/joda/time/LocalDate;->getMonthOfYear()I

    move-result v1

    invoke-virtual {p1}, Lorg/joda/time/LocalDate;->getDayOfMonth()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/joda/time/DateTime;->withDate(III)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public withDayOfMonth(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1782
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public withDayOfWeek(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1798
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfWeek()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public withDayOfYear(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1766
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public withDurationAdded(JI)Lorg/joda/time/DateTime;
    .locals 7

    .prologue
    .line 898
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_1

    .line 902
    :cond_0
    :goto_0
    return-object p0

    .line 901
    :cond_1
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    move-wide v4, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/joda/time/Chronology;->add(JJI)J

    move-result-wide v0

    .line 902
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public withDurationAdded(Lorg/joda/time/ReadableDuration;I)Lorg/joda/time/DateTime;
    .locals 2

    .prologue
    .line 916
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 919
    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-interface {p1}, Lorg/joda/time/ReadableDuration;->getMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lorg/joda/time/DateTime;->withDurationAdded(JI)Lorg/joda/time/DateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public withEarlierOffsetAtOverlap()Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 681
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lorg/joda/time/DateTimeZone;->adjustOffset(JZ)J

    move-result-wide v0

    .line 682
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public withEra(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1627
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->era()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public withField(Lorg/joda/time/DateTimeFieldType;I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 850
    if-nez p1, :cond_0

    .line 851
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 853
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p2}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    .line 854
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public withFieldAdded(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 876
    if-nez p1, :cond_0

    .line 877
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 879
    :cond_0
    if-nez p2, :cond_1

    .line 883
    :goto_0
    return-object p0

    .line 882
    :cond_1
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/DurationFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p2}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    .line 883
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public withFields(Lorg/joda/time/ReadablePartial;)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 824
    if-nez p1, :cond_0

    .line 827
    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lorg/joda/time/Chronology;->set(Lorg/joda/time/ReadablePartial;J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public withHourOfDay(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1815
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->hourOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public withLaterOffsetAtOverlap()Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 701
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lorg/joda/time/DateTimeZone;->adjustOffset(JZ)J

    move-result-wide v0

    .line 702
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public withMillis(J)Lorg/joda/time/DateTime;
    .locals 3

    .prologue
    .line 598
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/Chronology;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withMillisOfDay(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1879
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public withMillisOfSecond(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1863
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->millisOfSecond()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public withMinuteOfHour(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1831
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->minuteOfHour()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public withMonthOfYear(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1729
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public withPeriodAdded(Lorg/joda/time/ReadablePeriod;I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 938
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 942
    :cond_0
    :goto_0
    return-object p0

    .line 941
    :cond_1
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3, p2}, Lorg/joda/time/Chronology;->add(Lorg/joda/time/ReadablePeriod;JI)J

    move-result-wide v0

    .line 942
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object p0

    goto :goto_0
.end method

.method public withSecondOfMinute(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1847
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->secondOfMinute()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public withTime(IIII)Lorg/joda/time/DateTime;
    .locals 9

    .prologue
    .line 771
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v8

    .line 772
    invoke-virtual {v8}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMonthOfYear()I

    move-result v2

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getDayOfMonth()I

    move-result v3

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lorg/joda/time/Chronology;->getDateTimeMillis(IIIIIII)J

    move-result-wide v1

    .line 774
    invoke-virtual {v8}, Lorg/joda/time/Chronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/DateTimeZone;->convertLocalToUTC(JZJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public withTime(Lorg/joda/time/LocalTime;)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 790
    invoke-virtual {p1}, Lorg/joda/time/LocalTime;->getHourOfDay()I

    move-result v0

    invoke-virtual {p1}, Lorg/joda/time/LocalTime;->getMinuteOfHour()I

    move-result v1

    invoke-virtual {p1}, Lorg/joda/time/LocalTime;->getSecondOfMinute()I

    move-result v2

    invoke-virtual {p1}, Lorg/joda/time/LocalTime;->getMillisOfSecond()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/joda/time/DateTime;->withTime(IIII)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public withTimeAtStartOfDay()Lorg/joda/time/DateTime;
    .locals 2

    .prologue
    .line 807
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->toLocalDate()Lorg/joda/time/LocalDate;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/LocalDate;->toDateTimeAtStartOfDay(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public withWeekOfWeekyear(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1750
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->weekOfWeekyear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public withWeekyear(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1713
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->weekyear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public withYear(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1691
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public withYearOfCentury(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1675
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->yearOfCentury()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public withYearOfEra(I)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 1659
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->yearOfEra()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateTime;->withMillis(J)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;
    .locals 1

    .prologue
    .line 634
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/Chronology;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/joda/time/DateTime;->withChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public withZoneRetainFields(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;
    .locals 5

    .prologue
    .line 655
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object v1

    .line 656
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/DateTimeUtils;->getZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 657
    if-ne v1, v0, :cond_0

    .line 662
    :goto_0
    return-object p0

    .line 661
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/joda/time/DateTimeZone;->getMillisKeepLocal(Lorg/joda/time/DateTimeZone;J)J

    move-result-wide v2

    .line 662
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/joda/time/Chronology;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/Chronology;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public year()Lorg/joda/time/DateTime$Property;
    .locals 2

    .prologue
    .line 1926
    new-instance v0, Lorg/joda/time/DateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateTime$Property;-><init>(Lorg/joda/time/DateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public yearOfCentury()Lorg/joda/time/DateTime$Property;
    .locals 2

    .prologue
    .line 1908
    new-instance v0, Lorg/joda/time/DateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->yearOfCentury()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateTime$Property;-><init>(Lorg/joda/time/DateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public yearOfEra()Lorg/joda/time/DateTime$Property;
    .locals 2

    .prologue
    .line 1917
    new-instance v0, Lorg/joda/time/DateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->yearOfEra()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateTime$Property;-><init>(Lorg/joda/time/DateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method
