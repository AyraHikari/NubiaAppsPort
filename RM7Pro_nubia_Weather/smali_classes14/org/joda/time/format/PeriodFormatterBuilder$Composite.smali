.class Lorg/joda/time/format/PeriodFormatterBuilder$Composite;
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
    name = "Composite"
.end annotation


# instance fields
.field private final iParsers:[Lorg/joda/time/format/PeriodParser;

.field private final iPrinters:[Lorg/joda/time/format/PeriodPrinter;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 4
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
    const/4 v3, 0x0

    .line 2097
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2098
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2099
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2101
    invoke-direct {p0, p1, v0, v1}, Lorg/joda/time/format/PeriodFormatterBuilder$Composite;->decompose(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 2103
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 2104
    iput-object v3, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Composite;->iPrinters:[Lorg/joda/time/format/PeriodPrinter;

    .line 2110
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 2111
    iput-object v3, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Composite;->iParsers:[Lorg/joda/time/format/PeriodParser;

    .line 2116
    :goto_1
    return-void

    .line 2106
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/joda/time/format/PeriodPrinter;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/joda/time/format/PeriodPrinter;

    iput-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Composite;->iPrinters:[Lorg/joda/time/format/PeriodPrinter;

    goto :goto_0

    .line 2113
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/joda/time/format/PeriodParser;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/joda/time/format/PeriodParser;

    iput-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Composite;->iParsers:[Lorg/joda/time/format/PeriodParser;

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
    .line 2191
    if-eqz p2, :cond_0

    .line 2192
    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 2193
    aget-object v1, p2, v0

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2192
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2196
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
    .line 2168
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 2169
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_4

    .line 2170
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2171
    instance-of v3, v0, Lorg/joda/time/format/PeriodPrinter;

    if-eqz v3, :cond_0

    .line 2172
    instance-of v3, v0, Lorg/joda/time/format/PeriodFormatterBuilder$Composite;

    if-eqz v3, :cond_2

    .line 2173
    check-cast v0, Lorg/joda/time/format/PeriodFormatterBuilder$Composite;

    iget-object v0, v0, Lorg/joda/time/format/PeriodFormatterBuilder$Composite;->iPrinters:[Lorg/joda/time/format/PeriodPrinter;

    invoke-direct {p0, p2, v0}, Lorg/joda/time/format/PeriodFormatterBuilder$Composite;->addArrayToList(Ljava/util/List;[Ljava/lang/Object;)V

    .line 2179
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2180
    instance-of v3, v0, Lorg/joda/time/format/PeriodParser;

    if-eqz v3, :cond_1

    .line 2181
    instance-of v3, v0, Lorg/joda/time/format/PeriodFormatterBuilder$Composite;

    if-eqz v3, :cond_3

    .line 2182
    check-cast v0, Lorg/joda/time/format/PeriodFormatterBuilder$Composite;

    iget-object v0, v0, Lorg/joda/time/format/PeriodFormatterBuilder$Composite;->iParsers:[Lorg/joda/time/format/PeriodParser;

    invoke-direct {p0, p3, v0}, Lorg/joda/time/format/PeriodFormatterBuilder$Composite;->addArrayToList(Ljava/util/List;[Ljava/lang/Object;)V

    .line 2169
    :cond_1
    :goto_2
    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_0

    .line 2175
    :cond_2
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2184
    :cond_3
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2188
    :cond_4
    return-void
.end method


# virtual methods
.method public calculatePrintedLength(Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)I
    .locals 4

    .prologue
    .line 2128
    const/4 v1, 0x0

    .line 2129
    iget-object v2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Composite;->iPrinters:[Lorg/joda/time/format/PeriodPrinter;

    .line 2130
    array-length v0, v2

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 2131
    aget-object v3, v2, v0

    invoke-interface {v3, p1, p2}, Lorg/joda/time/format/PeriodPrinter;->calculatePrintedLength(Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    .line 2133
    :cond_0
    return v1
.end method

.method public countFieldsToPrint(Lorg/joda/time/ReadablePeriod;ILjava/util/Locale;)I
    .locals 5

    .prologue
    .line 2119
    const/4 v1, 0x0

    .line 2120
    iget-object v2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Composite;->iPrinters:[Lorg/joda/time/format/PeriodPrinter;

    .line 2121
    array-length v0, v2

    :goto_0
    if-ge v1, p2, :cond_0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 2122
    aget-object v3, v2, v0

    const v4, 0x7fffffff

    invoke-interface {v3, p1, v4, p3}, Lorg/joda/time/format/PeriodPrinter;->countFieldsToPrint(Lorg/joda/time/ReadablePeriod;ILjava/util/Locale;)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    .line 2124
    :cond_0
    return v1
.end method

.method public parseInto(Lorg/joda/time/ReadWritablePeriod;Ljava/lang/String;ILjava/util/Locale;)I
    .locals 4

    .prologue
    .line 2155
    iget-object v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Composite;->iParsers:[Lorg/joda/time/format/PeriodParser;

    .line 2156
    if-nez v1, :cond_0

    .line 2157
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2160
    :cond_0
    array-length v2, v1

    .line 2161
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    if-ltz p3, :cond_1

    .line 2162
    aget-object v3, v1, v0

    invoke-interface {v3, p1, p2, p3, p4}, Lorg/joda/time/format/PeriodParser;->parseInto(Lorg/joda/time/ReadWritablePeriod;Ljava/lang/String;ILjava/util/Locale;)I

    move-result p3

    .line 2161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2164
    :cond_1
    return p3
.end method

.method public printTo(Ljava/io/Writer;Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2145
    iget-object v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Composite;->iPrinters:[Lorg/joda/time/format/PeriodPrinter;

    .line 2146
    array-length v2, v1

    .line 2147
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 2148
    aget-object v3, v1, v0

    invoke-interface {v3, p1, p2, p3}, Lorg/joda/time/format/PeriodPrinter;->printTo(Ljava/io/Writer;Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)V

    .line 2147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2150
    :cond_0
    return-void
.end method

.method public printTo(Ljava/lang/StringBuffer;Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)V
    .locals 4

    .prologue
    .line 2137
    iget-object v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Composite;->iPrinters:[Lorg/joda/time/format/PeriodPrinter;

    .line 2138
    array-length v2, v1

    .line 2139
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 2140
    aget-object v3, v1, v0

    invoke-interface {v3, p1, p2, p3}, Lorg/joda/time/format/PeriodPrinter;->printTo(Ljava/lang/StringBuffer;Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)V

    .line 2139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2142
    :cond_0
    return-void
.end method
