.class public final Lorg/joda/time/Years;
.super Lorg/joda/time/base/BaseSingleFieldPeriod;
.source "Years.java"


# static fields
.field public static final MAX_VALUE:Lorg/joda/time/Years;

.field public static final MIN_VALUE:Lorg/joda/time/Years;

.field public static final ONE:Lorg/joda/time/Years;

.field private static final PARSER:Lorg/joda/time/format/PeriodFormatter;

.field public static final THREE:Lorg/joda/time/Years;

.field public static final TWO:Lorg/joda/time/Years;

.field public static final ZERO:Lorg/joda/time/Years;

.field private static final serialVersionUID:J = 0x136f3c648994184L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lorg/joda/time/Years;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/joda/time/Years;-><init>(I)V

    sput-object v0, Lorg/joda/time/Years;->ZERO:Lorg/joda/time/Years;

    .line 47
    new-instance v0, Lorg/joda/time/Years;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/joda/time/Years;-><init>(I)V

    sput-object v0, Lorg/joda/time/Years;->ONE:Lorg/joda/time/Years;

    .line 49
    new-instance v0, Lorg/joda/time/Years;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/joda/time/Years;-><init>(I)V

    sput-object v0, Lorg/joda/time/Years;->TWO:Lorg/joda/time/Years;

    .line 51
    new-instance v0, Lorg/joda/time/Years;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/joda/time/Years;-><init>(I)V

    sput-object v0, Lorg/joda/time/Years;->THREE:Lorg/joda/time/Years;

    .line 53
    new-instance v0, Lorg/joda/time/Years;

    const v1, 0x7fffffff

    invoke-direct {v0, v1}, Lorg/joda/time/Years;-><init>(I)V

    sput-object v0, Lorg/joda/time/Years;->MAX_VALUE:Lorg/joda/time/Years;

    .line 55
    new-instance v0, Lorg/joda/time/Years;

    const/high16 v1, -0x80000000

    invoke-direct {v0, v1}, Lorg/joda/time/Years;-><init>(I)V

    sput-object v0, Lorg/joda/time/Years;->MIN_VALUE:Lorg/joda/time/Years;

    .line 58
    invoke-static {}, Lorg/joda/time/format/ISOPeriodFormat;->standard()Lorg/joda/time/format/PeriodFormatter;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/PeriodType;->years()Lorg/joda/time/PeriodType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/PeriodFormatter;->withParseType(Lorg/joda/time/PeriodType;)Lorg/joda/time/format/PeriodFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/Years;->PARSER:Lorg/joda/time/format/PeriodFormatter;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lorg/joda/time/base/BaseSingleFieldPeriod;-><init>(I)V

    .line 176
    return-void
.end method

.method public static parseYears(Ljava/lang/String;)Lorg/joda/time/Years;
    .locals 1
    .annotation runtime Lorg/joda/convert/FromString;
    .end annotation

    .prologue
    .line 159
    if-nez p0, :cond_0

    .line 160
    sget-object v0, Lorg/joda/time/Years;->ZERO:Lorg/joda/time/Years;

    .line 163
    :goto_0
    return-object v0

    .line 162
    :cond_0
    sget-object v0, Lorg/joda/time/Years;->PARSER:Lorg/joda/time/format/PeriodFormatter;

    invoke-virtual {v0, p0}, Lorg/joda/time/format/PeriodFormatter;->parsePeriod(Ljava/lang/String;)Lorg/joda/time/Period;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Lorg/joda/time/Period;->getYears()I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Years;->years(I)Lorg/joda/time/Years;

    move-result-object v0

    goto :goto_0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lorg/joda/time/Years;->getValue()I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Years;->years(I)Lorg/joda/time/Years;

    move-result-object v0

    return-object v0
.end method

