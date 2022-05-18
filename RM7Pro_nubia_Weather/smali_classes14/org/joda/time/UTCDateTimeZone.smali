.class final Lorg/joda/time/UTCDateTimeZone;
.super Lorg/joda/time/DateTimeZone;
.source "UTCDateTimeZone.java"


# static fields
.field static final INSTANCE:Lorg/joda/time/DateTimeZone;

.field private static final serialVersionUID:J = -0x30c0b99837523604L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lorg/joda/time/UTCDateTimeZone;

    invoke-direct {v0}, Lorg/joda/time/UTCDateTimeZone;-><init>()V

    sput-object v0, Lorg/joda/time/UTCDateTimeZone;->INSTANCE:Lorg/joda/time/DateTimeZone;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "UTC"

    invoke-direct {p0, v0}, Lorg/joda/time/DateTimeZone;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 75
    instance-of v0, p1, Lorg/joda/time/UTCDateTimeZone;

    return v0
.end method

.method public getNameKey(J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "UTC"

    return-object v0
.end method

.method public getOffset(J)I
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public getOffsetFromLocal(J)I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public getStandardOffset(J)I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lorg/joda/time/UTCDateTimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isFixed()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public nextTransition(J)J
    .locals 1

    .prologue
    .line 60
    return-wide p1
.end method

.method public previousTransition(J)J
    .locals 1

    .prologue
    .line 65
    return-wide p1
.end method

.method public toTimeZone()Ljava/util/TimeZone;
    .locals 3

    .prologue
    .line 70
    new-instance v0, Ljava/util/SimpleTimeZone;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/joda/time/UTCDateTimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    return-object v0
.end method
