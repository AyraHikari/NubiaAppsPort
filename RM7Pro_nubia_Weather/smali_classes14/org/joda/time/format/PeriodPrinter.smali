.class public interface abstract Lorg/joda/time/format/PeriodPrinter;
.super Ljava/lang/Object;
.source "PeriodPrinter.java"


# virtual methods
.method public abstract calculatePrintedLength(Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)I
.end method

.method public abstract countFieldsToPrint(Lorg/joda/time/ReadablePeriod;ILjava/util/Locale;)I
.end method

.method public abstract printTo(Ljava/io/Writer;Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract printTo(Ljava/lang/StringBuffer;Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)V
.end method
