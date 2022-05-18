.class final Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;
.super Ljava/lang/Object;
.source "DateTimeZoneBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/tz/DateTimeZoneBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfYear"
.end annotation


# instance fields
.field final iAdvance:Z

.field final iDayOfMonth:I

.field final iDayOfWeek:I

.field final iMillisOfDay:I

.field final iMode:C

.field final iMonthOfYear:I


# direct methods
.method constructor <init>(CIIIZI)V
    .locals 3

    .prologue
    .line 510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 511
    const/16 v0, 0x75

    if-eq p1, v0, :cond_0

    const/16 v0, 0x77

    if-eq p1, v0, :cond_0

    const/16 v0, 0x73

    if-eq p1, v0, :cond_0

    .line 512
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    :cond_0
    iput-char p1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMode:C

    .line 516
    iput p2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMonthOfYear:I

    .line 517
    iput p3, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iDayOfMonth:I

    .line 518
    iput p4, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iDayOfWeek:I

    .line 519
    iput-boolean p5, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iAdvance:Z

    .line 520
    iput p6, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMillisOfDay:I

    .line 521
    return-void
.end method

.method static readFrom(Ljava/io/DataInput;)Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 488
    new-instance v0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    int-to-char v1, v1

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v3

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v4

    invoke-interface {p0}, Ljava/io/DataInput;->readBoolean()Z

    move-result v5

    invoke-static {p0}, Lorg/joda/time/tz/DateTimeZoneBuilder;->readMillis(Ljava/io/DataInput;)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-direct/range {v0 .. v6}, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;-><init>(CIIIZI)V

    return-object v0
.end method

.method private setDayOfMonth(Lorg/joda/time/Chronology;J)J
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 710
    iget v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iDayOfMonth:I

    if-ltz v0, :cond_0

    .line 711
    invoke-virtual {p1}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v0

    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iDayOfMonth:I

    invoke-virtual {v0, p2, p3, v1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    .line 717
    :goto_0
    return-wide v0

    .line 713
    :cond_0
    invoke-virtual {p1}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p2, p3, v3}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    .line 714
    invoke-virtual {p1}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v3}, Lorg/joda/time/DateTimeField;->add(JI)J

    move-result-wide v0

    .line 715
    invoke-virtual {p1}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v2

    iget v3, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iDayOfMonth:I

    invoke-virtual {v2, v0, v1, v3}, Lorg/joda/time/DateTimeField;->add(JI)J

    move-result-wide v0

    goto :goto_0
.end method

.method private setDayOfMonthNext(Lorg/joda/time/Chronology;J)J
    .locals 4

    .prologue
    .line 676
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->setDayOfMonth(Lorg/joda/time/Chronology;J)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 687
    :goto_0
    return-wide v0

    .line 677
    :catch_0
    move-exception v0

    .line 678
    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMonthOfYear:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iDayOfMonth:I

    const/16 v2, 0x1d

    if-ne v1, v2, :cond_1

    .line 679
    :goto_1
    invoke-virtual {p1}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/joda/time/DateTimeField;->isLeap(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 680
    invoke-virtual {p1}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p3, v1}, Lorg/joda/time/DateTimeField;->add(JI)J

    move-result-wide p2

    goto :goto_1

    .line 682
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->setDayOfMonth(Lorg/joda/time/Chronology;J)J

    move-result-wide v0

    goto :goto_0

    .line 684
    :cond_1
    throw v0
.end method

.method private setDayOfMonthPrevious(Lorg/joda/time/Chronology;J)J
    .locals 4

    .prologue
    .line 695
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->setDayOfMonth(Lorg/joda/time/Chronology;J)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 706
    :goto_0
    return-wide v0

    .line 696
    :catch_0
    move-exception v0

    .line 697
    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMonthOfYear:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iDayOfMonth:I

    const/16 v2, 0x1d

    if-ne v1, v2, :cond_1

    .line 698
    :goto_1
    invoke-virtual {p1}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/joda/time/DateTimeField;->isLeap(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 699
    invoke-virtual {p1}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, p2, p3, v1}, Lorg/joda/time/DateTimeField;->add(JI)J

    move-result-wide p2

    goto :goto_1

    .line 701
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->setDayOfMonth(Lorg/joda/time/Chronology;J)J

    move-result-wide v0

    goto :goto_0

    .line 703
    :cond_1
    throw v0
.end method

