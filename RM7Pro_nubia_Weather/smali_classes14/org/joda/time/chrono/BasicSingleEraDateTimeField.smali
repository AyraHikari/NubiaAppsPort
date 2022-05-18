.class final Lorg/joda/time/chrono/BasicSingleEraDateTimeField;
.super Lorg/joda/time/field/BaseDateTimeField;
.source "BasicSingleEraDateTimeField.java"


# static fields
.field private static final ERA_VALUE:I = 0x1


# instance fields
.field private final iEraText:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->era()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/joda/time/field/BaseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;)V

    .line 52
    iput-object p1, p0, Lorg/joda/time/chrono/BasicSingleEraDateTimeField;->iEraText:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public get(J)I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public getAsText(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/joda/time/chrono/BasicSingleEraDateTimeField;->iEraText:Ljava/lang/String;

    return-object v0
.end method

.method public getDurationField()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 106
    invoke-static {}, Lorg/joda/time/DurationFieldType;->eras()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/field/UnsupportedDurationField;->getInstance(Lorg/joda/time/DurationFieldType;)Lorg/joda/time/field/UnsupportedDurationField;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumTextLength(Ljava/util/Locale;)I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/joda/time/chrono/BasicSingleEraDateTimeField;->iEraText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public getMaximumValue()I
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method public getMinimumValue()I
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method public getRangeDurationField()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public isLenient()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public roundCeiling(J)J
    .locals 2

    .prologue
    .line 86
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public roundFloor(J)J
    .locals 2

    .prologue
    .line 81
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public roundHalfCeiling(J)J
    .locals 2

    .prologue
    .line 96
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public roundHalfEven(J)J
    .locals 2

    .prologue
    .line 101
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public roundHalfFloor(J)J
    .locals 2

    .prologue
    .line 91
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public set(JI)J
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 67
    invoke-static {p0, p3, v0, v0}, Lorg/joda/time/field/FieldUtils;->verifyValueBounds(Lorg/joda/time/DateTimeField;III)V

    .line 68
    return-wide p1
.end method

.method public set(JLjava/lang/String;Ljava/util/Locale;)J
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lorg/joda/time/chrono/BasicSingleEraDateTimeField;->iEraText:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lorg/joda/time/IllegalFieldValueException;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->era()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lorg/joda/time/IllegalFieldValueException;-><init>(Lorg/joda/time/DateTimeFieldType;Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    return-wide p1
.end method
