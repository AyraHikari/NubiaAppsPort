.class Lorg/joda/time/format/DateTimeFormatterBuilder$StringLiteral;
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
    name = "StringLiteral"
.end annotation


# instance fields
.field private final iValue:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1256
    iput-object p1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$StringLiteral;->iValue:Ljava/lang/String;

    .line 1257
    return-void
.end method


# virtual methods
.method public estimateParsedLength()I
    .locals 1

    .prologue
    .line 1274
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$StringLiteral;->iValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public estimatePrintedLength()I
    .locals 1

    .prologue
    .line 1260
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$StringLiteral;->iValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/CharSequence;I)I
    .locals 1

    .prologue
    .line 1278
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$StringLiteral;->iValue:Ljava/lang/String;

    invoke-static {p2, p3, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->csStartsWithIgnoreCase(Ljava/lang/CharSequence;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1279
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$StringLiteral;->iValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p3

    .line 1281
    :goto_0
    return v0

    :cond_0
    xor-int/lit8 v0, p3, -0x1

    goto :goto_0
.end method

.method public printTo(Ljava/lang/Appendable;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1266
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$StringLiteral;->iValue:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 1267
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
    .line 1270
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$StringLiteral;->iValue:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 1271
    return-void
.end method
