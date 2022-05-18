.class Lorg/joda/time/convert/ReadablePeriodConverter;
.super Lorg/joda/time/convert/AbstractConverter;
.source "ReadablePeriodConverter.java"

# interfaces
.implements Lorg/joda/time/convert/PeriodConverter;


# static fields
.field static final INSTANCE:Lorg/joda/time/convert/ReadablePeriodConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lorg/joda/time/convert/ReadablePeriodConverter;

    invoke-direct {v0}, Lorg/joda/time/convert/ReadablePeriodConverter;-><init>()V

    sput-object v0, Lorg/joda/time/convert/ReadablePeriodConverter;->INSTANCE:Lorg/joda/time/convert/ReadablePeriodConverter;

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
.method public getPeriodType(Ljava/lang/Object;)Lorg/joda/time/PeriodType;
    .locals 1

    .prologue
    .line 70
    check-cast p1, Lorg/joda/time/ReadablePeriod;

    .line 71
    invoke-interface {p1}, Lorg/joda/time/ReadablePeriod;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v0

    return-object v0
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
    .line 81
    const-class v0, Lorg/joda/time/ReadablePeriod;

    return-object v0
.end method

.method public setInto(Lorg/joda/time/ReadWritablePeriod;Ljava/lang/Object;Lorg/joda/time/Chronology;)V
    .locals 0

    .prologue
    .line 58
    check-cast p2, Lorg/joda/time/ReadablePeriod;

    invoke-interface {p1, p2}, Lorg/joda/time/ReadWritablePeriod;->setPeriod(Lorg/joda/time/ReadablePeriod;)V

    .line 59
    return-void
.end method
