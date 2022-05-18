.class public final Lorg/joda/time/Seconds;
.super Lorg/joda/time/base/BaseSingleFieldPeriod;
.source "Seconds.java"


# static fields
.field public static final MAX_VALUE:Lorg/joda/time/Seconds;

.field public static final MIN_VALUE:Lorg/joda/time/Seconds;

.field public static final ONE:Lorg/joda/time/Seconds;

.field private static final PARSER:Lorg/joda/time/format/PeriodFormatter;

.field public static final THREE:Lorg/joda/time/Seconds;

.field public static final TWO:Lorg/joda/time/Seconds;

.field public static final ZERO:Lorg/joda/time/Seconds;

.field private static final serialVersionUID:J = 0x136f3c64899417eL


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lorg/joda/time/Seconds;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/joda/time/Seconds;-><init>(I)V

    sput-object v0, Lorg/joda/time/Seconds;->ZERO:Lorg/joda/time/Seconds;

    .line 47
    new-instance v0, Lorg/joda/time/Seconds;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/joda/time/Seconds;-><init>(I)V

    sput-object v0, Lorg/joda/time/Seconds;->ONE:Lorg/joda/time/Seconds;

    .line 49
    new-instance v0, Lorg/joda/time/Seconds;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/joda/time/Seconds;-><init>(I)V

    sput-object v0, Lorg/joda/time/Seconds;->TWO:Lorg/joda/time/Seconds;

    .line 51
    new-instance v0, Lorg/joda/time/Seconds;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/joda/time/Seconds;-><init>(I)V

    sput-object v0, Lorg/joda/time/Seconds;->THREE:Lorg/joda/time/Seconds;

    .line 53
    new-instance v0, Lorg/joda/time/Seconds;

    const v1, 0x7fffffff

    invoke-direct {v0, v1}, Lorg/joda/time/Seconds;-><init>(I)V

    sput-object v0, Lorg/joda/time/Seconds;->MAX_VALUE:Lorg/joda/time/Seconds;

    .line 55
    new-instance v0, Lorg/joda/time/Seconds;

    const/high16 v1, -0x80000000

    invoke-direct {v0, v1}, Lorg/joda/time/Seconds;-><init>(I)V

    sput-object v0, Lorg/joda/time/Seconds;->MIN_VALUE:Lorg/joda/time/Seconds;

    .line 58
    invoke-static {}, Lorg/joda/time/format/ISOPeriodFormat;->standard()Lorg/joda/time/format/PeriodFormatter;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/PeriodType;->seconds()Lorg/joda/time/PeriodType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/PeriodFormatter;->withParseType(Lorg/joda/time/PeriodType;)Lorg/joda/time/format/PeriodFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/Seconds;->PARSER:Lorg/joda/time/format/PeriodFormatter;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lorg/joda/time/base/BaseSingleFieldPeriod;-><init>(I)V

    .line 199
    return-void
.end method

.method public static parseSeconds(Ljava/lang/String;)Lorg/joda/time/Seconds;
    .locals 1
    .annotation runtime Lorg/joda/convert/FromString;
    .end annotation

    .prologue
    .line 182
    if-nez p0, :cond_0

    .line 183
    sget-object v0, Lorg/joda/time/Seconds;->ZERO:Lorg/joda/time/Seconds;

    .line 186
    :goto_0
    return-object v0

    .line 185
    :cond_0
    sget-object v0, Lorg/joda/time/Seconds;->PARSER:Lorg/joda/time/format/PeriodFormatter;

    invoke-virtual {v0, p0}, Lorg/joda/time/format/PeriodFormatter;->parsePeriod(Ljava/lang/String;)Lorg/joda/time/Period;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Lorg/joda/time/Period;->getSeconds()I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Seconds;->seconds(I)Lorg/joda/time/Seconds;

    move-result-object v0

    goto :goto_0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lorg/joda/time/Seconds;->getValue()I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Seconds;->seconds(I)Lorg/joda/time/Seconds;

    move-result-object v0

    return-object v0
