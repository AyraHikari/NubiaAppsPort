.class Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;
.super Lorg/joda/time/field/ImpreciseDateTimeField;
.source "BasicMonthOfYearDateTimeField.java"


# static fields
.field private static final MIN:I = 0x1

.field private static final serialVersionUID:J = -0x1d574204f407e0L


# instance fields
.field private final iChronology:Lorg/joda/time/chrono/BasicChronology;

.field private final iLeapMonth:I

.field private final iMax:I


# direct methods
.method constructor <init>(Lorg/joda/time/chrono/BasicChronology;I)V
    .locals 4

    .prologue
    .line 52
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->monthOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p1}, Lorg/joda/time/chrono/BasicChronology;->getAverageMillisPerMonth()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lorg/joda/time/field/ImpreciseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;J)V

    .line 53
    iput-object p1, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    .line 54
    iget-object v0, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->getMaxMonth()I

    move-result v0

    iput v0, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iMax:I

    .line 55
    iput p2, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iLeapMonth:I

    .line 56
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(JI)J
    .locals 9

    .prologue
    .line 93
    if-nez p3, :cond_0

    .line 157
    :goto_0
    return-wide p1

    .line 99
    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getMillisOfDay(J)I

    move-result v0

    int-to-long v4, v0

    .line 104
    iget-object v0, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getYear(J)I

    move-result v2

    .line 105
    iget-object v0, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2, v2}, Lorg/joda/time/chrono/BasicChronology;->getMonthOfYear(JI)I

    move-result v3

    .line 113
    add-int/lit8 v0, v3, -0x1

    add-int/2addr v0, p3

    .line 114
    if-lez v3, :cond_6

    if-gez v0, :cond_6

    .line 115
    iget v0, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iMax:I

    add-int/2addr v0, p3

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    int-to-float v1, p3

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 116
    add-int/lit8 v0, v2, -0x1

    .line 117
    iget v1, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iMax:I

    add-int/2addr v1, p3

    .line 122
    :goto_1
    add-int/lit8 v6, v3, -0x1

    add-int/2addr v1, v6

    move v7, v1

    move v1, v0

    move v0, v7

    .line 124
    :goto_2
    if-ltz v0, :cond_3

    .line 125
    iget v6, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iMax:I

    div-int v6, v0, v6

    add-int/2addr v1, v6

    .line 126
    iget v6, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iMax:I

    rem-int/2addr v0, v6

    add-int/lit8 v0, v0, 0x1

    .line 147
    :cond_1
    :goto_3
    iget-object v6, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v6, p1, p2, v2, v3}, Lorg/joda/time/chrono/BasicChronology;->getDayOfMonth(JII)I

    move-result v3

    .line 148
    iget-object v2, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v2, v1, v0}, Lorg/joda/time/chrono/BasicChronology;->getDaysInYearMonth(II)I

    move-result v2

    .line 149
    if-le v3, v2, :cond_5

    .line 155
    :goto_4
    iget-object v3, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v3, v1, v0, v2}, Lorg/joda/time/chrono/BasicChronology;->getYearMonthDayMillis(III)J

    move-result-wide v0

    .line 157
    add-long p1, v0, v4

    goto :goto_0

    .line 119
    :cond_2
    add-int/lit8 v0, v2, 0x1

    .line 120
    iget v1, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iMax:I

    sub-int v1, p3, v1

    goto :goto_1

    .line 128
    :cond_3
    iget v6, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iMax:I

    div-int v6, v0, v6

    add-int/2addr v1, v6

    add-int/lit8 v1, v1, -0x1

    .line 129
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 130
    iget v6, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iMax:I

    rem-int/2addr v0, v6

    .line 132
    if-nez v0, :cond_4

    .line 133
    iget v0, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iMax:I

    .line 135
    :cond_4
    iget v6, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iMax:I

    sub-int v0, v6, v0

    add-int/lit8 v0, v0, 0x1

    .line 137
    const/4 v6, 0x1

    if-ne v0, v6, :cond_1

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    move v2, v3

    goto :goto_4

    :cond_6
    move v1, v2

    goto :goto_2
.end method

