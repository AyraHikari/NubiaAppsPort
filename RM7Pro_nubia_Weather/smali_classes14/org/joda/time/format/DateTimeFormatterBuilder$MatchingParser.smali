.class Lorg/joda/time/format/DateTimeFormatterBuilder$MatchingParser;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lorg/joda/time/format/InternalParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MatchingParser"
.end annotation


# instance fields
.field private final iParsedLengthEstimate:I

.field private final iParsers:[Lorg/joda/time/format/InternalParser;


# direct methods
.method constructor <init>([Lorg/joda/time/format/InternalParser;)V
    .locals 3

    .prologue
    .line 2569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2570
    iput-object p1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$MatchingParser;->iParsers:[Lorg/joda/time/format/InternalParser;

    .line 2571
    const/4 v1, 0x0

    .line 2572
    array-length v0, p1

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-ltz v2, :cond_0

    .line 2573
    aget-object v0, p1, v2

    .line 2574
    if-eqz v0, :cond_1

    .line 2575
    invoke-interface {v0}, Lorg/joda/time/format/InternalParser;->estimateParsedLength()I

    move-result v0

    .line 2576
    if-le v0, v1, :cond_1

    :goto_1
    move v1, v0

    move v0, v2

    .line 2580
    goto :goto_0

    .line 2581
    :cond_0
    iput v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$MatchingParser;->iParsedLengthEstimate:I

    .line 2582
    return-void

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public estimateParsedLength()I
    .locals 1

    .prologue
    .line 2585
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$MatchingParser;->iParsedLengthEstimate:I

    return v0
.end method

.method public parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/CharSequence;I)I
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 2589
    iget-object v7, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$MatchingParser;->iParsers:[Lorg/joda/time/format/InternalParser;

    .line 2590
    array-length v8, v7

    .line 2592
    invoke-virtual {p1}, Lorg/joda/time/format/DateTimeParserBucket;->saveState()Ljava/lang/Object;

    move-result-object v9

    .line 2596
    const/4 v2, 0x0

    move v6, v5

    move v0, p3

    move v4, p3

    .line 2600
    :goto_0
    if-ge v6, v8, :cond_9

    .line 2601
    aget-object v1, v7, v6

    .line 2602
    if-nez v1, :cond_3

    .line 2604
    if-gt v4, p3, :cond_0

    .line 2642
    :goto_1
    return p3

    .line 2607
    :cond_0
    const/4 v1, 0x1

    .line 2634
    :goto_2
    if-gt v4, p3, :cond_1

    if-ne v4, p3, :cond_7

    if-eqz v1, :cond_7

    .line 2636
    :cond_1
    if-eqz v2, :cond_2

    .line 2637
    invoke-virtual {p1, v2}, Lorg/joda/time/format/DateTimeParserBucket;->restoreState(Ljava/lang/Object;)Z

    :cond_2
    move p3, v4

    .line 2639
    goto :goto_1

    .line 2610
    :cond_3
    invoke-interface {v1, p1, p2, p3}, Lorg/joda/time/format/InternalParser;->parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/CharSequence;I)I

    move-result v3

    .line 2611
    if-lt v3, p3, :cond_6

    .line 2612
    if-le v3, v4, :cond_8

    .line 2613
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v3, v1, :cond_4

    add-int/lit8 v1, v6, 0x1

    if-ge v1, v8, :cond_4

    add-int/lit8 v1, v6, 0x1

    aget-object v1, v7, v1

    if-nez v1, :cond_5

    :cond_4
    move p3, v3

    .line 2618
    goto :goto_1

    .line 2621
    :cond_5
    invoke-virtual {p1}, Lorg/joda/time/format/DateTimeParserBucket;->saveState()Ljava/lang/Object;

    move-result-object v1

    move v2, v3

    .line 2631
    :goto_3
    invoke-virtual {p1, v9}, Lorg/joda/time/format/DateTimeParserBucket;->restoreState(Ljava/lang/Object;)Z

    .line 2600
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move v4, v2

    move-object v2, v1

    goto :goto_0

    .line 2624
    :cond_6
    if-gez v3, :cond_8

    .line 2625
    xor-int/lit8 v1, v3, -0x1

    .line 2626
    if-le v1, v0, :cond_8

    move v0, v1

    move-object v1, v2

    move v2, v4

    .line 2627
    goto :goto_3

    .line 2642
    :cond_7
    xor-int/lit8 p3, v0, -0x1

    goto :goto_1

    :cond_8
    move-object v1, v2

    move v2, v4

    goto :goto_3

    :cond_9
    move v1, v5

    goto :goto_2
.end method
