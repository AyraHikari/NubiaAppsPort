.class Lorg/joda/time/format/InternalParserDateTimeParser;
.super Ljava/lang/Object;
.source "InternalParserDateTimeParser.java"

# interfaces
.implements Lorg/joda/time/format/DateTimeParser;
.implements Lorg/joda/time/format/InternalParser;


# instance fields
.field private final underlying:Lorg/joda/time/format/InternalParser;


# direct methods
.method private constructor <init>(Lorg/joda/time/format/InternalParser;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/joda/time/format/InternalParserDateTimeParser;->underlying:Lorg/joda/time/format/InternalParser;

    .line 44
    return-void
.end method

.method static of(Lorg/joda/time/format/InternalParser;)Lorg/joda/time/format/DateTimeParser;
    .locals 1

    .prologue
    .line 30
    instance-of v0, p0, Lorg/joda/time/format/DateTimeParserInternalParser;

    if-eqz v0, :cond_0

    .line 31
    check-cast p0, Lorg/joda/time/format/DateTimeParserInternalParser;

    invoke-virtual {p0}, Lorg/joda/time/format/DateTimeParserInternalParser;->getUnderlying()Lorg/joda/time/format/DateTimeParser;

    move-result-object p0

    .line 39
    :goto_0
    return-object p0

    .line 33
    :cond_0
    instance-of v0, p0, Lorg/joda/time/format/DateTimeParser;

    if-eqz v0, :cond_1

    .line 34
    check-cast p0, Lorg/joda/time/format/DateTimeParser;

    goto :goto_0

    .line 36
    :cond_1
    if-nez p0, :cond_2

    .line 37
    const/4 p0, 0x0

    goto :goto_0

    .line 39
    :cond_2
    new-instance v0, Lorg/joda/time/format/InternalParserDateTimeParser;

    invoke-direct {v0, p0}, Lorg/joda/time/format/InternalParserDateTimeParser;-><init>(Lorg/joda/time/format/InternalParser;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 62
    if-ne p1, p0, :cond_0

    .line 63
    const/4 v0, 0x1

    .line 69
    :goto_0
    return v0

    .line 65
    :cond_0
    instance-of v0, p1, Lorg/joda/time/format/InternalParserDateTimeParser;

    if-eqz v0, :cond_1

    .line 66
    check-cast p1, Lorg/joda/time/format/InternalParserDateTimeParser;

    .line 67
    iget-object v0, p0, Lorg/joda/time/format/InternalParserDateTimeParser;->underlying:Lorg/joda/time/format/InternalParser;

    iget-object v1, p1, Lorg/joda/time/format/InternalParserDateTimeParser;->underlying:Lorg/joda/time/format/InternalParser;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 69
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public estimateParsedLength()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/joda/time/format/InternalParserDateTimeParser;->underlying:Lorg/joda/time/format/InternalParser;

    invoke-interface {v0}, Lorg/joda/time/format/InternalParser;->estimateParsedLength()I

    move-result v0

    return v0
.end method

.method public parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/CharSequence;I)I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/joda/time/format/InternalParserDateTimeParser;->underlying:Lorg/joda/time/format/InternalParser;

    invoke-interface {v0, p1, p2, p3}, Lorg/joda/time/format/InternalParser;->parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/joda/time/format/InternalParserDateTimeParser;->underlying:Lorg/joda/time/format/InternalParser;

    invoke-interface {v0, p1, p2, p3}, Lorg/joda/time/format/InternalParser;->parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method
