.class Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;
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
    name = "TwoDigitYear"
.end annotation


# instance fields
.field private final iLenientParse:Z

.field private final iPivot:I

.field private final iType:Lorg/joda/time/DateTimeFieldType;


# direct methods
.method constructor <init>(Lorg/joda/time/DateTimeFieldType;IZ)V
    .locals 0

    .prologue
    .line 1492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1493
    iput-object p1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->iType:Lorg/joda/time/DateTimeFieldType;

    .line 1494
    iput p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->iPivot:I

    .line 1495
    iput-boolean p3, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->iLenientParse:Z

    .line 1496
    return-void
.end method

.method private getTwoDigitYear(JLorg/joda/time/Chronology;)I
    .locals 1

    .prologue
    .line 1619
    :try_start_0
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->iType:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v0, p3}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    .line 1620
    if-gez v0, :cond_0

    .line 1621
    neg-int v0, v0

    .line 1623
    :cond_0
    rem-int/lit8 v0, v0, 0x64
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1625
    :goto_0
    return v0

    .line 1624
    :catch_0
    move-exception v0

    .line 1625
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getTwoDigitYear(Lorg/joda/time/ReadablePartial;)I
    .locals 1

    .prologue
    .line 1640
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->iType:Lorg/joda/time/DateTimeFieldType;

    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePartial;->isSupported(Lorg/joda/time/DateTimeFieldType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1642
    :try_start_0
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->iType:Lorg/joda/time/DateTimeFieldType;

    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePartial;->get(Lorg/joda/time/DateTimeFieldType;)I

    move-result v0

    .line 1643
    if-gez v0, :cond_0

    .line 1644
    neg-int v0, v0

    .line 1646
    :cond_0
    rem-int/lit8 v0, v0, 0x64
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1649
    :goto_0
    return v0

    .line 1647
    :catch_0
    move-exception v0

    .line 1649
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public estimateParsedLength()I
    .locals 1

    .prologue
    .line 1499
    iget-boolean v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->iLenientParse:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public estimatePrintedLength()I
    .locals 1

    .prologue
    .line 1602
    const/4 v0, 0x2

    return v0
.end method

.method public parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/CharSequence;I)I
    .locals 12

    .prologue
    const/4 v2, 0x1

    const/16 v10, 0x39

    const/16 v9, 0x30

    const/4 v8, 0x2

    const/4 v0, 0x0

    .line 1503
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p3

    .line 1505
    iget-boolean v3, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->iLenientParse:Z

    if-nez v3, :cond_0

    .line 1506
    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1507
    if-ge v1, v8, :cond_c

    .line 1508
    xor-int/lit8 v1, p3, -0x1

    .line 1598
    :goto_0
    return v1

    :cond_0
    move v3, v0

    move v4, v0

    move v5, v0

    move v6, v1

    .line 1514
    :goto_1
    if-ge v3, v6, :cond_5

    .line 1515
    add-int v1, p3, v3

    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1516
    if-nez v3, :cond_4

    const/16 v7, 0x2d

    if-eq v1, v7, :cond_1

    const/16 v7, 0x2b

    if-ne v1, v7, :cond_4

    .line 1518
    :cond_1
    const/16 v4, 0x2d

    if-ne v1, v4, :cond_2

    move v1, v2

    .line 1519
    :goto_2
    if-eqz v1, :cond_3

    .line 1520
    add-int/lit8 v3, v3, 0x1

    move v4, v1

    move v5, v2

    goto :goto_1

    :cond_2
    move v1, v0

    .line 1518
    goto :goto_2

    .line 1523
    :cond_3
    add-int/lit8 p3, p3, 0x1

    .line 1524
    add-int/lit8 v4, v6, -0x1

    move v5, v2

    move v6, v4

    move v4, v1

    .line 1526
    goto :goto_1

    .line 1528
    :cond_4
    if-lt v1, v9, :cond_5

    if-le v1, v10, :cond_6

    .line 1534
    :cond_5
    if-nez v3, :cond_7

    .line 1535
    xor-int/lit8 v1, p3, -0x1

    goto :goto_0

    .line 1531
    :cond_6
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    .line 1532
    goto :goto_1

    .line 1538
    :cond_7
    if-nez v5, :cond_8

    if-eq v3, v8, :cond_c

    .line 1540
    :cond_8
    const/16 v0, 0x9

    if-lt v3, v0, :cond_a

    .line 1543
    add-int v1, p3, v3

    invoke-interface {p2, p3, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1563
    :cond_9
    :goto_3
    iget-object v2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->iType:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {p1, v2, v0}, Lorg/joda/time/format/DateTimeParserBucket;->saveField(Lorg/joda/time/DateTimeFieldType;I)V

    goto :goto_0

    .line 1546
    :cond_a
    if-eqz v4, :cond_14

    .line 1547
    add-int/lit8 v0, p3, 0x1

    move v1, v0

    .line 1550
    :goto_4
    add-int/lit8 v0, v1, 0x1

    :try_start_0
    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    add-int/lit8 v2, v1, -0x30

    .line 1554
    add-int v1, p3, v3

    move v11, v0

    move v0, v2

    move v2, v11

    .line 1555
    :goto_5
    if-ge v2, v1, :cond_b

    .line 1556
    shl-int/lit8 v3, v0, 0x3

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x30

    move v11, v0

    move v0, v2

    move v2, v11

    goto :goto_5

    .line 1551
    :catch_0
    move-exception v0

    .line 1552
    xor-int/lit8 v1, p3, -0x1

    goto :goto_0

    .line 1558
    :cond_b
    if-eqz v4, :cond_9

    .line 1559
    neg-int v0, v0

    goto :goto_3

    .line 1569
    :cond_c
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1570
    if-lt v1, v9, :cond_d

    if-le v1, v10, :cond_e

    .line 1571
    :cond_d
    xor-int/lit8 v1, p3, -0x1

    goto/16 :goto_0

    .line 1573
    :cond_e
    add-int/lit8 v1, v1, -0x30

    .line 1574
    add-int/lit8 v2, p3, 0x1

    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 1575
    if-lt v2, v9, :cond_f

    if-le v2, v10, :cond_10

    .line 1576
    :cond_f
    xor-int/lit8 v1, p3, -0x1

    goto/16 :goto_0

    .line 1578
    :cond_10
    shl-int/lit8 v3, v1, 0x3

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v3

    add-int/2addr v1, v2

    add-int/lit8 v2, v1, -0x30

    .line 1580
    iget v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->iPivot:I

    .line 1582
    invoke-virtual {p1}, Lorg/joda/time/format/DateTimeParserBucket;->getPivotYear()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 1583
    invoke-virtual {p1}, Lorg/joda/time/format/DateTimeParserBucket;->getPivotYear()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1586
    :cond_11
    add-int/lit8 v3, v1, -0x32

    .line 1589
    if-ltz v3, :cond_13

    .line 1590
    rem-int/lit8 v1, v3, 0x64

    .line 1595
    :goto_6
    if-ge v2, v1, :cond_12

    const/16 v0, 0x64

    :cond_12
    add-int/2addr v0, v3

    sub-int/2addr v0, v1

    add-int/2addr v0, v2

    .line 1597
    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->iType:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {p1, v1, v0}, Lorg/joda/time/format/DateTimeParserBucket;->saveField(Lorg/joda/time/DateTimeFieldType;I)V

    .line 1598
    add-int/lit8 v1, p3, 0x2

    goto/16 :goto_0

    .line 1592
    :cond_13
    add-int/lit8 v1, v3, 0x1

    rem-int/lit8 v1, v1, 0x64

    add-int/lit8 v1, v1, 0x63

    goto :goto_6

    :cond_14
    move v1, p3

    goto :goto_4
.end method

.method public printTo(Ljava/lang/Appendable;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v1, 0xfffd

    .line 1608
    invoke-direct {p0, p2, p3, p4}, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->getTwoDigitYear(JLorg/joda/time/Chronology;)I

    move-result v0

    .line 1609
    if-gez v0, :cond_0

    .line 1610
    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1611
    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1615
    :goto_0
    return-void

    .line 1613
    :cond_0
    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Lorg/joda/time/format/FormatUtils;->appendPaddedInteger(Ljava/lang/Appendable;II)V

    goto :goto_0
.end method

.method public printTo(Ljava/lang/Appendable;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v1, 0xfffd

    .line 1630
    invoke-direct {p0, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->getTwoDigitYear(Lorg/joda/time/ReadablePartial;)I

    move-result v0

    .line 1631
    if-gez v0, :cond_0

    .line 1632
    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1633
    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1637
    :goto_0
    return-void

    .line 1635
    :cond_0
    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Lorg/joda/time/format/FormatUtils;->appendPaddedInteger(Ljava/lang/Appendable;II)V

    goto :goto_0
.end method
