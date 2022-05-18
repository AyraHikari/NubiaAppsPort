.class Lorg/joda/time/format/DateTimePrinterInternalPrinter;
.super Ljava/lang/Object;
.source "DateTimePrinterInternalPrinter.java"

# interfaces
.implements Lorg/joda/time/format/InternalPrinter;


# instance fields
.field private final underlying:Lorg/joda/time/format/DateTimePrinter;


# direct methods
.method private constructor <init>(Lorg/joda/time/format/DateTimePrinter;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/joda/time/format/DateTimePrinterInternalPrinter;->underlying:Lorg/joda/time/format/DateTimePrinter;

    .line 48
    return-void
.end method

.method static of(Lorg/joda/time/format/DateTimePrinter;)Lorg/joda/time/format/InternalPrinter;
    .locals 1

    .prologue
    .line 37
    instance-of v0, p0, Lorg/joda/time/format/InternalPrinterDateTimePrinter;

    if-eqz v0, :cond_0

    .line 38
    check-cast p0, Lorg/joda/time/format/InternalPrinter;

    .line 43
    :goto_0
    return-object p0

    .line 40
    :cond_0
    if-nez p0, :cond_1

    .line 41
    const/4 p0, 0x0

    goto :goto_0

    .line 43
    :cond_1
    new-instance v0, Lorg/joda/time/format/DateTimePrinterInternalPrinter;

    invoke-direct {v0, p0}, Lorg/joda/time/format/DateTimePrinterInternalPrinter;-><init>(Lorg/joda/time/format/DateTimePrinter;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public estimatePrintedLength()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/joda/time/format/DateTimePrinterInternalPrinter;->underlying:Lorg/joda/time/format/DateTimePrinter;

    invoke-interface {v0}, Lorg/joda/time/format/DateTimePrinter;->estimatePrintedLength()I

    move-result v0

    return v0
.end method

.method getUnderlying()Lorg/joda/time/format/DateTimePrinter;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/joda/time/format/DateTimePrinterInternalPrinter;->underlying:Lorg/joda/time/format/DateTimePrinter;

    return-object v0
.end method

.method public printTo(Ljava/lang/Appendable;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    instance-of v0, p1, Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    move-object v1, p1

    .line 63
    check-cast v1, Ljava/lang/StringBuffer;

    .line 64
    iget-object v0, p0, Lorg/joda/time/format/DateTimePrinterInternalPrinter;->underlying:Lorg/joda/time/format/DateTimePrinter;

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lorg/joda/time/format/DateTimePrinter;->printTo(Ljava/lang/StringBuffer;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V

    .line 73
    :goto_0
    return-void

    .line 65
    :cond_0
    instance-of v0, p1, Ljava/io/Writer;

    if-eqz v0, :cond_1

    move-object v1, p1

    .line 66
    check-cast v1, Ljava/io/Writer;

    .line 67
    iget-object v0, p0, Lorg/joda/time/format/DateTimePrinterInternalPrinter;->underlying:Lorg/joda/time/format/DateTimePrinter;

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lorg/joda/time/format/DateTimePrinter;->printTo(Ljava/io/Writer;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V

    goto :goto_0

    .line 69
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/joda/time/format/DateTimePrinterInternalPrinter;->estimatePrintedLength()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 70
    iget-object v0, p0, Lorg/joda/time/format/DateTimePrinterInternalPrinter;->underlying:Lorg/joda/time/format/DateTimePrinter;

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lorg/joda/time/format/DateTimePrinter;->printTo(Ljava/lang/StringBuffer;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V

    .line 71
    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

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
    .line 76
    instance-of v0, p1, Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    .line 77
    check-cast p1, Ljava/lang/StringBuffer;

    .line 78
    iget-object v0, p0, Lorg/joda/time/format/DateTimePrinterInternalPrinter;->underlying:Lorg/joda/time/format/DateTimePrinter;

    invoke-interface {v0, p1, p2, p3}, Lorg/joda/time/format/DateTimePrinter;->printTo(Ljava/lang/StringBuffer;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V

    .line 87
    :goto_0
    return-void

    .line 79
    :cond_0
    instance-of v0, p1, Ljava/io/Writer;

    if-eqz v0, :cond_1

    .line 80
    check-cast p1, Ljava/io/Writer;

    .line 81
    iget-object v0, p0, Lorg/joda/time/format/DateTimePrinterInternalPrinter;->underlying:Lorg/joda/time/format/DateTimePrinter;

    invoke-interface {v0, p1, p2, p3}, Lorg/joda/time/format/DateTimePrinter;->printTo(Ljava/io/Writer;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V

    goto :goto_0

    .line 83
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/joda/time/format/DateTimePrinterInternalPrinter;->estimatePrintedLength()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 84
    iget-object v1, p0, Lorg/joda/time/format/DateTimePrinterInternalPrinter;->underlying:Lorg/joda/time/format/DateTimePrinter;

    invoke-interface {v1, v0, p2, p3}, Lorg/joda/time/format/DateTimePrinter;->printTo(Ljava/lang/StringBuffer;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V

    .line 85
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0
.end method
