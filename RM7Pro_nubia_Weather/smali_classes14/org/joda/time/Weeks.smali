.class public final Lorg/joda/time/Weeks;
.super Lorg/joda/time/base/BaseSingleFieldPeriod;
.source "Weeks.java"


# static fields
.field public static final MAX_VALUE:Lorg/joda/time/Weeks;

.field public static final MIN_VALUE:Lorg/joda/time/Weeks;

.field public static final ONE:Lorg/joda/time/Weeks;

.field private static final PARSER:Lorg/joda/time/format/PeriodFormatter;

.field public static final THREE:Lorg/joda/time/Weeks;

.field public static final TWO:Lorg/joda/time/Weeks;

.field public static final ZERO:Lorg/joda/time/Weeks;

.field private static final serialVersionUID:J = 0x136f3c648994182L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lorg/joda/time/Weeks;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/joda/time/Weeks;-><init>(I)V

    sput-object v0, Lorg/joda/time/Weeks;->ZERO:Lorg/joda/time/Weeks;

    .line 47
    new-instance v0, Lorg/joda/time/Weeks;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/joda/time/Weeks;-><init>(I)V

    sput-object v0, Lorg/joda/time/Weeks;->ONE:Lorg/joda/time/Weeks;

    .line 49
    new-instance v0, Lorg/joda/time/Weeks;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/joda/time/Weeks;-><init>(I)V

    sput-object v0, Lorg/joda/time/Weeks;->TWO:Lorg/joda/time/Weeks;

    .line 51
    new-instance v0, Lorg/joda/time/Weeks;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/joda/time/Weeks;-><init>(I)V

    sput-object v0, Lorg/joda/time/Weeks;->THREE:Lorg/joda/time/Weeks;

    .line 53
    new-instance v0, Lorg/joda/time/Weeks;

    const v1, 0x7fffffff

    invoke-direct {v0, v1}, Lorg/joda/time/Weeks;-><init>(I)V

    sput-object v0, Lorg/joda/time/Weeks;->MAX_VALUE:Lorg/joda/time/Weeks;

    .line 55
    new-instance v0, Lorg/joda/time/Weeks;

    const/high16 v1, -0x80000000

    invoke-direct {v0, v1}, Lorg/joda/time/Weeks;-><init>(I)V

    sput-object v0, Lorg/joda/time/Weeks;->MIN_VALUE:Lorg/joda/time/Weeks;

    .line 58
    invoke-static {}, Lorg/joda/time/format/ISOPeriodFormat;->standard()Lorg/joda/time/format/PeriodFormatter;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/PeriodType;->weeks()Lorg/joda/time/PeriodType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/PeriodFormatter;->withParseType(Lorg/joda/time/PeriodType;)Lorg/joda/time/format/PeriodFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/Weeks;->PARSER:Lorg/joda/time/format/PeriodFormatter;

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

.method public static parseWeeks(Ljava/lang/String;)Lorg/joda/time/Weeks;
    .locals 1
    .annotation runtime Lorg/joda/convert/FromString;
    .end annotation

    .prologue
    .line 182
    if-nez p0, :cond_0

    .line 183
    sget-object v0, Lorg/joda/time/Weeks;->ZERO:Lorg/joda/time/Weeks;

    .line 186
    :goto_0
    return-object v0

    .line 185
    :cond_0
    sget-object v0, Lorg/joda/time/Weeks;->PARSER:Lorg/joda/time/format/PeriodFormatter;

    invoke-virtual {v0, p0}, Lorg/joda/time/format/PeriodFormatter;->parsePeriod(Ljava/lang/String;)Lorg/joda/time/Period;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Lorg/joda/time/Period;->getWeeks()I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Weeks;->weeks(I)Lorg/joda/time/Weeks;

    move-result-object v0

    goto :goto_0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lorg/joda/time/Weeks;->getValue()I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Weeks;->weeks(I)Lorg/joda/time/Weeks;

    move-result-object v0

    return-object v0