.method public static years(I)Lorg/joda/time/Years;
    .locals 1

    .prologue
    .line 72
    sparse-switch p0, :sswitch_data_0

    .line 86
    new-instance v0, Lorg/joda/time/Years;

    invoke-direct {v0, p0}, Lorg/joda/time/Years;-><init>(I)V

    :goto_0
    return-object v0

    .line 74
    :sswitch_0
    sget-object v0, Lorg/joda/time/Years;->ZERO:Lorg/joda/time/Years;

    goto :goto_0

    .line 76
    :sswitch_1
    sget-object v0, Lorg/joda/time/Years;->ONE:Lorg/joda/time/Years;

    goto :goto_0

    .line 78
    :sswitch_2
    sget-object v0, Lorg/joda/time/Years;->TWO:Lorg/joda/time/Years;

    goto :goto_0

    .line 80
    :sswitch_3
    sget-object v0, Lorg/joda/time/Years;->THREE:Lorg/joda/time/Years;

    goto :goto_0

    .line 82
    :sswitch_4
    sget-object v0, Lorg/joda/time/Years;->MAX_VALUE:Lorg/joda/time/Years;

    goto :goto_0

    .line 84
    :sswitch_5
    sget-object v0, Lorg/joda/time/Years;->MIN_VALUE:Lorg/joda/time/Years;

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

