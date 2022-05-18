.class public Lorg/joda/time/tz/CachedDateTimeZone;
.super Lorg/joda/time/DateTimeZone;
.source "CachedDateTimeZone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/tz/CachedDateTimeZone$Info;
    }
.end annotation


# static fields
.field private static final cInfoCacheMask:I

.field private static final serialVersionUID:J = 0x4bf18272d9b4ccbdL


# instance fields
.field private final transient iInfoCache:[Lorg/joda/time/tz/CachedDateTimeZone$Info;

.field private final iZone:Lorg/joda/time/DateTimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    :try_start_0
    const-string v0, "org.joda.time.tz.CachedDateTimeZone.size"

    invoke-static {v0}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 45
    :goto_0
    if-nez v0, :cond_0

    .line 48
    const/16 v0, 0x200

    .line 61
    :goto_1
    add-int/lit8 v0, v0, -0x1

    sput v0, Lorg/joda/time/tz/CachedDateTimeZone;->cInfoCacheMask:I

    .line 62
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    const/4 v0, 0x0

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 52
    add-int/lit8 v1, v0, -0x1

    .line 53
    const/4 v0, 0x0

    .line 54
    :goto_2
    if-lez v1, :cond_1

    .line 55
    add-int/lit8 v0, v0, 0x1

    .line 56
    shr-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 58
    :cond_1
    const/4 v1, 0x1

    shl-int v0, v1, v0

    goto :goto_1
.end method

.method private constructor <init>(Lorg/joda/time/DateTimeZone;)V
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p1}, Lorg/joda/time/DateTimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/joda/time/DateTimeZone;-><init>(Ljava/lang/String;)V

    .line 84
    sget v0, Lorg/joda/time/tz/CachedDateTimeZone;->cInfoCacheMask:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lorg/joda/time/tz/CachedDateTimeZone$Info;

    iput-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone;->iInfoCache:[Lorg/joda/time/tz/CachedDateTimeZone$Info;

    .line 88
    iput-object p1, p0, Lorg/joda/time/tz/CachedDateTimeZone;->iZone:Lorg/joda/time/DateTimeZone;

    .line 89
    return-void
.end method

.method private createInfo(J)Lorg/joda/time/tz/CachedDateTimeZone$Info;
    .locals 9

    .prologue
    .line 152
    const-wide v0, -0x100000000L

    and-long v2, p1, v0

    .line 153
    new-instance v1, Lorg/joda/time/tz/CachedDateTimeZone$Info;

    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-direct {v1, v0, v2, v3}, Lorg/joda/time/tz/CachedDateTimeZone$Info;-><init>(Lorg/joda/time/DateTimeZone;J)V

    .line 155
    const-wide v4, 0xffffffffL

    or-long v6, v2, v4

    move-object v0, v1

    .line 158
    :goto_0
    iget-object v4, p0, Lorg/joda/time/tz/CachedDateTimeZone;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v4, v2, v3}, Lorg/joda/time/DateTimeZone;->nextTransition(J)J

    move-result-wide v4

    .line 159
    cmp-long v2, v4, v2

    if-eqz v2, :cond_0

    cmp-long v2, v4, v6

    if-lez v2, :cond_1

    .line 166
    :cond_0
    return-object v1

    .line 163
    :cond_1
    new-instance v2, Lorg/joda/time/tz/CachedDateTimeZone$Info;

    iget-object v3, p0, Lorg/joda/time/tz/CachedDateTimeZone;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-direct {v2, v3, v4, v5}, Lorg/joda/time/tz/CachedDateTimeZone$Info;-><init>(Lorg/joda/time/DateTimeZone;J)V

    iput-object v2, v0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iNextInfo:Lorg/joda/time/tz/CachedDateTimeZone$Info;

    move-object v0, v2

    move-wide v2, v4

    .line 164
    goto :goto_0
.end method

.method public static forZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/tz/CachedDateTimeZone;
    .locals 1

    .prologue
    .line 68
    instance-of v0, p0, Lorg/joda/time/tz/CachedDateTimeZone;

    if-eqz v0, :cond_0

    .line 69
    check-cast p0, Lorg/joda/time/tz/CachedDateTimeZone;

    .line 71
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lorg/joda/time/tz/CachedDateTimeZone;

    invoke-direct {v0, p0}, Lorg/joda/time/tz/CachedDateTimeZone;-><init>(Lorg/joda/time/DateTimeZone;)V

    move-object p0, v0

    goto :goto_0
.end method

.method private getInfo(J)Lorg/joda/time/tz/CachedDateTimeZone$Info;
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 140
    shr-long v0, p1, v6

    long-to-int v1, v0

    .line 141
    iget-object v2, p0, Lorg/joda/time/tz/CachedDateTimeZone;->iInfoCache:[Lorg/joda/time/tz/CachedDateTimeZone$Info;

    .line 142
    sget v0, Lorg/joda/time/tz/CachedDateTimeZone;->cInfoCacheMask:I

    and-int v3, v1, v0

    .line 143
    aget-object v0, v2, v3

    .line 144
    if-eqz v0, :cond_0

    iget-wide v4, v0, Lorg/joda/time/tz/CachedDateTimeZone$Info;->iPeriodStart:J

    shr-long/2addr v4, v6

    long-to-int v4, v4

    if-eq v4, v1, :cond_1

    .line 145
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/joda/time/tz/CachedDateTimeZone;->createInfo(J)Lorg/joda/time/tz/CachedDateTimeZone$Info;

    move-result-object v0

    .line 146
    aput-object v0, v2, v3

    .line 148
    :cond_1
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 127
    if-ne p0, p1, :cond_0

    .line 128
    const/4 v0, 0x1

    .line 133
    :goto_0
    return v0

    .line 130
    :cond_0
    instance-of v0, p1, Lorg/joda/time/tz/CachedDateTimeZone;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone;->iZone:Lorg/joda/time/DateTimeZone;

    check-cast p1, Lorg/joda/time/tz/CachedDateTimeZone;

    iget-object v1, p1, Lorg/joda/time/tz/CachedDateTimeZone;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTimeZone;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 133
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNameKey(J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lorg/joda/time/tz/CachedDateTimeZone;->getInfo(J)Lorg/joda/time/tz/CachedDateTimeZone$Info;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/tz/CachedDateTimeZone$Info;->getNameKey(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOffset(J)I
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lorg/joda/time/tz/CachedDateTimeZone;->getInfo(J)Lorg/joda/time/tz/CachedDateTimeZone$Info;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/tz/CachedDateTimeZone$Info;->getOffset(J)I

    move-result v0

    return v0
.end method

.method public getStandardOffset(J)I
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lorg/joda/time/tz/CachedDateTimeZone;->getInfo(J)Lorg/joda/time/tz/CachedDateTimeZone$Info;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/tz/CachedDateTimeZone$Info;->getStandardOffset(J)I

    move-result v0

    return v0
.end method

.method public getUncachedZone()Lorg/joda/time/DateTimeZone;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone;->iZone:Lorg/joda/time/DateTimeZone;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeZone;->hashCode()I

    move-result v0

    return v0
.end method

.method public isFixed()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeZone;->isFixed()Z

    move-result v0

    return v0
.end method

.method public nextTransition(J)J
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeZone;->nextTransition(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public previousTransition(J)J
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lorg/joda/time/tz/CachedDateTimeZone;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeZone;->previousTransition(J)J

    move-result-wide v0

    return-wide v0
.end method
