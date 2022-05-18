.class Lorg/joda/time/format/PeriodFormatterBuilder$Separator;
.super Ljava/lang/Object;
.source "PeriodFormatterBuilder.java"

# interfaces
.implements Lorg/joda/time/format/PeriodPrinter;
.implements Lorg/joda/time/format/PeriodParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/PeriodFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Separator"
.end annotation


# instance fields
.field private volatile iAfterParser:Lorg/joda/time/format/PeriodParser;

.field private volatile iAfterPrinter:Lorg/joda/time/format/PeriodPrinter;

.field private final iBeforeParser:Lorg/joda/time/format/PeriodParser;

.field private final iBeforePrinter:Lorg/joda/time/format/PeriodPrinter;

.field private final iFinalText:Ljava/lang/String;

.field private final iParsedForms:[Ljava/lang/String;

.field private final iText:Ljava/lang/String;

.field private final iUseAfter:Z

.field private final iUseBefore:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;ZZ)V
    .locals 3

    .prologue
    .line 1925
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1926
    iput-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iText:Ljava/lang/String;

    .line 1927
    iput-object p2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iFinalText:Ljava/lang/String;

    .line 1929
    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p3, :cond_1

    array-length v0, p3

    if-nez v0, :cond_2

    .line 1932
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iParsedForms:[Ljava/lang/String;

    .line 1948
    :goto_0
    iput-object p4, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iBeforePrinter:Lorg/joda/time/format/PeriodPrinter;

    .line 1949
    iput-object p5, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iBeforeParser:Lorg/joda/time/format/PeriodParser;

    .line 1950
    iput-boolean p6, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iUseBefore:Z

    .line 1951
    iput-boolean p7, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iUseAfter:Z

    .line 1952
    return-void

    .line 1935
    :cond_2
    new-instance v1, Ljava/util/TreeSet;

    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 1936
    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1937
    invoke-virtual {v1, p2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1938
    if-eqz p3, :cond_3

    .line 1939
    array-length v0, p3

    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    .line 1940
    aget-object v2, p3, v0

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1943
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1944
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1945
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iParsedForms:[Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/joda/time/format/PeriodFormatterBuilder$Separator;)Lorg/joda/time/format/PeriodParser;
    .locals 1

    .prologue
    .line 1909
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iAfterParser:Lorg/joda/time/format/PeriodParser;

    return-object v0
.end method

.method static synthetic access$100(Lorg/joda/time/format/PeriodFormatterBuilder$Separator;)Lorg/joda/time/format/PeriodPrinter;
    .locals 1

    .prologue
    .line 1909
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iAfterPrinter:Lorg/joda/time/format/PeriodPrinter;

    return-object v0
.end method


# virtual methods
.method public calculatePrintedLength(Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1963
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iBeforePrinter:Lorg/joda/time/format/PeriodPrinter;

    .line 1964
    iget-object v2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iAfterPrinter:Lorg/joda/time/format/PeriodPrinter;

    .line 1966
    invoke-interface {v0, p1, p2}, Lorg/joda/time/format/PeriodPrinter;->calculatePrintedLength(Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)I

    move-result v1

    invoke-interface {v2, p1, p2}, Lorg/joda/time/format/PeriodPrinter;->calculatePrintedLength(Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1969
    iget-boolean v3, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iUseBefore:Z

    if-eqz v3, :cond_3

    .line 1970
    invoke-interface {v0, p1, v4, p2}, Lorg/joda/time/format/PeriodPrinter;->countFieldsToPrint(Lorg/joda/time/ReadablePeriod;ILjava/util/Locale;)I

    move-result v0

    if-lez v0, :cond_0

    .line 1971
    iget-boolean v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iUseAfter:Z

    if-eqz v0, :cond_2

    .line 1972
    const/4 v0, 0x2

    invoke-interface {v2, p1, v0, p2}, Lorg/joda/time/format/PeriodPrinter;->countFieldsToPrint(Lorg/joda/time/ReadablePeriod;ILjava/util/Locale;)I

    move-result v0

    .line 1973
    if-lez v0, :cond_4

    .line 1974
    if-le v0, v4, :cond_1

    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iText:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 1984
    :cond_0
    :goto_2
    return v1

    .line 1974
    :cond_1
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iFinalText:Ljava/lang/String;

    goto :goto_0

    .line 1977
    :cond_2
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_2

    .line 1980
    :cond_3
    iget-boolean v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iUseAfter:Z

    if-eqz v0, :cond_0

    invoke-interface {v2, p1, v4, p2}, Lorg/joda/time/format/PeriodPrinter;->countFieldsToPrint(Lorg/joda/time/ReadablePeriod;ILjava/util/Locale;)I

    move-result v0

    if-lez v0, :cond_0

    .line 1981
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public countFieldsToPrint(Lorg/joda/time/ReadablePeriod;ILjava/util/Locale;)I
    .locals 2

    .prologue
    .line 1955
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iBeforePrinter:Lorg/joda/time/format/PeriodPrinter;

    invoke-interface {v0, p1, p2, p3}, Lorg/joda/time/format/PeriodPrinter;->countFieldsToPrint(Lorg/joda/time/ReadablePeriod;ILjava/util/Locale;)I

    move-result v0

    .line 1956
    if-ge v0, p2, :cond_0

    .line 1957
    iget-object v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iAfterPrinter:Lorg/joda/time/format/PeriodPrinter;

    invoke-interface {v1, p1, p2, p3}, Lorg/joda/time/format/PeriodPrinter;->countFieldsToPrint(Lorg/joda/time/ReadablePeriod;ILjava/util/Locale;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1959
    :cond_0
    return v0
.end method

.method finish(Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;)Lorg/joda/time/format/PeriodFormatterBuilder$Separator;
    .locals 0

    .prologue
    .line 2081
    iput-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iAfterPrinter:Lorg/joda/time/format/PeriodPrinter;

    .line 2082
    iput-object p2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iAfterParser:Lorg/joda/time/format/PeriodParser;

    .line 2083
    return-object p0
.end method

.method public parseInto(Lorg/joda/time/ReadWritablePeriod;Ljava/lang/String;ILjava/util/Locale;)I
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 2034
    .line 2035
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iBeforeParser:Lorg/joda/time/format/PeriodParser;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/joda/time/format/PeriodParser;->parseInto(Lorg/joda/time/ReadWritablePeriod;Ljava/lang/String;ILjava/util/Locale;)I

    move-result v2

    .line 2037
    if-gez v2, :cond_0

    .line 2077
    :goto_0
    return v2

    .line 2042
    :cond_0
    const/4 v6, -0x1

    .line 2043
    if-le v2, p3, :cond_7

    .line 2045
    iget-object v8, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iParsedForms:[Ljava/lang/String;

    .line 2046
    array-length v9, v8

    move v7, v4

    .line 2047
    :goto_1
    if-ge v7, v9, :cond_7

    .line 2048
    aget-object v3, v8, v7

    .line 2049
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2052
    :cond_1
    if-nez v3, :cond_2

    .line 2053
    :goto_2
    add-int/2addr v2, v4

    .line 2061
    :goto_3
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iAfterParser:Lorg/joda/time/format/PeriodParser;

    invoke-interface {v0, p1, p2, v2, p4}, Lorg/joda/time/format/PeriodParser;->parseInto(Lorg/joda/time/ReadWritablePeriod;Ljava/lang/String;ILjava/util/Locale;)I

    move-result v0

    .line 2063
    if-gez v0, :cond_4

    move v2, v0

    .line 2064
    goto :goto_0

    .line 2052
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_2

    .line 2047
    :cond_3
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    .line 2067
    :cond_4
    if-eqz v1, :cond_5

    if-ne v0, v2, :cond_5

    if-lez v4, :cond_5

    .line 2069
    xor-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2072
    :cond_5
    if-le v0, v2, :cond_6

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iUseBefore:Z

    if-nez v1, :cond_6

    .line 2074
    xor-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_6
    move v2, v0

    .line 2077
    goto :goto_0

    :cond_7
    move v1, v4

    move v4, v6

    goto :goto_3
.end method

.method public printTo(Ljava/io/Writer;Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 2010
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iBeforePrinter:Lorg/joda/time/format/PeriodPrinter;

    .line 2011
    iget-object v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iAfterPrinter:Lorg/joda/time/format/PeriodPrinter;

    .line 2013
    invoke-interface {v0, p1, p2, p3}, Lorg/joda/time/format/PeriodPrinter;->printTo(Ljava/io/Writer;Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)V

    .line 2014
    iget-boolean v2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iUseBefore:Z

    if-eqz v2, :cond_3

    .line 2015
    invoke-interface {v0, p2, v3, p3}, Lorg/joda/time/format/PeriodPrinter;->countFieldsToPrint(Lorg/joda/time/ReadablePeriod;ILjava/util/Locale;)I

    move-result v0

    if-lez v0, :cond_0

    .line 2016
    iget-boolean v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iUseAfter:Z

    if-eqz v0, :cond_2

    .line 2017
    const/4 v0, 0x2

    invoke-interface {v1, p2, v0, p3}, Lorg/joda/time/format/PeriodPrinter;->countFieldsToPrint(Lorg/joda/time/ReadablePeriod;ILjava/util/Locale;)I

    move-result v0

    .line 2018
    if-lez v0, :cond_0

    .line 2019
    if-le v0, v3, :cond_1

    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iText:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2028
    :cond_0
    :goto_1
    invoke-interface {v1, p1, p2, p3}, Lorg/joda/time/format/PeriodPrinter;->printTo(Ljava/io/Writer;Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)V

    .line 2029
    return-void

    .line 2019
    :cond_1
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iFinalText:Ljava/lang/String;

    goto :goto_0

    .line 2022
    :cond_2
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 2025
    :cond_3
    iget-boolean v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iUseAfter:Z

    if-eqz v0, :cond_0

    invoke-interface {v1, p2, v3, p3}, Lorg/joda/time/format/PeriodPrinter;->countFieldsToPrint(Lorg/joda/time/ReadablePeriod;ILjava/util/Locale;)I

    move-result v0

    if-lez v0, :cond_0

    .line 2026
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public printTo(Ljava/lang/StringBuffer;Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1988
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iBeforePrinter:Lorg/joda/time/format/PeriodPrinter;

    .line 1989
    iget-object v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iAfterPrinter:Lorg/joda/time/format/PeriodPrinter;

    .line 1991
    invoke-interface {v0, p1, p2, p3}, Lorg/joda/time/format/PeriodPrinter;->printTo(Ljava/lang/StringBuffer;Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)V

    .line 1992
    iget-boolean v2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iUseBefore:Z

    if-eqz v2, :cond_3

    .line 1993
    invoke-interface {v0, p2, v3, p3}, Lorg/joda/time/format/PeriodPrinter;->countFieldsToPrint(Lorg/joda/time/ReadablePeriod;ILjava/util/Locale;)I

    move-result v0

    if-lez v0, :cond_0

    .line 1994
    iget-boolean v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iUseAfter:Z

    if-eqz v0, :cond_2

    .line 1995
    const/4 v0, 0x2

    invoke-interface {v1, p2, v0, p3}, Lorg/joda/time/format/PeriodPrinter;->countFieldsToPrint(Lorg/joda/time/ReadablePeriod;ILjava/util/Locale;)I

    move-result v0

    .line 1996
    if-lez v0, :cond_0

    .line 1997
    if-le v0, v3, :cond_1

    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iText:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2006
    :cond_0
    :goto_1
    invoke-interface {v1, p1, p2, p3}, Lorg/joda/time/format/PeriodPrinter;->printTo(Ljava/lang/StringBuffer;Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)V

    .line 2007
    return-void

    .line 1997
    :cond_1
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iFinalText:Ljava/lang/String;

    goto :goto_0

    .line 2000
    :cond_2
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 2003
    :cond_3
    iget-boolean v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iUseAfter:Z

    if-eqz v0, :cond_0

    invoke-interface {v1, p2, v3, p3}, Lorg/joda/time/format/PeriodPrinter;->countFieldsToPrint(Lorg/joda/time/ReadablePeriod;ILjava/util/Locale;)I

    move-result v0

    if-lez v0, :cond_0

    .line 2004
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->iText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method