.method public static yearsBetween(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Years;
    .locals 1

    .prologue
    .line 102
    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/joda/time/base/BaseSingleFieldPeriod;->between(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;Lorg/joda/time/DurationFieldType;)I

    move-result v0

    .line 103
    invoke-static {v0}, Lorg/joda/time/Years;->years(I)Lorg/joda/time/Years;

    move-result-object v0

    return-object v0
.end method

.method public static yearsBetween(Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePartial;)Lorg/joda/time/Years;
    .locals 6

    .prologue
    .line 119
    instance-of v0, p0, Lorg/joda/time/LocalDate;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/joda/time/LocalDate;

    if-eqz v0, :cond_0

    .line 120
    invoke-interface {p0}, Lorg/joda/time/ReadablePartial;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->years()Lorg/joda/time/DurationField;

    move-result-object v0

    check-cast p1, Lorg/joda/time/LocalDate;

    invoke-virtual {p1}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v2

    check-cast p0, Lorg/joda/time/LocalDate;

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/joda/time/DurationField;->getDifference(JJ)I

    move-result v0

    .line 123
    invoke-static {v0}, Lorg/joda/time/Years;->years(I)Lorg/joda/time/Years;

    move-result-object v0

    .line 126
    :goto_0
    return-object v0

    .line 125
    :cond_0
    sget-object v0, Lorg/joda/time/Years;->ZERO:Lorg/joda/time/Years;

    invoke-static {p0, p1, v0}, Lorg/joda/time/base/BaseSingleFieldPeriod;->between(Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePeriod;)I

    move-result v0

    .line 126
    invoke-static {v0}, Lorg/joda/time/Years;->years(I)Lorg/joda/time/Years;

    move-result-object v0

    goto :goto_0
.end method

.method public static yearsIn(Lorg/joda/time/ReadableInterval;)Lorg/joda/time/Years;
    .locals 3

    .prologue
    .line 139
    if-nez p0, :cond_0

    .line 140
    sget-object v0, Lorg/joda/time/Years;->ZERO:Lorg/joda/time/Years;

    .line 143
    :goto_0
    return-object v0

    .line 142
    :cond_0
    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getStart()Lorg/joda/time/DateTime;

    move-result-object v0

    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getEnd()Lorg/joda/time/DateTime;

    move-result-object v1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/joda/time/base/BaseSingleFieldPeriod;->between(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;Lorg/joda/time/DurationFieldType;)I

    move-result v0

    .line 143
    invoke-static {v0}, Lorg/joda/time/Years;->years(I)Lorg/joda/time/Years;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public dividedBy(I)Lorg/joda/time/Years;
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 307
    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/Years;->getValue()I

    move-result v0

    div-int/2addr v0, p1

    invoke-static {v0}, Lorg/joda/time/Years;->years(I)Lorg/joda/time/Years;

    move-result-object p0

    goto :goto_0
.end method

.method public getFieldType()Lorg/joda/time/DurationFieldType;
    .locals 1

    .prologue
    .line 194
    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    return-object v0
.end method

.method public getPeriodType()Lorg/joda/time/PeriodType;
    .locals 1

    .prologue
    .line 203
    invoke-static {}, Lorg/joda/time/PeriodType;->years()Lorg/joda/time/PeriodType;

    move-result-object v0

    return-object v0
.end method

.method public getYears()I
    .locals 1

    .prologue
    .line 213
    invoke-virtual {p0}, Lorg/joda/time/Years;->getValue()I

    move-result v0

    return v0
.end method

.method public isGreaterThan(Lorg/joda/time/Years;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 329
    if-nez p1, :cond_2

    .line 330
    invoke-virtual {p0}, Lorg/joda/time/Years;->getValue()I

    move-result v2

    if-lez v2, :cond_1

    .line 332
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 330
    goto :goto_0

    .line 332
    :cond_2
    invoke-virtual {p0}, Lorg/joda/time/Years;->getValue()I

    move-result v2

    invoke-virtual {p1}, Lorg/joda/time/Years;->getValue()I

    move-result v3

    if-gt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isLessThan(Lorg/joda/time/Years;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 342
    if-nez p1, :cond_2

    .line 343
    invoke-virtual {p0}, Lorg/joda/time/Years;->getValue()I

    move-result v2

    if-gez v2, :cond_1

    .line 345
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 343
    goto :goto_0

    .line 345
    :cond_2
    invoke-virtual {p0}, Lorg/joda/time/Years;->getValue()I

    move-result v2

    invoke-virtual {p1}, Lorg/joda/time/Years;->getValue()I

    move-result v3

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public minus(I)Lorg/joda/time/Years;
    .locals 1

    .prologue
    .line 260
    invoke-static {p1}, Lorg/joda/time/field/FieldUtils;->safeNegate(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/joda/time/Years;->plus(I)Lorg/joda/time/Years;

    move-result-object v0

    return-object v0
.end method

.method public minus(Lorg/joda/time/Years;)Lorg/joda/time/Years;
    .locals 1

    .prologue
    .line 273
    if-nez p1, :cond_0

    .line 276
    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/joda/time/Years;->getValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/joda/time/Years;->minus(I)Lorg/joda/time/Years;

    move-result-object p0

    goto :goto_0
.end method

.method public multipliedBy(I)Lorg/joda/time/Years;
    .locals 1

    .prologue
    .line 290
    invoke-virtual {p0}, Lorg/joda/time/Years;->getValue()I

    move-result v0

    invoke-static {v0, p1}, Lorg/joda/time/field/FieldUtils;->safeMultiply(II)I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Years;->years(I)Lorg/joda/time/Years;

    move-result-object v0

    return-object v0
.end method

.method public negated()Lorg/joda/time/Years;
    .locals 1

    .prologue
    .line 318
    invoke-virtual {p0}, Lorg/joda/time/Years;->getValue()I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/field/FieldUtils;->safeNegate(I)I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Years;->years(I)Lorg/joda/time/Years;

    move-result-object v0

    return-object v0
.end method

.method public plus(I)Lorg/joda/time/Years;
    .locals 1

    .prologue
    .line 227
    if-nez p1, :cond_0

    .line 230
    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/Years;->getValue()I

    move-result v0

    invoke-static {v0, p1}, Lorg/joda/time/field/FieldUtils;->safeAdd(II)I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Years;->years(I)Lorg/joda/time/Years;

    move-result-object p0

    goto :goto_0
.end method

.method public plus(Lorg/joda/time/Years;)Lorg/joda/time/Years;
    .locals 1

    .prologue
    .line 243
    if-nez p1, :cond_0

    .line 246
    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/joda/time/Years;->getValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/joda/time/Years;->plus(I)Lorg/joda/time/Years;

    move-result-object p0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Lorg/joda/convert/ToString;
    .end annotation

    .prologue
    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/Years;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Y"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