.end method

.method public static standardWeeksIn(Lorg/joda/time/ReadablePeriod;)Lorg/joda/time/Weeks;
    .locals 2

    .prologue
    .line 165
    const-wide/32 v0, 0x240c8400

    invoke-static {p0, v0, v1}, Lorg/joda/time/base/BaseSingleFieldPeriod;->standardPeriodIn(Lorg/joda/time/ReadablePeriod;J)I

    move-result v0

    .line 166
    invoke-static {v0}, Lorg/joda/time/Weeks;->weeks(I)Lorg/joda/time/Weeks;

    move-result-object v0

    return-object v0
.end method

.method public static weeks(I)Lorg/joda/time/Weeks;
    .locals 1

    .prologue
    .line 72
    sparse-switch p0, :sswitch_data_0

    .line 86
    new-instance v0, Lorg/joda/time/Weeks;

    invoke-direct {v0, p0}, Lorg/joda/time/Weeks;-><init>(I)V

    :goto_0
    return-object v0

    .line 74
    :sswitch_0
    sget-object v0, Lorg/joda/time/Weeks;->ZERO:Lorg/joda/time/Weeks;

    goto :goto_0

    .line 76
    :sswitch_1
    sget-object v0, Lorg/joda/time/Weeks;->ONE:Lorg/joda/time/Weeks;

    goto :goto_0

    .line 78
    :sswitch_2
    sget-object v0, Lorg/joda/time/Weeks;->TWO:Lorg/joda/time/Weeks;

    goto :goto_0

    .line 80
    :sswitch_3
    sget-object v0, Lorg/joda/time/Weeks;->THREE:Lorg/joda/time/Weeks;

    goto :goto_0

    .line 82
    :sswitch_4
    sget-object v0, Lorg/joda/time/Weeks;->MAX_VALUE:Lorg/joda/time/Weeks;

    goto :goto_0

    .line 84
    :sswitch_5
    sget-object v0, Lorg/joda/time/Weeks;->MIN_VALUE:Lorg/joda/time/Weeks;

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

