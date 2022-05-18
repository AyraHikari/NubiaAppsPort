.class Lorg/joda/time/convert/ReadablePartialConverter;
.super Lorg/joda/time/convert/AbstractConverter;
.source "ReadablePartialConverter.java"

# interfaces
.implements Lorg/joda/time/convert/PartialConverter;


# static fields
.field static final INSTANCE:Lorg/joda/time/convert/ReadablePartialConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lorg/joda/time/convert/ReadablePartialConverter;

    invoke-direct {v0}, Lorg/joda/time/convert/ReadablePartialConverter;-><init>()V

    sput-object v0, Lorg/joda/time/convert/ReadablePartialConverter;->INSTANCE:Lorg/joda/time/convert/ReadablePartialConverter;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/joda/time/convert/AbstractConverter;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public getChronology(Ljava/lang/Object;Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;
    .locals 1

    .prologue
    .line 67
    if-nez p2, :cond_0

    .line 68
    check-cast p1, Lorg/joda/time/ReadablePartial;

    invoke-interface {p1}, Lorg/joda/time/ReadablePartial;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    .line 69
    invoke-static {v0}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object p2

    .line 71
    :cond_0
    return-object p2
.end method

.method public getChronology(Ljava/lang/Object;Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    check-cast v0, Lorg/joda/time/Chronology;

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/convert/ReadablePartialConverter;->getChronology(Ljava/lang/Object;Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/joda/time/Chronology;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object v0

    return-object v0
.end method

.method public getPartialValues(Lorg/joda/time/ReadablePartial;Ljava/lang/Object;Lorg/joda/time/Chronology;)[I
    .locals 4

    .prologue
    .line 87
    check-cast p2, Lorg/joda/time/ReadablePartial;

    .line 88
    invoke-interface {p1}, Lorg/joda/time/ReadablePartial;->size()I

    move-result v1

    .line 89
    new-array v2, v1, [I

    .line 90
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 91
    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePartial;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v3

    invoke-interface {p2, v3}, Lorg/joda/time/ReadablePartial;->get(Lorg/joda/time/DateTimeFieldType;)I

    move-result v3

    aput v3, v2, v0

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p3, p1, v2}, Lorg/joda/time/Chronology;->validate(Lorg/joda/time/ReadablePartial;[I)V

    .line 94
    return-object v2
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
    .line 104
    const-class v0, Lorg/joda/time/ReadablePartial;

    return-object v0
.end method
