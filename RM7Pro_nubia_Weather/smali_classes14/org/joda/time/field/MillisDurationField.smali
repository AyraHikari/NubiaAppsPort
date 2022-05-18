.class public final Lorg/joda/time/field/MillisDurationField;
.super Lorg/joda/time/DurationField;
.source "MillisDurationField.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final INSTANCE:Lorg/joda/time/DurationField;

.field private static final serialVersionUID:J = 0x24de85b89b81f517L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lorg/joda/time/field/MillisDurationField;

    invoke-direct {v0}, Lorg/joda/time/field/MillisDurationField;-><init>()V

    sput-object v0, Lorg/joda/time/field/MillisDurationField;->INSTANCE:Lorg/joda/time/DurationField;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/joda/time/DurationField;-><init>()V

    .line 45
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 171
    sget-object v0, Lorg/joda/time/field/MillisDurationField;->INSTANCE:Lorg/joda/time/DurationField;

    return-object v0
.end method


# virtual methods
.method public add(JI)J
    .locals 3

    .prologue
    .line 117
    int-to-long v0, p3

    invoke-static {p1, p2, v0, v1}, Lorg/joda/time/field/FieldUtils;->safeAdd(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public add(JJ)J
    .locals 3

    .prologue
    .line 121
    invoke-static {p1, p2, p3, p4}, Lorg/joda/time/field/FieldUtils;->safeAdd(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 32
    check-cast p1, Lorg/joda/time/DurationField;

    invoke-virtual {p0, p1}, Lorg/joda/time/field/MillisDurationField;->compareTo(Lorg/joda/time/DurationField;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/joda/time/DurationField;)I
    .locals 5

    .prologue
    .line 134
    invoke-virtual {p1}, Lorg/joda/time/DurationField;->getUnitMillis()J

    move-result-wide v0

    .line 135
    invoke-virtual {p0}, Lorg/joda/time/field/MillisDurationField;->getUnitMillis()J

    move-result-wide v2

    .line 137
    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    .line 138
    const/4 v0, 0x0

    .line 143
    :goto_0
    return v0

    .line 140
    :cond_0
    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    .line 141
    const/4 v0, -0x1

    goto :goto_0

    .line 143
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 148
    instance-of v1, p1, Lorg/joda/time/field/MillisDurationField;

    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {p0}, Lorg/joda/time/field/MillisDurationField;->getUnitMillis()J

    move-result-wide v2

    check-cast p1, Lorg/joda/time/field/MillisDurationField;

    invoke-virtual {p1}, Lorg/joda/time/field/MillisDurationField;->getUnitMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 151
    :cond_0
    return v0
.end method

.method public getDifference(JJ)I
    .locals 3

    .prologue
    .line 125
    invoke-static {p1, p2, p3, p4}, Lorg/joda/time/field/FieldUtils;->safeSubtract(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/joda/time/field/FieldUtils;->safeToInt(J)I

    move-result v0

    return v0
.end method

.method public getDifferenceAsLong(JJ)J
    .locals 3

    .prologue
    .line 129
    invoke-static {p1, p2, p3, p4}, Lorg/joda/time/field/FieldUtils;->safeSubtract(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMillis(I)J
    .locals 2

    .prologue
    .line 101
    int-to-long v0, p1

    return-wide v0
.end method

.method public getMillis(IJ)J
    .locals 2

    .prologue
    .line 109
    int-to-long v0, p1

    return-wide v0
.end method

.method public getMillis(J)J
    .locals 1

    .prologue
    .line 105
    return-wide p1
.end method

.method public getMillis(JJ)J
    .locals 1

    .prologue
    .line 113
    return-wide p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "millis"

    return-object v0
.end method

.method public getType()Lorg/joda/time/DurationFieldType;
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lorg/joda/time/DurationFieldType;->millis()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    return-object v0
.end method

.method public final getUnitMillis()J
    .locals 2

    .prologue
    .line 80
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public getValue(J)I
    .locals 1

    .prologue
    .line 85
    invoke-static {p1, p2}, Lorg/joda/time/field/FieldUtils;->safeToInt(J)I

    move-result v0

    return v0
.end method

.method public getValue(JJ)I
    .locals 1

    .prologue
    .line 93
    invoke-static {p1, p2}, Lorg/joda/time/field/FieldUtils;->safeToInt(J)I

    move-result v0

    return v0
.end method

.method public getValueAsLong(J)J
    .locals 1

    .prologue
    .line 89
    return-wide p1
.end method

.method public getValueAsLong(JJ)J
    .locals 1

    .prologue
    .line 97
    return-wide p1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 155
    invoke-virtual {p0}, Lorg/joda/time/field/MillisDurationField;->getUnitMillis()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final isPrecise()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public isSupported()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    const-string v0, "DurationField[millis]"

    return-object v0
.end method
