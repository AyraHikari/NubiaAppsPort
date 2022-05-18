.class public Lorg/joda/time/MutableInterval;
.super Lorg/joda/time/base/BaseInterval;
.source "MutableInterval.java"

# interfaces
.implements Lorg/joda/time/ReadWritableInterval;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x530742c09b58b1b6L


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    .line 79
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v1 .. v6}, Lorg/joda/time/base/BaseInterval;-><init>(JJLorg/joda/time/Chronology;)V

    .line 80
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 7

    .prologue
    .line 90
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/joda/time/base/BaseInterval;-><init>(JJLorg/joda/time/Chronology;)V

    .line 91
    return-void
.end method

.method public constructor <init>(JJLorg/joda/time/Chronology;)V
    .locals 1

    .prologue
    .line 102
    invoke-direct/range {p0 .. p5}, Lorg/joda/time/base/BaseInterval;-><init>(JJLorg/joda/time/Chronology;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/joda/time/base/BaseInterval;-><init>(Ljava/lang/Object;Lorg/joda/time/Chronology;)V

    .line 187
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/joda/time/Chronology;)V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BaseInterval;-><init>(Ljava/lang/Object;Lorg/joda/time/Chronology;)V

    .line 206
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/ReadableDuration;Lorg/joda/time/ReadableInstant;)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BaseInterval;-><init>(Lorg/joda/time/ReadableDuration;Lorg/joda/time/ReadableInstant;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableDuration;)V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BaseInterval;-><init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableDuration;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BaseInterval;-><init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadablePeriod;)V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BaseInterval;-><init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadablePeriod;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/ReadablePeriod;Lorg/joda/time/ReadableInstant;)V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BaseInterval;-><init>(Lorg/joda/time/ReadablePeriod;Lorg/joda/time/ReadableInstant;)V

    .line 170
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lorg/joda/time/MutableInterval;
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lorg/joda/time/MutableInterval;

    invoke-direct {v0, p0}, Lorg/joda/time/MutableInterval;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 408
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 409
    :catch_0
    move-exception v0

    .line 410
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Clone error"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public copy()Lorg/joda/time/MutableInterval;
    .locals 1

    .prologue
    .line 398
    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/MutableInterval;

    return-object v0
.end method

.method public setChronology(Lorg/joda/time/Chronology;)V
    .locals 7

    .prologue
    .line 263
    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getStartMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getEndMillis()J

    move-result-wide v4

    move-object v1, p0

    move-object v6, p1

    invoke-super/range {v1 .. v6}, Lorg/joda/time/base/BaseInterval;->setInterval(JJLorg/joda/time/Chronology;)V

    .line 264
    return-void
.end method

