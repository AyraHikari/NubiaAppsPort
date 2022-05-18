.class Lorg/joda/time/convert/ReadableInstantConverter;
.super Lorg/joda/time/convert/AbstractConverter;
.source "ReadableInstantConverter.java"

# interfaces
.implements Lorg/joda/time/convert/InstantConverter;
.implements Lorg/joda/time/convert/PartialConverter;


# static fields
.field static final INSTANCE:Lorg/joda/time/convert/ReadableInstantConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lorg/joda/time/convert/ReadableInstantConverter;

    invoke-direct {v0}, Lorg/joda/time/convert/ReadableInstantConverter;-><init>()V

    sput-object v0, Lorg/joda/time/convert/ReadableInstantConverter;->INSTANCE:Lorg/joda/time/convert/ReadableInstantConverter;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/joda/time/convert/AbstractConverter;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public getChronology(Ljava/lang/Object;Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;
    .locals 1

    .prologue
    .line 83
    if-nez p2, :cond_0

    .line 84
    check-cast p1, Lorg/joda/time/ReadableInstant;

    invoke-interface {p1}, Lorg/joda/time/ReadableInstant;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    .line 85
    invoke-static {v0}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object p2

    .line 87
    :cond_0
    return-object p2
.end method

.method public getChronology(Ljava/lang/Object;Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;
    .locals 2

    .prologue
    .line 58
    check-cast p1, Lorg/joda/time/ReadableInstant;

    invoke-interface {p1}, Lorg/joda/time/ReadableInstant;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    .line 59
    if-nez v0, :cond_1

    .line 60
    invoke-static {p2}, Lorg/joda/time/chrono/ISOChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    .line 69
    :cond_0
    :goto_0
    return-object v0

    .line 62
    :cond_1
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v1

    .line 63
    if-eq v1, p2, :cond_0

    .line 64
    invoke-virtual {v0, p2}, Lorg/joda/time/Chronology;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object v0

    .line 65
    if-nez v0, :cond_0

    .line 66
    invoke-static {p2}, Lorg/joda/time/chrono/ISOChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    goto :goto_0
.end method

.method public getInstantMillis(Ljava/lang/Object;Lorg/joda/time/Chronology;)J
    .locals 2

    .prologue
    .line 100
    check-cast p1, Lorg/joda/time/ReadableInstant;

    invoke-interface {p1}, Lorg/joda/time/ReadableInstant;->getMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSupportedType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 110
    const-class v0, Lorg/joda/time/ReadableInstant;

    return-object v0
.end method
