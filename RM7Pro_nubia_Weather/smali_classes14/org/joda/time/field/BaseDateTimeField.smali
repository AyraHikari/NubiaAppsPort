.class public abstract Lorg/joda/time/field/BaseDateTimeField;
.super Lorg/joda/time/DateTimeField;
.source "BaseDateTimeField.java"


# instance fields
.field private final iType:Lorg/joda/time/DateTimeFieldType;


# direct methods
.method protected constructor <init>(Lorg/joda/time/DateTimeFieldType;)V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/joda/time/DateTimeField;-><init>()V

    .line 51
    if-nez p1, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The type must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    iput-object p1, p0, Lorg/joda/time/field/BaseDateTimeField;->iType:Lorg/joda/time/DateTimeFieldType;

    .line 55
    return-void
.end method


# virtual methods
.method public add(JI)J
    .locals 3

    .prologue
    .line 253
    invoke-virtual {p0}, Lorg/joda/time/field/BaseDateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public add(JJ)J
    .locals 3

    .prologue
    .line 267
    invoke-virtual {p0}, Lorg/joda/time/field/BaseDateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DurationField;->add(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public add(Lorg/joda/time/ReadablePartial;I[II)[I
    .locals 8

    .prologue
    .line 298
    if-nez p4, :cond_0

    .line 348
    :goto_0
    return-object p3

    .line 304
    :cond_0
    const/4 v0, 0x0

    move v1, p4

    move-object v2, p3

    .line 306
    :goto_1
    if-lez v1, :cond_1

    .line 307
    invoke-virtual {p0, p1, v2}, Lorg/joda/time/field/BaseDateTimeField;->getMaximumValue(Lorg/joda/time/ReadablePartial;[I)I

    move-result v3

    .line 308
    aget v4, v2, p2

    add-int/2addr v4, v1

    int-to-long v4, v4

    .line 309
    int-to-long v6, v3

    cmp-long v6, v4, v6

    if-gtz v6, :cond_3

    .line 310
    long-to-int v3, v4

    aput v3, v2, p2

    .line 327
    :cond_1
    :goto_2
    if-gez v1, :cond_2

    .line 328
    invoke-virtual {p0, p1, v2}, Lorg/joda/time/field/BaseDateTimeField;->getMinimumValue(Lorg/joda/time/ReadablePartial;[I)I

    move-result v3

    .line 329
    aget v4, v2, p2

    add-int/2addr v4, v1

    int-to-long v4, v4

    .line 330
    int-to-long v6, v3

    cmp-long v6, v4, v6

    if-ltz v6, :cond_6

    .line 331
    long-to-int v0, v4

    aput v0, v2, p2

    .line 348
    :cond_2
    aget v0, v2, p2

    invoke-virtual {p0, p1, p2, v2, v0}, Lorg/joda/time/field/BaseDateTimeField;->set(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object p3

    goto :goto_0

    .line 313
    :cond_3
    if-nez v0, :cond_5

    .line 314
    if-nez p2, :cond_4

    .line 315
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maximum value exceeded for add"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_4
    add-int/lit8 v0, p2, -0x1

    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePartial;->getField(I)Lorg/joda/time/DateTimeField;

    move-result-object v0

    .line 319
    invoke-virtual {p0}, Lorg/joda/time/field/BaseDateTimeField;->getRangeDurationField()Lorg/joda/time/DurationField;

    move-result-object v4

    invoke-virtual {v4}, Lorg/joda/time/DurationField;->getType()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v5

    invoke-virtual {v5}, Lorg/joda/time/DurationField;->getType()Lorg/joda/time/DurationFieldType;

    move-result-object v5

    if-eq v4, v5, :cond_5

    .line 320
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Fields invalid for add"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_5
    add-int/lit8 v3, v3, 0x1

    aget v4, v2, p2

    sub-int/2addr v3, v4

    sub-int/2addr v1, v3

    .line 324
    add-int/lit8 v3, p2, -0x1

    const/4 v4, 0x1

    invoke-virtual {v0, p1, v3, v2, v4}, Lorg/joda/time/DateTimeField;->add(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object v2

    .line 325
    invoke-virtual {p0, p1, v2}, Lorg/joda/time/field/BaseDateTimeField;->getMinimumValue(Lorg/joda/time/ReadablePartial;[I)I

    move-result v3

    aput v3, v2, p2

    goto :goto_1

    .line 334
    :cond_6
    if-nez v0, :cond_8

    .line 335
    if-nez p2, :cond_7

    .line 336
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maximum value exceeded for add"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_7
    add-int/lit8 v0, p2, -0x1

    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePartial;->getField(I)Lorg/joda/time/DateTimeField;

    move-result-object v0

    .line 339
    invoke-virtual {p0}, Lorg/joda/time/field/BaseDateTimeField;->getRangeDurationField()Lorg/joda/time/DurationField;

    move-result-object v4

    invoke-virtual {v4}, Lorg/joda/time/DurationField;->getType()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v5

    invoke-virtual {v5}, Lorg/joda/time/DurationField;->getType()Lorg/joda/time/DurationFieldType;

    move-result-object v5

    if-eq v4, v5, :cond_8

    .line 340
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Fields invalid for add"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_8
    add-int/lit8 v3, v3, -0x1

    aget v4, v2, p2

    sub-int/2addr v3, v4

    sub-int/2addr v1, v3

    .line 344
    add-int/lit8 v3, p2, -0x1

    const/4 v4, -0x1

    invoke-virtual {v0, p1, v3, v2, v4}, Lorg/joda/time/DateTimeField;->add(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object v2

    .line 345
    invoke-virtual {p0, p1, v2}, Lorg/joda/time/field/BaseDateTimeField;->getMaximumValue(Lorg/joda/time/ReadablePartial;[I)I

    move-result v3

    aput v3, v2, p2

    goto/16 :goto_2
.end method

.method public addWrapField(JI)J
    .locals 3

    .prologue
    .line 461
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/field/BaseDateTimeField;->get(J)I

    move-result v0

    .line 462
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/field/BaseDateTimeField;->getMinimumValue(J)I

    move-result v1

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/field/BaseDateTimeField;->getMaximumValue(J)I

    move-result v2

    invoke-static {v0, p3, v1, v2}, Lorg/joda/time/field/FieldUtils;->getWrappedValue(IIII)I

    move-result v0

    .line 464
    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/field/BaseDateTimeField;->set(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public addWrapField(Lorg/joda/time/ReadablePartial;I[II)[I
    .locals 3

    .prologue
    .line 495
    aget v0, p3, p2

    .line 496
    invoke-virtual {p0, p1}, Lorg/joda/time/field/BaseDateTimeField;->getMinimumValue(Lorg/joda/time/ReadablePartial;)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/joda/time/field/BaseDateTimeField;->getMaximumValue(Lorg/joda/time/ReadablePartial;)I

    move-result v2

    invoke-static {v0, p4, v1, v2}, Lorg/joda/time/field/FieldUtils;->getWrappedValue(IIII)I

    move-result v0

    .line 498
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/joda/time/field/BaseDateTimeField;->set(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object v0

    return-object v0
.end method

.method public addWrapPartial(Lorg/joda/time/ReadablePartial;I[II)[I
    .locals 8

    .prologue
    .line 379
    if-nez p4, :cond_0

    .line 433
    :goto_0
    return-object p3

    .line 385
    :cond_0
    const/4 v0, 0x0

    move v1, p4

    move-object v2, p3

    .line 387
    :goto_1
    if-lez v1, :cond_1

    .line 388
    invoke-virtual {p0, p1, v2}, Lorg/joda/time/field/BaseDateTimeField;->getMaximumValue(Lorg/joda/time/ReadablePartial;[I)I

    move-result v3

    .line 389
    aget v4, v2, p2

    add-int/2addr v4, v1

    int-to-long v4, v4

    .line 390
    int-to-long v6, v3

    cmp-long v6, v4, v6

    if-gtz v6, :cond_3

    .line 391
    long-to-int v3, v4

    aput v3, v2, p2

    .line 410
    :cond_1
    :goto_2
    if-gez v1, :cond_2

    .line 411
    invoke-virtual {p0, p1, v2}, Lorg/joda/time/field/BaseDateTimeField;->getMinimumValue(Lorg/joda/time/ReadablePartial;[I)I

    move-result v3

    .line 412
    aget v4, v2, p2

    add-int/2addr v4, v1

    int-to-long v4, v4

    .line 413
    int-to-long v6, v3

    cmp-long v6, v4, v6

    if-ltz v6, :cond_6

    .line 414
    long-to-int v0, v4

    aput v0, v2, p2

    .line 433
    :cond_2
    aget v0, v2, p2

    invoke-virtual {p0, p1, p2, v2, v0}, Lorg/joda/time/field/BaseDateTimeField;->set(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object p3

    goto :goto_0

    .line 394
    :cond_3
    if-nez v0, :cond_5

    .line 395
    if-nez p2, :cond_4

    .line 396
    add-int/lit8 v3, v3, 0x1

    aget v4, v2, p2

    sub-int/2addr v3, v4

    sub-int/2addr v1, v3

    .line 397
    invoke-virtual {p0, p1, v2}, Lorg/joda/time/field/BaseDateTimeField;->getMinimumValue(Lorg/joda/time/ReadablePartial;[I)I

    move-result v3

    aput v3, v2, p2

    goto :goto_1

    .line 400
    :cond_4
    add-int/lit8 v0, p2, -0x1

    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePartial;->getField(I)Lorg/joda/time/DateTimeField;

    move-result-object v0

    .line 402
    invoke-virtual {p0}, Lorg/joda/time/field/BaseDateTimeField;->getRangeDurationField()Lorg/joda/time/DurationField;

    move-result-object v4

    invoke-virtual {v4}, Lorg/joda/time/DurationField;->getType()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v5

    invoke-virtual {v5}, Lorg/joda/time/DurationField;->getType()Lorg/joda/time/DurationFieldType;

    move-result-object v5

    if-eq v4, v5, :cond_5

    .line 403
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Fields invalid for add"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_5
    add-int/lit8 v3, v3, 0x1

    aget v4, v2, p2

    sub-int/2addr v3, v4

    sub-int/2addr v1, v3

    .line 407
    add-int/lit8 v3, p2, -0x1

    const/4 v4, 0x1

    invoke-virtual {v0, p1, v3, v2, v4}, Lorg/joda/time/DateTimeField;->addWrapPartial(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object v2

    .line 408
    invoke-virtual {p0, p1, v2}, Lorg/joda/time/field/BaseDateTimeField;->getMinimumValue(Lorg/joda/time/ReadablePartial;[I)I

    move-result v3

    aput v3, v2, p2

    goto :goto_1

    .line 417
    :cond_6
    if-nez v0, :cond_8

    .line 418
    if-nez p2, :cond_7

    .line 419
    add-int/lit8 v3, v3, -0x1

    aget v4, v2, p2

    sub-int/2addr v3, v4

    sub-int/2addr v1, v3

    .line 420
    invoke-virtual {p0, p1, v2}, Lorg/joda/time/field/BaseDateTimeField;->getMaximumValue(Lorg/joda/time/ReadablePartial;[I)I

    move-result v3

    aput v3, v2, p2

    goto :goto_2

    .line 423
    :cond_7
    add-int/lit8 v0, p2, -0x1

    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePartial;->getField(I)Lorg/joda/time/DateTimeField;

    move-result-object v0

    .line 424
    invoke-virtual {p0}, Lorg/joda/time/field/BaseDateTimeField;->getRangeDurationField()Lorg/joda/time/DurationField;

    move-result-object v4

    invoke-virtual {v4}, Lorg/joda/time/DurationField;->getType()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v5

    invoke-virtual {v5}, Lorg/joda/time/DurationField;->getType()Lorg/joda/time/DurationFieldType;

    move-result-object v5

    if-eq v4, v5, :cond_8

    .line 425
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Fields invalid for add"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_8
    add-int/lit8 v3, v3, -0x1

    aget v4, v2, p2

    sub-int/2addr v3, v4

    sub-int/2addr v1, v3

    .line 429
    add-int/lit8 v3, p2, -0x1

    const/4 v4, -0x1

    invoke-virtual {v0, p1, v3, v2, v4}, Lorg/joda/time/DateTimeField;->addWrapPartial(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object v2

    .line 430
    invoke-virtual {p0, p1, v2}, Lorg/joda/time/field/BaseDateTimeField;->getMaximumValue(Lorg/joda/time/ReadablePartial;[I)I

    move-result v3

    aput v3, v2, p2

    goto/16 :goto_2
.end method

.method protected convertText(Ljava/lang/String;Ljava/util/Locale;)I
    .locals 2

    .prologue
    .line 668
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 669
    :catch_0
    move-exception v0

    .line 670
    new-instance v0, Lorg/joda/time/IllegalFieldValueException;

    invoke-virtual {p0}, Lorg/joda/time/field/BaseDateTimeField;->getType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/joda/time/IllegalFieldValueException;-><init>(Lorg/joda/time/DateTimeFieldType;Ljava/lang/String;)V

    throw v0
.end method

.method public abstract get(J)I
.end method

.method public getAsShortText(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/field/BaseDateTimeField;->getAsText(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAsShortText(J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/field/BaseDateTimeField;->getAsShortText(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsShortText(JLjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/field/BaseDateTimeField;->get(J)I

    move-result v0

    invoke-virtual {p0, v0, p3}, Lorg/joda/time/field/BaseDateTimeField;->getAsShortText(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsShortText(Lorg/joda/time/ReadablePartial;ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p0, p2, p3}, Lorg/joda/time/field/BaseDateTimeField;->getAsShortText(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAsShortText(Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0}, Lorg/joda/time/field/BaseDateTimeField;->getType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePartial;->get(Lorg/joda/time/DateTimeFieldType;)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lorg/joda/time/field/BaseDateTimeField;->getAsShortText(Lorg/joda/time/ReadablePartial;ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsText(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAsText(J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/field/BaseDateTimeField;->getAsText(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsText(JLjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/field/BaseDateTimeField;->get(J)I

    move-result v0

    invoke-virtual {p0, v0, p3}, Lorg/joda/time/field/BaseDateTimeField;->getAsText(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsText(Lorg/joda/time/ReadablePartial;ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0, p2, p3}, Lorg/joda/time/field/BaseDateTimeField;->getAsText(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAsText(Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Lorg/joda/time/field/BaseDateTimeField;->getType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePartial;->get(Lorg/joda/time/DateTimeFieldType;)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lorg/joda/time/field/BaseDateTimeField;->getAsText(Lorg/joda/time/ReadablePartial;ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDifference(JJ)I
    .locals 1

    .prologue
    .line 522
    invoke-virtual {p0}, Lorg/joda/time/field/BaseDateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DurationField;->getDifference(JJ)I

    move-result v0

    return v0
.end method

.method public getDifferenceAsLong(JJ)J
    .locals 3

    .prologue
    .line 545
    invoke-virtual {p0}, Lorg/joda/time/field/BaseDateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DurationField;->getDifferenceAsLong(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract getDurationField()Lorg/joda/time/DurationField;
.end method

.method public getLeapAmount(J)I
    .locals 1

    .prologue
    .line 716
    const/4 v0, 0x0

    return v0
.end method

.method public getLeapDurationField()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 726
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaximumShortTextLength(Ljava/util/Locale;)I
    .locals 1

    .prologue
    .line 850
    invoke-virtual {p0, p1}, Lorg/joda/time/field/BaseDateTimeField;->getMaximumTextLength(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method public getMaximumTextLength(Ljava/util/Locale;)I
    .locals 2

    .prologue
    .line 829
    invoke-virtual {p0}, Lorg/joda/time/field/BaseDateTimeField;->getMaximumValue()I

    move-result v0

    .line 830
    if-ltz v0, :cond_2

    .line 831
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 832
    const/4 v0, 0x1

    .line 839
    :goto_0
    return v0

    .line 833
    :cond_0
    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    .line 834
    const/4 v0, 0x2

    goto :goto_0

    .line 835
    :cond_1
    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_2

    .line 836
    const/4 v0, 0x3

    goto :goto_0

    .line 839
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method public abstract getMaximumValue()I
.end method

.method public getMaximumValue(J)I
    .locals 1

    .prologue
    .line 792
    invoke-virtual {p0}, Lorg/joda/time/field/BaseDateTimeField;->getMaximumValue()I

    move-result v0

    return v0
.end method

.method public getMaximumValue(Lorg/joda/time/ReadablePartial;)I
    .locals 1

    .prologue
    .line 804
    invoke-virtual {p0}, Lorg/joda/time/field/BaseDateTimeField;->getMaximumValue()I

    move-result v0

    return v0
.end method

.method public getMaximumValue(Lorg/joda/time/ReadablePartial;[I)I
    .locals 1

    .prologue
    .line 818
    invoke-virtual {p0, p1}, Lorg/joda/time/field/BaseDateTimeField;->getMaximumValue(Lorg/joda/time/ReadablePartial;)I

    move-result v0

    return v0
.end method

.method public abstract getMinimumValue()I
.end method

.method public getMinimumValue(J)I
    .locals 1

    .prologue
    .line 746
    invoke-virtual {p0}, Lorg/joda/time/field/BaseDateTimeField;->getMinimumValue()I

    move-result v0

    return v0
.end method

.method public getMinimumValue(Lorg/joda/time/ReadablePartial;)I
    .locals 1

    .prologue
    .line 758
    invoke-virtual {p0}, Lorg/joda/time/field/BaseDateTimeField;->getMinimumValue()I

    move-result v0

    return v0
.end method

.method public getMinimumValue(Lorg/joda/time/ReadablePartial;[I)I
    .locals 1

    .prologue
    .line 772
    invoke-virtual {p0, p1}, Lorg/joda/time/field/BaseDateTimeField;->getMinimumValue(Lorg/joda/time/ReadablePartial;)I

    move-result v0

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/joda/time/field/BaseDateTimeField;->iType:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeFieldType;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getRangeDurationField()Lorg/joda/time/DurationField;
.end method

.method public final getType()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/joda/time/field/BaseDateTimeField;->iType:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public isLeap(J)Z
    .locals 1

    .prologue
    .line 704
    const/4 v0, 0x0

    return v0
.end method

.method public final isSupported()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public remainder(J)J
    .locals 3

    .prologue
    .line 994
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/field/BaseDateTimeField;->roundFloor(J)J

    move-result-wide v0

    sub-long v0, p1, v0

    return-wide v0
.end method

.method public roundCeiling(J)J
    .locals 3

    .prologue
    .line 886
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/field/BaseDateTimeField;->roundFloor(J)J

    move-result-wide v0

    .line 887
    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    .line 888
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/joda/time/field/BaseDateTimeField;->add(JI)J

    move-result-wide p1

    .line 890
    :cond_0
    return-wide p1
.end method

.method public abstract roundFloor(J)J
.end method

.method public roundHalfCeiling(J)J
    .locals 9

    .prologue
    .line 927
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/field/BaseDateTimeField;->roundFloor(J)J

    move-result-wide v2

    .line 928
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/field/BaseDateTimeField;->roundCeiling(J)J

    move-result-wide v0

    .line 930
    sub-long v4, p1, v2

    .line 931
    sub-long v6, v0, p1

    .line 933
    cmp-long v4, v6, v4

    if-gtz v4, :cond_0

    .line 937
    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method public roundHalfEven(J)J
    .locals 9

    .prologue
    .line 955
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/field/BaseDateTimeField;->roundFloor(J)J

    move-result-wide v0

    .line 956
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/field/BaseDateTimeField;->roundCeiling(J)J

    move-result-wide v2

    .line 958
    sub-long v4, p1, v0

    .line 959
    sub-long v6, v2, p1

    .line 961
    cmp-long v8, v4, v6

    if-gez v8, :cond_1

    .line 973
    :cond_0
    :goto_0
    return-wide v0

    .line 964
    :cond_1
    cmp-long v4, v6, v4

    if-gez v4, :cond_2

    move-wide v0, v2

    .line 966
    goto :goto_0

    .line 970
    :cond_2
    invoke-virtual {p0, v2, v3}, Lorg/joda/time/field/BaseDateTimeField;->get(J)I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    move-wide v0, v2

    .line 971
    goto :goto_0
.end method

.method public roundHalfFloor(J)J
    .locals 9

    .prologue
    .line 903
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/field/BaseDateTimeField;->roundFloor(J)J

    move-result-wide v0

    .line 904
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/field/BaseDateTimeField;->roundCeiling(J)J

    move-result-wide v2

    .line 906
    sub-long v4, p1, v0

    .line 907
    sub-long v6, v2, p1

    .line 909
    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    .line 913
    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method public abstract set(JI)J
.end method

.method public final set(JLjava/lang/String;)J
    .locals 3

    .prologue
    .line 635
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/joda/time/field/BaseDateTimeField;->set(JLjava/lang/String;Ljava/util/Locale;)J

    move-result-wide v0

    return-wide v0
.end method

.method public set(JLjava/lang/String;Ljava/util/Locale;)J
    .locals 3

    .prologue
    .line 618
    invoke-virtual {p0, p3, p4}, Lorg/joda/time/field/BaseDateTimeField;->convertText(Ljava/lang/String;Ljava/util/Locale;)I

    move-result v0

    .line 619
    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/field/BaseDateTimeField;->set(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public set(Lorg/joda/time/ReadablePartial;I[II)[I
    .locals 4

    .prologue
    .line 585
    invoke-virtual {p0, p1, p3}, Lorg/joda/time/field/BaseDateTimeField;->getMinimumValue(Lorg/joda/time/ReadablePartial;[I)I

    move-result v0

    invoke-virtual {p0, p1, p3}, Lorg/joda/time/field/BaseDateTimeField;->getMaximumValue(Lorg/joda/time/ReadablePartial;[I)I

    move-result v1

    invoke-static {p0, p4, v0, v1}, Lorg/joda/time/field/FieldUtils;->verifyValueBounds(Lorg/joda/time/DateTimeField;III)V

    .line 586
    aput p4, p3, p2

    .line 589
    add-int/lit8 v0, p2, 0x1

    :goto_0
    invoke-interface {p1}, Lorg/joda/time/ReadablePartial;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 590
    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePartial;->getField(I)Lorg/joda/time/DateTimeField;

    move-result-object v1

    .line 591
    aget v2, p3, v0

    invoke-virtual {v1, p1, p3}, Lorg/joda/time/DateTimeField;->getMaximumValue(Lorg/joda/time/ReadablePartial;[I)I

    move-result v3

    if-le v2, v3, :cond_0

    .line 592
    invoke-virtual {v1, p1, p3}, Lorg/joda/time/DateTimeField;->getMaximumValue(Lorg/joda/time/ReadablePartial;[I)I

    move-result v2

    aput v2, p3, v0

    .line 594
    :cond_0
    aget v2, p3, v0

    invoke-virtual {v1, p1, p3}, Lorg/joda/time/DateTimeField;->getMinimumValue(Lorg/joda/time/ReadablePartial;[I)I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 595
    invoke-virtual {v1, p1, p3}, Lorg/joda/time/DateTimeField;->getMinimumValue(Lorg/joda/time/ReadablePartial;[I)I

    move-result v1

    aput v1, p3, v0

    .line 589
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 598
    :cond_2
    return-object p3
.end method

.method public set(Lorg/joda/time/ReadablePartial;I[ILjava/lang/String;Ljava/util/Locale;)[I
    .locals 1

    .prologue
    .line 654
    invoke-virtual {p0, p4, p5}, Lorg/joda/time/field/BaseDateTimeField;->convertText(Ljava/lang/String;Ljava/util/Locale;)I

    move-result v0

    .line 655
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/joda/time/field/BaseDateTimeField;->set(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DateTimeField["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/field/BaseDateTimeField;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
