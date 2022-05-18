.class public Lorg/joda/time/format/DateTimeFormatter;
.super Ljava/lang/Object;
.source "DateTimeFormatter.java"


# instance fields
.field private final iChrono:Lorg/joda/time/Chronology;

.field private final iDefaultYear:I

.field private final iLocale:Ljava/util/Locale;

.field private final iOffsetParsed:Z

.field private final iParser:Lorg/joda/time/format/InternalParser;

.field private final iPivotYear:Ljava/lang/Integer;

.field private final iPrinter:Lorg/joda/time/format/InternalPrinter;

.field private final iZone:Lorg/joda/time/DateTimeZone;


# direct methods
.method public constructor <init>(Lorg/joda/time/format/DateTimePrinter;Lorg/joda/time/format/DateTimeParser;)V
    .locals 2

    .prologue
    .line 118
    invoke-static {p1}, Lorg/joda/time/format/DateTimePrinterInternalPrinter;->of(Lorg/joda/time/format/DateTimePrinter;)Lorg/joda/time/format/InternalPrinter;

    move-result-object v0

    invoke-static {p2}, Lorg/joda/time/format/DateTimeParserInternalParser;->of(Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/InternalParser;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/joda/time/format/DateTimeFormatter;-><init>(Lorg/joda/time/format/InternalPrinter;Lorg/joda/time/format/InternalParser;)V

    .line 119
    return-void
.end method

.method constructor <init>(Lorg/joda/time/format/InternalPrinter;Lorg/joda/time/format/InternalParser;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lorg/joda/time/format/DateTimeFormatter;->iPrinter:Lorg/joda/time/format/InternalPrinter;

    .line 132
    iput-object p2, p0, Lorg/joda/time/format/DateTimeFormatter;->iParser:Lorg/joda/time/format/InternalParser;

    .line 133
    iput-object v1, p0, Lorg/joda/time/format/DateTimeFormatter;->iLocale:Ljava/util/Locale;

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/joda/time/format/DateTimeFormatter;->iOffsetParsed:Z

    .line 135
    iput-object v1, p0, Lorg/joda/time/format/DateTimeFormatter;->iChrono:Lorg/joda/time/Chronology;

    .line 136
    iput-object v1, p0, Lorg/joda/time/format/DateTimeFormatter;->iZone:Lorg/joda/time/DateTimeZone;

    .line 137
    iput-object v1, p0, Lorg/joda/time/format/DateTimeFormatter;->iPivotYear:Ljava/lang/Integer;

    .line 138
    const/16 v0, 0x7d0

    iput v0, p0, Lorg/joda/time/format/DateTimeFormatter;->iDefaultYear:I

    .line 139
    return-void
.end method

.method private constructor <init>(Lorg/joda/time/format/InternalPrinter;Lorg/joda/time/format/InternalParser;Ljava/util/Locale;ZLorg/joda/time/Chronology;Lorg/joda/time/DateTimeZone;Ljava/lang/Integer;I)V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Lorg/joda/time/format/DateTimeFormatter;->iPrinter:Lorg/joda/time/format/InternalPrinter;

    .line 151
    iput-object p2, p0, Lorg/joda/time/format/DateTimeFormatter;->iParser:Lorg/joda/time/format/InternalParser;

    .line 152
    iput-object p3, p0, Lorg/joda/time/format/DateTimeFormatter;->iLocale:Ljava/util/Locale;

    .line 153
    iput-boolean p4, p0, Lorg/joda/time/format/DateTimeFormatter;->iOffsetParsed:Z

    .line 154
    iput-object p5, p0, Lorg/joda/time/format/DateTimeFormatter;->iChrono:Lorg/joda/time/Chronology;

    .line 155
    iput-object p6, p0, Lorg/joda/time/format/DateTimeFormatter;->iZone:Lorg/joda/time/DateTimeZone;

    .line 156
    iput-object p7, p0, Lorg/joda/time/format/DateTimeFormatter;->iPivotYear:Ljava/lang/Integer;

    .line 157
    iput p8, p0, Lorg/joda/time/format/DateTimeFormatter;->iDefaultYear:I

    .line 158
    return-void
.end method

.method private printTo(Ljava/lang/Appendable;JLorg/joda/time/Chronology;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 717
    invoke-direct {p0}, Lorg/joda/time/format/DateTimeFormatter;->requirePrinter()Lorg/joda/time/format/InternalPrinter;

    move-result-object v2

    .line 718
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatter;->selectChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v3

    .line 721
    invoke-virtual {v3}, Lorg/joda/time/Chronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v8

    .line 722
    move-wide/from16 v0, p2

    invoke-virtual {v8, v0, v1}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v7

    .line 723
    int-to-long v4, v7

    add-long v4, v4, p2

    .line 724
    xor-long v10, p2, v4

    const-wide/16 v12, 0x0

    cmp-long v6, v10, v12

    if-gez v6, :cond_0

    int-to-long v10, v7

    xor-long v10, v10, p2

    const-wide/16 v12, 0x0

    cmp-long v6, v10, v12

    if-ltz v6, :cond_0

    .line 726
    sget-object v8, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    .line 727
    const/4 v7, 0x0

    move-wide/from16 v4, p2

    .line 730
    :cond_0
    invoke-virtual {v3}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v6

    iget-object v9, p0, Lorg/joda/time/format/DateTimeFormatter;->iLocale:Ljava/util/Locale;

    move-object v3, p1

    invoke-interface/range {v2 .. v9}, Lorg/joda/time/format/InternalPrinter;->printTo(Ljava/lang/Appendable;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V

    .line 731
    return-void
.end method

.method private requireParser()Lorg/joda/time/format/InternalParser;
    .locals 2

    .prologue
    .line 999
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatter;->iParser:Lorg/joda/time/format/InternalParser;

    .line 1000
    if-nez v0, :cond_0

    .line 1001
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Parsing not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1003
    :cond_0
    return-object v0
.end method

.method private requirePrinter()Lorg/joda/time/format/InternalPrinter;
    .locals 2

    .prologue
    .line 739
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatter;->iPrinter:Lorg/joda/time/format/InternalPrinter;

    .line 740
    if-nez v0, :cond_0

    .line 741
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Printing not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 743
    :cond_0
    return-object v0
.end method

.method private selectChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;
    .locals 2

    .prologue
    .line 1014
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v0

    .line 1015
    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatter;->iChrono:Lorg/joda/time/Chronology;

    if-eqz v1, :cond_0

    .line 1016
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatter;->iChrono:Lorg/joda/time/Chronology;

    .line 1018
    :cond_0
    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatter;->iZone:Lorg/joda/time/DateTimeZone;

    if-eqz v1, :cond_1

    .line 1019
    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatter;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, v1}, Lorg/joda/time/Chronology;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object v0

    .line 1021
    :cond_1
    return-object v0
.end method


# virtual methods
.method public getChronolgy()Lorg/joda/time/Chronology;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatter;->iChrono:Lorg/joda/time/Chronology;

    return-object v0
.end method

.method public getChronology()Lorg/joda/time/Chronology;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatter;->iChrono:Lorg/joda/time/Chronology;

    return-object v0
.end method

.method public getDefaultYear()I
    .locals 1

    .prologue
    .line 483
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatter;->iDefaultYear:I

    return v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatter;->iLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getParser()Lorg/joda/time/format/DateTimeParser;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatter;->iParser:Lorg/joda/time/format/InternalParser;

    invoke-static {v0}, Lorg/joda/time/format/InternalParserDateTimeParser;->of(Lorg/joda/time/format/InternalParser;)Lorg/joda/time/format/DateTimeParser;

    move-result-object v0

    return-object v0
.end method

.method getParser0()Lorg/joda/time/format/InternalParser;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatter;->iParser:Lorg/joda/time/format/InternalParser;

    return-object v0
.end method

.method public getPivotYear()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatter;->iPivotYear:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPrinter()Lorg/joda/time/format/DateTimePrinter;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatter;->iPrinter:Lorg/joda/time/format/InternalPrinter;

    invoke-static {v0}, Lorg/joda/time/format/InternalPrinterDateTimePrinter;->of(Lorg/joda/time/format/InternalPrinter;)Lorg/joda/time/format/DateTimePrinter;

    move-result-object v0

    return-object v0
.end method

.method getPrinter0()Lorg/joda/time/format/InternalPrinter;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatter;->iPrinter:Lorg/joda/time/format/InternalPrinter;

    return-object v0
.end method

.method public getZone()Lorg/joda/time/DateTimeZone;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatter;->iZone:Lorg/joda/time/DateTimeZone;

    return-object v0
.end method

.method public isOffsetParsed()Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lorg/joda/time/format/DateTimeFormatter;->iOffsetParsed:Z

    return v0
.end method

.method public isParser()Z
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatter;->iParser:Lorg/joda/time/format/InternalParser;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrinter()Z
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatter;->iPrinter:Lorg/joda/time/format/InternalPrinter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parseDateTime(Ljava/lang/String;)Lorg/joda/time/DateTime;
    .locals 8

    .prologue
    .line 921
    invoke-direct {p0}, Lorg/joda/time/format/DateTimeFormatter;->requireParser()Lorg/joda/time/format/InternalParser;

    move-result-object v0

    .line 923
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/joda/time/format/DateTimeFormatter;->selectChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v4

    .line 924
    new-instance v1, Lorg/joda/time/format/DateTimeParserBucket;

    const-wide/16 v2, 0x0

    iget-object v5, p0, Lorg/joda/time/format/DateTimeFormatter;->iLocale:Ljava/util/Locale;

    iget-object v6, p0, Lorg/joda/time/format/DateTimeFormatter;->iPivotYear:Ljava/lang/Integer;

    iget v7, p0, Lorg/joda/time/format/DateTimeFormatter;->iDefaultYear:I

    invoke-direct/range {v1 .. v7}, Lorg/joda/time/format/DateTimeParserBucket;-><init>(JLorg/joda/time/Chronology;Ljava/util/Locale;Ljava/lang/Integer;I)V

    .line 925
    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lorg/joda/time/format/InternalParser;->parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/CharSequence;I)I

    move-result v0

    .line 926
    if-ltz v0, :cond_3

    .line 927
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_4

    .line 928
    const/4 v0, 0x1

    invoke-virtual {v1, v0, p1}, Lorg/joda/time/format/DateTimeParserBucket;->computeMillis(ZLjava/lang/String;)J

    move-result-wide v2

    .line 929
    iget-boolean v0, p0, Lorg/joda/time/format/DateTimeFormatter;->iOffsetParsed:Z

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lorg/joda/time/format/DateTimeParserBucket;->getOffsetInteger()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 930
    invoke-virtual {v1}, Lorg/joda/time/format/DateTimeParserBucket;->getOffsetInteger()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 931
    invoke-static {v0}, Lorg/joda/time/DateTimeZone;->forOffsetMillis(I)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 932
    invoke-virtual {v4, v0}, Lorg/joda/time/Chronology;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object v4

    .line 936
    :cond_0
    :goto_0
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0, v2, v3, v4}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/Chronology;)V

    .line 937
    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatter;->iZone:Lorg/joda/time/DateTimeZone;

    if-eqz v1, :cond_1

    .line 938
    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatter;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTime;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;

    move-result-object v0

    .line 940
    :cond_1
    return-object v0

    .line 933
    :cond_2
    invoke-virtual {v1}, Lorg/joda/time/format/DateTimeParserBucket;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 934
    invoke-virtual {v1}, Lorg/joda/time/format/DateTimeParserBucket;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/joda/time/Chronology;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object v4

    goto :goto_0

    .line 943
    :cond_3
    xor-int/lit8 v0, v0, -0x1

    .line 945
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, v0}, Lorg/joda/time/format/FormatUtils;->createErrorMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public parseInto(Lorg/joda/time/ReadWritableInstant;Ljava/lang/String;I)I
    .locals 8

    .prologue
    .line 781
    invoke-direct {p0}, Lorg/joda/time/format/DateTimeFormatter;->requireParser()Lorg/joda/time/format/InternalParser;

    move-result-object v0

    .line 782
    if-nez p1, :cond_0

    .line 783
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Instant must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 786
    :cond_0
    invoke-interface {p1}, Lorg/joda/time/ReadWritableInstant;->getMillis()J

    move-result-wide v2

    .line 787
    invoke-interface {p1}, Lorg/joda/time/ReadWritableInstant;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    .line 788
    invoke-static {v1}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v4

    invoke-virtual {v4}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v7

    .line 789
    invoke-virtual {v1}, Lorg/joda/time/Chronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 790
    invoke-direct {p0, v1}, Lorg/joda/time/format/DateTimeFormatter;->selectChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v4

    .line 792
    new-instance v1, Lorg/joda/time/format/DateTimeParserBucket;

    iget-object v5, p0, Lorg/joda/time/format/DateTimeFormatter;->iLocale:Ljava/util/Locale;

    iget-object v6, p0, Lorg/joda/time/format/DateTimeFormatter;->iPivotYear:Ljava/lang/Integer;

    invoke-direct/range {v1 .. v7}, Lorg/joda/time/format/DateTimeParserBucket;-><init>(JLorg/joda/time/Chronology;Ljava/util/Locale;Ljava/lang/Integer;I)V

    .line 794
    invoke-interface {v0, v1, p2, p3}, Lorg/joda/time/format/InternalParser;->parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/CharSequence;I)I

    move-result v0

    .line 795
    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Lorg/joda/time/format/DateTimeParserBucket;->computeMillis(ZLjava/lang/String;)J

    move-result-wide v2

    invoke-interface {p1, v2, v3}, Lorg/joda/time/ReadWritableInstant;->setMillis(J)V

    .line 796
    iget-boolean v2, p0, Lorg/joda/time/format/DateTimeFormatter;->iOffsetParsed:Z

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lorg/joda/time/format/DateTimeParserBucket;->getOffsetInteger()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 797
    invoke-virtual {v1}, Lorg/joda/time/format/DateTimeParserBucket;->getOffsetInteger()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 798
    invoke-static {v1}, Lorg/joda/time/DateTimeZone;->forOffsetMillis(I)Lorg/joda/time/DateTimeZone;

    move-result-object v1

    .line 799
    invoke-virtual {v4, v1}, Lorg/joda/time/Chronology;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object v4

    .line 803
    :cond_1
    :goto_0
    invoke-interface {p1, v4}, Lorg/joda/time/ReadWritableInstant;->setChronology(Lorg/joda/time/Chronology;)V

    .line 804
    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatter;->iZone:Lorg/joda/time/DateTimeZone;

    if-eqz v1, :cond_2

    .line 805
    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatter;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-interface {p1, v1}, Lorg/joda/time/ReadWritableInstant;->setZone(Lorg/joda/time/DateTimeZone;)V

    .line 807
    :cond_2
    return v0

    .line 800
    :cond_3
    invoke-virtual {v1}, Lorg/joda/time/format/DateTimeParserBucket;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 801
    invoke-virtual {v1}, Lorg/joda/time/format/DateTimeParserBucket;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/joda/time/Chronology;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object v4

    goto :goto_0
