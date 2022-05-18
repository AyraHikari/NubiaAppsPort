.class public Lorg/joda/time/format/ISOPeriodFormat;
.super Ljava/lang/Object;
.source "ISOPeriodFormat.java"


# static fields
.field private static cAlternate:Lorg/joda/time/format/PeriodFormatter;

.field private static cAlternateExtended:Lorg/joda/time/format/PeriodFormatter;

.field private static cAlternateExtendedWihWeeks:Lorg/joda/time/format/PeriodFormatter;

.field private static cAlternateWithWeeks:Lorg/joda/time/format/PeriodFormatter;

.field private static cStandard:Lorg/joda/time/format/PeriodFormatter;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static alternate()Lorg/joda/time/format/PeriodFormatter;
    .locals 2

    .prologue
    .line 97
    sget-object v0, Lorg/joda/time/format/ISOPeriodFormat;->cAlternate:Lorg/joda/time/format/PeriodFormatter;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lorg/joda/time/format/PeriodFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/PeriodFormatterBuilder;-><init>()V

    const-string v1, "P"

    invoke-virtual {v0, v1}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendLiteral(Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->printZeroAlways()Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/joda/time/format/PeriodFormatterBuilder;->minimumPrintedDigits(I)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendYears()Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/joda/time/format/PeriodFormatterBuilder;->minimumPrintedDigits(I)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendMonths()Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendDays()Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    const-string v1, "T"

    invoke-virtual {v0, v1}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSeparatorIfFieldsAfter(Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendHours()Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendMinutes()Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSecondsWithOptionalMillis()Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->toFormatter()Lorg/joda/time/format/PeriodFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISOPeriodFormat;->cAlternate:Lorg/joda/time/format/PeriodFormatter;

    .line 112
    :cond_0
    sget-object v0, Lorg/joda/time/format/ISOPeriodFormat;->cAlternate:Lorg/joda/time/format/PeriodFormatter;

    return-object v0
.end method

.method public static alternateExtended()Lorg/joda/time/format/PeriodFormatter;
    .locals 2

    .prologue
    .line 124
    sget-object v0, Lorg/joda/time/format/ISOPeriodFormat;->cAlternateExtended:Lorg/joda/time/format/PeriodFormatter;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lorg/joda/time/format/PeriodFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/PeriodFormatterBuilder;-><init>()V

    const-string v1, "P"

    invoke-virtual {v0, v1}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendLiteral(Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->printZeroAlways()Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/joda/time/format/PeriodFormatterBuilder;->minimumPrintedDigits(I)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendYears()Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSeparator(Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/joda/time/format/PeriodFormatterBuilder;->minimumPrintedDigits(I)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendMonths()Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSeparator(Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendDays()Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    const-string v1, "T"

    invoke-virtual {v0, v1}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSeparatorIfFieldsAfter(Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendHours()Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSeparator(Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendMinutes()Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSeparator(Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSecondsWithOptionalMillis()Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->toFormatter()Lorg/joda/time/format/PeriodFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISOPeriodFormat;->cAlternateExtended:Lorg/joda/time/format/PeriodFormatter;

    .line 143
    :cond_0
    sget-object v0, Lorg/joda/time/format/ISOPeriodFormat;->cAlternateExtended:Lorg/joda/time/format/PeriodFormatter;

    return-object v0
.end method

.method public static alternateExtendedWithWeeks()Lorg/joda/time/format/PeriodFormatter;
    .locals 2

    .prologue
    .line 183
    sget-object v0, Lorg/joda/time/format/ISOPeriodFormat;->cAlternateExtendedWihWeeks:Lorg/joda/time/format/PeriodFormatter;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Lorg/joda/time/format/PeriodFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/PeriodFormatterBuilder;-><init>()V

    const-string v1, "P"

    invoke-virtual {v0, v1}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendLiteral(Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->printZeroAlways()Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/joda/time/format/PeriodFormatterBuilder;->minimumPrintedDigits(I)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendYears()Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSeparator(Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/joda/time/format/PeriodFormatterBuilder;->minimumPrintedDigits(I)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    const-string v1, "W"

    invoke-virtual {v0, v1}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendPrefix(Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendWeeks()Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSeparator(Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendDays()Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    const-string v1, "T"

    invoke-virtual {v0, v1}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSeparatorIfFieldsAfter(Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendHours()Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSeparator(Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendMinutes()Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSeparator(Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSecondsWithOptionalMillis()Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->toFormatter()Lorg/joda/time/format/PeriodFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISOPeriodFormat;->cAlternateExtendedWihWeeks:Lorg/joda/time/format/PeriodFormatter;

    .line 203
    :cond_0
    sget-object v0, Lorg/joda/time/format/ISOPeriodFormat;->cAlternateExtendedWihWeeks:Lorg/joda/time/format/PeriodFormatter;

    return-object v0
.end method

.method public static alternateWithWeeks()Lorg/joda/time/format/PeriodFormatter;
    .locals 2

    .prologue
    .line 155
    sget-object v0, Lorg/joda/time/format/ISOPeriodFormat;->cAlternateWithWeeks:Lorg/joda/time/format/PeriodFormatter;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Lorg/joda/time/format/PeriodFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/PeriodFormatterBuilder;-><init>()V

    const-string v1, "P"

    invoke-virtual {v0, v1}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendLiteral(Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->printZeroAlways()Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/joda/time/format/PeriodFormatterBuilder;->minimumPrintedDigits(I)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendYears()Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/joda/time/format/PeriodFormatterBuilder;->minimumPrintedDigits(I)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    const-string v1, "W"

    invoke-virtual {v0, v1}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendPrefix(Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendWeeks()Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendDays()Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    const-string v1, "T"

    invoke-virtual {v0, v1}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSeparatorIfFieldsAfter(Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendHours()Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendMinutes()Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSecondsWithOptionalMillis()Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->toFormatter()Lorg/joda/time/format/PeriodFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISOPeriodFormat;->cAlternateWithWeeks:Lorg/joda/time/format/PeriodFormatter;

    .line 171
    :cond_0
    sget-object v0, Lorg/joda/time/format/ISOPeriodFormat;->cAlternateWithWeeks:Lorg/joda/time/format/PeriodFormatter;

    return-object v0
.end method

.method public static standard()Lorg/joda/time/format/PeriodFormatter;
    .locals 2

    .prologue
    .line 65
    sget-object v0, Lorg/joda/time/format/ISOPeriodFormat;->cStandard:Lorg/joda/time/format/PeriodFormatter;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lorg/joda/time/format/PeriodFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/PeriodFormatterBuilder;-><init>()V

    const-string v1, "P"

    invoke-virtual {v0, v1}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendLiteral(Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendYears()Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    const-string v1, "Y"

    invoke-virtual {v0, v1}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSuffix(Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendMonths()Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    const-string v1, "M"

    invoke-virtual {v0, v1}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSuffix(Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendWeeks()Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    const-string v1, "W"

    invoke-virtual {v0, v1}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSuffix(Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendDays()Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    const-string v1, "D"

    invoke-virtual {v0, v1}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSuffix(Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    const-string v1, "T"

    invoke-virtual {v0, v1}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSeparatorIfFieldsAfter(Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendHours()Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    const-string v1, "H"

    invoke-virtual {v0, v1}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSuffix(Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendMinutes()Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    const-string v1, "M"

    invoke-virtual {v0, v1}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSuffix(Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSecondsWithOptionalMillis()Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    const-string v1, "S"

    invoke-virtual {v0, v1}, Lorg/joda/time/format/PeriodFormatterBuilder;->appendSuffix(Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->toFormatter()Lorg/joda/time/format/PeriodFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/format/ISOPeriodFormat;->cStandard:Lorg/joda/time/format/PeriodFormatter;

    .line 85
    :cond_0
    sget-object v0, Lorg/joda/time/format/ISOPeriodFormat;->cStandard:Lorg/joda/time/format/PeriodFormatter;

    return-object v0
.end method
