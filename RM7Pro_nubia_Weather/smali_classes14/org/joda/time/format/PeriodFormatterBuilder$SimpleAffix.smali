.class Lorg/joda/time/format/PeriodFormatterBuilder$SimpleAffix;
.super Lorg/joda/time/format/PeriodFormatterBuilder$IgnorableAffix;
.source "PeriodFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/PeriodFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimpleAffix"
.end annotation


# instance fields
.field private final iText:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1035
    invoke-direct {p0}, Lorg/joda/time/format/PeriodFormatterBuilder$IgnorableAffix;-><init>()V

    .line 1036
    iput-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$SimpleAffix;->iText:Ljava/lang/String;

    .line 1037
    return-void
.end method


# virtual methods
.method public calculatePrintedLength(I)I
    .locals 1

    .prologue
    .line 1040
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$SimpleAffix;->iText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public getAffixes()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 1087
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$SimpleAffix;->iText:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public parse(Ljava/lang/String;I)I
    .locals 6

    .prologue
    .line 1052
    iget-object v3, p0, Lorg/joda/time/format/PeriodFormatterBuilder$SimpleAffix;->iText:Ljava/lang/String;

    .line 1053
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    .line 1054
    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1055
    invoke-virtual {p0, v5, p1, p2}, Lorg/joda/time/format/PeriodFormatterBuilder$SimpleAffix;->matchesOtherAffix(ILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1056
    add-int v0, p2, v5

    .line 1059
    :goto_0
    return v0

    :cond_0
    xor-int/lit8 v0, p2, -0x1

    goto :goto_0
.end method

.method public printTo(Ljava/io/Writer;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1048
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$SimpleAffix;->iText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1049
    return-void
.end method

.method public printTo(Ljava/lang/StringBuffer;I)V
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$SimpleAffix;->iText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1045
    return-void
.end method

.method public scan(Ljava/lang/String;I)I
    .locals 7

    .prologue
    .line 1063
    iget-object v3, p0, Lorg/joda/time/format/PeriodFormatterBuilder$SimpleAffix;->iText:Ljava/lang/String;

    .line 1064
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    .line 1065
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    move v2, p2

    .line 1067
    :goto_0
    if-ge v2, v6, :cond_1

    .line 1068
    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1069
    invoke-virtual {p0, v5, p1, v2}, Lorg/joda/time/format/PeriodFormatterBuilder$SimpleAffix;->matchesOtherAffix(ILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1083
    :goto_1
    return v2

    .line 1074
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1083
    :cond_1
    :pswitch_0
    xor-int/lit8 v2, p2, -0x1

    goto :goto_1

    .line 1067
    :pswitch_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1074
    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