.end method

.method public parseLocalDate(Ljava/lang/String;)Lorg/joda/time/LocalDate;
    .locals 1

    .prologue
    .line 844
    invoke-virtual {p0, p1}, Lorg/joda/time/format/DateTimeFormatter;->parseLocalDateTime(Ljava/lang/String;)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/LocalDateTime;->toLocalDate()Lorg/joda/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public parseLocalDateTime(Ljava/lang/String;)Lorg/joda/time/LocalDateTime;
    .locals 8

    .prologue
    .line 880
    invoke-direct {p0}, Lorg/joda/time/format/DateTimeFormatter;->requireParser()Lorg/joda/time/format/InternalParser;

    move-result-object v0

    .line 882
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/joda/time/format/DateTimeFormatter;->selectChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v4

    .line 883
    new-instance v1, Lorg/joda/time/format/DateTimeParserBucket;

    const-wide/16 v2, 0x0

    iget-object v5, p0, Lorg/joda/time/format/DateTimeFormatter;->iLocale:Ljava/util/Locale;

    iget-object v6, p0, Lorg/joda/time/format/DateTimeFormatter;->iPivotYear:Ljava/lang/Integer;

    iget v7, p0, Lorg/joda/time/format/DateTimeFormatter;->iDefaultYear:I

    invoke-direct/range {v1 .. v7}, Lorg/joda/time/format/DateTimeParserBucket;-><init>(JLorg/joda/time/Chronology;Ljava/util/Locale;Ljava/lang/Integer;I)V

    .line 884
    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lorg/joda/time/format/InternalParser;->parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/CharSequence;I)I

    move-result v0

    .line 885
    if-ltz v0, :cond_2

    .line 886
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_3

    .line 887
    const/4 v0, 0x1

    invoke-virtual {v1, v0, p1}, Lorg/joda/time/format/DateTimeParserBucket;->computeMillis(ZLjava/lang/String;)J

    move-result-wide v2

    .line 888
    invoke-virtual {v1}, Lorg/joda/time/format/DateTimeParserBucket;->getOffsetInteger()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 889
    invoke-virtual {v1}, Lorg/joda/time/format/DateTimeParserBucket;->getOffsetInteger()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 890
    invoke-static {v0}, Lorg/joda/time/DateTimeZone;->forOffsetMillis(I)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 891
    invoke-virtual {v4, v0}, Lorg/joda/time/Chronology;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object v4

    .line 895
    :cond_0
    :goto_0
    new-instance v0, Lorg/joda/time/LocalDateTime;

    invoke-direct {v0, v2, v3, v4}, Lorg/joda/time/LocalDateTime;-><init>(JLorg/joda/time/Chronology;)V

    return-object v0

    .line 892
    :cond_1
    invoke-virtual {v1}, Lorg/joda/time/format/DateTimeParserBucket;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 893
    invoke-virtual {v1}, Lorg/joda/time/format/DateTimeParserBucket;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/joda/time/Chronology;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object v4

    goto :goto_0

    .line 898
    :cond_2
    xor-int/lit8 v0, v0, -0x1

    .line 900
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, v0}, Lorg/joda/time/format/FormatUtils;->createErrorMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public parseLocalTime(Ljava/lang/String;)Lorg/joda/time/LocalTime;
    .locals 1

    .prologue
    .line 862
    invoke-virtual {p0, p1}, Lorg/joda/time/format/DateTimeFormatter;->parseLocalDateTime(Ljava/lang/String;)Lorg/joda/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/LocalDateTime;->toLocalTime()Lorg/joda/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public parseMillis(Ljava/lang/String;)J
    .locals 8

    .prologue
    .line 823
    invoke-direct {p0}, Lorg/joda/time/format/DateTimeFormatter;->requireParser()Lorg/joda/time/format/InternalParser;

    move-result-object v0

    .line 824
    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatter;->iChrono:Lorg/joda/time/Chronology;

    invoke-direct {p0, v1}, Lorg/joda/time/format/DateTimeFormatter;->selectChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v4

    .line 825
    new-instance v1, Lorg/joda/time/format/DateTimeParserBucket;

    const-wide/16 v2, 0x0

    iget-object v5, p0, Lorg/joda/time/format/DateTimeFormatter;->iLocale:Ljava/util/Locale;

    iget-object v6, p0, Lorg/joda/time/format/DateTimeFormatter;->iPivotYear:Ljava/lang/Integer;

    iget v7, p0, Lorg/joda/time/format/DateTimeFormatter;->iDefaultYear:I

    invoke-direct/range {v1 .. v7}, Lorg/joda/time/format/DateTimeParserBucket;-><init>(JLorg/joda/time/Chronology;Ljava/util/Locale;Ljava/lang/Integer;I)V

    .line 826
    invoke-virtual {v1, v0, p1}, Lorg/joda/time/format/DateTimeParserBucket;->doParseMillis(Lorg/joda/time/format/InternalParser;Ljava/lang/CharSequence;)J

    move-result-wide v0

    return-wide v0
