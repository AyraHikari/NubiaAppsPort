.class public final Lorg/joda/time/Hours;
.super Lorg/joda/time/base/BaseSingleFieldPeriod;
.source "Hours.java"


# static fields
.field public static final EIGHT:Lorg/joda/time/Hours;

.field public static final FIVE:Lorg/joda/time/Hours;

.field public static final FOUR:Lorg/joda/time/Hours;

.field public static final MAX_VALUE:Lorg/joda/time/Hours;

.field public static final MIN_VALUE:Lorg/joda/time/Hours;

.field public static final ONE:Lorg/joda/time/Hours;

.field private static final PARSER:Lorg/joda/time/format/PeriodFormatter;

.field public static final SEVEN:Lorg/joda/time/Hours;

.field public static final SIX:Lorg/joda/time/Hours;

.field public static final THREE:Lorg/joda/time/Hours;

.field public static final TWO:Lorg/joda/time/Hours;

.field public static final ZERO:Lorg/joda/time/Hours;

.field private static final serialVersionUID:J = 0x136f3c648994180L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lorg/joda/time/Hours;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/joda/time/Hours;-><init>(I)V

    sput-object v0, Lorg/joda/time/Hours;->ZERO:Lorg/joda/time/Hours;

    .line 47
    new-instance v0, Lorg/joda/time/Hours;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/joda/time/Hours;-><init>(I)V

    sput-object v0, Lorg/joda/time/Hours;->ONE:Lorg/joda/time/Hours;

    .line 49
    new-instance v0, Lorg/joda/time/Hours;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/joda/time/Hours;-><init>(I)V

    sput-object v0, Lorg/joda/time/Hours;->TWO:Lorg/joda/time/Hours;

    .line 51
    new-instance v0, Lorg/joda/time/Hours;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/joda/time/Hours;-><init>(I)V

    sput-object v0, Lorg/joda/time/Hours;->THREE:Lorg/joda/time/Hours;

    .line 53
    new-instance v0, Lorg/joda/time/Hours;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/joda/time/Hours;-><init>(I)V

    sput-object v0, Lorg/joda/time/Hours;->FOUR:Lorg/joda/time/Hours;

    .line 55
    new-instance v0, Lorg/joda/time/Hours;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/joda/time/Hours;-><init>(I)V

    sput-object v0, Lorg/joda/time/Hours;->FIVE:Lorg/joda/time/Hours;

    .line 57
    new-instance v0, Lorg/joda/time/Hours;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/joda/time/Hours;-><init>(I)V

    sput-object v0, Lorg/joda/time/Hours;->SIX:Lorg/joda/time/Hours;

    .line 59
    new-instance v0, Lorg/joda/time/Hours;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/joda/time/Hours;-><init>(I)V

    sput-object v0, Lorg/joda/time/Hours;->SEVEN:Lorg/joda/time/Hours;

    .line 61
    new-instance v0, Lorg/joda/time/Hours;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/joda/time/Hours;-><init>(I)V

    sput-object v0, Lorg/joda/time/Hours;->EIGHT:Lorg/joda/time/Hours;

    .line 63
    new-instance v0, Lorg/joda/time/Hours;

    const v1, 0x7fffffff

    invoke-direct {v0, v1}, Lorg/joda/time/Hours;-><init>(I)V

    sput-object v0, Lorg/joda/time/Hours;->MAX_VALUE:Lorg/joda/time/Hours;

    .line 65
    new-instance v0, Lorg/joda/time/Hours;

    const/high16 v1, -0x80000000

    invoke-direct {v0, v1}, Lorg/joda/time/Hours;-><init>(I)V

    sput-object v0, Lorg/joda/time/Hours;->MIN_VALUE:Lorg/joda/time/Hours;

    .line 68
    invoke-static {}, Lorg/joda/time/format/ISOPeriodFormat;->standard()Lorg/joda/time/format/PeriodFormatter;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/PeriodType;->hours()Lorg/joda/time/PeriodType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/PeriodFormatter;->withParseType(Lorg/joda/time/PeriodType;)Lorg/joda/time/format/PeriodFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/Hours;->PARSER:Lorg/joda/time/format/PeriodFormatter;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lorg/joda/time/base/BaseSingleFieldPeriod;-><init>(I)V

    .line 219
    return-void
.end method

