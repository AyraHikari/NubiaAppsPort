.class public Lorg/joda/time/format/DateTimeFormatterBuilder;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/format/DateTimeFormatterBuilder$MatchingParser;,
        Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;,
        Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneId;,
        Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneName;,
        Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;,
        Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;,
        Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;,
        Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;,
        Lorg/joda/time/format/DateTimeFormatterBuilder$FixedNumber;,
        Lorg/joda/time/format/DateTimeFormatterBuilder$PaddedNumber;,
        Lorg/joda/time/format/DateTimeFormatterBuilder$UnpaddedNumber;,
        Lorg/joda/time/format/DateTimeFormatterBuilder$NumberFormatter;,
        Lorg/joda/time/format/DateTimeFormatterBuilder$StringLiteral;,
        Lorg/joda/time/format/DateTimeFormatterBuilder$CharacterLiteral;
    }
.end annotation


# instance fields
.field private iElementPairs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private iFormatter:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder;->iElementPairs:Ljava/util/ArrayList;

    .line 85
    return-void
.end method

.method private append0(Ljava/lang/Object;)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 1

    .prologue
    .line 375
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder;->iFormatter:Ljava/lang/Object;

    .line 377
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder;->iElementPairs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder;->iElementPairs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    return-object p0
.end method

.method private append0(Lorg/joda/time/format/InternalPrinter;Lorg/joda/time/format/InternalParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder;->iFormatter:Ljava/lang/Object;

    .line 385
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder;->iElementPairs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder;->iElementPairs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    return-object p0
.end method

.method static appendUnknownString(Ljava/lang/Appendable;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1190
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    .line 1191
    const v0, 0xfffd

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0

    .line 1193
    :cond_0
    return-void
.end method

.method private checkParser(Lorg/joda/time/format/DateTimeParser;)V
    .locals 2

    .prologue
    .line 358
    if-nez p1, :cond_0

    .line 359
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No parser supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_0
    return-void
.end method

.method private checkPrinter(Lorg/joda/time/format/DateTimePrinter;)V
    .locals 2

    .prologue
    .line 369
    if-nez p1, :cond_0

    .line 370
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No printer supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_0
    return-void
.end method

.method static csStartsWith(Ljava/lang/CharSequence;ILjava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 2647
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 2648
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p1

    if-ge v1, v2, :cond_1

    .line 2656
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, v0

    .line 2651
    :goto_1
    if-ge v1, v2, :cond_2

    .line 2652
    add-int v3, p1, v1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_0

    .line 2651
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2656
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static csStartsWithIgnoreCase(Ljava/lang/CharSequence;ILjava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 2660
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 2661
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p1

    if-ge v1, v2, :cond_1

    .line 2675
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, v0

    .line 2664
    :goto_1
    if-ge v1, v2, :cond_3

    .line 2665
    add-int v3, p1, v1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 2666
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 2667
    if-eq v3, v4, :cond_2

    .line 2668
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 2669
    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    .line 2670
    if-eq v3, v4, :cond_2

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    if-ne v3, v4, :cond_0

    .line 2664
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2675
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getFormatter()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1139
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder;->iFormatter:Ljava/lang/Object;

    .line 1141
    if-nez v0, :cond_3

    .line 1142
    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder;->iElementPairs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1143
    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder;->iElementPairs:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1144
    iget-object v2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder;->iElementPairs:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 1146
    if-eqz v1, :cond_4

    .line 1147
    if-eq v1, v2, :cond_0

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 1155
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 1156
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;

    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder;->iElementPairs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;-><init>(Ljava/util/List;)V

    .line 1159
    :cond_2
    iput-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder;->iFormatter:Ljava/lang/Object;

    .line 1162
    :cond_3
    return-object v0

    :cond_4
    move-object v0, v2

    .line 1151
    goto :goto_0
.end method

.method private isFormatter(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1186
    invoke-direct {p0, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->isPrinter(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->isParser(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isParser(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1176
    instance-of v0, p1, Lorg/joda/time/format/InternalParser;

    if-eqz v0, :cond_1

    .line 1177
    instance-of v0, p1, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;

    if-eqz v0, :cond_0

    .line 1178
    check-cast p1, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;

    invoke-virtual {p1}, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->isParser()Z

    move-result v0

    .line 1182
    :goto_0
    return v0

    .line 1180
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1182
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPrinter(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1166
    instance-of v0, p1, Lorg/joda/time/format/InternalPrinter;

    if-eqz v0, :cond_1

    .line 1167
    instance-of v0, p1, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;

    if-eqz v0, :cond_0

    .line 1168
    check-cast p1, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;

    invoke-virtual {p1}, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->isPrinter()Z

    move-result v0

    .line 1172
    :goto_0
    return v0

    .line 1170
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1172
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    .prologue
    .line 218
    if-nez p1, :cond_0

    .line 219
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No formatter supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    invoke-virtual {p1}, Lorg/joda/time/format/DateTimeFormatter;->getPrinter0()Lorg/joda/time/format/InternalPrinter;

    move-result-object v0

    invoke-virtual {p1}, Lorg/joda/time/format/DateTimeFormatter;->getParser0()Lorg/joda/time/format/InternalParser;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Lorg/joda/time/format/InternalPrinter;Lorg/joda/time/format/InternalParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->checkParser(Lorg/joda/time/format/DateTimeParser;)V

    .line 259
    const/4 v0, 0x0

    invoke-static {p1}, Lorg/joda/time/format/DateTimeParserInternalParser;->of(Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/InternalParser;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Lorg/joda/time/format/InternalPrinter;Lorg/joda/time/format/InternalParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Lorg/joda/time/format/DateTimePrinter;)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->checkPrinter(Lorg/joda/time/format/DateTimePrinter;)V

    .line 240
    invoke-static {p1}, Lorg/joda/time/format/DateTimePrinterInternalPrinter;->of(Lorg/joda/time/format/DateTimePrinter;)Lorg/joda/time/format/InternalPrinter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Lorg/joda/time/format/InternalPrinter;Lorg/joda/time/format/InternalParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Lorg/joda/time/format/DateTimePrinter;Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    .prologue
    .line 277
    invoke-direct {p0, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->checkPrinter(Lorg/joda/time/format/DateTimePrinter;)V

    .line 278
    invoke-direct {p0, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->checkParser(Lorg/joda/time/format/DateTimeParser;)V

    .line 279
    invoke-static {p1}, Lorg/joda/time/format/DateTimePrinterInternalPrinter;->of(Lorg/joda/time/format/DateTimePrinter;)Lorg/joda/time/format/InternalPrinter;

    move-result-object v0

    invoke-static {p2}, Lorg/joda/time/format/DateTimeParserInternalParser;->of(Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/InternalParser;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Lorg/joda/time/format/InternalPrinter;Lorg/joda/time/format/InternalParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Lorg/joda/time/format/DateTimePrinter;[Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 306
    if-eqz p1, :cond_0

    .line 307
    invoke-direct {p0, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->checkPrinter(Lorg/joda/time/format/DateTimePrinter;)V

    .line 309
    :cond_0
    if-nez p2, :cond_1

    .line 310
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No parsers supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_1
    array-length v1, p2

    .line 313
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 314
    aget-object v1, p2, v0

    if-nez v1, :cond_2

    .line 315
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No parser supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_2
    invoke-static {p1}, Lorg/joda/time/format/DateTimePrinterInternalPrinter;->of(Lorg/joda/time/format/DateTimePrinter;)Lorg/joda/time/format/InternalPrinter;

    move-result-object v1

    aget-object v0, p2, v0

    invoke-static {v0}, Lorg/joda/time/format/DateTimeParserInternalParser;->of(Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/InternalParser;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Lorg/joda/time/format/InternalPrinter;Lorg/joda/time/format/InternalParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 329
    :goto_0
    return-object v0

    .line 320
    :cond_3
    new-array v2, v1, [Lorg/joda/time/format/InternalParser;

    .line 322
    :goto_1
    add-int/lit8 v3, v1, -0x1

    if-ge v0, v3, :cond_5

    .line 323
    aget-object v3, p2, v0

    invoke-static {v3}, Lorg/joda/time/format/DateTimeParserInternalParser;->of(Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/InternalParser;

    move-result-object v3

    aput-object v3, v2, v0

    if-nez v3, :cond_4

    .line 324
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incomplete parser array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 327
    :cond_5
    aget-object v1, p2, v0

    invoke-static {v1}, Lorg/joda/time/format/DateTimeParserInternalParser;->of(Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/InternalParser;

    move-result-object v1

    aput-object v1, v2, v0

    .line 329
    invoke-static {p1}, Lorg/joda/time/format/DateTimePrinterInternalPrinter;->of(Lorg/joda/time/format/DateTimePrinter;)Lorg/joda/time/format/InternalPrinter;

    move-result-object v0

    new-instance v1, Lorg/joda/time/format/DateTimeFormatterBuilder$MatchingParser;

    invoke-direct {v1, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder$MatchingParser;-><init>([Lorg/joda/time/format/InternalParser;)V

    invoke-direct {p0, v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Lorg/joda/time/format/InternalPrinter;Lorg/joda/time/format/InternalParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    goto :goto_0
.end method

.method public appendCenturyOfEra(II)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 1

    .prologue
    .line 946
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->centuryOfEra()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendSignedDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendClockhourOfDay(I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    .prologue
    .line 736
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->clockhourOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendClockhourOfHalfday(I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    .prologue
    .line 756
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->clockhourOfHalfday()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendDayOfMonth(I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    .prologue
    .line 776
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfMonth()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendDayOfWeek(I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    .prologue
    .line 766
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfWeek()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendDayOfWeekShortText()Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 1

    .prologue
    .line 977
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfWeek()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendShortText(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendDayOfWeekText()Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 1

    .prologue
    .line 966
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfWeek()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendText(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendDayOfYear(I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    .prologue
    .line 786
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 435
    if-nez p1, :cond_0

    .line 436
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field type must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 438
    :cond_0
    if-ge p3, p2, :cond_1

    move p3, p2

    .line 441
    :cond_1
    if-ltz p2, :cond_2

    if-gtz p3, :cond_3

    .line 442
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 444
    :cond_3
    const/4 v0, 0x1

    if-gt p2, v0, :cond_4

    .line 445
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$UnpaddedNumber;

    invoke-direct {v0, p1, p3, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder$UnpaddedNumber;-><init>(Lorg/joda/time/DateTimeFieldType;IZ)V

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Ljava/lang/Object;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 447
    :goto_0
    return-object v0

    :cond_4
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$PaddedNumber;

    invoke-direct {v0, p1, p3, v1, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder$PaddedNumber;-><init>(Lorg/joda/time/DateTimeFieldType;IZI)V

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Ljava/lang/Object;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    goto :goto_0
.end method

.method public appendEraText()Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 1

    .prologue
    .line 1008
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->era()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendText(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendFixedDecimal(Lorg/joda/time/DateTimeFieldType;I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 3

    .prologue
    .line 465
    if-nez p1, :cond_0

    .line 466
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field type must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 468
    :cond_0
    if-gtz p2, :cond_1

    .line 469
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal number of digits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 471
    :cond_1
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$FixedNumber;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder$FixedNumber;-><init>(Lorg/joda/time/DateTimeFieldType;IZ)V

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Ljava/lang/Object;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendFixedSignedDecimal(Lorg/joda/time/DateTimeFieldType;I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 3

    .prologue
    .line 517
    if-nez p1, :cond_0

    .line 518
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field type must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 520
    :cond_0
    if-gtz p2, :cond_1

    .line 521
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal number of digits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 523
    :cond_1
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$FixedNumber;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder$FixedNumber;-><init>(Lorg/joda/time/DateTimeFieldType;IZ)V

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Ljava/lang/Object;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendFraction(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    .prologue
    .line 571
    if-nez p1, :cond_0

    .line 572
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field type must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 574
    :cond_0
    if-ge p3, p2, :cond_1

    move p3, p2

    .line 577
    :cond_1
    if-ltz p2, :cond_2

    if-gtz p3, :cond_3

    .line 578
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 580
    :cond_3
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;

    invoke-direct {v0, p1, p2, p3}, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;-><init>(Lorg/joda/time/DateTimeFieldType;II)V

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Ljava/lang/Object;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendFractionOfDay(II)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 1

    .prologue
    .line 649
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendFraction(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendFractionOfHour(II)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 1

    .prologue
    .line 632
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->hourOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendFraction(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendFractionOfMinute(II)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 1

    .prologue
    .line 615
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->minuteOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendFraction(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendFractionOfSecond(II)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 1

    .prologue
    .line 598
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->secondOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendFraction(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendHalfdayOfDayText()Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 1

    .prologue
    .line 956
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->halfdayOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendText(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendHourOfDay(I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    .prologue
    .line 726
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->hourOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendHourOfHalfday(I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    .prologue
    .line 746
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->hourOfHalfday()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 1

    .prologue
    .line 398
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$CharacterLiteral;

    invoke-direct {v0, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder$CharacterLiteral;-><init>(C)V

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Ljava/lang/Object;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendLiteral(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    .prologue
    .line 409
    if-nez p1, :cond_0

    .line 410
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Literal must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 418
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$StringLiteral;

    invoke-direct {v0, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder$StringLiteral;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Ljava/lang/Object;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p0

    :goto_0
    :pswitch_0
    return-object p0

    .line 416
    :pswitch_1
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$CharacterLiteral;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder$CharacterLiteral;-><init>(C)V

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Ljava/lang/Object;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object p0

    goto :goto_0

    .line 412
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public appendMillisOfDay(I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    .prologue
    .line 676
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->millisOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendMillisOfSecond(I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    .prologue
    .line 666
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->millisOfSecond()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendMinuteOfDay(I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    .prologue
    .line 716
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->minuteOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendMinuteOfHour(I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    .prologue
    .line 706
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->minuteOfHour()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendMonthOfYear(I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    .prologue
    .line 818
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->monthOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendMonthOfYearShortText()Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 1

    .prologue
    .line 998
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->monthOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendShortText(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendMonthOfYearText()Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 1

    .prologue
    .line 988
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->monthOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendText(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendOptional(Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 346
    invoke-direct {p0, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->checkParser(Lorg/joda/time/format/DateTimeParser;)V

    .line 347
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/joda/time/format/InternalParser;

    const/4 v1, 0x0

    invoke-static {p1}, Lorg/joda/time/format/DateTimeParserInternalParser;->of(Lorg/joda/time/format/DateTimeParser;)Lorg/joda/time/format/InternalParser;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v3, v0, v1

    .line 348
    new-instance v1, Lorg/joda/time/format/DateTimeFormatterBuilder$MatchingParser;

    invoke-direct {v1, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder$MatchingParser;-><init>([Lorg/joda/time/format/InternalParser;)V

    invoke-direct {p0, v3, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Lorg/joda/time/format/InternalPrinter;Lorg/joda/time/format/InternalParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 0

    .prologue
    .line 1133
    invoke-static {p0, p1}, Lorg/joda/time/format/DateTimeFormat;->appendPatternTo(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/lang/String;)V

    .line 1134
    return-object p0
.end method

.method public appendSecondOfDay(I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    .prologue
    .line 696
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->secondOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendSecondOfMinute(I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    .prologue
    .line 686
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->secondOfMinute()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendShortText(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    .prologue
    .line 550
    if-nez p1, :cond_0

    .line 551
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field type must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 553
    :cond_0
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;-><init>(Lorg/joda/time/DateTimeFieldType;Z)V

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Ljava/lang/Object;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendSignedDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 487
    if-nez p1, :cond_0

    .line 488
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field type must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 490
    :cond_0
    if-ge p3, p2, :cond_1

    move p3, p2

    .line 493
    :cond_1
    if-ltz p2, :cond_2

    if-gtz p3, :cond_3

    .line 494
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 496
    :cond_3
    if-gt p2, v1, :cond_4

    .line 497
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$UnpaddedNumber;

    invoke-direct {v0, p1, p3, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder$UnpaddedNumber;-><init>(Lorg/joda/time/DateTimeFieldType;IZ)V

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Ljava/lang/Object;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 499
    :goto_0
    return-object v0

    :cond_4
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$PaddedNumber;

    invoke-direct {v0, p1, p3, v1, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder$PaddedNumber;-><init>(Lorg/joda/time/DateTimeFieldType;IZI)V

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Ljava/lang/Object;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    goto :goto_0
.end method

.method public appendText(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    .prologue
    .line 535
    if-nez p1, :cond_0

    .line 536
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field type must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 538
    :cond_0
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;-><init>(Lorg/joda/time/DateTimeFieldType;Z)V

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Ljava/lang/Object;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendTimeZoneId()Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    .prologue
    .line 1069
    sget-object v0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneId;->INSTANCE:Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneId;

    sget-object v1, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneId;->INSTANCE:Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneId;

    invoke-direct {p0, v0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Lorg/joda/time/format/InternalPrinter;Lorg/joda/time/format/InternalParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendTimeZoneName()Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1019
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneName;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneName;-><init>(ILjava/util/Map;)V

    invoke-direct {p0, v0, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Lorg/joda/time/format/InternalPrinter;Lorg/joda/time/format/InternalParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendTimeZoneName(Ljava/util/Map;)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/joda/time/DateTimeZone;",
            ">;)",
            "Lorg/joda/time/format/DateTimeFormatterBuilder;"
        }
    .end annotation

    .prologue
    .line 1032
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneName;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneName;-><init>(ILjava/util/Map;)V

    .line 1033
    invoke-direct {p0, v0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Lorg/joda/time/format/InternalPrinter;Lorg/joda/time/format/InternalParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendTimeZoneOffset(Ljava/lang/String;Ljava/lang/String;ZII)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 6

    .prologue
    .line 1119
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;-><init>(Ljava/lang/String;Ljava/lang/String;ZII)V

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Ljava/lang/Object;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendTimeZoneOffset(Ljava/lang/String;ZII)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 6

    .prologue
    .line 1092
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;

    move-object v1, p1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;-><init>(Ljava/lang/String;Ljava/lang/String;ZII)V

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Ljava/lang/Object;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendTimeZoneShortName()Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1044
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneName;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneName;-><init>(ILjava/util/Map;)V

    invoke-direct {p0, v0, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Lorg/joda/time/format/InternalPrinter;Lorg/joda/time/format/InternalParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendTimeZoneShortName(Ljava/util/Map;)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/joda/time/DateTimeZone;",
            ">;)",
            "Lorg/joda/time/format/DateTimeFormatterBuilder;"
        }
    .end annotation

    .prologue
    .line 1058
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneName;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneName;-><init>(ILjava/util/Map;)V

    .line 1059
    invoke-direct {p0, v0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Lorg/joda/time/format/InternalPrinter;Lorg/joda/time/format/InternalParser;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendTwoDigitWeekyear(I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 1

    .prologue
    .line 892
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendTwoDigitWeekyear(IZ)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendTwoDigitWeekyear(IZ)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    .prologue
    .line 910
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekyear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;-><init>(Lorg/joda/time/DateTimeFieldType;IZ)V

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Ljava/lang/Object;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendTwoDigitYear(I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 1

    .prologue
    .line 852
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendTwoDigitYear(IZ)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendTwoDigitYear(IZ)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    .prologue
    .line 870
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->year()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;-><init>(Lorg/joda/time/DateTimeFieldType;IZ)V

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append0(Ljava/lang/Object;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendWeekOfWeekyear(I)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 2

    .prologue
    .line 796
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekOfWeekyear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendWeekyear(II)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 1

    .prologue
    .line 808
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekyear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendSignedDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendYear(II)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 1

    .prologue
    .line 830
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->year()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendSignedDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendYearOfCentury(II)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 1

    .prologue
    .line 934
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->yearOfCentury()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendYearOfEra(II)Lorg/joda/time/format/DateTimeFormatterBuilder;
    .locals 1

    .prologue
    .line 922
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->yearOfEra()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDecimal(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public canBuildFormatter()Z
    .locals 1

    .prologue
    .line 169
    invoke-direct {p0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->getFormatter()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->isFormatter(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public canBuildParser()Z
    .locals 1

    .prologue
    .line 189
    invoke-direct {p0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->getFormatter()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->isParser(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public canBuildPrinter()Z
    .locals 1

    .prologue
    .line 179
    invoke-direct {p0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->getFormatter()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->isPrinter(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder;->iFormatter:Ljava/lang/Object;

    .line 199
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder;->iElementPairs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 200
    return-void
.end method

.method public toFormatter()Lorg/joda/time/format/DateTimeFormatter;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 104
    invoke-direct {p0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->getFormatter()Ljava/lang/Object;

    move-result-object v1

    .line 106
    invoke-direct {p0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->isPrinter(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 107
    check-cast v0, Lorg/joda/time/format/InternalPrinter;

    .line 110
    :goto_0
    invoke-direct {p0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->isParser(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 111
    check-cast v1, Lorg/joda/time/format/InternalParser;

    .line 113
    :goto_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 114
    :cond_0
    new-instance v2, Lorg/joda/time/format/DateTimeFormatter;

    invoke-direct {v2, v0, v1}, Lorg/joda/time/format/DateTimeFormatter;-><init>(Lorg/joda/time/format/InternalPrinter;Lorg/joda/time/format/InternalParser;)V

    return-object v2

    .line 116
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Both printing and parsing not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v1, v2

    goto :goto_1

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method public toParser()Lorg/joda/time/format/DateTimeParser;
    .locals 2

    .prologue
    .line 153
    invoke-direct {p0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->getFormatter()Ljava/lang/Object;

    move-result-object v0

    .line 154
    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->isParser(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    check-cast v0, Lorg/joda/time/format/InternalParser;

    .line 156
    invoke-static {v0}, Lorg/joda/time/format/InternalParserDateTimeParser;->of(Lorg/joda/time/format/InternalParser;)Lorg/joda/time/format/DateTimeParser;

    move-result-object v0

    return-object v0

    .line 158
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Parsing is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toPrinter()Lorg/joda/time/format/DateTimePrinter;
    .locals 2

    .prologue
    .line 132
    invoke-direct {p0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->getFormatter()Ljava/lang/Object;

    move-result-object v0

    .line 133
    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->isPrinter(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    check-cast v0, Lorg/joda/time/format/InternalPrinter;

    .line 135
    invoke-static {v0}, Lorg/joda/time/format/InternalPrinterDateTimePrinter;->of(Lorg/joda/time/format/InternalPrinter;)Lorg/joda/time/format/DateTimePrinter;

    move-result-object v0

    return-object v0

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Printing is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