.method public static weeksBetween(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Weeks;
    .locals 1

    .prologue
    .line 101
    invoke-static {}, Lorg/joda/time/DurationFieldType;->weeks()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/joda/time/base/BaseSingleFieldPeriod;->between(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;Lorg/joda/time/DurationFieldType;)I

    move-result v0

    .line 102
    invoke-static {v0}, Lorg/joda/time/Weeks;->weeks(I)Lorg/joda/time/Weeks;

    move-result-object v0

    return-object v0
.end method

.method public static weeksBetween(Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePartial;)Lorg/joda/time/Weeks;
    .locals 6

    .prologue
    .line 118
    instance-of v0, p0, Lorg/joda/time/LocalDate;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/joda/time/LocalDate;

    if-eqz v0, :cond_0

    .line 119
    invoke-interface {p0}, Lorg/joda/time/ReadablePartial;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->weeks()Lorg/joda/time/DurationField;

    move-result-object v0

    check-cast p1, Lorg/joda/time/LocalDate;

    invoke-virtual {p1}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v2

    check-cast p0, Lorg/joda/time/LocalDate;

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/joda/time/DurationField;->getDifference(JJ)I

    move-result v0

    .line 122
    invoke-static {v0}, Lorg/joda/time/Weeks;->weeks(I)Lorg/joda/time/Weeks;

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    .line 124
    :cond_0
    sget-object v0, Lorg/joda/time/Weeks;->ZERO:Lorg/joda/time/Weeks;

    invoke-static {p0, p1, v0}, Lorg/joda/time/base/BaseSingleFieldPeriod;->between(Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePeriod;)I

    move-result v0

    .line 125
    invoke-static {v0}, Lorg/joda/time/Weeks;->weeks(I)Lorg/joda/time/Weeks;

    move-result-object v0

    goto :goto_0
.end method

.method public static weeksIn(Lorg/joda/time/ReadableInterval;)Lorg/joda/time/Weeks;
    .locals 3

    .prologue
    .line 137
    if-nez p0, :cond_0

    .line 138
    sget-object v0, Lorg/joda/time/Weeks;->ZERO:Lorg/joda/time/Weeks;

    .line 141
    :goto_0
    return-object v0

    .line 140
    :cond_0
    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getStart()Lorg/joda/time/DateTime;

    move-result-object v0

    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getEnd()Lorg/joda/time/DateTime;

    move-result-object v1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->weeks()Lorg/joda/time/DurationFieldType;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/joda/time/base/BaseSingleFieldPeriod;->between(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;Lorg/joda/time/DurationFieldType;)I

    move-result v0

    .line 141
    invoke-static {v0}, Lorg/joda/time/Weeks;->weeks(I)Lorg/joda/time/Weeks;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public dividedBy(I)Lorg/joda/time/Weeks;
    .locals 1

    .prologue
    .line 420
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 423
    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/Weeks;->getValue()I

    move-result v0

    div-int/2addr v0, p1

    invoke-static {v0}, Lorg/joda/time/Weeks;->weeks(I)Lorg/joda/time/Weeks;

    move-result-object p0

    goto :goto_0
.end method

.method public getFieldType()Lorg/joda/time/DurationFieldType;
    .locals 1

    .prologue
    .line 217
    invoke-static {}, Lorg/joda/time/DurationFieldType;->weeks()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    return-object v0
.end method

.method public getPeriodType()Lorg/joda/time/PeriodType;
    .locals 1

    .prologue
    .line 226
    invoke-static {}, Lorg/joda/time/PeriodType;->weeks()Lorg/joda/time/PeriodType;

    move-result-object v0

    return-object v0
.end method

.method public getWeeks()I
    .locals 1

    .prologue
    .line 329
    invoke-virtual {p0}, Lorg/joda/time/Weeks;->getValue()I

    move-result v0

    return v0
.end method

.method public isGreaterThan(Lorg/joda/time/Weeks;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 445
    if-nez p1, :cond_2

    .line 446
    invoke-virtual {p0}, Lorg/joda/time/Weeks;->getValue()I

    move-result v2

    if-lez v2, :cond_1

    .line 448
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 446
    goto :goto_0

    .line 448
    :cond_2
    invoke-virtual {p0}, Lorg/joda/time/Weeks;->getValue()I

    move-result v2

    invoke-virtual {p1}, Lorg/joda/time/Weeks;->getValue()I

    move-result v3

    if-gt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isLessThan(Lorg/joda/time/Weeks;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 458
    if-nez p1, :cond_2

    .line 459
    invoke-virtual {p0}, Lorg/joda/time/Weeks;->getValue()I

    move-result v2

    if-gez v2, :cond_1

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
    invoke-virtual {p0}, Lorg/joda/time/Weeks;->getValue()I

    move-result v2

    invoke-virtual {p1}, Lorg/joda/time/Weeks;->getValue()I

    move-result v3

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public minus(I)Lorg/joda/time/Weeks;
    .locals 1

    .prologue
    .line 376
    invoke-static {p1}, Lorg/joda/time/field/FieldUtils;->safeNegate(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/joda/time/Weeks;->plus(I)Lorg/joda/time/Weeks;

    move-result-object v0

    return-object v0
.end method

.method public minus(Lorg/joda/time/Weeks;)Lorg/joda/time/Weeks;
    .locals 1

    .prologue
    .line 389
    if-nez p1, :cond_0

    .line 392
    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/joda/time/Weeks;->getValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/joda/time/Weeks;->minus(I)Lorg/joda/time/Weeks;

    move-result-object p0

    goto :goto_0
.end method

.method public multipliedBy(I)Lorg/joda/time/Weeks;
    .locals 1

    .prologue
    .line 406
    invoke-virtual {p0}, Lorg/joda/time/Weeks;->getValue()I

    move-result v0

    invoke-static {v0, p1}, Lorg/joda/time/field/FieldUtils;->safeMultiply(II)I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Weeks;->weeks(I)Lorg/joda/time/Weeks;

    move-result-object v0

    return-object v0
.end method

.method public negated()Lorg/joda/time/Weeks;
    .locals 1

    .prologue
    .line 434
    invoke-virtual {p0}, Lorg/joda/time/Weeks;->getValue()I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/field/FieldUtils;->safeNegate(I)I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Weeks;->weeks(I)Lorg/joda/time/Weeks;

    move-result-object v0

    return-object v0
.end method

.method public plus(I)Lorg/joda/time/Weeks;
    .locals 1

    .prologue
    .line 343
    if-nez p1, :cond_0

    .line 346
    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/Weeks;->getValue()I

    move-result v0

    invoke-static {v0, p1}, Lorg/joda/time/field/FieldUtils;->safeAdd(II)I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Weeks;->weeks(I)Lorg/joda/time/Weeks;

    move-result-object p0

    goto :goto_0
.end method

.method public plus(Lorg/joda/time/Weeks;)Lorg/joda/time/Weeks;
    .locals 1

    .prologue
    .line 359
    if-nez p1, :cond_0

    .line 362
    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/joda/time/Weeks;->getValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/joda/time/Weeks;->plus(I)Lorg/joda/time/Weeks;

    move-result-object p0

    goto :goto_0
.end method

.method public toStandardDays()Lorg/joda/time/Days;
    .locals 2

    .prologue
    .line 244
    invoke-virtual {p0}, Lorg/joda/time/Weeks;->getValue()I

    move-result v0

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lorg/joda/time/field/FieldUtils;->safeMultiply(II)I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Days;->days(I)Lorg/joda/time/Days;

    move-result-object v0

    return-object v0
.end method

.method public toStandardDuration()Lorg/joda/time/Duration;
    .locals 6

    .prologue
    .line 318
    invoke-virtual {p0}, Lorg/joda/time/Weeks;->getValue()I

    move-result v0

    int-to-long v0, v0

    .line 319
    new-instance v2, Lorg/joda/time/Duration;

    const-wide/32 v4, 0x240c8400

    mul-long/2addr v0, v4

    invoke-direct {v2, v0, v1}, Lorg/joda/time/Duration;-><init>(J)V

    return-object v2
.end method

.method public toStandardHours()Lorg/joda/time/Hours;
    .locals 2

    .prologue
    .line 262
    invoke-virtual {p0}, Lorg/joda/time/Weeks;->getValue()I

    move-result v0

    const/16 v1, 0xa8

    invoke-static {v0, v1}, Lorg/joda/time/field/FieldUtils;->safeMultiply(II)I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Hours;->hours(I)Lorg/joda/time/Hours;

    move-result-object v0

    return-object v0
.end method

.method public toStandardMinutes()Lorg/joda/time/Minutes;
    .locals 2

    .prologue
    .line 280
    invoke-virtual {p0}, Lorg/joda/time/Weeks;->getValue()I

    move-result v0

    const/16 v1, 0x2760

    invoke-static {v0, v1}, Lorg/joda/time/field/FieldUtils;->safeMultiply(II)I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Minutes;->minutes(I)Lorg/joda/time/Minutes;

    move-result-object v0

    return-object v0
.end method

.method public toStandardSeconds()Lorg/joda/time/Seconds;
    .locals 2

    .prologue
    .line 299
    invoke-virtual {p0}, Lorg/joda/time/Weeks;->getValue()I

    move-result v0

    const v1, 0x93a80

    invoke-static {v0, v1}, Lorg/joda/time/field/FieldUtils;->safeMultiply(II)I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Seconds;->seconds(I)Lorg/joda/time/Seconds;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Lorg/joda/convert/ToString;
    .end annotation

    .prologue
    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/Weeks;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "W"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