.method private setDayOfWeek(Lorg/joda/time/Chronology;J)J
    .locals 2

    .prologue
    .line 721
    invoke-virtual {p1}, Lorg/joda/time/Chronology;->dayOfWeek()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    .line 722
    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iDayOfWeek:I

    sub-int v0, v1, v0

    .line 723
    if-eqz v0, :cond_1

    .line 724
    iget-boolean v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iAdvance:Z

    if-eqz v1, :cond_2

    .line 725
    if-gez v0, :cond_0

    .line 726
    add-int/lit8 v0, v0, 0x7

    .line 733
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/joda/time/Chronology;->dayOfWeek()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-virtual {v1, p2, p3, v0}, Lorg/joda/time/DateTimeField;->add(JI)J

    move-result-wide p2

    .line 735
    :cond_1
    return-wide p2

    .line 729
    :cond_2
    if-lez v0, :cond_0

    .line 730
    add-int/lit8 v0, v0, -0x7

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 635
    if-ne p0, p1, :cond_1

    .line 648
    :cond_0
    :goto_0
    return v0

    .line 638
    :cond_1
    instance-of v2, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;

    if-eqz v2, :cond_3

    .line 639
    check-cast p1, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;

    .line 640
    iget-char v2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMode:C

    iget-char v3, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMode:C

    if-ne v2, v3, :cond_2

    iget v2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMonthOfYear:I

    iget v3, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMonthOfYear:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iDayOfMonth:I

    iget v3, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iDayOfMonth:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iDayOfWeek:I

    iget v3, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iDayOfWeek:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iAdvance:Z

    iget-boolean v3, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iAdvance:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMillisOfDay:I

    iget v3, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMillisOfDay:I

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 648
    goto :goto_0
.end method

.method public next(JII)J
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 555
    iget-char v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMode:C

    const/16 v2, 0x77

    if-ne v1, v2, :cond_2

    .line 556
    add-int/2addr p3, p4

    .line 564
    :cond_0
    :goto_0
    int-to-long v2, p3

    add-long/2addr v2, p1

    .line 566
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v4

    .line 567
    invoke-virtual {v4}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v1

    iget v5, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMonthOfYear:I

    invoke-virtual {v1, v2, v3, v5}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v6

    .line 569
    invoke-virtual {v4}, Lorg/joda/time/Chronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-virtual {v1, v6, v7, v0}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    .line 570
    invoke-virtual {v4}, Lorg/joda/time/Chronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v5

    iget v6, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMillisOfDay:I

    invoke-virtual {v5, v0, v1, v6}, Lorg/joda/time/DateTimeField;->add(JI)J

    move-result-wide v0

    .line 571
    invoke-direct {p0, v4, v0, v1}, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->setDayOfMonthNext(Lorg/joda/time/Chronology;J)J

    move-result-wide v0

    .line 573
    iget v5, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iDayOfWeek:I

    if-nez v5, :cond_3

    .line 574
    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 575
    invoke-virtual {v4}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v8}, Lorg/joda/time/DateTimeField;->add(JI)J

    move-result-wide v0

    .line 576
    invoke-direct {p0, v4, v0, v1}, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->setDayOfMonthNext(Lorg/joda/time/Chronology;J)J

    move-result-wide v0

    .line 589
    :cond_1
    :goto_1
    int-to-long v2, p3

    sub-long/2addr v0, v2

    return-wide v0

    .line 557
    :cond_2
    iget-char v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMode:C

    const/16 v2, 0x73

    if-eq v1, v2, :cond_0

    move p3, v0

    .line 560
    goto :goto_0

    .line 579
    :cond_3
    invoke-direct {p0, v4, v0, v1}, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->setDayOfWeek(Lorg/joda/time/Chronology;J)J

    move-result-wide v0

    .line 580
    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 581
    invoke-virtual {v4}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v8}, Lorg/joda/time/DateTimeField;->add(JI)J

    move-result-wide v0

    .line 582
    invoke-virtual {v4}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v2

    iget v3, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMonthOfYear:I

    invoke-virtual {v2, v0, v1, v3}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    .line 583
    invoke-direct {p0, v4, v0, v1}, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->setDayOfMonthNext(Lorg/joda/time/Chronology;J)J

    move-result-wide v0

    .line 584
    invoke-direct {p0, v4, v0, v1}, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->setDayOfWeek(Lorg/joda/time/Chronology;J)J

    move-result-wide v0

    goto :goto_1
.end method

