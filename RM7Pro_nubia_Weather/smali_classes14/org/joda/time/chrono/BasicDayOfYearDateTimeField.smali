.class final Lorg/joda/time/chrono/BasicDayOfYearDateTimeField;
.super Lorg/joda/time/field/PreciseDurationDateTimeField;
.source "BasicDayOfYearDateTimeField.java"


# static fields
.field private static final serialVersionUID:J = -0x5ea9e6bfdc33a54dL


# instance fields
.field private final iChronology:Lorg/joda/time/chrono/BasicChronology;


# direct methods
.method constructor <init>(Lorg/joda/time/chrono/BasicChronology;Lorg/joda/time/DurationField;)V
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/joda/time/field/PreciseDurationDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DurationField;)V

    .line 43
    iput-object p1, p0, Lorg/joda/time/chrono/BasicDayOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    .line 44
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/joda/time/chrono/BasicDayOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->dayOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get(J)I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/joda/time/chrono/BasicDayOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getDayOfYear(J)I

    move-result v0

    return v0
.end method

.method public getMaximumValue()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/joda/time/chrono/BasicDayOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->getDaysInYearMax()I

    move-result v0

    return v0
.end method

.method public getMaximumValue(J)I
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lorg/joda/time/chrono/BasicDayOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getYear(J)I

    move-result v0

    .line 70
    iget-object v1, p0, Lorg/joda/time/chrono/BasicDayOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v1, v0}, Lorg/joda/time/chrono/BasicChronology;->getDaysInYear(I)I

    move-result v0

    return v0
.end method

.method public getMaximumValue(Lorg/joda/time/ReadablePartial;)I
    .locals 2

    .prologue
    .line 74
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->year()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePartial;->isSupported(Lorg/joda/time/DateTimeFieldType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->year()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePartial;->get(Lorg/joda/time/DateTimeFieldType;)I

    move-result v0

    .line 76
    iget-object v1, p0, Lorg/joda/time/chrono/BasicDayOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v1, v0}, Lorg/joda/time/chrono/BasicChronology;->getDaysInYear(I)I

    move-result v0

    .line 78
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/BasicDayOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->getDaysInYearMax()I

    move-result v0

    goto :goto_0
.end method

.method public getMaximumValue(Lorg/joda/time/ReadablePartial;[I)I
    .locals 4

    .prologue
    .line 82
    invoke-interface {p1}, Lorg/joda/time/ReadablePartial;->size()I

    move-result v1

    .line 83
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 84
    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePartial;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->year()Lorg/joda/time/DateTimeFieldType;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 85
    aget v0, p2, v0

    .line 86
    iget-object v1, p0, Lorg/joda/time/chrono/BasicDayOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v1, v0}, Lorg/joda/time/chrono/BasicChronology;->getDaysInYear(I)I

    move-result v0

    .line 89
    :goto_1
    return v0

    .line 83
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_1
    iget-object v0, p0, Lorg/joda/time/chrono/BasicDayOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->getDaysInYearMax()I

    move-result v0

    goto :goto_1
.end method

.method protected getMaximumValueForSet(JI)I
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lorg/joda/time/chrono/BasicDayOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->getDaysInYearMax()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 94
    if-gt p3, v0, :cond_0

    const/4 v1, 0x1

    if-ge p3, v1, :cond_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicDayOfYearDateTimeField;->getMaximumValue(J)I

    move-result v0

    :cond_1
    return v0
.end method

.method public getMinimumValue()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public getRangeDurationField()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/joda/time/chrono/BasicDayOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->years()Lorg/joda/time/DurationField;

    move-result-object v0

    return-object v0
.end method

.method public isLeap(J)Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/joda/time/chrono/BasicDayOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->isLeapDay(J)Z

    move-result v0

    return v0
.end method
