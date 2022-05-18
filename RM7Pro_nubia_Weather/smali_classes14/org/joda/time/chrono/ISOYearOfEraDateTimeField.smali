.class Lorg/joda/time/chrono/ISOYearOfEraDateTimeField;
.super Lorg/joda/time/field/DecoratedDateTimeField;
.source "ISOYearOfEraDateTimeField.java"


# static fields
.field static final INSTANCE:Lorg/joda/time/DateTimeField;

.field private static final serialVersionUID:J = 0x61aa4edab52f7f95L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lorg/joda/time/chrono/ISOYearOfEraDateTimeField;

    invoke-direct {v0}, Lorg/joda/time/chrono/ISOYearOfEraDateTimeField;-><init>()V

    sput-object v0, Lorg/joda/time/chrono/ISOYearOfEraDateTimeField;->INSTANCE:Lorg/joda/time/DateTimeField;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-static {}, Lorg/joda/time/chrono/GregorianChronology;->getInstanceUTC()Lorg/joda/time/chrono/GregorianChronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/chrono/GregorianChronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->yearOfEra()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/joda/time/field/DecoratedDateTimeField;-><init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeFieldType;)V

    .line 49
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lorg/joda/time/chrono/ISOYearOfEraDateTimeField;->INSTANCE:Lorg/joda/time/DateTimeField;

    return-object v0
.end method


# virtual methods
.method public add(JI)J
    .locals 3

    .prologue
    .line 62
    invoke-virtual {p0}, Lorg/joda/time/chrono/ISOYearOfEraDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DateTimeField;->add(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public add(JJ)J
    .locals 3

    .prologue
    .line 66
    invoke-virtual {p0}, Lorg/joda/time/chrono/ISOYearOfEraDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DateTimeField;->add(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public addWrapField(JI)J
    .locals 3

    .prologue
    .line 70
    invoke-virtual {p0}, Lorg/joda/time/chrono/ISOYearOfEraDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DateTimeField;->addWrapField(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public addWrapField(Lorg/joda/time/ReadablePartial;I[II)[I
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lorg/joda/time/chrono/ISOYearOfEraDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DateTimeField;->addWrapField(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object v0

    return-object v0
.end method

.method public get(J)I
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lorg/joda/time/chrono/ISOYearOfEraDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    .line 58
    if-gez v0, :cond_0

    neg-int v0, v0

    :cond_0
    return v0
.end method

.method public getDifference(JJ)I
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lorg/joda/time/chrono/ISOYearOfEraDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DateTimeField;->getDifference(JJ)I

    move-result v0

    return v0
.end method

.method public getDifferenceAsLong(JJ)J
    .locals 3

    .prologue
    .line 82
    invoke-virtual {p0}, Lorg/joda/time/chrono/ISOYearOfEraDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DateTimeField;->getDifferenceAsLong(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaximumValue()I
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lorg/joda/time/chrono/ISOYearOfEraDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getMaximumValue()I

    move-result v0

    return v0
.end method

.method public getMinimumValue()I
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public getRangeDurationField()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lorg/joda/time/chrono/GregorianChronology;->getInstanceUTC()Lorg/joda/time/chrono/GregorianChronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/chrono/GregorianChronology;->eras()Lorg/joda/time/DurationField;

    move-result-object v0

    return-object v0
.end method

.method public remainder(J)J
    .locals 3

    .prologue
    .line 110
    invoke-virtual {p0}, Lorg/joda/time/chrono/ISOYearOfEraDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->remainder(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public roundCeiling(J)J
    .locals 3

    .prologue
    .line 106
    invoke-virtual {p0}, Lorg/joda/time/chrono/ISOYearOfEraDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->roundCeiling(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public roundFloor(J)J
    .locals 3

    .prologue
    .line 102
    invoke-virtual {p0}, Lorg/joda/time/chrono/ISOYearOfEraDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->roundFloor(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public set(JI)J
    .locals 3

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/joda/time/chrono/ISOYearOfEraDateTimeField;->getMaximumValue()I

    move-result v1

    invoke-static {p0, p3, v0, v1}, Lorg/joda/time/field/FieldUtils;->verifyValueBounds(Lorg/joda/time/DateTimeField;III)V

    .line 87
    invoke-virtual {p0}, Lorg/joda/time/chrono/ISOYearOfEraDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    if-gez v0, :cond_0

    .line 88
    neg-int p3, p3

    .line 90
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/joda/time/field/DecoratedDateTimeField;->set(JI)J

    move-result-wide v0

    return-wide v0
.end method