.method public setDurationAfterStart(J)V
    .locals 3

    .prologue
    .line 319
    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getStartMillis()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lorg/joda/time/field/FieldUtils;->safeAdd(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableInterval;->setEndMillis(J)V

    .line 320
    return-void
.end method

.method public setDurationAfterStart(Lorg/joda/time/ReadableDuration;)V
    .locals 4

    .prologue
    .line 342
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getDurationMillis(Lorg/joda/time/ReadableDuration;)J

    move-result-wide v0

    .line 343
    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getStartMillis()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Lorg/joda/time/field/FieldUtils;->safeAdd(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableInterval;->setEndMillis(J)V

    .line 344
    return-void
.end method

.method public setDurationBeforeEnd(J)V
    .locals 5

    .prologue
    .line 330
    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getEndMillis()J

    move-result-wide v0

    neg-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lorg/joda/time/field/FieldUtils;->safeAdd(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableInterval;->setStartMillis(J)V

    .line 331
    return-void
.end method

.method public setDurationBeforeEnd(Lorg/joda/time/ReadableDuration;)V
    .locals 4

    .prologue
    .line 354
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getDurationMillis(Lorg/joda/time/ReadableDuration;)J

    move-result-wide v0

    .line 355
    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getEndMillis()J

    move-result-wide v2

    neg-long v0, v0

    invoke-static {v2, v3, v0, v1}, Lorg/joda/time/field/FieldUtils;->safeAdd(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableInterval;->setStartMillis(J)V

    .line 356
    return-void
.end method

.method public setEnd(Lorg/joda/time/ReadableInstant;)V
    .locals 7

    .prologue
    .line 306
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v4

    .line 307
    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getStartMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v6

    move-object v1, p0

    invoke-super/range {v1 .. v6}, Lorg/joda/time/base/BaseInterval;->setInterval(JJLorg/joda/time/Chronology;)V

    .line 308
    return-void
.end method

.method public setEndMillis(J)V
    .locals 7

    .prologue
    .line 296
    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getStartMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v6

    move-object v1, p0

    move-wide v4, p1

    invoke-super/range {v1 .. v6}, Lorg/joda/time/base/BaseInterval;->setInterval(JJLorg/joda/time/Chronology;)V

    .line 297
    return-void
.end method

.method public setInterval(JJ)V
    .locals 7

    .prologue
    .line 217
    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v6

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-super/range {v1 .. v6}, Lorg/joda/time/base/BaseInterval;->setInterval(JJLorg/joda/time/Chronology;)V

    .line 218
    return-void
.end method

.method public setInterval(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)V
    .locals 7

    .prologue
    .line 245
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 246
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v0

    .line 247
    invoke-virtual {p0, v0, v1, v0, v1}, Lorg/joda/time/MutableInterval;->setInterval(JJ)V

    .line 254
    :goto_0
    return-void

    .line 249
    :cond_0
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v2

    .line 250
    invoke-static {p2}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v4

    .line 251
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantChronology(Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Chronology;

    move-result-object v6

    move-object v1, p0

    .line 252
    invoke-super/range {v1 .. v6}, Lorg/joda/time/base/BaseInterval;->setInterval(JJLorg/joda/time/Chronology;)V

    goto :goto_0
.end method

.method public setInterval(Lorg/joda/time/ReadableInterval;)V
    .locals 7

    .prologue
    .line 227
    if-nez p1, :cond_0

    .line 228
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Interval must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_0
    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getStartMillis()J

    move-result-wide v2

    .line 231
    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getEndMillis()J

    move-result-wide v4

    .line 232
    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v6

    move-object v1, p0

    .line 233
    invoke-super/range {v1 .. v6}, Lorg/joda/time/base/BaseInterval;->setInterval(JJLorg/joda/time/Chronology;)V

    .line 234
    return-void
.end method

.method public setPeriodAfterStart(Lorg/joda/time/ReadablePeriod;)V
    .locals 4

    .prologue
    .line 368
    if-nez p1, :cond_0

    .line 369
    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getStartMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableInterval;->setEndMillis(J)V

    .line 373
    :goto_0
    return-void

    .line 371
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getStartMillis()J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v2, v3, v1}, Lorg/joda/time/Chronology;->add(Lorg/joda/time/ReadablePeriod;JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableInterval;->setEndMillis(J)V

    goto :goto_0
.end method

.method public setPeriodBeforeEnd(Lorg/joda/time/ReadablePeriod;)V
    .locals 4

    .prologue
    .line 384
    if-nez p1, :cond_0

    .line 385
    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getEndMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableInterval;->setStartMillis(J)V

    .line 389
    :goto_0
    return-void

    .line 387
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getEndMillis()J

    move-result-wide v2

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v2, v3, v1}, Lorg/joda/time/Chronology;->add(Lorg/joda/time/ReadablePeriod;JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableInterval;->setStartMillis(J)V

    goto :goto_0
.end method

.method public setStart(Lorg/joda/time/ReadableInstant;)V
    .locals 7

    .prologue
    .line 284
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v2

    .line 285
    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getEndMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v6

    move-object v1, p0

    invoke-super/range {v1 .. v6}, Lorg/joda/time/base/BaseInterval;->setInterval(JJLorg/joda/time/Chronology;)V

    .line 286
    return-void
.end method

.method public setStartMillis(J)V
    .locals 7

    .prologue
    .line 274
    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getEndMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v6

    move-object v1, p0

    move-wide v2, p1

    invoke-super/range {v1 .. v6}, Lorg/joda/time/base/BaseInterval;->setInterval(JJLorg/joda/time/Chronology;)V

    .line 275
    return-void
.end method