.end method

.method public static seconds(I)Lorg/joda/time/Seconds;
    .locals 1

    .prologue
    .line 72
    sparse-switch p0, :sswitch_data_0

    .line 86
    new-instance v0, Lorg/joda/time/Seconds;

    invoke-direct {v0, p0}, Lorg/joda/time/Seconds;-><init>(I)V

    :goto_0
    return-object v0

    .line 74
    :sswitch_0
    sget-object v0, Lorg/joda/time/Seconds;->ZERO:Lorg/joda/time/Seconds;

    goto :goto_0

    .line 76
    :sswitch_1
    sget-object v0, Lorg/joda/time/Seconds;->ONE:Lorg/joda/time/Seconds;

    goto :goto_0

    .line 78
    :sswitch_2
    sget-object v0, Lorg/joda/time/Seconds;->TWO:Lorg/joda/time/Seconds;

    goto :goto_0

    .line 80
    :sswitch_3
    sget-object v0, Lorg/joda/time/Seconds;->THREE:Lorg/joda/time/Seconds;

    goto :goto_0

    .line 82
    :sswitch_4
    sget-object v0, Lorg/joda/time/Seconds;->MAX_VALUE:Lorg/joda/time/Seconds;

    goto :goto_0

    .line 84
    :sswitch_5
    sget-object v0, Lorg/joda/time/Seconds;->MIN_VALUE:Lorg/joda/time/Seconds;

    goto :goto_0

    .line 72
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_5
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x7fffffff -> :sswitch_4
    .end sparse-switch
.end method

.method public static secondsBetween(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Seconds;
    .locals 1

    .prologue
    .line 101
    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/joda/time/base/BaseSingleFieldPeriod;->between(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;Lorg/joda/time/DurationFieldType;)I

    move-result v0

    .line 102
    invoke-static {v0}, Lorg/joda/time/Seconds;->seconds(I)Lorg/joda/time/Seconds;

    move-result-object v0

    return-object v0
.end method

.method public static secondsBetween(Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePartial;)Lorg/joda/time/Seconds;
    .locals 6

    .prologue
    .line 118
    instance-of v0, p0, Lorg/joda/time/LocalTime;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/joda/time/LocalTime;

    if-eqz v0, :cond_0

    .line 119
    invoke-interface {p0}, Lorg/joda/time/ReadablePartial;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->seconds()Lorg/joda/time/DurationField;

    move-result-object v0

    check-cast p1, Lorg/joda/time/LocalTime;

    invoke-virtual {p1}, Lorg/joda/time/LocalTime;->getLocalMillis()J

    move-result-wide v2

    check-cast p0, Lorg/joda/time/LocalTime;

    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getLocalMillis()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/joda/time/DurationField;->getDifference(JJ)I

    move-result v0

    .line 122
    invoke-static {v0}, Lorg/joda/time/Seconds;->seconds(I)Lorg/joda/time/Seconds;

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    .line 124
    :cond_0
    sget-object v0, Lorg/joda/time/Seconds;->ZERO:Lorg/joda/time/Seconds;

    invoke-static {p0, p1, v0}, Lorg/joda/time/base/BaseSingleFieldPeriod;->between(Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePeriod;)I

    move-result v0

    .line 125
    invoke-static {v0}, Lorg/joda/time/Seconds;->seconds(I)Lorg/joda/time/Seconds;

    move-result-object v0

    goto :goto_0
.end method

.method public static secondsIn(Lorg/joda/time/ReadableInterval;)Lorg/joda/time/Seconds;
    .locals 3

    .prologue
    .line 137
    if-nez p0, :cond_0

    .line 138
    sget-object v0, Lorg/joda/time/Seconds;->ZERO:Lorg/joda/time/Seconds;

    .line 141
    :goto_0
    return-object v0

    .line 140
    :cond_0
    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getStart()Lorg/joda/time/DateTime;

    move-result-object v0

    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getEnd()Lorg/joda/time/DateTime;

    move-result-object v1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/joda/time/base/BaseSingleFieldPeriod;->between(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;Lorg/joda/time/DurationFieldType;)I

    move-result v0

    .line 141
    invoke-static {v0}, Lorg/joda/time/Seconds;->seconds(I)Lorg/joda/time/Seconds;

    move-result-object v0

    goto :goto_0
.end method

.method public static standardSecondsIn(Lorg/joda/time/ReadablePeriod;)Lorg/joda/time/Seconds;
    .locals 2

    .prologue
    .line 165
    const-wide/16 v0, 0x3e8

    invoke-static {p0, v0, v1}, Lorg/joda/time/base/BaseSingleFieldPeriod;->standardPeriodIn(Lorg/joda/time/ReadablePeriod;J)I

    move-result v0

    .line 166
    invoke-static {v0}, Lorg/joda/time/Seconds;->seconds(I)Lorg/joda/time/Seconds;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dividedBy(I)Lorg/joda/time/Seconds;
    .locals 1

    .prologue
    .line 414
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 417
    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/Seconds;->getValue()I

    move-result v0

    div-int/2addr v0, p1

    invoke-static {v0}, Lorg/joda/time/Seconds;->seconds(I)Lorg/joda/time/Seconds;

    move-result-object p0

    goto :goto_0
.end method

.method public getFieldType()Lorg/joda/time/DurationFieldType;
    .locals 1

    .prologue
    .line 217
    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    return-object v0
.end method

.method public getPeriodType()Lorg/joda/time/PeriodType;
    .locals 1

    .prologue
    .line 226
    invoke-static {}, Lorg/joda/time/PeriodType;->seconds()Lorg/joda/time/PeriodType;

    move-result-object v0

    return-object v0
.end method

.method public getSeconds()I
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0}, Lorg/joda/time/Seconds;->getValue()I

    move-result v0

    return v0
