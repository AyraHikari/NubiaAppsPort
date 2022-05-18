.class Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lorg/joda/time/format/InternalPrinter;
.implements Lorg/joda/time/format/InternalParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Composite"
.end annotation


# instance fields
.field private final iParsedLengthEstimate:I

.field private final iParsers:[Lorg/joda/time/format/InternalParser;

.field private final iPrintedLengthEstimate:I

.field private final iPrinters:[Lorg/joda/time/format/InternalPrinter;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 2426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2428
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2429
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2431
    invoke-direct {p0, p1, v4, v5}, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->decompose(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 2433
    invoke-interface {v4, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2434
    :cond_0
    iput-object v8, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iPrinters:[Lorg/joda/time/format/InternalPrinter;

    .line 2435
    iput v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iPrintedLengthEstimate:I

    .line 2448
    :goto_0
    invoke-interface {v5, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2449
    :cond_1
    iput-object v8, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iParsers:[Lorg/joda/time/format/InternalParser;

    .line 2450
    iput v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iParsedLengthEstimate:I

    .line 2462
    :goto_1
    return-void

    .line 2437
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    .line 2438
    new-array v0, v6, [Lorg/joda/time/format/InternalPrinter;

    iput-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iPrinters:[Lorg/joda/time/format/InternalPrinter;

    move v2, v1

    move v3, v1

    .line 2440
    :goto_2
    if-ge v2, v6, :cond_3

    .line 2441
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/format/InternalPrinter;

    .line 2442
    invoke-interface {v0}, Lorg/joda/time/format/InternalPrinter;->estimatePrintedLength()I

    move-result v7

    add-int/2addr v3, v7

    .line 2443
    iget-object v7, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iPrinters:[Lorg/joda/time/format/InternalPrinter;

    aput-object v0, v7, v2

    .line 2440
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 2445
    :cond_3
    iput v3, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iPrintedLengthEstimate:I

    goto :goto_0

    .line 2452
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 2453
    new-array v0, v3, [Lorg/joda/time/format/InternalParser;

    iput-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iParsers:[Lorg/joda/time/format/InternalParser;

    move v2, v1

    .line 2455
    :goto_3
    if-ge v1, v3, :cond_5

    .line 2456
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/format/InternalParser;

    .line 2457
    invoke-interface {v0}, Lorg/joda/time/format/InternalParser;->estimateParsedLength()I

    move-result v4

    add-int/2addr v2, v4

    .line 2458
    iget-object v4, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iParsers:[Lorg/joda/time/format/InternalParser;

    aput-object v0, v4, v1

    .line 2455
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 2460
    :cond_5
    iput v2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iParsedLengthEstimate:I

    goto :goto_1
.end method

.method private addArrayToList(Ljava/util/List;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2553
    if-eqz p2, :cond_0

    .line 2554
    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 2555
    aget-object v1, p2, v0

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2554
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2558
    :cond_0
    return-void
.end method

.method private decompose(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2534
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 2535
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 2536
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2537
    instance-of v3, v0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;

    if-eqz v3, :cond_0

    .line 2538
    check-cast v0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;

    iget-object v0, v0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iPrinters:[Lorg/joda/time/format/InternalPrinter;

    invoke-direct {p0, p2, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->addArrayToList(Ljava/util/List;[Ljava/lang/Object;)V

    .line 2543
    :goto_1
    add-int/lit8 v0, v1, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2544
    instance-of v3, v0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;

    if-eqz v3, :cond_1

    .line 2545
    check-cast v0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;

    iget-object v0, v0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iParsers:[Lorg/joda/time/format/InternalParser;

    invoke-direct {p0, p3, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->addArrayToList(Ljava/util/List;[Ljava/lang/Object;)V

    .line 2535
    :goto_2
    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_0

    .line 2540
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2547
    :cond_1
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2550
    :cond_2
    return-void
.end method


# virtual methods
.method public estimateParsedLength()I
    .locals 1

    .prologue
    .line 2505
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iParsedLengthEstimate:I

    return v0
.end method

.method public estimatePrintedLength()I
    .locals 1

    .prologue
    .line 2465
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iPrintedLengthEstimate:I

    return v0
.end method

.method isParser()Z
    .locals 1

    .prologue
    .line 2526
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iParsers:[Lorg/joda/time/format/InternalParser;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPrinter()Z
    .locals 1

    .prologue
    .line 2522
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iPrinters:[Lorg/joda/time/format/InternalPrinter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/CharSequence;I)I
    .locals 4

    .prologue
    .line 2509
    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iParsers:[Lorg/joda/time/format/InternalParser;

    .line 2510
    if-nez v1, :cond_0

    .line 2511
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2514
    :cond_0
    array-length v2, v1

    .line 2515
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    if-ltz p3, :cond_1

    .line 2516
    aget-object v3, v1, v0

    invoke-interface {v3, p1, p2, p3}, Lorg/joda/time/format/InternalParser;->parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/CharSequence;I)I

    move-result p3

    .line 2515
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2518
    :cond_1
    return p3
.end method

.method public printTo(Ljava/lang/Appendable;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2471
    iget-object v9, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iPrinters:[Lorg/joda/time/format/InternalPrinter;

    .line 2472
    if-nez v9, :cond_0

    .line 2473
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2476
    :cond_0
    if-nez p7, :cond_2

    .line 2478
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    .line 2481
    :goto_0
    array-length v10, v9

    .line 2482
    const/4 v0, 0x0

    move v8, v0

    :goto_1
    if-ge v8, v10, :cond_1

    .line 2483
    aget-object v0, v9, v8

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-interface/range {v0 .. v7}, Lorg/joda/time/format/InternalPrinter;->printTo(Ljava/lang/Appendable;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V

    .line 2482
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    .line 2485
    :cond_1
    return-void

    :cond_2
    move-object/from16 v7, p7

    goto :goto_0
.end method

.method public printTo(Ljava/lang/Appendable;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2488
    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iPrinters:[Lorg/joda/time/format/InternalPrinter;

    .line 2489
    if-nez v1, :cond_0

    .line 2490
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2493
    :cond_0
    if-nez p3, :cond_1

    .line 2495
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    .line 2498
    :cond_1
    array-length v2, v1

    .line 2499
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    .line 2500
    aget-object v3, v1, v0

    invoke-interface {v3, p1, p2, p3}, Lorg/joda/time/format/InternalPrinter;->printTo(Ljava/lang/Appendable;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V

    .line 2499
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2502
    :cond_2
    return-void
.end method
