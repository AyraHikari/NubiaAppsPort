.class public abstract Lorg/joda/time/base/BasePeriod;
.super Lorg/joda/time/base/AbstractPeriod;
.source "BasePeriod.java"

# interfaces
.implements Lorg/joda/time/ReadablePeriod;
.implements Ljava/io/Serializable;


# static fields
.field private static final DUMMY_PERIOD:Lorg/joda/time/ReadablePeriod;

.field private static final serialVersionUID:J = -0x1d4b9cd3d9d73379L


# instance fields
.field private final iType:Lorg/joda/time/PeriodType;

.field private final iValues:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lorg/joda/time/base/BasePeriod$1;

    invoke-direct {v0}, Lorg/joda/time/base/BasePeriod$1;-><init>()V

    sput-object v0, Lorg/joda/time/base/BasePeriod;->DUMMY_PERIOD:Lorg/joda/time/ReadablePeriod;

    return-void
.end method

.method protected constructor <init>(IIIIIIIILorg/joda/time/PeriodType;)V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Lorg/joda/time/base/AbstractPeriod;-><init>()V

    .line 91
    invoke-virtual {p0, p9}, Lorg/joda/time/base/BasePeriod;->checkPeriodType(Lorg/joda/time/PeriodType;)Lorg/joda/time/PeriodType;

    move-result-object v0

    .line 92
    iput-object v0, p0, Lorg/joda/time/base/BasePeriod;->iType:Lorg/joda/time/PeriodType;

    .line 93
    invoke-direct/range {p0 .. p8}, Lorg/joda/time/base/BasePeriod;->setPeriodInternal(IIIIIIII)[I

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/base/BasePeriod;->iValues:[I

    .line 94
    return-void
.end method

.method protected constructor <init>(J)V
    .locals 5

    .prologue
    const/4 v3, 0x4

    .line 231
    invoke-direct {p0}, Lorg/joda/time/base/AbstractPeriod;-><init>()V

    .line 235
    invoke-static {}, Lorg/joda/time/PeriodType;->standard()Lorg/joda/time/PeriodType;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/base/BasePeriod;->iType:Lorg/joda/time/PeriodType;

    .line 236
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    sget-object v1, Lorg/joda/time/base/BasePeriod;->DUMMY_PERIOD:Lorg/joda/time/ReadablePeriod;

    invoke-virtual {v0, v1, p1, p2}, Lorg/joda/time/chrono/ISOChronology;->get(Lorg/joda/time/ReadablePeriod;J)[I

    move-result-object v0

    .line 237
    const/16 v1, 0x8

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/joda/time/base/BasePeriod;->iValues:[I

    .line 238
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/joda/time/base/BasePeriod;->iValues:[I

    invoke-static {v0, v1, v2, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    return-void
.end method

.method protected constructor <init>(JJLorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V
    .locals 7

    .prologue
    .line 106
    invoke-direct {p0}, Lorg/joda/time/base/AbstractPeriod;-><init>()V

    .line 107
    invoke-virtual {p0, p5}, Lorg/joda/time/base/BasePeriod;->checkPeriodType(Lorg/joda/time/PeriodType;)Lorg/joda/time/PeriodType;

    move-result-object v1

    .line 108
    invoke-static {p6}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v0

    .line 109
    iput-object v1, p0, Lorg/joda/time/base/BasePeriod;->iType:Lorg/joda/time/PeriodType;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 110
    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/Chronology;->get(Lorg/joda/time/ReadablePeriod;JJ)[I

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/base/BasePeriod;->iValues:[I

    .line 111
    return-void
.end method

.method protected constructor <init>(JLorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V
    .locals 3

    .prologue
    .line 254
    invoke-direct {p0}, Lorg/joda/time/base/AbstractPeriod;-><init>()V

    .line 255
    invoke-virtual {p0, p3}, Lorg/joda/time/base/BasePeriod;->checkPeriodType(Lorg/joda/time/PeriodType;)Lorg/joda/time/PeriodType;

    move-result-object v0

    .line 256
    invoke-static {p4}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v1

    .line 257
    iput-object v0, p0, Lorg/joda/time/base/BasePeriod;->iType:Lorg/joda/time/PeriodType;

    .line 258
    invoke-virtual {v1, p0, p1, p2}, Lorg/joda/time/Chronology;->get(Lorg/joda/time/ReadablePeriod;J)[I

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/base/BasePeriod;->iValues:[I

    .line 259
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;Lorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V
    .locals 3

    .prologue
    .line 271
    invoke-direct {p0}, Lorg/joda/time/base/AbstractPeriod;-><init>()V

    .line 272
    invoke-static {}, Lorg/joda/time/convert/ConverterManager;->getInstance()Lorg/joda/time/convert/ConverterManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/convert/ConverterManager;->getPeriodConverter(Ljava/lang/Object;)Lorg/joda/time/convert/PeriodConverter;

    move-result-object v0

    .line 273
    if-nez p2, :cond_0

    invoke-interface {v0, p1}, Lorg/joda/time/convert/PeriodConverter;->getPeriodType(Ljava/lang/Object;)Lorg/joda/time/PeriodType;

    move-result-object p2

    .line 274
    :cond_0
    invoke-virtual {p0, p2}, Lorg/joda/time/base/BasePeriod;->checkPeriodType(Lorg/joda/time/PeriodType;)Lorg/joda/time/PeriodType;

    move-result-object v1

    .line 275
    iput-object v1, p0, Lorg/joda/time/base/BasePeriod;->iType:Lorg/joda/time/PeriodType;

    .line 276
    instance-of v2, p0, Lorg/joda/time/ReadWritablePeriod;

    if-eqz v2, :cond_1

    .line 277
    invoke-virtual {p0}, Lorg/joda/time/base/BasePeriod;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/joda/time/base/BasePeriod;->iValues:[I

    .line 278
    invoke-static {p3}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v1

    .line 279
    check-cast p0, Lorg/joda/time/ReadWritablePeriod;

    invoke-interface {v0, p0, p1, v1}, Lorg/joda/time/convert/PeriodConverter;->setInto(Lorg/joda/time/ReadWritablePeriod;Ljava/lang/Object;Lorg/joda/time/Chronology;)V

    .line 283
    :goto_0
    return-void

    .line 281
    :cond_1
    new-instance v0, Lorg/joda/time/MutablePeriod;

    invoke-direct {v0, p1, v1, p3}, Lorg/joda/time/MutablePeriod;-><init>(Ljava/lang/Object;Lorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V

    invoke-virtual {v0}, Lorg/joda/time/MutablePeriod;->getValues()[I

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/base/BasePeriod;->iValues:[I

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/joda/time/ReadableDuration;Lorg/joda/time/ReadableInstant;Lorg/joda/time/PeriodType;)V
    .locals 6

    .prologue
    .line 212
    invoke-direct {p0}, Lorg/joda/time/base/AbstractPeriod;-><init>()V

    .line 213
    invoke-virtual {p0, p3}, Lorg/joda/time/base/BasePeriod;->checkPeriodType(Lorg/joda/time/PeriodType;)Lorg/joda/time/PeriodType;

    move-result-object v1

    .line 214
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getDurationMillis(Lorg/joda/time/ReadableDuration;)J

    move-result-wide v2

    .line 215
    invoke-static {p2}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v4

    .line 216
    invoke-static {v4, v5, v2, v3}, Lorg/joda/time/field/FieldUtils;->safeSubtract(JJ)J

    move-result-wide v2

    .line 217
    invoke-static {p2}, Lorg/joda/time/DateTimeUtils;->getInstantChronology(Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Chronology;

    move-result-object v0

    .line 218
    iput-object v1, p0, Lorg/joda/time/base/BasePeriod;->iType:Lorg/joda/time/PeriodType;

    move-object v1, p0

    .line 219
    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/Chronology;->get(Lorg/joda/time/ReadablePeriod;JJ)[I

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/base/BasePeriod;->iValues:[I

    .line 220
    return-void
.end method

.method protected constructor <init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableDuration;Lorg/joda/time/PeriodType;)V
    .locals 6

    .prologue
    .line 194
    invoke-direct {p0}, Lorg/joda/time/base/AbstractPeriod;-><init>()V

    .line 195
    invoke-virtual {p0, p3}, Lorg/joda/time/base/BasePeriod;->checkPeriodType(Lorg/joda/time/PeriodType;)Lorg/joda/time/PeriodType;

    move-result-object v1

    .line 196
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v2

    .line 197
    invoke-static {p2}, Lorg/joda/time/DateTimeUtils;->getDurationMillis(Lorg/joda/time/ReadableDuration;)J

    move-result-wide v4

    .line 198
    invoke-static {v2, v3, v4, v5}, Lorg/joda/time/field/FieldUtils;->safeAdd(JJ)J

    move-result-wide v4

    .line 199
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantChronology(Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Chronology;

    move-result-object v0

    .line 200
    iput-object v1, p0, Lorg/joda/time/base/BasePeriod;->iType:Lorg/joda/time/PeriodType;

    move-object v1, p0

    .line 201
    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/Chronology;->get(Lorg/joda/time/ReadablePeriod;JJ)[I

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/base/BasePeriod;->iValues:[I

    .line 202
    return-void
.end method

.method protected constructor <init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;Lorg/joda/time/PeriodType;)V
    .locals 6

    .prologue
    .line 122
    invoke-direct {p0}, Lorg/joda/time/base/AbstractPeriod;-><init>()V

    .line 123
    invoke-virtual {p0, p3}, Lorg/joda/time/base/BasePeriod;->checkPeriodType(Lorg/joda/time/PeriodType;)Lorg/joda/time/PeriodType;

    move-result-object v1

    .line 124
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 125
    iput-object v1, p0, Lorg/joda/time/base/BasePeriod;->iType:Lorg/joda/time/PeriodType;

    .line 126
    invoke-virtual {p0}, Lorg/joda/time/base/BasePeriod;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/joda/time/base/BasePeriod;->iValues:[I

    .line 134
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v2

    .line 129
    invoke-static {p2}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v4

    .line 130
    invoke-static {p1, p2}, Lorg/joda/time/DateTimeUtils;->getIntervalChronology(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Chronology;

    move-result-object v0

    .line 131
    iput-object v1, p0, Lorg/joda/time/base/BasePeriod;->iType:Lorg/joda/time/PeriodType;

    move-object v1, p0

    .line 132
    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/Chronology;->get(Lorg/joda/time/ReadablePeriod;JJ)[I

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/base/BasePeriod;->iValues:[I

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePartial;Lorg/joda/time/PeriodType;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 155
    invoke-direct {p0}, Lorg/joda/time/base/AbstractPeriod;-><init>()V

    .line 156
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ReadablePartial objects must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_1
    instance-of v0, p1, Lorg/joda/time/base/BaseLocal;

    if-eqz v0, :cond_2

    instance-of v0, p2, Lorg/joda/time/base/BaseLocal;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 161
    invoke-virtual {p0, p3}, Lorg/joda/time/base/BasePeriod;->checkPeriodType(Lorg/joda/time/PeriodType;)Lorg/joda/time/PeriodType;

    move-result-object v1

    move-object v0, p1

    .line 162
    check-cast v0, Lorg/joda/time/base/BaseLocal;

    invoke-virtual {v0}, Lorg/joda/time/base/BaseLocal;->getLocalMillis()J

    move-result-wide v2

    .line 163
    check-cast p2, Lorg/joda/time/base/BaseLocal;

    invoke-virtual {p2}, Lorg/joda/time/base/BaseLocal;->getLocalMillis()J

    move-result-wide v4

    .line 164
    invoke-interface {p1}, Lorg/joda/time/ReadablePartial;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    .line 165
    invoke-static {v0}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v0

    .line 166
    iput-object v1, p0, Lorg/joda/time/base/BasePeriod;->iType:Lorg/joda/time/PeriodType;

    move-object v1, p0

    .line 167
    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/Chronology;->get(Lorg/joda/time/ReadablePeriod;JJ)[I

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/base/BasePeriod;->iValues:[I

    .line 184
    :goto_0
    return-void

    .line 169
    :cond_2
    invoke-interface {p1}, Lorg/joda/time/ReadablePartial;->size()I

    move-result v0

    invoke-interface {p2}, Lorg/joda/time/ReadablePartial;->size()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ReadablePartial objects must have the same set of fields"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_3
    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/joda/time/ReadablePartial;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_5

    .line 173
    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePartial;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/joda/time/ReadablePartial;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v3

    if-eq v2, v3, :cond_4

    .line 174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ReadablePartial objects must have the same set of fields"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 177
    :cond_5
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->isContiguous(Lorg/joda/time/ReadablePartial;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 178
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ReadablePartial objects must be contiguous"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_6
    invoke-virtual {p0, p3}, Lorg/joda/time/base/BasePeriod;->checkPeriodType(Lorg/joda/time/PeriodType;)Lorg/joda/time/PeriodType;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/base/BasePeriod;->iType:Lorg/joda/time/PeriodType;

    .line 181
    invoke-interface {p1}, Lorg/joda/time/ReadablePartial;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v0

    .line 182
    invoke-virtual {v0, p1, v4, v5}, Lorg/joda/time/Chronology;->set(Lorg/joda/time/ReadablePartial;J)J

    move-result-wide v2

    invoke-virtual {v0, p2, v4, v5}, Lorg/joda/time/Chronology;->set(Lorg/joda/time/ReadablePartial;J)J

    move-result-wide v4

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/Chronology;->get(Lorg/joda/time/ReadablePeriod;JJ)[I

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/base/BasePeriod;->iValues:[I

    goto :goto_0
.end method

.method protected constructor <init>([ILorg/joda/time/PeriodType;)V
    .locals 0

    .prologue
    .line 293
    invoke-direct {p0}, Lorg/joda/time/base/AbstractPeriod;-><init>()V

    .line 294
    iput-object p2, p0, Lorg/joda/time/base/BasePeriod;->iType:Lorg/joda/time/PeriodType;

    .line 295
    iput-object p1, p0, Lorg/joda/time/base/BasePeriod;->iValues:[I

    .line 296
    return-void
.end method

.method private checkAndUpdate(Lorg/joda/time/DurationFieldType;[II)V
    .locals 3

    .prologue
    .line 390
    invoke-virtual {p0, p1}, Lorg/joda/time/base/BasePeriod;->indexOf(Lorg/joda/time/DurationFieldType;)I

    move-result v0

    .line 391
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 392
    if-eqz p3, :cond_1

    .line 393
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Period does not support field \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/joda/time/DurationFieldType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_0
    aput p3, p2, v0

    .line 399
    :cond_1
    return-void
.end method

.method private setPeriodInternal(Lorg/joda/time/ReadablePeriod;)V
    .locals 5

    .prologue
    .line 420
    invoke-virtual {p0}, Lorg/joda/time/base/BasePeriod;->size()I

    move-result v0

    new-array v1, v0, [I

    .line 421
    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/joda/time/ReadablePeriod;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_0

    .line 422
    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePeriod;->getFieldType(I)Lorg/joda/time/DurationFieldType;

    move-result-object v3

    .line 423
    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePeriod;->getValue(I)I

    move-result v4

    .line 424
    invoke-direct {p0, v3, v1, v4}, Lorg/joda/time/base/BasePeriod;->checkAndUpdate(Lorg/joda/time/DurationFieldType;[II)V

    .line 421
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 426
    :cond_0
    invoke-virtual {p0, v1}, Lorg/joda/time/base/BasePeriod;->setValues([I)V

    .line 427
    return-void
.end method

.method private setPeriodInternal(IIIIIIII)[I
    .locals 2

    .prologue
    .line 453
    invoke-virtual {p0}, Lorg/joda/time/base/BasePeriod;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 454
    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-direct {p0, v1, v0, p1}, Lorg/joda/time/base/BasePeriod;->checkAndUpdate(Lorg/joda/time/DurationFieldType;[II)V

    .line 455
    invoke-static {}, Lorg/joda/time/DurationFieldType;->months()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-direct {p0, v1, v0, p2}, Lorg/joda/time/base/BasePeriod;->checkAndUpdate(Lorg/joda/time/DurationFieldType;[II)V

    .line 456
    invoke-static {}, Lorg/joda/time/DurationFieldType;->weeks()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-direct {p0, v1, v0, p3}, Lorg/joda/time/base/BasePeriod;->checkAndUpdate(Lorg/joda/time/DurationFieldType;[II)V

    .line 457
    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-direct {p0, v1, v0, p4}, Lorg/joda/time/base/BasePeriod;->checkAndUpdate(Lorg/joda/time/DurationFieldType;[II)V

    .line 458
    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-direct {p0, v1, v0, p5}, Lorg/joda/time/base/BasePeriod;->checkAndUpdate(Lorg/joda/time/DurationFieldType;[II)V

    .line 459
    invoke-static {}, Lorg/joda/time/DurationFieldType;->minutes()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-direct {p0, v1, v0, p6}, Lorg/joda/time/base/BasePeriod;->checkAndUpdate(Lorg/joda/time/DurationFieldType;[II)V

    .line 460
    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-direct {p0, v1, v0, p7}, Lorg/joda/time/base/BasePeriod;->checkAndUpdate(Lorg/joda/time/DurationFieldType;[II)V

    .line 461
    invoke-static {}, Lorg/joda/time/DurationFieldType;->millis()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-direct {p0, v1, v0, p8}, Lorg/joda/time/base/BasePeriod;->checkAndUpdate(Lorg/joda/time/DurationFieldType;[II)V

    .line 462
    return-object v0
.end method


# virtual methods
.method protected addField(Lorg/joda/time/DurationFieldType;I)V
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lorg/joda/time/base/BasePeriod;->iValues:[I

    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/base/BasePeriod;->addFieldInto([ILorg/joda/time/DurationFieldType;I)V

    .line 506
    return-void
.end method

.method protected addFieldInto([ILorg/joda/time/DurationFieldType;I)V
    .locals 3

    .prologue
    .line 517
    invoke-virtual {p0, p2}, Lorg/joda/time/base/BasePeriod;->indexOf(Lorg/joda/time/DurationFieldType;)I

    move-result v0

    .line 518
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 519
    if-nez p3, :cond_0

    if-nez p2, :cond_2

    .line 520
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Period does not support field \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 524
    :cond_1
    aget v1, p1, v0

    invoke-static {v1, p3}, Lorg/joda/time/field/FieldUtils;->safeAdd(II)I

    move-result v1

    aput v1, p1, v0

    .line 526
    :cond_2
    return-void
.end method

.method protected addPeriod(Lorg/joda/time/ReadablePeriod;)V
    .locals 1

    .prologue
    .line 564
    if-eqz p1, :cond_0

    .line 565
    invoke-virtual {p0}, Lorg/joda/time/base/BasePeriod;->getValues()[I

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/joda/time/base/BasePeriod;->addPeriodInto([ILorg/joda/time/ReadablePeriod;)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/joda/time/base/BasePeriod;->setValues([I)V

    .line 567
    :cond_0
    return-void
.end method

.method protected addPeriodInto([ILorg/joda/time/ReadablePeriod;)[I
    .locals 6

    .prologue
    .line 578
    const/4 v0, 0x0

    invoke-interface {p2}, Lorg/joda/time/ReadablePeriod;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 579
    invoke-interface {p2, v0}, Lorg/joda/time/ReadablePeriod;->getFieldType(I)Lorg/joda/time/DurationFieldType;

    move-result-object v2

    .line 580
    invoke-interface {p2, v0}, Lorg/joda/time/ReadablePeriod;->getValue(I)I

    move-result v3

    .line 581
    if-eqz v3, :cond_1

    .line 582
    invoke-virtual {p0, v2}, Lorg/joda/time/base/BasePeriod;->indexOf(Lorg/joda/time/DurationFieldType;)I

    move-result v4

    .line 583
    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 584
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Period does not support field \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lorg/joda/time/DurationFieldType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 587
    :cond_0
    invoke-virtual {p0, v4}, Lorg/joda/time/base/BasePeriod;->getValue(I)I

    move-result v2

    invoke-static {v2, v3}, Lorg/joda/time/field/FieldUtils;->safeAdd(II)I

    move-result v2

    aput v2, p1, v4

    .line 578
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 591
    :cond_2
    return-object p1
.end method

.method protected checkPeriodType(Lorg/joda/time/PeriodType;)Lorg/joda/time/PeriodType;
    .locals 1

    .prologue
    .line 308
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getPeriodType(Lorg/joda/time/PeriodType;)Lorg/joda/time/PeriodType;

    move-result-object v0

    return-object v0
.end method

.method public getPeriodType()Lorg/joda/time/PeriodType;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lorg/joda/time/base/BasePeriod;->iType:Lorg/joda/time/PeriodType;

    return-object v0
.end method

.method public getValue(I)I
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lorg/joda/time/base/BasePeriod;->iValues:[I

    aget v0, v0, p1

    return v0
.end method

.method protected mergePeriod(Lorg/joda/time/ReadablePeriod;)V
    .locals 1

    .prologue
    .line 535
    if-eqz p1, :cond_0

    .line 536
    invoke-virtual {p0}, Lorg/joda/time/base/BasePeriod;->getValues()[I

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/joda/time/base/BasePeriod;->mergePeriodInto([ILorg/joda/time/ReadablePeriod;)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/joda/time/base/BasePeriod;->setValues([I)V

    .line 538
    :cond_0
    return-void
.end method

.method protected mergePeriodInto([ILorg/joda/time/ReadablePeriod;)[I
    .locals 4

    .prologue
    .line 549
    const/4 v0, 0x0

    invoke-interface {p2}, Lorg/joda/time/ReadablePeriod;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 550
    invoke-interface {p2, v0}, Lorg/joda/time/ReadablePeriod;->getFieldType(I)Lorg/joda/time/DurationFieldType;

    move-result-object v2

    .line 551
    invoke-interface {p2, v0}, Lorg/joda/time/ReadablePeriod;->getValue(I)I

    move-result v3

    .line 552
    invoke-direct {p0, v2, p1, v3}, Lorg/joda/time/base/BasePeriod;->checkAndUpdate(Lorg/joda/time/DurationFieldType;[II)V

    .line 549
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 554
    :cond_0
    return-object p1
.end method

.method protected setField(Lorg/joda/time/DurationFieldType;I)V
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lorg/joda/time/base/BasePeriod;->iValues:[I

    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/base/BasePeriod;->setFieldInto([ILorg/joda/time/DurationFieldType;I)V

    .line 475
    return-void
.end method

.method protected setFieldInto([ILorg/joda/time/DurationFieldType;I)V
    .locals 3

    .prologue
    .line 486
    invoke-virtual {p0, p2}, Lorg/joda/time/base/BasePeriod;->indexOf(Lorg/joda/time/DurationFieldType;)I

    move-result v0

    .line 487
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 488
    if-nez p3, :cond_0

    if-nez p2, :cond_2

    .line 489
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Period does not support field \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 493
    :cond_1
    aput p3, p1, v0

    .line 495
    :cond_2
    return-void
.end method

.method protected setPeriod(IIIIIIII)V
    .locals 1

    .prologue
    .line 444
    invoke-direct/range {p0 .. p8}, Lorg/joda/time/base/BasePeriod;->setPeriodInternal(IIIIIIII)[I

    move-result-object v0

    .line 445
    invoke-virtual {p0, v0}, Lorg/joda/time/base/BasePeriod;->setValues([I)V

    .line 446
    return-void
.end method

.method protected setPeriod(Lorg/joda/time/ReadablePeriod;)V
    .locals 1

    .prologue
    .line 409
    if-nez p1, :cond_0

    .line 410
    invoke-virtual {p0}, Lorg/joda/time/base/BasePeriod;->size()I

    move-result v0

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Lorg/joda/time/base/BasePeriod;->setValues([I)V

    .line 414
    :goto_0
    return-void

    .line 412
    :cond_0
    invoke-direct {p0, p1}, Lorg/joda/time/base/BasePeriod;->setPeriodInternal(Lorg/joda/time/ReadablePeriod;)V

    goto :goto_0
.end method

.method protected setValue(II)V
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lorg/joda/time/base/BasePeriod;->iValues:[I

    aput p2, v0, p1

    .line 604
    return-void
.end method

.method protected setValues([I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 616
    iget-object v0, p0, Lorg/joda/time/base/BasePeriod;->iValues:[I

    iget-object v1, p0, Lorg/joda/time/base/BasePeriod;->iValues:[I

    array-length v1, v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 617
    return-void
.end method

.method public toDurationFrom(Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Duration;
    .locals 5

    .prologue
    .line 350
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v0

    .line 351
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantChronology(Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Chronology;

    move-result-object v2

    .line 352
    const/4 v3, 0x1

    invoke-virtual {v2, p0, v0, v1, v3}, Lorg/joda/time/Chronology;->add(Lorg/joda/time/ReadablePeriod;JI)J

    move-result-wide v2

    .line 353
    new-instance v4, Lorg/joda/time/Duration;

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/joda/time/Duration;-><init>(JJ)V

    return-object v4
.end method

.method public toDurationTo(Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Duration;
    .locals 5

    .prologue
    .line 374
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v0

    .line 375
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantChronology(Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Chronology;

    move-result-object v2

    .line 376
    const/4 v3, -0x1

    invoke-virtual {v2, p0, v0, v1, v3}, Lorg/joda/time/Chronology;->add(Lorg/joda/time/ReadablePeriod;JI)J

    move-result-wide v2

    .line 377
    new-instance v4, Lorg/joda/time/Duration;

    invoke-direct {v4, v2, v3, v0, v1}, Lorg/joda/time/Duration;-><init>(JJ)V

    return-object v4
.end method