.method public add(JJ)J
    .locals 11

    .prologue
    .line 162
    long-to-int v0, p3

    .line 163
    int-to-long v2, v0

    cmp-long v1, v2, p3

    if-nez v1, :cond_0

    .line 164
    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->add(JI)J

    move-result-wide v0

    .line 210
    :goto_0
    return-wide v0

    .line 169
    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getMillisOfDay(J)I

    move-result v0

    int-to-long v4, v0

    .line 171
    iget-object v0, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getYear(J)I

    move-result v6

    .line 172
    iget-object v0, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2, v6}, Lorg/joda/time/chrono/BasicChronology;->getMonthOfYear(JI)I

    move-result v7

    .line 175
    add-int/lit8 v0, v7, -0x1

    int-to-long v0, v0

    add-long/2addr v0, p3

    .line 176
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3

    .line 177
    int-to-long v2, v6

    iget v8, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iMax:I

    int-to-long v8, v8

    div-long v8, v0, v8

    add-long/2addr v2, v8

    .line 178
    iget v8, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iMax:I

    int-to-long v8, v8

    rem-long/2addr v0, v8

    const-wide/16 v8, 0x1

    add-long/2addr v0, v8

    .line 192
    :cond_1
    :goto_1
    iget-object v8, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v8}, Lorg/joda/time/chrono/BasicChronology;->getMinYear()I

    move-result v8

    int-to-long v8, v8

    cmp-long v8, v2, v8

    if-ltz v8, :cond_2

    iget-object v8, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v8}, Lorg/joda/time/chrono/BasicChronology;->getMaxYear()I

    move-result v8

    int-to-long v8, v8

    cmp-long v8, v2, v8

    if-lez v8, :cond_5

    .line 195
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Magnitude of add amount is too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_3
    int-to-long v2, v6

    iget v8, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iMax:I

    int-to-long v8, v8

    div-long v8, v0, v8

    add-long/2addr v2, v8

    const-wide/16 v8, 0x1

    sub-long/2addr v2, v8

    .line 181
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 182
    iget v8, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iMax:I

    int-to-long v8, v8

    rem-long/2addr v0, v8

    long-to-int v0, v0

    .line 183
    if-nez v0, :cond_4

    .line 184
    iget v0, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iMax:I

    .line 186
    :cond_4
    iget v1, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iMax:I

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    .line 187
    const-wide/16 v8, 0x1

    cmp-long v8, v0, v8

    if-nez v8, :cond_1

    .line 188
    const-wide/16 v8, 0x1

    add-long/2addr v2, v8

    goto :goto_1

    .line 199
    :cond_5
    long-to-int v2, v2

    .line 200
    long-to-int v3, v0

    .line 202
    iget-object v0, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2, v6, v7}, Lorg/joda/time/chrono/BasicChronology;->getDayOfMonth(JII)I

    move-result v1

    .line 203
    iget-object v0, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/chrono/BasicChronology;->getDaysInYearMonth(II)I

    move-result v0

    .line 204
    if-le v1, v0, :cond_6

    .line 208
    :goto_2
    iget-object v1, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v1, v2, v3, v0}, Lorg/joda/time/chrono/BasicChronology;->getYearMonthDayMillis(III)J

    move-result-wide v0

    .line 210
    add-long/2addr v0, v4

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method public add(Lorg/joda/time/ReadablePartial;I[II)[I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 217
    if-nez p4, :cond_0

    .line 234
    :goto_0
    return-object p3

    .line 220
    :cond_0
    invoke-interface {p1}, Lorg/joda/time/ReadablePartial;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePartial;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->monthOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p2, :cond_1

    .line 222
    aget v1, p3, v0

    add-int/lit8 v1, v1, -0x1

    .line 223
    rem-int/lit8 v2, p4, 0xc

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0xc

    rem-int/lit8 v1, v1, 0xc

    add-int/lit8 v1, v1, 0x1

    .line 224
    invoke-virtual {p0, p1, v0, p3, v1}, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->set(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object p3

    goto :goto_0

    .line 226
    :cond_1
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->isContiguous(Lorg/joda/time/ReadablePartial;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 227
    const-wide/16 v2, 0x0

    .line 228
    invoke-interface {p1}, Lorg/joda/time/ReadablePartial;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_2

    .line 229
    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePartial;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v4

    iget-object v5, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v4, v5}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v4

    aget v5, p3, v0

    invoke-virtual {v4, v2, v3, v5}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v2

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 231
    :cond_2
    invoke-virtual {p0, v2, v3, p4}, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->add(JI)J

    move-result-wide v0

    .line 232
    iget-object v2, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v2, p1, v0, v1}, Lorg/joda/time/chrono/BasicChronology;->get(Lorg/joda/time/ReadablePartial;J)[I

    move-result-object p3

    goto :goto_0

    .line 234
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lorg/joda/time/field/ImpreciseDateTimeField;->add(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object p3

    goto :goto_0
.end method

.method public addWrapField(JI)J
    .locals 3

    .prologue
    .line 249
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->get(J)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iMax:I

    invoke-static {v0, p3, v1, v2}, Lorg/joda/time/field/FieldUtils;->getWrappedValue(IIII)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->set(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public get(J)I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getMonthOfYear(J)I

    move-result v0

    return v0
.end method

.method public getDifferenceAsLong(JJ)J
    .locals 9

    .prologue
    .line 254
    cmp-long v0, p1, p3

    if-gez v0, :cond_1

    .line 255
    invoke-virtual {p0, p3, p4, p1, p2}, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->getDifference(JJ)I

    move-result v0

    neg-int v0, v0

    int-to-long v0, v0

    .line 291
    :cond_0
    :goto_0
    return-wide v0

    .line 258
    :cond_1
    iget-object v0, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getYear(J)I

    move-result v2

    .line 259
    iget-object v0, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2, v2}, Lorg/joda/time/chrono/BasicChronology;->getMonthOfYear(JI)I

    move-result v3

    .line 260
    iget-object v0, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p3, p4}, Lorg/joda/time/chrono/BasicChronology;->getYear(J)I

    move-result v4

    .line 261
    iget-object v0, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p3, p4, v4}, Lorg/joda/time/chrono/BasicChronology;->getMonthOfYear(JI)I

    move-result v5

    .line 263
    sub-int v0, v2, v4

    int-to-long v0, v0

    iget v6, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iMax:I

    int-to-long v6, v6

    mul-long/2addr v0, v6

    int-to-long v6, v3

    add-long/2addr v0, v6

    int-to-long v6, v5

    sub-long/2addr v0, v6

    .line 267
    iget-object v6, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v6, p1, p2, v2, v3}, Lorg/joda/time/chrono/BasicChronology;->getDayOfMonth(JII)I

    move-result v6

    .line 269
    iget-object v7, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v7, v2, v3}, Lorg/joda/time/chrono/BasicChronology;->getDaysInYearMonth(II)I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 271
    iget-object v7, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v7, p3, p4, v4, v5}, Lorg/joda/time/chrono/BasicChronology;->getDayOfMonth(JII)I

    move-result v7

    .line 273
    if-le v7, v6, :cond_2

    .line 277
    iget-object v7, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v7}, Lorg/joda/time/chrono/BasicChronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v7

    invoke-virtual {v7, p3, p4, v6}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide p3

    .line 282
    :cond_2
    iget-object v6, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v6, v2, v3}, Lorg/joda/time/chrono/BasicChronology;->getYearMonthMillis(II)J

    move-result-wide v2

    sub-long v2, p1, v2

    .line 284
    iget-object v6, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v6, v4, v5}, Lorg/joda/time/chrono/BasicChronology;->getYearMonthMillis(II)J

    move-result-wide v4

    sub-long v4, p3, v4

    .line 287
    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 288
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getLeapAmount(J)I
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->isLeap(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLeapDurationField()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->days()Lorg/joda/time/DurationField;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumValue()I
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iMax:I

    return v0
.end method

.method public getMinimumValue()I
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x1

    return v0
.end method

.method public getRangeDurationField()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->years()Lorg/joda/time/DurationField;

    move-result-object v0

    return-object v0
.end method

.method public isLeap(J)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 331
    iget-object v1, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v1, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getYear(J)I

    move-result v1

    .line 332
    iget-object v2, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v2, v1}, Lorg/joda/time/chrono/BasicChronology;->isLeapYear(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 333
    iget-object v2, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v2, p1, p2, v1}, Lorg/joda/time/chrono/BasicChronology;->getMonthOfYear(JI)I

    move-result v1

    iget v2, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iLeapMonth:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 335
    :cond_0
    return v0
