.class public abstract Lorg/joda/time/field/AbstractPartialFieldProperty;
.super Ljava/lang/Object;
.source "AbstractPartialFieldProperty.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method


# virtual methods
.method public compareTo(Lorg/joda/time/ReadableInstant;)I
    .locals 2

    .prologue
    .line 271
    if-nez p1, :cond_0

    .line 272
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The instant must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->get()I

    move-result v0

    .line 275
    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getFieldType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/joda/time/ReadableInstant;->get(Lorg/joda/time/DateTimeFieldType;)I

    move-result v1

    .line 276
    if-ge v0, v1, :cond_1

    .line 277
    const/4 v0, -0x1

    .line 281
    :goto_0
    return v0

    .line 278
    :cond_1
    if-le v0, v1, :cond_2

    .line 279
    const/4 v0, 0x1

    goto :goto_0

    .line 281
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public compareTo(Lorg/joda/time/ReadablePartial;)I
    .locals 2

    .prologue
    .line 300
    if-nez p1, :cond_0

    .line 301
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The instant must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->get()I

    move-result v0

    .line 304
    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getFieldType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/joda/time/ReadablePartial;->get(Lorg/joda/time/DateTimeFieldType;)I

    move-result v1

    .line 305
    if-ge v0, v1, :cond_1

    .line 306
    const/4 v0, -0x1

    .line 310
    :goto_0
    return v0

    .line 307
    :cond_1
    if-le v0, v1, :cond_2

    .line 308
    const/4 v0, 0x1

    goto :goto_0

    .line 310
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 322
    if-ne p0, p1, :cond_1

    .line 329
    :cond_0
    :goto_0
    return v0

    .line 325
    :cond_1
    instance-of v2, p1, Lorg/joda/time/field/AbstractPartialFieldProperty;

    if-nez v2, :cond_2

    move v0, v1

    .line 326
    goto :goto_0

    .line 328
    :cond_2
    check-cast p1, Lorg/joda/time/field/AbstractPartialFieldProperty;

    .line 329
    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->get()I

    move-result v2

    invoke-virtual {p1}, Lorg/joda/time/field/AbstractPartialFieldProperty;->get()I

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getFieldType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-virtual {p1}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getFieldType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v3

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getReadablePartial()Lorg/joda/time/ReadablePartial;

    move-result-object v2

    invoke-interface {v2}, Lorg/joda/time/ReadablePartial;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v2

    invoke-virtual {p1}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getReadablePartial()Lorg/joda/time/ReadablePartial;

    move-result-object v3

    invoke-interface {v3}, Lorg/joda/time/ReadablePartial;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/joda/time/field/FieldUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public abstract get()I
.end method

.method public getAsShortText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getAsShortText(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsShortText(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 168
    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getReadablePartial()Lorg/joda/time/ReadablePartial;

    move-result-object v1

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->get()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->getAsShortText(Lorg/joda/time/ReadablePartial;ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->get()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getAsText(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsText(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 137
    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getReadablePartial()Lorg/joda/time/ReadablePartial;

    move-result-object v1

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->get()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->getAsText(Lorg/joda/time/ReadablePartial;ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDurationField()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getField()Lorg/joda/time/DateTimeField;

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
    .line 60
    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumShortTextLength(Ljava/util/Locale;)I
    .locals 1

    .prologue
    .line 253
    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/DateTimeField;->getMaximumShortTextLength(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method public getMaximumTextLength(Ljava/util/Locale;)I
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/DateTimeField;->getMaximumTextLength(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method public getMaximumValue()I
    .locals 2

    .prologue
    .line 230
    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getReadablePartial()Lorg/joda/time/ReadablePartial;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTimeField;->getMaximumValue(Lorg/joda/time/ReadablePartial;)I

    move-result v0

    return v0
.end method

.method public getMaximumValueOverall()I
    .locals 1

    .prologue
    .line 220
    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getMaximumValue()I

    move-result v0

    return v0
.end method

.method public getMinimumValue()I
    .locals 2

    .prologue
    .line 210
    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getReadablePartial()Lorg/joda/time/ReadablePartial;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTimeField;->getMinimumValue(Lorg/joda/time/ReadablePartial;)I

    move-result v0

    return v0
.end method

.method public getMinimumValueOverall()I
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getMinimumValue()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRangeDurationField()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getRangeDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getReadablePartial()Lorg/joda/time/ReadablePartial;
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 343
    .line 344
    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->get()I

    move-result v0

    add-int/lit16 v0, v0, 0xf7

    .line 345
    mul-int/lit8 v0, v0, 0xd

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getFieldType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 346
    mul-int/lit8 v0, v0, 0xd

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getReadablePartial()Lorg/joda/time/ReadablePartial;

    move-result-object v1

    invoke-interface {v1}, Lorg/joda/time/ReadablePartial;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 347
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Property["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;->getName()Ljava/lang/String;

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
