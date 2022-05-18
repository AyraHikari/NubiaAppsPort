.class public Lorg/joda/time/field/ScaledDurationField;
.super Lorg/joda/time/field/DecoratedDurationField;
.source "ScaledDurationField.java"


# static fields
.field private static final serialVersionUID:J = -0x2c7b410ef9b08afdL


# instance fields
.field private final iScalar:I


# direct methods
.method public constructor <init>(Lorg/joda/time/DurationField;Lorg/joda/time/DurationFieldType;I)V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lorg/joda/time/field/DecoratedDurationField;-><init>(Lorg/joda/time/DurationField;Lorg/joda/time/DurationFieldType;)V

    .line 48
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The scalar must not be 0 or 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1
    iput p3, p0, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    .line 52
    return-void
.end method


# virtual methods
.method public add(JI)J
    .locals 5

    .prologue
    .line 91
    int-to-long v0, p3

    iget v2, p0, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    .line 92
    invoke-virtual {p0}, Lorg/joda/time/field/ScaledDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v0, v1}, Lorg/joda/time/DurationField;->add(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public add(JJ)J
    .locals 3

    .prologue
    .line 96
    iget v0, p0, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    invoke-static {p3, p4, v0}, Lorg/joda/time/field/FieldUtils;->safeMultiply(JI)J

    move-result-wide v0

    .line 97
    invoke-virtual {p0}, Lorg/joda/time/field/ScaledDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v0, v1}, Lorg/joda/time/DurationField;->add(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 130
    if-ne p0, p1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v0

    .line 132
    :cond_1
    instance-of v2, p1, Lorg/joda/time/field/ScaledDurationField;

    if-eqz v2, :cond_3

    .line 133
    check-cast p1, Lorg/joda/time/field/ScaledDurationField;

    .line 134
    invoke-virtual {p0}, Lorg/joda/time/field/ScaledDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object v2

    invoke-virtual {p1}, Lorg/joda/time/field/ScaledDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/joda/time/field/ScaledDurationField;->getType()Lorg/joda/time/DurationFieldType;

    move-result-object v2

    invoke-virtual {p1}, Lorg/joda/time/field/ScaledDurationField;->getType()Lorg/joda/time/DurationFieldType;

    move-result-object v3

    if-ne v2, v3, :cond_2

    iget v2, p0, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    iget v3, p1, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 138
    goto :goto_0
.end method

.method public getDifference(JJ)I
    .locals 3

    .prologue
    .line 101
    invoke-virtual {p0}, Lorg/joda/time/field/ScaledDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DurationField;->getDifference(JJ)I

    move-result v0

    iget v1, p0, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getDifferenceAsLong(JJ)J
    .locals 5

    .prologue
    .line 105
    invoke-virtual {p0}, Lorg/joda/time/field/ScaledDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DurationField;->getDifferenceAsLong(JJ)J

    move-result-wide v0

    iget v2, p0, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getMillis(I)J
    .locals 4

    .prologue
    .line 71
    int-to-long v0, p1

    iget v2, p0, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    .line 72
    invoke-virtual {p0}, Lorg/joda/time/field/ScaledDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/joda/time/DurationField;->getMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMillis(IJ)J
    .locals 4

    .prologue
    .line 81
    int-to-long v0, p1

    iget v2, p0, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    .line 82
    invoke-virtual {p0}, Lorg/joda/time/field/ScaledDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object v2

    invoke-virtual {v2, v0, v1, p2, p3}, Lorg/joda/time/DurationField;->getMillis(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMillis(J)J
    .locals 3

    .prologue
    .line 76
    iget v0, p0, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    invoke-static {p1, p2, v0}, Lorg/joda/time/field/FieldUtils;->safeMultiply(JI)J

    move-result-wide v0

    .line 77
    invoke-virtual {p0}, Lorg/joda/time/field/ScaledDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/joda/time/DurationField;->getMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMillis(JJ)J
    .locals 3

    .prologue
    .line 86
    iget v0, p0, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    invoke-static {p1, p2, v0}, Lorg/joda/time/field/FieldUtils;->safeMultiply(JI)J

    move-result-wide v0

    .line 87
    invoke-virtual {p0}, Lorg/joda/time/field/ScaledDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object v2

    invoke-virtual {v2, v0, v1, p3, p4}, Lorg/joda/time/DurationField;->getMillis(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getScalar()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    return v0
.end method

.method public getUnitMillis()J
    .locals 4

    .prologue
    .line 109
    invoke-virtual {p0}, Lorg/joda/time/field/ScaledDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DurationField;->getUnitMillis()J

    move-result-wide v0

    iget v2, p0, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getValue(J)I
    .locals 3

    .prologue
    .line 55
    invoke-virtual {p0}, Lorg/joda/time/field/ScaledDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DurationField;->getValue(J)I

    move-result v0

    iget v1, p0, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getValue(JJ)I
    .locals 3

    .prologue
    .line 63
    invoke-virtual {p0}, Lorg/joda/time/field/ScaledDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DurationField;->getValue(JJ)I

    move-result v0

    iget v1, p0, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getValueAsLong(J)J
    .locals 5

    .prologue
    .line 59
    invoke-virtual {p0}, Lorg/joda/time/field/ScaledDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DurationField;->getValueAsLong(J)J

    move-result-wide v0

    iget v2, p0, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getValueAsLong(JJ)J
    .locals 5

    .prologue
    .line 67
    invoke-virtual {p0}, Lorg/joda/time/field/ScaledDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DurationField;->getValueAsLong(JJ)J

    move-result-wide v0

    iget v2, p0, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 147
    iget v0, p0, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    int-to-long v0, v0

    .line 148
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 149
    invoke-virtual {p0}, Lorg/joda/time/field/ScaledDurationField;->getType()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 150
    invoke-virtual {p0}, Lorg/joda/time/field/ScaledDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 151
    return v0
.end method
