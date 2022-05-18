.class public abstract Lorg/joda/time/field/AbstractReadableInstantFieldProperty;
.super Ljava/lang/Object;
.source "AbstractReadableInstantFieldProperty.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1b5b33e6c8f3f47dL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method


# virtual methods
.method public compareTo(Lorg/joda/time/ReadableInstant;)I
    .locals 2

    .prologue
    .line 391
    if-nez p1, :cond_0

    .line 392
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The instant must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->get()I

    move-result v0

    .line 395
    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getFieldType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/joda/time/ReadableInstant;->get(Lorg/joda/time/DateTimeFieldType;)I

    move-result v1

    .line 396
    if-ge v0, v1, :cond_1

    .line 397
    const/4 v0, -0x1

    .line 401
    :goto_0
    return v0

    .line 398
    :cond_1
    if-le v0, v1, :cond_2

    .line 399
    const/4 v0, 0x1

    goto :goto_0

    .line 401
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public compareTo(Lorg/joda/time/ReadablePartial;)I
    .locals 2

    .prologue
    .line 420
    if-nez p1, :cond_0

    .line 421
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The partial must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->get()I

    move-result v0

    .line 424
    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getFieldType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/joda/time/ReadablePartial;->get(Lorg/joda/time/DateTimeFieldType;)I

    move-result v1

    .line 425
    if-ge v0, v1, :cond_1

    .line 426
    const/4 v0, -0x1

    .line 430
    :goto_0
    return v0

    .line 427
    :cond_1
    if-le v0, v1, :cond_2

    .line 428
    const/4 v0, 0x1

    goto :goto_0

    .line 430
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 442
    if-ne p0, p1, :cond_1

    .line 449
    :cond_0
    :goto_0
    return v0

    .line 445
    :cond_1
    instance-of v2, p1, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;

    if-nez v2, :cond_2

    move v0, v1

    .line 446
    goto :goto_0

    .line 448
    :cond_2
    check-cast p1, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;

    .line 449
    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->get()I

    move-result v2

    invoke-virtual {p1}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->get()I

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getFieldType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-virtual {p1}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getFieldType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v2

    invoke-virtual {p1}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/joda/time/field/FieldUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public get()I
    .locals 4

    .prologue
    .line 120
    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getAsShortText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getAsShortText(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsShortText(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 198
    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DateTimeField;->getAsShortText(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->get()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getAsText(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsText(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 167
    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/joda/time/DateTimeField;->getAsText(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getChronology()Lorg/joda/time/Chronology;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The method getChronology() was added in v1.4 and needs to be implemented by subclasses of AbstractReadableInstantFieldProperty"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDifference(Lorg/joda/time/ReadableInstant;)I
    .locals 6

    .prologue
    .line 213
    if-nez p1, :cond_0

    .line 214
    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getMillis()J

    move-result-wide v2

    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/joda/time/DateTimeField;->getDifference(JJ)I

    move-result v0

    .line 216
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getMillis()J

    move-result-wide v2

    invoke-interface {p1}, Lorg/joda/time/ReadableInstant;->getMillis()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/joda/time/DateTimeField;->getDifference(JJ)I

    move-result v0

    goto :goto_0
.end method

.method public getDifferenceAsLong(Lorg/joda/time/ReadableInstant;)J
    .locals 6

    .prologue
    .line 230
    if-nez p1, :cond_0

    .line 231
    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getMillis()J

    move-result-wide v2

    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/joda/time/DateTimeField;->getDifferenceAsLong(JJ)J

    move-result-wide v0

    .line 233
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getMillis()J

    move-result-wide v2

    invoke-interface {p1}, Lorg/joda/time/ReadableInstant;->getMillis()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/joda/time/DateTimeField;->getDifferenceAsLong(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getDurationField()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 244
    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    return-object v0
.end method

.method public abstract getField()Lorg/joda/time/DateTimeField;
.end method

.method public getFieldType()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    return-object v0
.end method

.method public getLeapAmount()I
    .locals 4

    .prologue
    .line 274
    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->getLeapAmount(J)I

    move-result v0

    return v0
.end method

.method public getLeapDurationField()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 282
    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getLeapDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumShortTextLength(Ljava/util/Locale;)I
    .locals 1

    .prologue
    .line 345
    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/DateTimeField;->getMaximumShortTextLength(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method public getMaximumTextLength(Ljava/util/Locale;)I
    .locals 1

    .prologue
    .line 334
    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/DateTimeField;->getMaximumTextLength(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method public getMaximumValue()I
    .locals 4

    .prologue
    .line 323
    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->getMaximumValue(J)I

    move-result v0

    return v0
.end method

.method public getMaximumValueOverall()I
    .locals 1

    .prologue
    .line 313
    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getMaximumValue()I

    move-result v0

    return v0
.end method

.method protected abstract getMillis()J
.end method

.method public getMinimumValue()I
    .locals 4

    .prologue
    .line 303
    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->getMinimumValue(J)I

    move-result v0

    return v0
.end method

.method public getMinimumValueOverall()I
    .locals 1

    .prologue
    .line 293
    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getMinimumValue()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRangeDurationField()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 254
    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getRangeDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 461
    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->get()I

    move-result v0

    mul-int/lit8 v0, v0, 0x11

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getFieldType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isLeap()Z
    .locals 4

    .prologue
    .line 264
    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->isLeap(J)Z

    move-result v0

    return v0
.end method

.method public remainder()J
    .locals 4

    .prologue
    .line 356
    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->remainder(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public toInterval()Lorg/joda/time/Interval;
    .locals 7

    .prologue
    .line 370
    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    .line 371
    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->roundFloor(J)J

    move-result-wide v2

    .line 372
    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lorg/joda/time/DateTimeField;->add(JI)J

    move-result-wide v4

    .line 373
    new-instance v1, Lorg/joda/time/Interval;

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lorg/joda/time/Interval;-><init>(JJLorg/joda/time/Chronology;)V

    .line 374
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Property["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
