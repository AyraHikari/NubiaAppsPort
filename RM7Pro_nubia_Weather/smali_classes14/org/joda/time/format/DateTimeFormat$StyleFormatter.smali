.class Lorg/joda/time/format/DateTimeFormat$StyleFormatter;
.super Ljava/lang/Object;
.source "DateTimeFormat.java"

# interfaces
.implements Lorg/joda/time/format/InternalPrinter;
.implements Lorg/joda/time/format/InternalParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/DateTimeFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StyleFormatter"
.end annotation


# static fields
.field private static final cCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lorg/joda/time/format/DateTimeFormat$StyleFormatterCacheKey;",
            "Lorg/joda/time/format/DateTimeFormatter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final iDateStyle:I

.field private final iTimeStyle:I

.field private final iType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 790
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->cCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method constructor <init>(III)V
    .locals 0

    .prologue
    .line 797
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 798
    iput p1, p0, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->iDateStyle:I

    .line 799
    iput p2, p0, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->iTimeStyle:I

    .line 800
    iput p3, p0, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->iType:I

    .line 801
    return-void
.end method

.method private getFormatter(Ljava/util/Locale;)Lorg/joda/time/format/DateTimeFormatter;
    .locals 4

    .prologue
    .line 829
    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 830
    :cond_0
    new-instance v2, Lorg/joda/time/format/DateTimeFormat$StyleFormatterCacheKey;

    iget v0, p0, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->iType:I

    iget v1, p0, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->iDateStyle:I

    iget v3, p0, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->iTimeStyle:I

    invoke-direct {v2, v0, v1, v3, p1}, Lorg/joda/time/format/DateTimeFormat$StyleFormatterCacheKey;-><init>(IIILjava/util/Locale;)V

    .line 831
    sget-object v0, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->cCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/format/DateTimeFormatter;

    .line 832
    if-nez v0, :cond_1

    .line 833
    invoke-virtual {p0, p1}, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->getPattern(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    .line 834
    sget-object v0, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->cCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/format/DateTimeFormatter;

    .line 835
    if-eqz v0, :cond_2

    .line 839
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public estimateParsedLength()I
    .locals 1

    .prologue
    .line 820
    const/16 v0, 0x28

    return v0
.end method

.method public estimatePrintedLength()I
    .locals 1

    .prologue
    .line 804
    const/16 v0, 0x28

    return v0
.end method

.method getPattern(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 843
    const/4 v0, 0x0

    .line 844
    iget v1, p0, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->iType:I

    packed-switch v1, :pswitch_data_0

    .line 855
    :goto_0
    instance-of v1, v0, Ljava/text/SimpleDateFormat;

    if-nez v1, :cond_0

    .line 856
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No datetime pattern for locale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 846
    :pswitch_0
    iget v0, p0, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->iDateStyle:I

    invoke-static {v0, p1}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    goto :goto_0

    .line 849
    :pswitch_1
    iget v0, p0, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->iTimeStyle:I

    invoke-static {v0, p1}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    goto :goto_0

    .line 852
    :pswitch_2
    iget v0, p0, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->iDateStyle:I

    iget v1, p0, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->iTimeStyle:I

    invoke-static {v0, v1, p1}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    goto :goto_0

    .line 858
    :cond_0
    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 844
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/CharSequence;I)I
    .locals 1

    .prologue
    .line 824
    invoke-virtual {p1}, Lorg/joda/time/format/DateTimeParserBucket;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->getFormatter(Ljava/util/Locale;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatter;->getParser0()Lorg/joda/time/format/InternalParser;

    move-result-object v0

    .line 825
    invoke-interface {v0, p1, p2, p3}, Lorg/joda/time/format/InternalParser;->parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public printTo(Ljava/lang/Appendable;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 810
    invoke-direct {p0, p7}, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->getFormatter(Ljava/util/Locale;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatter;->getPrinter0()Lorg/joda/time/format/InternalPrinter;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 811
    invoke-interface/range {v0 .. v7}, Lorg/joda/time/format/InternalPrinter;->printTo(Ljava/lang/Appendable;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V

    .line 812
    return-void
.end method

.method public printTo(Ljava/lang/Appendable;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 815
    invoke-direct {p0, p3}, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->getFormatter(Ljava/util/Locale;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatter;->getPrinter0()Lorg/joda/time/format/InternalPrinter;

    move-result-object v0

    .line 816
    invoke-interface {v0, p1, p2, p3}, Lorg/joda/time/format/InternalPrinter;->printTo(Ljava/lang/Appendable;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V

    .line 817
    return-void
.end method
