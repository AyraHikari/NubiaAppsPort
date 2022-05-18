.class public abstract Lorg/joda/time/base/AbstractPeriod;
.super Ljava/lang/Object;
.source "AbstractPeriod.java"

# interfaces
.implements Lorg/joda/time/ReadablePeriod;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 183
    if-ne p0, p1, :cond_1

    .line 198
    :cond_0
    :goto_0
    return v0

    .line 186
    :cond_1
    instance-of v2, p1, Lorg/joda/time/ReadablePeriod;

    if-nez v2, :cond_2

    move v0, v1

    .line 187
    goto :goto_0

    .line 189
    :cond_2
    check-cast p1, Lorg/joda/time/ReadablePeriod;

    .line 190
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractPeriod;->size()I

    move-result v2

    invoke-interface {p1}, Lorg/joda/time/ReadablePeriod;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 191
    goto :goto_0

    .line 193
    :cond_3
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractPeriod;->size()I

    move-result v3

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    .line 194
    invoke-virtual {p0, v2}, Lorg/joda/time/base/AbstractPeriod;->getValue(I)I

    move-result v4

    invoke-interface {p1, v2}, Lorg/joda/time/ReadablePeriod;->getValue(I)I

    move-result v5

    if-ne v4, v5, :cond_4

    invoke-virtual {p0, v2}, Lorg/joda/time/base/AbstractPeriod;->getFieldType(I)Lorg/joda/time/DurationFieldType;

    move-result-object v4

    invoke-interface {p1, v2}, Lorg/joda/time/ReadablePeriod;->getFieldType(I)Lorg/joda/time/DurationFieldType;

    move-result-object v5

    if-eq v4, v5, :cond_5

    :cond_4
    move v0, v1

    .line 195
    goto :goto_0

    .line 193
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public get(Lorg/joda/time/DurationFieldType;)I
    .locals 2

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lorg/joda/time/base/AbstractPeriod;->indexOf(Lorg/joda/time/DurationFieldType;)I

    move-result v0

    .line 114
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 117
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/joda/time/base/AbstractPeriod;->getValue(I)I

    move-result v0

    goto :goto_0
.end method

.method public getFieldType(I)Lorg/joda/time/DurationFieldType;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractPeriod;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/PeriodType;->getFieldType(I)Lorg/joda/time/DurationFieldType;

    move-result-object v0

    return-object v0
.end method

.method public getFieldTypes()[Lorg/joda/time/DurationFieldType;
    .locals 3

    .prologue
    .line 79
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractPeriod;->size()I

    move-result v0

    new-array v1, v0, [Lorg/joda/time/DurationFieldType;

    .line 80
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 81
    invoke-virtual {p0, v0}, Lorg/joda/time/base/AbstractPeriod;->getFieldType(I)Lorg/joda/time/DurationFieldType;

    move-result-object v2

    aput-object v2, v1, v0

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    return-object v1
.end method

.method public getValues()[I
    .locals 3

    .prologue
    .line 95
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractPeriod;->size()I

    move-result v0

    new-array v1, v0, [I

    .line 96
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 97
    invoke-virtual {p0, v0}, Lorg/joda/time/base/AbstractPeriod;->getValue(I)I

    move-result v2

    aput v2, v1, v0

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_0
    return-object v1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 207
    const/16 v1, 0x11

    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/joda/time/base/AbstractPeriod;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_0

    .line 209
    mul-int/lit8 v1, v1, 0x1b

    invoke-virtual {p0, v0}, Lorg/joda/time/base/AbstractPeriod;->getValue(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 210
    mul-int/lit8 v1, v1, 0x1b

    invoke-virtual {p0, v0}, Lorg/joda/time/base/AbstractPeriod;->getFieldType(I)Lorg/joda/time/DurationFieldType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_0
    return v1
.end method

.method public indexOf(Lorg/joda/time/DurationFieldType;)I
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractPeriod;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/PeriodType;->indexOf(Lorg/joda/time/DurationFieldType;)I

    move-result v0

    return v0
.end method

.method public isSupported(Lorg/joda/time/DurationFieldType;)Z
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractPeriod;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/PeriodType;->isSupported(Lorg/joda/time/DurationFieldType;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractPeriod;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/PeriodType;->size()I

    move-result v0

    return v0
.end method

.method public toMutablePeriod()Lorg/joda/time/MutablePeriod;
    .locals 1

    .prologue
    .line 158
    new-instance v0, Lorg/joda/time/MutablePeriod;

    invoke-direct {v0, p0}, Lorg/joda/time/MutablePeriod;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public toPeriod()Lorg/joda/time/Period;
    .locals 1

    .prologue
    .line 147
    new-instance v0, Lorg/joda/time/Period;

    invoke-direct {v0, p0}, Lorg/joda/time/Period;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/joda/convert/ToString;
    .end annotation

    .prologue
    .line 228
    invoke-static {}, Lorg/joda/time/format/ISOPeriodFormat;->standard()Lorg/joda/time/format/PeriodFormatter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/joda/time/format/PeriodFormatter;->print(Lorg/joda/time/ReadablePeriod;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Lorg/joda/time/format/PeriodFormatter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    if-nez p1, :cond_0

    .line 241
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractPeriod;->toString()Ljava/lang/String;

    move-result-object v0

    .line 243
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p0}, Lorg/joda/time/format/PeriodFormatter;->print(Lorg/joda/time/ReadablePeriod;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
