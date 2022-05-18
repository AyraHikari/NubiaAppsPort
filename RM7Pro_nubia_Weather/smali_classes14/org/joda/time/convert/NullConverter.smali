.class Lorg/joda/time/convert/NullConverter;
.super Lorg/joda/time/convert/AbstractConverter;
.source "NullConverter.java"

# interfaces
.implements Lorg/joda/time/convert/InstantConverter;
.implements Lorg/joda/time/convert/PartialConverter;
.implements Lorg/joda/time/convert/DurationConverter;
.implements Lorg/joda/time/convert/PeriodConverter;
.implements Lorg/joda/time/convert/IntervalConverter;


# static fields
.field static final INSTANCE:Lorg/joda/time/convert/NullConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lorg/joda/time/convert/NullConverter;

    invoke-direct {v0}, Lorg/joda/time/convert/NullConverter;-><init>()V

    sput-object v0, Lorg/joda/time/convert/NullConverter;->INSTANCE:Lorg/joda/time/convert/NullConverter;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/joda/time/convert/AbstractConverter;-><init>()V

    .line 46
    return-void
.end method


# virtual methods
.method public getDurationMillis(Ljava/lang/Object;)J
    .locals 2

    .prologue
    .line 56
    const-wide/16 v0, 0x0

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
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public setInto(Lorg/joda/time/ReadWritableInterval;Ljava/lang/Object;Lorg/joda/time/Chronology;)V
    .locals 2

    .prologue
    .line 83
    invoke-interface {p1, p3}, Lorg/joda/time/ReadWritableInterval;->setChronology(Lorg/joda/time/Chronology;)V

    .line 84
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v0

    .line 85
    invoke-interface {p1, v0, v1, v0, v1}, Lorg/joda/time/ReadWritableInterval;->setInterval(JJ)V

    .line 86
    return-void
.end method

.method public setInto(Lorg/joda/time/ReadWritablePeriod;Ljava/lang/Object;Lorg/joda/time/Chronology;)V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    check-cast v0, Lorg/joda/time/Period;

    invoke-interface {p1, v0}, Lorg/joda/time/ReadWritablePeriod;->setPeriod(Lorg/joda/time/ReadablePeriod;)V

    .line 70
    return-void
.end method
