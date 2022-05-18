.class Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;
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
    name = "Fraction"
.end annotation


# instance fields
.field private final iFieldType:Lorg/joda/time/DateTimeFieldType;

.field protected iMaxDigits:I

.field protected iMinDigits:I


# direct methods
.method protected constructor <init>(Lorg/joda/time/DateTimeFieldType;II)V
    .locals 1

    .prologue
    const/16 v0, 0x12

    .line 1784
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1785
    iput-object p1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    .line 1787
    if-le p3, v0, :cond_0

    move p3, v0

    .line 1790
    :cond_0
    iput p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->iMinDigits:I

    .line 1791
    iput p3, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->iMaxDigits:I

    .line 1792
    return-void
.end method

.method private getFractionData(JLorg/joda/time/DateTimeField;)[J
    .locals 9

    .prologue
    .line 1872
    invoke-virtual {p3}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DurationField;->getUnitMillis()J

    move-result-wide v4

    .line 1874
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->iMaxDigits:I

    move v2, v0

    .line 1876
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 1877
    const-wide/16 v0, 0x1

    .line 1897
    :goto_1
    mul-long v6, v4, v0

    div-long/2addr v6, v0

    cmp-long v3, v6, v4

    if-nez v3, :cond_0

    .line 1904
    const/4 v3, 0x2

    new-array v3, v3, [J

    const/4 v6, 0x0

    mul-long/2addr v0, p1

    div-long/2addr v0, v4

    aput-wide v0, v3, v6

    const/4 v0, 0x1

    int-to-long v4, v2

    aput-wide v4, v3, v0

    return-object v3

    .line 1878
    :pswitch_0
    const-wide/16 v0, 0xa

    goto :goto_1

    .line 1879
    :pswitch_1
    const-wide/16 v0, 0x64

    goto :goto_1

    .line 1880
    :pswitch_2
    const-wide/16 v0, 0x3e8

    goto :goto_1

    .line 1881
    :pswitch_3
    const-wide/16 v0, 0x2710

    goto :goto_1

    .line 1882
    :pswitch_4
    const-wide/32 v0, 0x186a0

    goto :goto_1

    .line 1883
    :pswitch_5
    const-wide/32 v0, 0xf4240

    goto :goto_1

    .line 1884
    :pswitch_6
    const-wide/32 v0, 0x989680

    goto :goto_1

    .line 1885
    :pswitch_7
    const-wide/32 v0, 0x5f5e100

    goto :goto_1

    .line 1886
    :pswitch_8
    const-wide/32 v0, 0x3b9aca00

    goto :goto_1

    .line 1887
    :pswitch_9
    const-wide v0, 0x2540be400L

    goto :goto_1

    .line 1888
    :pswitch_a
    const-wide v0, 0x174876e800L

    goto :goto_1

    .line 1889
    :pswitch_b
    const-wide v0, 0xe8d4a51000L

    goto :goto_1

    .line 1890
    :pswitch_c
    const-wide v0, 0x9184e72a000L

    goto :goto_1

    .line 1891
    :pswitch_d
    const-wide v0, 0x5af3107a4000L

    goto :goto_1

    .line 1892
    :pswitch_e
    const-wide v0, 0x38d7ea4c68000L

    goto :goto_1

    .line 1893
    :pswitch_f
    const-wide v0, 0x2386f26fc10000L

    goto :goto_1

    .line 1894
    :pswitch_10
    const-wide v0, 0x16345785d8a0000L

    goto :goto_1

    .line 1895
    :pswitch_11
    const-wide v0, 0xde0b6b3a7640000L

    goto :goto_1

    .line 1901
    :cond_0
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 1876
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method


# virtual methods
.method public estimateParsedLength()I
    .locals 1

    .prologue
    .line 1908
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->iMaxDigits:I

    return v0
.end method

.method public estimatePrintedLength()I
    .locals 1

    .prologue
    .line 1795
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->iMaxDigits:I

    return v0
.end method

.method public parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/CharSequence;I)I
    .locals 12

    .prologue
    const-wide/16 v10, 0xa

    .line 1912
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {p1}, Lorg/joda/time/format/DateTimeParserBucket;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v1

    .line 1914
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->iMaxDigits:I

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, p3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1916
    const-wide/16 v4, 0x0

    .line 1917
    invoke-virtual {v1}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DurationField;->getUnitMillis()J

    move-result-wide v2

    mul-long/2addr v2, v10

    .line 1918
    const/4 v0, 0x0

    .line 1919
    :goto_0
    if-ge v0, v6, :cond_0

    .line 1920
    add-int v7, p3, v0

    invoke-interface {p2, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 1921
    const/16 v8, 0x30

    if-lt v7, v8, :cond_0

    const/16 v8, 0x39

    if-le v7, v8, :cond_1

    .line 1930
    :cond_0
    div-long v2, v4, v10

    .line 1932
    if-nez v0, :cond_2

    .line 1933
    xor-int/lit8 v0, p3, -0x1

    .line 1947
    :goto_1
    return v0

    .line 1924
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 1925
    div-long/2addr v2, v10

    .line 1926
    add-int/lit8 v7, v7, -0x30

    int-to-long v8, v7

    mul-long/2addr v8, v2

    add-long/2addr v4, v8

    .line 1928
    goto :goto_0

    .line 1936
    :cond_2
    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v2, v4

    if-lez v4, :cond_3

    .line 1937
    xor-int/lit8 v0, p3, -0x1

    goto :goto_1

    .line 1940
    :cond_3
    new-instance v4, Lorg/joda/time/field/PreciseDateTimeField;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->millisOfSecond()Lorg/joda/time/DateTimeFieldType;

    move-result-object v5

    sget-object v6, Lorg/joda/time/field/MillisDurationField;->INSTANCE:Lorg/joda/time/DurationField;

    invoke-virtual {v1}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v1

    invoke-direct {v4, v5, v6, v1}, Lorg/joda/time/field/PreciseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;)V

    .line 1945
    long-to-int v1, v2

    invoke-virtual {p1, v4, v1}, Lorg/joda/time/format/DateTimeParserBucket;->saveField(Lorg/joda/time/DateTimeField;I)V

    .line 1947
    add-int/2addr v0, p3

    goto :goto_1
.end method

.method protected printTo(Ljava/lang/Appendable;JLorg/joda/time/Chronology;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1814
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v0, p4}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    .line 1815
    iget v3, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->iMinDigits:I

    .line 1819
    :try_start_0
    invoke-virtual {v0, p2, p3}, Lorg/joda/time/DateTimeField;->remainder(J)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 1825
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    .line 1826
    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_0

    .line 1827
    const/16 v0, 0x30

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0

    .line 1820
    :catch_0
    move-exception v0

    .line 1821
    invoke-static {p1, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendUnknownString(Ljava/lang/Appendable;I)V

    .line 1869
    :cond_0
    :goto_1
    return-void

    .line 1833
    :cond_1
    invoke-direct {p0, v4, v5, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->getFractionData(JLorg/joda/time/DateTimeField;)[J

    move-result-object v0

    .line 1834
    const/4 v1, 0x0

    aget-wide v4, v0, v1

    .line 1835
    const/4 v1, 0x1

    aget-wide v0, v0, v1

    long-to-int v1, v0

    .line 1837
    const-wide/32 v6, 0x7fffffff

    and-long/2addr v6, v4

    cmp-long v0, v6, v4

    if-nez v0, :cond_2

    .line 1838
    long-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1843
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1845
    :goto_3
    if-ge v2, v1, :cond_3

    .line 1846
    const/16 v4, 0x30

    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1847
    add-int/lit8 v3, v3, -0x1

    .line 1848
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 1840
    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1851
    :cond_3
    if-ge v3, v1, :cond_6

    .line 1853
    :goto_4
    if-ge v3, v1, :cond_4

    .line 1854
    const/4 v4, 0x1

    if-le v2, v4, :cond_4

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-eq v4, v5, :cond_5

    .line 1860
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v2, v1, :cond_6

    .line 1861
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v2, :cond_0

    .line 1862
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1861
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1857
    :cond_5
    add-int/lit8 v1, v1, -0x1

    .line 1858
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 1868
    :cond_6
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1
.end method

.method public printTo(Ljava/lang/Appendable;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1801
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->printTo(Ljava/lang/Appendable;JLorg/joda/time/Chronology;)V

    .line 1802
    return-void
.end method

.method public printTo(Ljava/lang/Appendable;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1807
    invoke-interface {p2}, Lorg/joda/time/ReadablePartial;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p2, v2, v3}, Lorg/joda/time/Chronology;->set(Lorg/joda/time/ReadablePartial;J)J

    move-result-wide v0

    .line 1808
    invoke-interface {p2}, Lorg/joda/time/ReadablePartial;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->printTo(Ljava/lang/Appendable;JLorg/joda/time/Chronology;)V

    .line 1809
    return-void
.end method