.end method

.method public isGreaterThan(Lorg/joda/time/Seconds;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 439
    if-nez p1, :cond_2

    .line 440
    invoke-virtual {p0}, Lorg/joda/time/Seconds;->getValue()I

    move-result v2

    if-lez v2, :cond_1

    .line 442
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 440
    goto :goto_0

    .line 442
    :cond_2
    invoke-virtual {p0}, Lorg/joda/time/Seconds;->getValue()I

    move-result v2

    invoke-virtual {p1}, Lorg/joda/time/Seconds;->getValue()I

    move-result v3

    if-gt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isLessThan(Lorg/joda/time/Seconds;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 452
    if-nez p1, :cond_2

    .line 453
    invoke-virtual {p0}, Lorg/joda/time/Seconds;->getValue()I

    move-result v2

    if-gez v2, :cond_1

    .line 455
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 453
    goto :goto_0

    .line 455
    :cond_2
    invoke-virtual {p0}, Lorg/joda/time/Seconds;->getValue()I

    move-result v2

    invoke-virtual {p1}, Lorg/joda/time/Seconds;->getValue()I

    move-result v3

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public minus(I)Lorg/joda/time/Seconds;
    .locals 1

    .prologue
    .line 370
    invoke-static {p1}, Lorg/joda/time/field/FieldUtils;->safeNegate(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/joda/time/Seconds;->plus(I)Lorg/joda/time/Seconds;

    move-result-object v0

    return-object v0
.end method

.method public minus(Lorg/joda/time/Seconds;)Lorg/joda/time/Seconds;
    .locals 1

    .prologue
    .line 383
    if-nez p1, :cond_0

    .line 386
    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/joda/time/Seconds;->getValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/joda/time/Seconds;->minus(I)Lorg/joda/time/Seconds;

    move-result-object p0

    goto :goto_0
.end method

.method public multipliedBy(I)Lorg/joda/time/Seconds;
    .locals 1

    .prologue
    .line 400
    invoke-virtual {p0}, Lorg/joda/time/Seconds;->getValue()I

    move-result v0

    invoke-static {v0, p1}, Lorg/joda/time/field/FieldUtils;->safeMultiply(II)I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Seconds;->seconds(I)Lorg/joda/time/Seconds;

    move-result-object v0

    return-object v0
.end method

.method public negated()Lorg/joda/time/Seconds;
    .locals 1

    .prologue
    .line 428
    invoke-virtual {p0}, Lorg/joda/time/Seconds;->getValue()I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/field/FieldUtils;->safeNegate(I)I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Seconds;->seconds(I)Lorg/joda/time/Seconds;

    move-result-object v0

    return-object v0
.end method

.method public plus(I)Lorg/joda/time/Seconds;
    .locals 1

    .prologue
    .line 337
    if-nez p1, :cond_0

    .line 340
    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/Seconds;->getValue()I

    move-result v0

    invoke-static {v0, p1}, Lorg/joda/time/field/FieldUtils;->safeAdd(II)I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Seconds;->seconds(I)Lorg/joda/time/Seconds;

    move-result-object p0

    goto :goto_0
.end method

.method public plus(Lorg/joda/time/Seconds;)Lorg/joda/time/Seconds;
    .locals 1

    .prologue
    .line 353
    if-nez p1, :cond_0

    .line 356
    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/joda/time/Seconds;->getValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/joda/time/Seconds;->plus(I)Lorg/joda/time/Seconds;

    move-result-object p0

    goto :goto_0
.end method

.method public toStandardDays()Lorg/joda/time/Days;
    .locals 2

    .prologue
    .line 262
    invoke-virtual {p0}, Lorg/joda/time/Seconds;->getValue()I

    move-result v0

    const v1, 0x15180

    div-int/2addr v0, v1

    invoke-static {v0}, Lorg/joda/time/Days;->days(I)Lorg/joda/time/Days;

    move-result-object v0

    return-object v0
.end method

.method public toStandardDuration()Lorg/joda/time/Duration;
    .locals 6

    .prologue
    .line 312
    invoke-virtual {p0}, Lorg/joda/time/Seconds;->getValue()I

    move-result v0

    int-to-long v0, v0

    .line 313
    new-instance v2, Lorg/joda/time/Duration;

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    invoke-direct {v2, v0, v1}, Lorg/joda/time/Duration;-><init>(J)V

    return-object v2
.end method

.method public toStandardHours()Lorg/joda/time/Hours;
    .locals 1

    .prologue
    .line 278
    invoke-virtual {p0}, Lorg/joda/time/Seconds;->getValue()I

    move-result v0

    div-int/lit16 v0, v0, 0xe10

    invoke-static {v0}, Lorg/joda/time/Hours;->hours(I)Lorg/joda/time/Hours;

    move-result-object v0

    return-object v0
.end method

.method public toStandardMinutes()Lorg/joda/time/Minutes;
    .locals 1

    .prologue
    .line 294
    invoke-virtual {p0}, Lorg/joda/time/Seconds;->getValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Lorg/joda/time/Minutes;->minutes(I)Lorg/joda/time/Minutes;

    move-result-object v0

    return-object v0
.end method

.method public toStandardWeeks()Lorg/joda/time/Weeks;
    .locals 2

    .prologue
    .line 245
    invoke-virtual {p0}, Lorg/joda/time/Seconds;->getValue()I

    move-result v0

    const v1, 0x93a80

    div-int/2addr v0, v1

    invoke-static {v0}, Lorg/joda/time/Weeks;->weeks(I)Lorg/joda/time/Weeks;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Lorg/joda/convert/ToString;
    .end annotation

    .prologue
    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/Seconds;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