.method public previous(JII)J
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v8, -0x1

    .line 597
    iget-char v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMode:C

    const/16 v2, 0x77

    if-ne v1, v2, :cond_2

    .line 598
    add-int/2addr p3, p4

    .line 606
    :cond_0
    :goto_0
    int-to-long v2, p3

    add-long/2addr v2, p1

    .line 608
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v4

    .line 609
    invoke-virtual {v4}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v1

    iget v5, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMonthOfYear:I

    invoke-virtual {v1, v2, v3, v5}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v6

    .line 611
    invoke-virtual {v4}, Lorg/joda/time/Chronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-virtual {v1, v6, v7, v0}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    .line 612
    invoke-virtual {v4}, Lorg/joda/time/Chronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v5

    iget v6, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMillisOfDay:I

    invoke-virtual {v5, v0, v1, v6}, Lorg/joda/time/DateTimeField;->add(JI)J

    move-result-wide v0

    .line 613
    invoke-direct {p0, v4, v0, v1}, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->setDayOfMonthPrevious(Lorg/joda/time/Chronology;J)J

    move-result-wide v0

    .line 615
    iget v5, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iDayOfWeek:I

    if-nez v5, :cond_3

    .line 616
    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 617
    invoke-virtual {v4}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v8}, Lorg/joda/time/DateTimeField;->add(JI)J

    move-result-wide v0

    .line 618
    invoke-direct {p0, v4, v0, v1}, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->setDayOfMonthPrevious(Lorg/joda/time/Chronology;J)J

    move-result-wide v0

    .line 631
    :cond_1
    :goto_1
    int-to-long v2, p3

    sub-long/2addr v0, v2

    return-wide v0

    .line 599
    :cond_2
    iget-char v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMode:C

    const/16 v2, 0x73

    if-eq v1, v2, :cond_0

    move p3, v0

    .line 602
    goto :goto_0

    .line 621
    :cond_3
    invoke-direct {p0, v4, v0, v1}, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->setDayOfWeek(Lorg/joda/time/Chronology;J)J

    move-result-wide v0

    .line 622
    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 623
    invoke-virtual {v4}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v8}, Lorg/joda/time/DateTimeField;->add(JI)J

    move-result-wide v0

    .line 624
    invoke-virtual {v4}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v2

    iget v3, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMonthOfYear:I

    invoke-virtual {v2, v0, v1, v3}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    .line 625
    invoke-direct {p0, v4, v0, v1}, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->setDayOfMonthPrevious(Lorg/joda/time/Chronology;J)J

    move-result-wide v0

    .line 626
    invoke-direct {p0, v4, v0, v1}, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->setDayOfWeek(Lorg/joda/time/Chronology;J)J

    move-result-wide v0

    goto :goto_1
.end method

.method public setInstant(III)J
    .locals 6

    .prologue
    .line 528
    iget-char v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMode:C

    const/16 v1, 0x77

    if-ne v0, v1, :cond_2

    .line 529
    add-int/2addr p2, p3

    .line 536
    :cond_0
    :goto_0
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v2

    .line 537
    invoke-virtual {v2}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    .line 538
    invoke-virtual {v2}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v3

    iget v4, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMonthOfYear:I

    invoke-virtual {v3, v0, v1, v4}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    .line 539
    invoke-virtual {v2}, Lorg/joda/time/Chronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v3

    iget v4, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMillisOfDay:I

    invoke-virtual {v3, v0, v1, v4}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    .line 540
    invoke-direct {p0, v2, v0, v1}, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->setDayOfMonth(Lorg/joda/time/Chronology;J)J

    move-result-wide v0

    .line 542
    iget v3, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iDayOfWeek:I

    if-eqz v3, :cond_1

    .line 543
    invoke-direct {p0, v2, v0, v1}, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->setDayOfWeek(Lorg/joda/time/Chronology;J)J

    move-result-wide v0

    .line 547
    :cond_1
    int-to-long v2, p2

    sub-long/2addr v0, v2

    return-wide v0

    .line 530
    :cond_2
    iget-char v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMode:C

    const/16 v1, 0x73

    if-eq v0, v1, :cond_0

    .line 533
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OfYear]\nMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMode:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MonthOfYear: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMonthOfYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DayOfMonth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iDayOfMonth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DayOfWeek: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iDayOfWeek:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AdvanceDayOfWeek: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iAdvance:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MillisOfDay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMillisOfDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/io/DataOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 663
    iget-char v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMode:C

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 664
    iget v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMonthOfYear:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 665
    iget v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iDayOfMonth:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 666
    iget v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iDayOfWeek:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 667
    iget-boolean v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iAdvance:Z

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 668
    iget v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->iMillisOfDay:I

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lorg/joda/time/tz/DateTimeZoneBuilder;->writeMillis(Ljava/io/DataOutput;J)V

    .line 669
    return-void
.end method