.method public static hours(I)Lorg/joda/time/Hours;
    .locals 1

    .prologue
    .line 82
    sparse-switch p0, :sswitch_data_0

    .line 106
    new-instance v0, Lorg/joda/time/Hours;

    invoke-direct {v0, p0}, Lorg/joda/time/Hours;-><init>(I)V

    :goto_0
    return-object v0

    .line 84
    :sswitch_0
    sget-object v0, Lorg/joda/time/Hours;->ZERO:Lorg/joda/time/Hours;

    goto :goto_0

    .line 86
    :sswitch_1
    sget-object v0, Lorg/joda/time/Hours;->ONE:Lorg/joda/time/Hours;

    goto :goto_0

    .line 88
    :sswitch_2
    sget-object v0, Lorg/joda/time/Hours;->TWO:Lorg/joda/time/Hours;

    goto :goto_0

    .line 90
    :sswitch_3
    sget-object v0, Lorg/joda/time/Hours;->THREE:Lorg/joda/time/Hours;

    goto :goto_0

    .line 92
    :sswitch_4
    sget-object v0, Lorg/joda/time/Hours;->FOUR:Lorg/joda/time/Hours;

    goto :goto_0

    .line 94
    :sswitch_5
    sget-object v0, Lorg/joda/time/Hours;->FIVE:Lorg/joda/time/Hours;

    goto :goto_0

    .line 96
    :sswitch_6
    sget-object v0, Lorg/joda/time/Hours;->SIX:Lorg/joda/time/Hours;

    goto :goto_0

    .line 98
    :sswitch_7
    sget-object v0, Lorg/joda/time/Hours;->SEVEN:Lorg/joda/time/Hours;

    goto :goto_0

    .line 100
    :sswitch_8
    sget-object v0, Lorg/joda/time/Hours;->EIGHT:Lorg/joda/time/Hours;

    goto :goto_0

    .line 102
    :sswitch_9
    sget-object v0, Lorg/joda/time/Hours;->MAX_VALUE:Lorg/joda/time/Hours;

    goto :goto_0

    .line 104
    :sswitch_a
    sget-object v0, Lorg/joda/time/Hours;->MIN_VALUE:Lorg/joda/time/Hours;

    goto :goto_0

    .line 82
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_a
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x7fffffff -> :sswitch_9
    .end sparse-switch
.end method