.end method

.method public isLenient()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public remainder(J)J
    .locals 3

    .prologue
    .line 367
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->roundFloor(J)J

    move-result-wide v0

    sub-long v0, p1, v0

    return-wide v0
.end method

.method public roundFloor(J)J
    .locals 3

    .prologue
    .line 360
    iget-object v0, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getYear(J)I

    move-result v0

    .line 361
    iget-object v1, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v1, p1, p2, v0}, Lorg/joda/time/chrono/BasicChronology;->getMonthOfYear(JI)I

    move-result v1

    .line 362
    iget-object v2, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v2, v0, v1}, Lorg/joda/time/chrono/BasicChronology;->getYearMonthMillis(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public set(JI)J
    .locals 5

    .prologue
    .line 309
    const/4 v0, 0x1

    iget v1, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iMax:I

    invoke-static {p0, p3, v0, v1}, Lorg/joda/time/field/FieldUtils;->verifyValueBounds(Lorg/joda/time/DateTimeField;III)V

    .line 311
    iget-object v0, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getYear(J)I

    move-result v2

    .line 313
    iget-object v0, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2, v2}, Lorg/joda/time/chrono/BasicChronology;->getDayOfMonth(JI)I

    move-result v1

    .line 314
    iget-object v0, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, v2, p3}, Lorg/joda/time/chrono/BasicChronology;->getDaysInYearMonth(II)I

    move-result v0

    .line 315
    if-le v1, v0, :cond_0

    .line 320
    :goto_0
    iget-object v1, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v1, v2, p3, v0}, Lorg/joda/time/chrono/BasicChronology;->getYearMonthDayMillis(III)J

    move-result-wide v0

    iget-object v2, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v2, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getMillisOfDay(J)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
