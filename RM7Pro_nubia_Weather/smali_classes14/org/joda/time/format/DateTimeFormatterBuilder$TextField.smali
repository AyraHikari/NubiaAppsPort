.class Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;
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
    name = "TextField"
.end annotation


# static fields
.field private static cParseCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "Ljava/util/Map",
            "<",
            "Lorg/joda/time/DateTimeFieldType;",
            "[",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final iFieldType:Lorg/joda/time/DateTimeFieldType;

.field private final iShort:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1657
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->cParseCache:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lorg/joda/time/DateTimeFieldType;Z)V
    .locals 0

    .prologue
    .line 1663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1664
    iput-object p1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    .line 1665
    iput-boolean p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->iShort:Z

    .line 1666
    return-void
.end method

.method private print(JLorg/joda/time/Chronology;Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1691
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v0, p3}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    .line 1692
    iget-boolean v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->iShort:Z

    if-eqz v1, :cond_0

    .line 1693
    invoke-virtual {v0, p1, p2, p4}, Lorg/joda/time/DateTimeField;->getAsShortText(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1695
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p1, p2, p4}, Lorg/joda/time/DateTimeField;->getAsText(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private print(Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1700
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePartial;->isSupported(Lorg/joda/time/DateTimeFieldType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1701
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    invoke-interface {p1}, Lorg/joda/time/ReadablePartial;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    .line 1702
    iget-boolean v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->iShort:Z

    if-eqz v1, :cond_0

    .line 1703
    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->getAsShortText(Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1708
    :goto_0
    return-object v0

    .line 1705
    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->getAsText(Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1708
    :cond_1
    const-string v0, "\ufffd"

    goto :goto_0
.end method


# virtual methods
.method public estimateParsedLength()I
    .locals 1

    .prologue
    .line 1713
    invoke-virtual {p0}, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->estimatePrintedLength()I

    move-result v0

    return v0
.end method

.method public estimatePrintedLength()I
    .locals 1

    .prologue
    .line 1669
    iget-boolean v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->iShort:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x14

    goto :goto_0
.end method

.method public parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/CharSequence;I)I
    .locals 11

    .prologue
    const/16 v8, 0x20

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1718
    invoke-virtual {p1}, Lorg/joda/time/format/DateTimeParserBucket;->getLocale()Ljava/util/Locale;

    move-result-object v4

    .line 1723
    sget-object v0, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->cParseCache:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1724
    if-nez v0, :cond_6

    .line 1725
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 1726
    sget-object v1, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->cParseCache:Ljava/util/Map;

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 1728
    :goto_0
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 1729
    if-nez v0, :cond_3

    .line 1730
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2, v8}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 1731
    new-instance v0, Lorg/joda/time/MutableDateTime;

    const-wide/16 v6, 0x0

    sget-object v3, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-direct {v0, v6, v7, v3}, Lorg/joda/time/MutableDateTime;-><init>(JLorg/joda/time/DateTimeZone;)V

    .line 1732
    iget-object v3, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v0, v3}, Lorg/joda/time/MutableDateTime;->property(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/MutableDateTime$Property;

    move-result-object v5

    .line 1733
    invoke-virtual {v5}, Lorg/joda/time/MutableDateTime$Property;->getMinimumValueOverall()I

    move-result v3

    .line 1734
    invoke-virtual {v5}, Lorg/joda/time/MutableDateTime$Property;->getMaximumValueOverall()I

    move-result v6

    .line 1735
    sub-int v0, v6, v3

    if-le v0, v8, :cond_0

    .line 1736
    xor-int/lit8 v0, p3, -0x1

    .line 1771
    :goto_1
    return v0

    .line 1738
    :cond_0
    invoke-virtual {v5, v4}, Lorg/joda/time/MutableDateTime$Property;->getMaximumTextLength(Ljava/util/Locale;)I

    move-result v0

    .line 1739
    :goto_2
    if-gt v3, v6, :cond_1

    .line 1740
    invoke-virtual {v5, v3}, Lorg/joda/time/MutableDateTime$Property;->set(I)Lorg/joda/time/MutableDateTime;

    .line 1741
    invoke-virtual {v5, v4}, Lorg/joda/time/MutableDateTime$Property;->getAsShortText(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1742
    invoke-virtual {v5, v4}, Lorg/joda/time/MutableDateTime$Property;->getAsShortText(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1743
    invoke-virtual {v5, v4}, Lorg/joda/time/MutableDateTime$Property;->getAsShortText(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1744
    invoke-virtual {v5, v4}, Lorg/joda/time/MutableDateTime$Property;->getAsText(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1745
    invoke-virtual {v5, v4}, Lorg/joda/time/MutableDateTime$Property;->getAsText(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1746
    invoke-virtual {v5, v4}, Lorg/joda/time/MutableDateTime$Property;->getAsText(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1739
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1748
    :cond_1
    const-string v3, "en"

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->era()Lorg/joda/time/DateTimeFieldType;

    move-result-object v5

    if-ne v3, v5, :cond_2

    .line 1750
    const-string v0, "BCE"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1751
    const-string v0, "bce"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1752
    const-string v0, "CE"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1753
    const-string v0, "ce"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1754
    const/4 v0, 0x3

    .line 1756
    :cond_2
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v10

    .line 1757
    iget-object v5, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    .line 1763
    :goto_3
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v0, p3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1764
    :goto_4
    if-le v0, p3, :cond_5

    .line 1765
    invoke-interface {p2, p3, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1766
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1767
    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {p1, v1, v2, v4}, Lorg/joda/time/format/DateTimeParserBucket;->saveField(Lorg/joda/time/DateTimeFieldType;Ljava/lang/String;Ljava/util/Locale;)V

    goto/16 :goto_1

    .line 1759
    :cond_3
    aget-object v1, v0, v9

    check-cast v1, Ljava/util/Map;

    .line 1760
    aget-object v0, v0, v10

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3

    .line 1764
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 1771
    :cond_5
    xor-int/lit8 v0, p3, -0x1

    goto/16 :goto_1

    :cond_6
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public printTo(Ljava/lang/Appendable;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1676
    :try_start_0
    invoke-direct {p0, p2, p3, p4, p7}, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->print(JLorg/joda/time/Chronology;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1680
    :goto_0
    return-void

    .line 1677
    :catch_0
    move-exception v0

    .line 1678
    const v0, 0xfffd

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0
.end method

.method public printTo(Ljava/lang/Appendable;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1684
    :try_start_0
    invoke-direct {p0, p2, p3}, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->print(Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1688
    :goto_0
    return-void

    .line 1685
    :catch_0
    move-exception v0

    .line 1686
    const v0, 0xfffd

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0
.end method
