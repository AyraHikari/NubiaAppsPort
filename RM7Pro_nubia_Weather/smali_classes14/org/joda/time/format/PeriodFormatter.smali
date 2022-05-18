.class public Lorg/joda/time/format/PeriodFormatter;
.super Ljava/lang/Object;
.source "PeriodFormatter.java"


# instance fields
.field private final iLocale:Ljava/util/Locale;

.field private final iParseType:Lorg/joda/time/PeriodType;

.field private final iParser:Lorg/joda/time/format/PeriodParser;

.field private final iPrinter:Lorg/joda/time/format/PeriodPrinter;


# direct methods
.method public constructor <init>(Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lorg/joda/time/format/PeriodFormatter;->iPrinter:Lorg/joda/time/format/PeriodPrinter;

    .line 89
    iput-object p2, p0, Lorg/joda/time/format/PeriodFormatter;->iParser:Lorg/joda/time/format/PeriodParser;

    .line 90
    iput-object v0, p0, Lorg/joda/time/format/PeriodFormatter;->iLocale:Ljava/util/Locale;

    .line 91
    iput-object v0, p0, Lorg/joda/time/format/PeriodFormatter;->iParseType:Lorg/joda/time/PeriodType;

    .line 92
    return-void
.end method

.method constructor <init>(Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;Ljava/util/Locale;Lorg/joda/time/PeriodType;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lorg/joda/time/format/PeriodFormatter;->iPrinter:Lorg/joda/time/format/PeriodPrinter;

    .line 107
    iput-object p2, p0, Lorg/joda/time/format/PeriodFormatter;->iParser:Lorg/joda/time/format/PeriodParser;

    .line 108
    iput-object p3, p0, Lorg/joda/time/format/PeriodFormatter;->iLocale:Ljava/util/Locale;

    .line 109
    iput-object p4, p0, Lorg/joda/time/format/PeriodFormatter;->iParseType:Lorg/joda/time/PeriodType;

    .line 110
    return-void
.end method

.method private checkParser()V
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatter;->iParser:Lorg/joda/time/format/PeriodParser;

    if-nez v0, :cond_0

    .line 340
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Parsing not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_0
    return-void
.end method

.method private checkPeriod(Lorg/joda/time/ReadablePeriod;)V
    .locals 2

    .prologue
    .line 266
    if-nez p1, :cond_0

    .line 267
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Period must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_0
    return-void
.end method

.method private checkPrinter()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatter;->iPrinter:Lorg/joda/time/format/PeriodPrinter;

    if-nez v0, :cond_0

    .line 256
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Printing not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_0
    return-void
.end method


# virtual methods
.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatter;->iLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getParseType()Lorg/joda/time/PeriodType;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatter;->iParseType:Lorg/joda/time/PeriodType;

    return-object v0
.end method

.method public getParser()Lorg/joda/time/format/PeriodParser;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatter;->iParser:Lorg/joda/time/format/PeriodParser;

    return-object v0
.end method

.method public getPrinter()Lorg/joda/time/format/PeriodPrinter;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatter;->iPrinter:Lorg/joda/time/format/PeriodPrinter;

    return-object v0
.end method

.method public isParser()Z
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatter;->iParser:Lorg/joda/time/format/PeriodParser;

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
    .line 119
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatter;->iPrinter:Lorg/joda/time/format/PeriodPrinter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parseInto(Lorg/joda/time/ReadWritablePeriod;Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 292
    invoke-direct {p0}, Lorg/joda/time/format/PeriodFormatter;->checkParser()V

    .line 293
    invoke-direct {p0, p1}, Lorg/joda/time/format/PeriodFormatter;->checkPeriod(Lorg/joda/time/ReadablePeriod;)V

    .line 295
    invoke-virtual {p0}, Lorg/joda/time/format/PeriodFormatter;->getParser()Lorg/joda/time/format/PeriodParser;

    move-result-object v0

    iget-object v1, p0, Lorg/joda/time/format/PeriodFormatter;->iLocale:Ljava/util/Locale;

    invoke-interface {v0, p1, p2, p3, v1}, Lorg/joda/time/format/PeriodParser;->parseInto(Lorg/joda/time/ReadWritablePeriod;Ljava/lang/String;ILjava/util/Locale;)I

    move-result v0

    return v0
.end method

.method public parseMutablePeriod(Ljava/lang/String;)Lorg/joda/time/MutablePeriod;
    .locals 4

    .prologue
    .line 319
    invoke-direct {p0}, Lorg/joda/time/format/PeriodFormatter;->checkParser()V

    .line 321
    new-instance v1, Lorg/joda/time/MutablePeriod;

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatter;->iParseType:Lorg/joda/time/PeriodType;

    invoke-direct {v1, v2, v3, v0}, Lorg/joda/time/MutablePeriod;-><init>(JLorg/joda/time/PeriodType;)V

    .line 322
    invoke-virtual {p0}, Lorg/joda/time/format/PeriodFormatter;->getParser()Lorg/joda/time/format/PeriodParser;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/joda/time/format/PeriodFormatter;->iLocale:Ljava/util/Locale;

    invoke-interface {v0, v1, p1, v2, v3}, Lorg/joda/time/format/PeriodParser;->parseInto(Lorg/joda/time/ReadWritablePeriod;Ljava/lang/String;ILjava/util/Locale;)I

    move-result v0

    .line 323
    if-ltz v0, :cond_0

    .line 324
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 325
    return-object v1

    .line 328
    :cond_0
    xor-int/lit8 v0, v0, -0x1

    .line 330
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, v0}, Lorg/joda/time/format/FormatUtils;->createErrorMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public parsePeriod(Ljava/lang/String;)Lorg/joda/time/Period;
    .locals 1

    .prologue
    .line 306
    invoke-direct {p0}, Lorg/joda/time/format/PeriodFormatter;->checkParser()V

    .line 308
    invoke-virtual {p0, p1}, Lorg/joda/time/format/PeriodFormatter;->parseMutablePeriod(Ljava/lang/String;)Lorg/joda/time/MutablePeriod;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/MutablePeriod;->toPeriod()Lorg/joda/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public print(Lorg/joda/time/ReadablePeriod;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 240
    invoke-direct {p0}, Lorg/joda/time/format/PeriodFormatter;->checkPrinter()V

    .line 241
    invoke-direct {p0, p1}, Lorg/joda/time/format/PeriodFormatter;->checkPeriod(Lorg/joda/time/ReadablePeriod;)V

    .line 243
    invoke-virtual {p0}, Lorg/joda/time/format/PeriodFormatter;->getPrinter()Lorg/joda/time/format/PeriodPrinter;

    move-result-object v0

    .line 244
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/joda/time/format/PeriodFormatter;->iLocale:Ljava/util/Locale;

    invoke-interface {v0, p1, v2}, Lorg/joda/time/format/PeriodPrinter;->calculatePrintedLength(Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 245
    iget-object v2, p0, Lorg/joda/time/format/PeriodFormatter;->iLocale:Ljava/util/Locale;

    invoke-interface {v0, v1, p1, v2}, Lorg/joda/time/format/PeriodPrinter;->printTo(Ljava/lang/StringBuffer;Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)V

    .line 246
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public printTo(Ljava/io/Writer;Lorg/joda/time/ReadablePeriod;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    invoke-direct {p0}, Lorg/joda/time/format/PeriodFormatter;->checkPrinter()V

    .line 228
    invoke-direct {p0, p2}, Lorg/joda/time/format/PeriodFormatter;->checkPeriod(Lorg/joda/time/ReadablePeriod;)V

    .line 230
    invoke-virtual {p0}, Lorg/joda/time/format/PeriodFormatter;->getPrinter()Lorg/joda/time/format/PeriodPrinter;

    move-result-object v0

    iget-object v1, p0, Lorg/joda/time/format/PeriodFormatter;->iLocale:Ljava/util/Locale;

    invoke-interface {v0, p1, p2, v1}, Lorg/joda/time/format/PeriodPrinter;->printTo(Ljava/io/Writer;Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)V

    .line 231
    return-void
.end method

.method public printTo(Ljava/lang/StringBuffer;Lorg/joda/time/ReadablePeriod;)V
    .locals 2

    .prologue
    .line 214
    invoke-direct {p0}, Lorg/joda/time/format/PeriodFormatter;->checkPrinter()V

    .line 215
    invoke-direct {p0, p2}, Lorg/joda/time/format/PeriodFormatter;->checkPeriod(Lorg/joda/time/ReadablePeriod;)V

    .line 217
    invoke-virtual {p0}, Lorg/joda/time/format/PeriodFormatter;->getPrinter()Lorg/joda/time/format/PeriodPrinter;

    move-result-object v0

    iget-object v1, p0, Lorg/joda/time/format/PeriodFormatter;->iLocale:Ljava/util/Locale;

    invoke-interface {v0, p1, p2, v1}, Lorg/joda/time/format/PeriodPrinter;->printTo(Ljava/lang/StringBuffer;Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)V

    .line 218
    return-void
.end method

.method public withLocale(Ljava/util/Locale;)Lorg/joda/time/format/PeriodFormatter;
    .locals 4

    .prologue
    .line 163
    invoke-virtual {p0}, Lorg/joda/time/format/PeriodFormatter;->getLocale()Ljava/util/Locale;

    move-result-object v0

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/joda/time/format/PeriodFormatter;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-object p0

    :cond_1
    new-instance v0, Lorg/joda/time/format/PeriodFormatter;

    iget-object v1, p0, Lorg/joda/time/format/PeriodFormatter;->iPrinter:Lorg/joda/time/format/PeriodPrinter;

    iget-object v2, p0, Lorg/joda/time/format/PeriodFormatter;->iParser:Lorg/joda/time/format/PeriodParser;

    iget-object v3, p0, Lorg/joda/time/format/PeriodFormatter;->iParseType:Lorg/joda/time/PeriodType;

    invoke-direct {v0, v1, v2, p1, v3}, Lorg/joda/time/format/PeriodFormatter;-><init>(Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;Ljava/util/Locale;Lorg/joda/time/PeriodType;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withParseType(Lorg/joda/time/PeriodType;)Lorg/joda/time/format/PeriodFormatter;
    .locals 4

    .prologue
    .line 191
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatter;->iParseType:Lorg/joda/time/PeriodType;

    if-ne p1, v0, :cond_0

    .line 194
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lorg/joda/time/format/PeriodFormatter;

    iget-object v1, p0, Lorg/joda/time/format/PeriodFormatter;->iPrinter:Lorg/joda/time/format/PeriodPrinter;

    iget-object v2, p0, Lorg/joda/time/format/PeriodFormatter;->iParser:Lorg/joda/time/format/PeriodParser;

    iget-object v3, p0, Lorg/joda/time/format/PeriodFormatter;->iLocale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2, v3, p1}, Lorg/joda/time/format/PeriodFormatter;-><init>(Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;Ljava/util/Locale;Lorg/joda/time/PeriodType;)V

    move-object p0, v0

    goto :goto_0
.end method