.method public static hoursBetween(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Hours;
    .locals 1

    .prologue
    .line 121
    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/joda/time/base/BaseSingleFieldPeriod;->between(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;Lorg/joda/time/DurationFieldType;)I

    move-result v0

    .line 122
    invoke-static {v0}, Lorg/joda/time/Hours;->hours(I)Lorg/joda/time/Hours;

    move-result-object v0

    return-object v0
.end method

.method public static hoursBetween(Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePartial;)Lorg/joda/time/Hours;
    .locals 6

    .prologue
    .line 138
    instance-of v0, p0, Lorg/joda/time/LocalTime;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/joda/time/LocalTime;

    if-eqz v0, :cond_0

    .line 139
    invoke-interface {p0}, Lorg/joda/time/ReadablePartial;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->hours()Lorg/joda/time/DurationField;

    move-result-object v0

    check-cast p1, Lorg/joda/time/LocalTime;

    invoke-virtual {p1}, Lorg/joda/time/LocalTime;->getLocalMillis()J

    move-result-wide v2

    check-cast p0, Lorg/joda/time/LocalTime;

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getLocalMillis()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/joda/time/DurationField;->getDifference(JJ)I

    move-result v0

    .line 142
    invoke-static {v0}, Lorg/joda/time/Hours;->hours(I)Lorg/joda/time/Hours;

    move-result-object v0

    .line 145
    :goto_0
    return-object v0

    .line 144
    :cond_0
    sget-object v0, Lorg/joda/time/Hours;->ZERO:Lorg/joda/time/Hours;

    invoke-static {p0, p1, v0}, Lorg/joda/time/base/BaseSingleFieldPeriod;->between(Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePeriod;)I

    move-result v0

    .line 145
    invoke-static {v0}, Lorg/joda/time/Hours;->hours(I)Lorg/joda/time/Hours;

    move-result-object v0

    goto :goto_0
.end method

.method public static hoursIn(Lorg/joda/time/ReadableInterval;)Lorg/joda/time/Hours;
    .locals 3

    .prologue
    .line 157
    if-nez p0, :cond_0

    .line 158
    sget-object v0, Lorg/joda/time/Hours;->ZERO:Lorg/joda/time/Hours;

    .line 161
    :goto_0
    return-object v0

    .line 160
    :cond_0
    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getStart()Lorg/joda/time/DateTime;

    move-result-object v0

    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getEnd()Lorg/joda/time/DateTime;

    move-result-object v1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/joda/time/base/BaseSingleFieldPeriod;->between(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;Lorg/joda/time/DurationFieldType;)I

    move-result v0

    .line 161
    invoke-static {v0}, Lorg/joda/time/Hours;->hours(I)Lorg/joda/time/Hours;

    move-result-object v0

    goto :goto_0
.end method

.method public static parseHours(Ljava/lang/String;)Lorg/joda/time/Hours;
    .locals 1
    .annotation runtime Lorg/joda/convert/FromString;
    .end annotation

    .prologue
    .line 202
    if-nez p0, :cond_0

    .line 203
    sget-object v0, Lorg/joda/time/Hours;->ZERO:Lorg/joda/time/Hours;

    .line 206
    :goto_0
    return-object v0

    .line 205
    :cond_0
    sget-object v0, Lorg/joda/time/Hours;->PARSER:Lorg/joda/time/format/PeriodFormatter;

    invoke-virtual {v0, p0}, Lorg/joda/time/format/PeriodFormatter;->parsePeriod(Ljava/lang/String;)Lorg/joda/time/Period;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Lorg/joda/time/Period;->getHours()I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Hours;->hours(I)Lorg/joda/time/Hours;

    move-result-object v0

    goto :goto_0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 227
    invoke-virtual {p0}, Lorg/joda/time/Hours;->getValue()I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Hours;->hours(I)Lorg/joda/time/Hours;

    move-result-object v0

    return-object v0
.end method

.method public static standardHoursIn(Lorg/joda/time/ReadablePeriod;)Lorg/joda/time/Hours;
    .locals 2

    .prologue
    .line 185
    const-wide/32 v0, 0x36ee80

    invoke-static {p0, v0, v1}, Lorg/joda/time/base/BaseSingleFieldPeriod;->standardPeriodIn(Lorg/joda/time/ReadablePeriod;J)I

    move-result v0

    .line 186
    invoke-static {v0}, Lorg/joda/time/Hours;->hours(I)Lorg/joda/time/Hours;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dividedBy(I)Lorg/joda/time/Hours;
    .locals 1

    .prologue
    .line 433
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 436
    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/Hours;->getValue()I

    move-result v0

    div-int/2addr v0, p1

    invoke-static {v0}, Lorg/joda/time/Hours;->hours(I)Lorg/joda/time/Hours;

    move-result-object p0

    goto :goto_0
.end method

.method public getFieldType()Lorg/joda/time/DurationFieldType;
    .locals 1

    .prologue
    .line 237
    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    return-object v0
.end method

.method public getHours()I
    .locals 1

    .prologue
    .line 342
    invoke-virtual {p0}, Lorg/joda/time/Hours;->getValue()I

    move-result v0

    return v0
.end method

.method public getPeriodType()Lorg/joda/time/PeriodType;
    .locals 1

    .prologue
    .line 246
    invoke-static {}, Lorg/joda/time/PeriodType;->hours()Lorg/joda/time/PeriodType;

    move-result-object v0

    return-object v0
.end method

.method public isGreaterThan(Lorg/joda/time/Hours;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 458
    if-nez p1, :cond_2

    .line 459
    invoke-virtual {p0}, Lorg/joda/time/Hours;->getValue()I

    move-result v2

    if-lez v2, :cond_1

    .line 461
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 459
    goto :goto_0

    .line 461
    :cond_2
    invoke-virtual {p0}, Lorg/joda/time/Hours;->getValue()I

    move-result v2

    invoke-virtual {p1}, Lorg/joda/time/Hours;->getValue()I

    move-result v3

    if-gt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isLessThan(Lorg/joda/time/Hours;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 471
    if-nez p1, :cond_2

    .line 472
    invoke-virtual {p0}, Lorg/joda/time/Hours;->getValue()I

    move-result v2

    if-gez v2, :cond_1

    .line 474
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 472
    goto :goto_0

    .line 474
    :cond_2
    invoke-virtual {p0}, Lorg/joda/time/Hours;->getValue()I

    move-result v2

    invoke-virtual {p1}, Lorg/joda/time/Hours;->getValue()I

    move-result v3

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public minus(I)Lorg/joda/time/Hours;
    .locals 1

    .prologue
    .line 389
    invoke-static {p1}, Lorg/joda/time/field/FieldUtils;->safeNegate(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/joda/time/Hours;->plus(I)Lorg/joda/time/Hours;

    move-result-object v0

    return-object v0
.end method

.method public minus(Lorg/joda/time/Hours;)Lorg/joda/time/Hours;
    .locals 1

    .prologue
    .line 402
    if-nez p1, :cond_0

    .line 405
    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/joda/time/Hours;->getValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/joda/time/Hours;->minus(I)Lorg/joda/time/Hours;

    move-result-object p0

    goto :goto_0
.end method

.method public multipliedBy(I)Lorg/joda/time/Hours;
    .locals 1

    .prologue
    .line 419
    invoke-virtual {p0}, Lorg/joda/time/Hours;->getValue()I

    move-result v0

    invoke-static {v0, p1}, Lorg/joda/time/field/FieldUtils;->safeMultiply(II)I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Hours;->hours(I)Lorg/joda/time/Hours;

    move-result-object v0

    return-object v0
.end method

.method public negated()Lorg/joda/time/Hours;
    .locals 1

    .prologue
    .line 447
    invoke-virtual {p0}, Lorg/joda/time/Hours;->getValue()I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/field/FieldUtils;->safeNegate(I)I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Hours;->hours(I)Lorg/joda/time/Hours;

    move-result-object v0

    return-object v0
.end method

.method public plus(I)Lorg/joda/time/Hours;
    .locals 1

    .prologue
    .line 356
    if-nez p1, :cond_0

    .line 359
    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/Hours;->getValue()I

    move-result v0

    invoke-static {v0, p1}, Lorg/joda/time/field/FieldUtils;->safeAdd(II)I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Hours;->hours(I)Lorg/joda/time/Hours;

    move-result-object p0

    goto :goto_0
.end method

.method public plus(Lorg/joda/time/Hours;)Lorg/joda/time/Hours;
    .locals 1

    .prologue
    .line 372
    if-nez p1, :cond_0

    .line 375
    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/joda/time/Hours;->getValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/joda/time/Hours;->plus(I)Lorg/joda/time/Hours;

    move-result-object p0

    goto :goto_0
.end method

.method public toStandardDays()Lorg/joda/time/Days;
    .locals 1

    .prologue
    .line 280
    invoke-virtual {p0}, Lorg/joda/time/Hours;->getValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x18

    invoke-static {v0}, Lorg/joda/time/Days;->days(I)Lorg/joda/time/Days;

    move-result-object v0

    return-object v0
.end method

.method public toStandardDuration()Lorg/joda/time/Duration;
    .locals 6

    .prologue
    .line 331
    invoke-virtual {p0}, Lorg/joda/time/Hours;->getValue()I

    move-result v0

    int-to-long v0, v0

    .line 332
    new-instance v2, Lorg/joda/time/Duration;

    const-wide/32 v4, 0x36ee80

    mul-long/2addr v0, v4

    invoke-direct {v2, v0, v1}, Lorg/joda/time/Duration;-><init>(J)V

    return-object v2
.end method

.method public toStandardMinutes()Lorg/joda/time/Minutes;
    .locals 2

    .prologue
    .line 296
    invoke-virtual {p0}, Lorg/joda/time/Hours;->getValue()I

    move-result v0

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Lorg/joda/time/field/FieldUtils;->safeMultiply(II)I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Minutes;->minutes(I)Lorg/joda/time/Minutes;

    move-result-object v0

    return-object v0
.end method

.method public toStandardSeconds()Lorg/joda/time/Seconds;
    .locals 2

    .prologue
    .line 313
    invoke-virtual {p0}, Lorg/joda/time/Hours;->getValue()I

    move-result v0

    const/16 v1, 0xe10

    invoke-static {v0, v1}, Lorg/joda/time/field/FieldUtils;->safeMultiply(II)I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Seconds;->seconds(I)Lorg/joda/time/Seconds;

    move-result-object v0

    return-object v0
.end method

.method public toStandardWeeks()Lorg/joda/time/Weeks;
    .locals 1

    .prologue
    .line 264
    invoke-virtual {p0}, Lorg/joda/time/Hours;->getValue()I

    move-result v0

    div-int/lit16 v0, v0, 0xa8

    invoke-static {v0}, Lorg/joda/time/Weeks;->weeks(I)Lorg/joda/time/Weeks;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Lorg/joda/convert/ToString;
    .end annotation

    .prologue
    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/Hours;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "H"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
