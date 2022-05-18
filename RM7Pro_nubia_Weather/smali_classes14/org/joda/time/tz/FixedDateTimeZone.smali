.class public final Lorg/joda/time/tz/FixedDateTimeZone;
.super Lorg/joda/time/DateTimeZone;
.source "FixedDateTimeZone.java"


# static fields
.field private static final serialVersionUID:J = -0x30c0b99837523604L


# instance fields
.field private final iNameKey:Ljava/lang/String;

.field private final iStandardOffset:I

.field private final iWallOffset:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lorg/joda/time/DateTimeZone;-><init>(Ljava/lang/String;)V

    .line 39
    iput-object p2, p0, Lorg/joda/time/tz/FixedDateTimeZone;->iNameKey:Ljava/lang/String;

    .line 40
    iput p3, p0, Lorg/joda/time/tz/FixedDateTimeZone;->iWallOffset:I

    .line 41
    iput p4, p0, Lorg/joda/time/tz/FixedDateTimeZone;->iStandardOffset:I

    .line 42
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 88
    if-ne p0, p1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v0

    .line 91
    :cond_1
    instance-of v2, p1, Lorg/joda/time/tz/FixedDateTimeZone;

    if-eqz v2, :cond_3

    .line 92
    check-cast p1, Lorg/joda/time/tz/FixedDateTimeZone;

    .line 93
    invoke-virtual {p0}, Lorg/joda/time/tz/FixedDateTimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/joda/time/tz/FixedDateTimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/joda/time/tz/FixedDateTimeZone;->iStandardOffset:I

    iget v3, p1, Lorg/joda/time/tz/FixedDateTimeZone;->iStandardOffset:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lorg/joda/time/tz/FixedDateTimeZone;->iWallOffset:I

    iget v3, p1, Lorg/joda/time/tz/FixedDateTimeZone;->iWallOffset:I

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 98
    goto :goto_0
.end method

.method public getNameKey(J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/joda/time/tz/FixedDateTimeZone;->iNameKey:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset(J)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lorg/joda/time/tz/FixedDateTimeZone;->iWallOffset:I

    return v0
.end method

.method public getOffsetFromLocal(J)I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lorg/joda/time/tz/FixedDateTimeZone;->iWallOffset:I

    return v0
.end method

.method public getStandardOffset(J)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lorg/joda/time/tz/FixedDateTimeZone;->iStandardOffset:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0}, Lorg/joda/time/tz/FixedDateTimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/joda/time/tz/FixedDateTimeZone;->iStandardOffset:I

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    iget v1, p0, Lorg/joda/time/tz/FixedDateTimeZone;->iWallOffset:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public isFixed()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public nextTransition(J)J
    .locals 1

    .prologue
    .line 65
    return-wide p1
.end method

.method public previousTransition(J)J
    .locals 1

    .prologue
    .line 69
    return-wide p1
.end method

.method public toTimeZone()Ljava/util/TimeZone;
    .locals 3

    .prologue
    .line 77
    invoke-virtual {p0}, Lorg/joda/time/tz/FixedDateTimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GMT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/tz/FixedDateTimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 84
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/SimpleTimeZone;

    iget v1, p0, Lorg/joda/time/tz/FixedDateTimeZone;->iWallOffset:I

    invoke-virtual {p0}, Lorg/joda/time/tz/FixedDateTimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method
