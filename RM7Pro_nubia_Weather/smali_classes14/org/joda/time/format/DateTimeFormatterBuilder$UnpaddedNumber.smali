.class Lorg/joda/time/format/DateTimeFormatterBuilder$UnpaddedNumber;
.super Lorg/joda/time/format/DateTimeFormatterBuilder$NumberFormatter;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnpaddedNumber"
.end annotation


# direct methods
.method protected constructor <init>(Lorg/joda/time/DateTimeFieldType;IZ)V
    .locals 0

    .prologue
    .line 1377
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/format/DateTimeFormatterBuilder$NumberFormatter;-><init>(Lorg/joda/time/DateTimeFieldType;IZ)V

    .line 1378
    return-void
.end method


# virtual methods
.method public estimatePrintedLength()I
    .locals 1

    .prologue
    .line 1381
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$UnpaddedNumber;->iMaxParsedDigits:I

    return v0
.end method

.method public printTo(Ljava/lang/Appendable;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1388
    :try_start_0
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$UnpaddedNumber;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v0, p4}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    .line 1389
    invoke-virtual {v0, p2, p3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    invoke-static {p1, v0}, Lorg/joda/time/format/FormatUtils;->appendUnpaddedInteger(Ljava/lang/Appendable;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1393
    :goto_0
    return-void

    .line 1390
    :catch_0
    move-exception v0

    .line 1391
    const v0, 0xfffd

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

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

    .line 1396
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$UnpaddedNumber;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    invoke-interface {p2, v0}, Lorg/joda/time/ReadablePartial;->isSupported(Lorg/joda/time/DateTimeFieldType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1398
    :try_start_0
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$UnpaddedNumber;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    invoke-interface {p2, v0}, Lorg/joda/time/ReadablePartial;->get(Lorg/joda/time/DateTimeFieldType;)I

    move-result v0

    invoke-static {p1, v0}, Lorg/joda/time/format/FormatUtils;->appendUnpaddedInteger(Ljava/lang/Appendable;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1405
    :goto_0
    return-void

    .line 1399
    :catch_0
    move-exception v0

    .line 1400
    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0

    .line 1403
    :cond_0
    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0
.end method
