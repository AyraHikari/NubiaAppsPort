.class Lorg/joda/time/format/DateTimeParserInternalParser;
.super Ljava/lang/Object;
.source "DateTimeParserInternalParser.java"

# interfaces
.implements Lorg/joda/time/format/InternalParser;


# instance fields
.field private final underlying:Lorg/joda/time/format/DateTimeParser;


# direct methods
.method private constructor <init>(Lorg/joda/time/format/DateTimeParser;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/joda/time/format/DateTimeParserInternalParser;->underlying:Lorg/joda/time/format/DateTimeParser;

    .line 40
    return-void
.end method

.method static of(Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/InternalParser;
    .locals 1

    .prologue
    .line 29
    instance-of v0, p0, Lorg/joda/time/format/InternalParserDateTimeParser;

    if-eqz v0, :cond_0

    .line 30
    check-cast p0, Lorg/joda/time/format/InternalParser;

    .line 35
    :goto_0
    return-object p0

    .line 32
    :cond_0
    if-nez p0, :cond_1

    .line 33
    const/4 p0, 0x0

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lorg/joda/time/format/DateTimeParserInternalParser;

    invoke-direct {v0, p0}, Lorg/joda/time/format/DateTimeParserInternalParser;-><init>(Lorg/joda/time/format/DateTimeParser;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public estimateParsedLength()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserInternalParser;->underlying:Lorg/joda/time/format/DateTimeParser;

    invoke-interface {v0}, Lorg/joda/time/format/DateTimeParser;->estimateParsedLength()I

    move-result v0

    return v0
.end method

.method getUnderlying()Lorg/joda/time/format/DateTimeParser;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserInternalParser;->underlying:Lorg/joda/time/format/DateTimeParser;

    return-object v0
.end method

.method public parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/CharSequence;I)I
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserInternalParser;->underlying:Lorg/joda/time/format/DateTimeParser;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p3}, Lorg/joda/time/format/DateTimeParser;->parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