.end method

.method public parseMutableDateTime(Ljava/lang/String;)Lorg/joda/time/MutableDateTime;
    .locals 8

    .prologue
    .line 966
    invoke-direct {p0}, Lorg/joda/time/format/DateTimeFormatter;->requireParser()Lorg/joda/time/format/InternalParser;

    move-result-object v0

    .line 968
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/joda/time/format/DateTimeFormatter;->selectChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v4

    .line 969
    new-instance v1, Lorg/joda/time/format/DateTimeParserBucket;

    const-wide/16 v2, 0x0

    iget-object v5, p0, Lorg/joda/time/format/DateTimeFormatter;->iLocale:Ljava/util/Locale;

    iget-object v6, p0, Lorg/joda/time/format/DateTimeFormatter;->iPivotYear:Ljava/lang/Integer;

    iget v7, p0, Lorg/joda/time/format/DateTimeFormatter;->iDefaultYear:I

    invoke-direct/range {v1 .. v7}, Lorg/joda/time/format/DateTimeParserBucket;-><init>(JLorg/joda/time/Chronology;Ljava/util/Locale;Ljava/lang/Integer;I)V

    .line 970
    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lorg/joda/time/format/InternalParser;->parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/CharSequence;I)I

    move-result v0

    .line 971
    if-ltz v0, :cond_3

    .line 972
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_4

    .line 973
    const/4 v0, 0x1

    invoke-virtual {v1, v0, p1}, Lorg/joda/time/format/DateTimeParserBucket;->computeMillis(ZLjava/lang/String;)J

    move-result-wide v2

    .line 974
    iget-boolean v0, p0, Lorg/joda/time/format/DateTimeFormatter;->iOffsetParsed:Z

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lorg/joda/time/format/DateTimeParserBucket;->getOffsetInteger()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 975
    invoke-virtual {v1}, Lorg/joda/time/format/DateTimeParserBucket;->getOffsetInteger()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 976
    invoke-static {v0}, Lorg/joda/time/DateTimeZone;->forOffsetMillis(I)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 977
    invoke-virtual {v4, v0}, Lorg/joda/time/Chronology;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object v4

    .line 981
    :cond_0
    :goto_0
    new-instance v0, Lorg/joda/time/MutableDateTime;

    invoke-direct {v0, v2, v3, v4}, Lorg/joda/time/MutableDateTime;-><init>(JLorg/joda/time/Chronology;)V

    .line 982
    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatter;->iZone:Lorg/joda/time/DateTimeZone;

    if-eqz v1, :cond_1

    .line 983
    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatter;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, v1}, Lorg/joda/time/MutableDateTime;->setZone(Lorg/joda/time/DateTimeZone;)V

    .line 985
    :cond_1
    return-object v0

    .line 978
    :cond_2
    invoke-virtual {v1}, Lorg/joda/time/format/DateTimeParserBucket;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 979
    invoke-virtual {v1}, Lorg/joda/time/format/DateTimeParserBucket;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/joda/time/Chronology;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object v4

    goto :goto_0

    .line 988
    :cond_3
    xor-int/lit8 v0, v0, -0x1

    .line 990
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, v0}, Lorg/joda/time/format/FormatUtils;->createErrorMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public print(J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/joda/time/format/DateTimeFormatter;->requirePrinter()Lorg/joda/time/format/InternalPrinter;

    move-result-object v1

    invoke-interface {v1}, Lorg/joda/time/format/InternalPrinter;->estimatePrintedLength()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 690
    :try_start_0
    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/format/DateTimeFormatter;->printTo(Ljava/lang/Appendable;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 691
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public print(Lorg/joda/time/ReadableInstant;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/joda/time/format/DateTimeFormatter;->requirePrinter()Lorg/joda/time/format/InternalPrinter;

    move-result-object v1

    invoke-interface {v1}, Lorg/joda/time/format/InternalPrinter;->estimatePrintedLength()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 671
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lorg/joda/time/format/DateTimeFormatter;->printTo(Ljava/lang/Appendable;Lorg/joda/time/ReadableInstant;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 672
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public print(Lorg/joda/time/ReadablePartial;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/joda/time/format/DateTimeFormatter;->requirePrinter()Lorg/joda/time/format/InternalPrinter;

    move-result-object v1

    invoke-interface {v1}, Lorg/joda/time/format/InternalPrinter;->estimatePrintedLength()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 709
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lorg/joda/time/format/DateTimeFormatter;->printTo(Ljava/lang/Appendable;Lorg/joda/time/ReadablePartial;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 710
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public printTo(Ljava/io/Writer;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 577
    invoke-virtual {p0, p1, p2, p3}, Lorg/joda/time/format/DateTimeFormatter;->printTo(Ljava/lang/Appendable;J)V

    .line 578
    return-void
.end method

.method public printTo(Ljava/io/Writer;Lorg/joda/time/ReadableInstant;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 522
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/format/DateTimeFormatter;->printTo(Ljava/lang/Appendable;Lorg/joda/time/ReadableInstant;)V

    .line 523
    return-void
.end method

.method public printTo(Ljava/io/Writer;Lorg/joda/time/ReadablePartial;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 637
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/format/DateTimeFormatter;->printTo(Ljava/lang/Appendable;Lorg/joda/time/ReadablePartial;)V

    .line 638
    return-void
.end method

.method public printTo(Ljava/lang/Appendable;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 589
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/joda/time/format/DateTimeFormatter;->printTo(Ljava/lang/Appendable;JLorg/joda/time/Chronology;)V

    .line 590
    return-void
.end method

.method public printTo(Ljava/lang/Appendable;Lorg/joda/time/ReadableInstant;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 533
    invoke-static {p2}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v0

    .line 534
    invoke-static {p2}, Lorg/joda/time/DateTimeUtils;->getInstantChronology(Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Chronology;

    move-result-object v2

    .line 535
    invoke-direct {p0, p1, v0, v1, v2}, Lorg/joda/time/format/DateTimeFormatter;->printTo(Ljava/lang/Appendable;JLorg/joda/time/Chronology;)V

    .line 536
    return-void
.end method

.method public printTo(Ljava/lang/Appendable;Lorg/joda/time/ReadablePartial;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 651
    invoke-direct {p0}, Lorg/joda/time/format/DateTimeFormatter;->requirePrinter()Lorg/joda/time/format/InternalPrinter;

    move-result-object v0

    .line 652
    if-nez p2, :cond_0

    .line 653
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The partial must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 655
    :cond_0
    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatter;->iLocale:Ljava/util/Locale;

    invoke-interface {v0, p1, p2, v1}, Lorg/joda/time/format/InternalPrinter;->printTo(Ljava/lang/Appendable;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V

    .line 656
    return-void
.end method

.method public printTo(Ljava/lang/StringBuffer;J)V
    .locals 2

    .prologue
    .line 548
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/joda/time/format/DateTimeFormatter;->printTo(Ljava/lang/Appendable;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    :goto_0
    return-void

    .line 549
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public printTo(Ljava/lang/StringBuffer;Lorg/joda/time/ReadableInstant;)V
    .locals 1

    .prologue
    .line 495
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/format/DateTimeFormatter;->printTo(Ljava/lang/Appendable;Lorg/joda/time/ReadableInstant;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    :goto_0
    return-void

    .line 496
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public printTo(Ljava/lang/StringBuffer;Lorg/joda/time/ReadablePartial;)V
    .locals 1

    .prologue
    .line 604
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/format/DateTimeFormatter;->printTo(Ljava/lang/Appendable;Lorg/joda/time/ReadablePartial;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    :goto_0
    return-void

    .line 605
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public printTo(Ljava/lang/StringBuilder;J)V
    .locals 2

    .prologue
    .line 563
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/joda/time/format/DateTimeFormatter;->printTo(Ljava/lang/Appendable;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    :goto_0
    return-void

    .line 564
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public printTo(Ljava/lang/StringBuilder;Lorg/joda/time/ReadableInstant;)V
    .locals 1

    .prologue
    .line 509
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/format/DateTimeFormatter;->printTo(Ljava/lang/Appendable;Lorg/joda/time/ReadableInstant;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    :goto_0
    return-void

    .line 510
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public printTo(Ljava/lang/StringBuilder;Lorg/joda/time/ReadablePartial;)V
    .locals 1

    .prologue
    .line 621
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/format/DateTimeFormatter;->printTo(Ljava/lang/Appendable;Lorg/joda/time/ReadablePartial;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    :goto_0
    return-void

    .line 622
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public withChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/format/DateTimeFormatter;
    .locals 9

    .prologue
    .line 291
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatter;->iChrono:Lorg/joda/time/Chronology;

    if-ne v0, p1, :cond_0

    .line 294
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lorg/joda/time/format/DateTimeFormatter;

    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatter;->iPrinter:Lorg/joda/time/format/InternalPrinter;

    iget-object v2, p0, Lorg/joda/time/format/DateTimeFormatter;->iParser:Lorg/joda/time/format/InternalParser;

    iget-object v3, p0, Lorg/joda/time/format/DateTimeFormatter;->iLocale:Ljava/util/Locale;

    iget-boolean v4, p0, Lorg/joda/time/format/DateTimeFormatter;->iOffsetParsed:Z

    iget-object v6, p0, Lorg/joda/time/format/DateTimeFormatter;->iZone:Lorg/joda/time/DateTimeZone;

    iget-object v7, p0, Lorg/joda/time/format/DateTimeFormatter;->iPivotYear:Ljava/lang/Integer;

    iget v8, p0, Lorg/joda/time/format/DateTimeFormatter;->iDefaultYear:I

    move-object v5, p1

    invoke-direct/range {v0 .. v8}, Lorg/joda/time/format/DateTimeFormatter;-><init>(Lorg/joda/time/format/InternalPrinter;Lorg/joda/time/format/InternalParser;Ljava/util/Locale;ZLorg/joda/time/Chronology;Lorg/joda/time/DateTimeZone;Ljava/lang/Integer;I)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withDefaultYear(I)Lorg/joda/time/format/DateTimeFormatter;
    .locals 9

    .prologue
    .line 472
    new-instance v0, Lorg/joda/time/format/DateTimeFormatter;

    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatter;->iPrinter:Lorg/joda/time/format/InternalPrinter;

    iget-object v2, p0, Lorg/joda/time/format/DateTimeFormatter;->iParser:Lorg/joda/time/format/InternalParser;

    iget-object v3, p0, Lorg/joda/time/format/DateTimeFormatter;->iLocale:Ljava/util/Locale;

    iget-boolean v4, p0, Lorg/joda/time/format/DateTimeFormatter;->iOffsetParsed:Z

    iget-object v5, p0, Lorg/joda/time/format/DateTimeFormatter;->iChrono:Lorg/joda/time/Chronology;

    iget-object v6, p0, Lorg/joda/time/format/DateTimeFormatter;->iZone:Lorg/joda/time/DateTimeZone;

    iget-object v7, p0, Lorg/joda/time/format/DateTimeFormatter;->iPivotYear:Ljava/lang/Integer;

    move v8, p1

    invoke-direct/range {v0 .. v8}, Lorg/joda/time/format/DateTimeFormatter;-><init>(Lorg/joda/time/format/InternalPrinter;Lorg/joda/time/format/InternalParser;Ljava/util/Locale;ZLorg/joda/time/Chronology;Lorg/joda/time/DateTimeZone;Ljava/lang/Integer;I)V

    return-object v0
.end method

.method public withLocale(Ljava/util/Locale;)Lorg/joda/time/format/DateTimeFormatter;
    .locals 9

    .prologue
    .line 223
    invoke-virtual {p0}, Lorg/joda/time/format/DateTimeFormatter;->getLocale()Ljava/util/Locale;

    move-result-object v0

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/joda/time/format/DateTimeFormatter;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, p0

    .line 226
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/joda/time/format/DateTimeFormatter;

    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatter;->iPrinter:Lorg/joda/time/format/InternalPrinter;

    iget-object v2, p0, Lorg/joda/time/format/DateTimeFormatter;->iParser:Lorg/joda/time/format/InternalParser;

    iget-boolean v4, p0, Lorg/joda/time/format/DateTimeFormatter;->iOffsetParsed:Z

    iget-object v5, p0, Lorg/joda/time/format/DateTimeFormatter;->iChrono:Lorg/joda/time/Chronology;

    iget-object v6, p0, Lorg/joda/time/format/DateTimeFormatter;->iZone:Lorg/joda/time/DateTimeZone;

    iget-object v7, p0, Lorg/joda/time/format/DateTimeFormatter;->iPivotYear:Ljava/lang/Integer;

    iget v8, p0, Lorg/joda/time/format/DateTimeFormatter;->iDefaultYear:I

    move-object v3, p1

    invoke-direct/range {v0 .. v8}, Lorg/joda/time/format/DateTimeFormatter;-><init>(Lorg/joda/time/format/InternalPrinter;Lorg/joda/time/format/InternalParser;Ljava/util/Locale;ZLorg/joda/time/Chronology;Lorg/joda/time/DateTimeZone;Ljava/lang/Integer;I)V

    goto :goto_0
.end method

.method public withOffsetParsed()Lorg/joda/time/format/DateTimeFormatter;
    .locals 9

    .prologue
    const/4 v4, 0x1

    .line 256
    iget-boolean v0, p0, Lorg/joda/time/format/DateTimeFormatter;->iOffsetParsed:Z

    if-ne v0, v4, :cond_0

    .line 259
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lorg/joda/time/format/DateTimeFormatter;

    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatter;->iPrinter:Lorg/joda/time/format/InternalPrinter;

    iget-object v2, p0, Lorg/joda/time/format/DateTimeFormatter;->iParser:Lorg/joda/time/format/InternalParser;

    iget-object v3, p0, Lorg/joda/time/format/DateTimeFormatter;->iLocale:Ljava/util/Locale;

    iget-object v5, p0, Lorg/joda/time/format/DateTimeFormatter;->iChrono:Lorg/joda/time/Chronology;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/joda/time/format/DateTimeFormatter;->iPivotYear:Ljava/lang/Integer;

    iget v8, p0, Lorg/joda/time/format/DateTimeFormatter;->iDefaultYear:I

    invoke-direct/range {v0 .. v8}, Lorg/joda/time/format/DateTimeFormatter;-><init>(Lorg/joda/time/format/InternalPrinter;Lorg/joda/time/format/InternalParser;Ljava/util/Locale;ZLorg/joda/time/Chronology;Lorg/joda/time/DateTimeZone;Ljava/lang/Integer;I)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withPivotYear(I)Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .prologue
    .line 439
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/joda/time/format/DateTimeFormatter;->withPivotYear(Ljava/lang/Integer;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public withPivotYear(Ljava/lang/Integer;)Lorg/joda/time/format/DateTimeFormatter;
    .locals 9

    .prologue
    .line 402
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatter;->iPivotYear:Ljava/lang/Integer;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatter;->iPivotYear:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatter;->iPivotYear:Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, p0

    .line 405
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/joda/time/format/DateTimeFormatter;

    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatter;->iPrinter:Lorg/joda/time/format/InternalPrinter;

    iget-object v2, p0, Lorg/joda/time/format/DateTimeFormatter;->iParser:Lorg/joda/time/format/InternalParser;

    iget-object v3, p0, Lorg/joda/time/format/DateTimeFormatter;->iLocale:Ljava/util/Locale;

    iget-boolean v4, p0, Lorg/joda/time/format/DateTimeFormatter;->iOffsetParsed:Z

    iget-object v5, p0, Lorg/joda/time/format/DateTimeFormatter;->iChrono:Lorg/joda/time/Chronology;

    iget-object v6, p0, Lorg/joda/time/format/DateTimeFormatter;->iZone:Lorg/joda/time/DateTimeZone;

    iget v8, p0, Lorg/joda/time/format/DateTimeFormatter;->iDefaultYear:I

    move-object v7, p1

    invoke-direct/range {v0 .. v8}, Lorg/joda/time/format/DateTimeFormatter;-><init>(Lorg/joda/time/format/InternalPrinter;Lorg/joda/time/format/InternalParser;Ljava/util/Locale;ZLorg/joda/time/Chronology;Lorg/joda/time/DateTimeZone;Ljava/lang/Integer;I)V

    goto :goto_0
.end method

.method public withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/format/DateTimeFormatter;
    .locals 9

    .prologue
    .line 355
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatter;->iZone:Lorg/joda/time/DateTimeZone;

    if-ne v0, p1, :cond_0

    .line 358
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lorg/joda/time/format/DateTimeFormatter;

    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatter;->iPrinter:Lorg/joda/time/format/InternalPrinter;

    iget-object v2, p0, Lorg/joda/time/format/DateTimeFormatter;->iParser:Lorg/joda/time/format/InternalParser;

    iget-object v3, p0, Lorg/joda/time/format/DateTimeFormatter;->iLocale:Ljava/util/Locale;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/joda/time/format/DateTimeFormatter;->iChrono:Lorg/joda/time/Chronology;

    iget-object v7, p0, Lorg/joda/time/format/DateTimeFormatter;->iPivotYear:Ljava/lang/Integer;

    iget v8, p0, Lorg/joda/time/format/DateTimeFormatter;->iDefaultYear:I

    move-object v6, p1

    invoke-direct/range {v0 .. v8}, Lorg/joda/time/format/DateTimeFormatter;-><init>(Lorg/joda/time/format/InternalPrinter;Lorg/joda/time/format/InternalParser;Ljava/util/Locale;ZLorg/joda/time/Chronology;Lorg/joda/time/DateTimeZone;Ljava/lang/Integer;I)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withZoneUTC()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .prologue
    .line 335
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-virtual {p0, v0}, Lorg/joda/time/format/DateTimeFormatter;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method
