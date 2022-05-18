.class Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;
.super Lorg/joda/time/format/PeriodFormatterBuilder$IgnorableAffix;
.source "PeriodFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/PeriodFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PluralAffix"
.end annotation


# instance fields
.field private final iPluralText:Ljava/lang/String;

.field private final iSingularText:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1100
    invoke-direct {p0}, Lorg/joda/time/format/PeriodFormatterBuilder$IgnorableAffix;-><init>()V

    .line 1101
    iput-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;->iSingularText:Ljava/lang/String;

    .line 1102
    iput-object p2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;->iPluralText:Ljava/lang/String;

    .line 1103
    return-void
.end method


# virtual methods
.method public calculatePrintedLength(I)I
    .locals 1

    .prologue
    .line 1106
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;->iSingularText:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;->iPluralText:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAffixes()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 1173
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;->iSingularText:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;->iPluralText:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public parse(Ljava/lang/String;I)I
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1118
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;->iPluralText:Ljava/lang/String;

    .line 1119
    iget-object v2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;->iSingularText:Ljava/lang/String;

    .line 1121
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_2

    move-object v6, v0

    move-object v3, v2

    .line 1128
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1129
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;->matchesOtherAffix(ILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1130
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    .line 1139
    :goto_1
    return v0

    .line 1133
    :cond_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    move v2, p2

    move-object v3, v6

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1134
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;->matchesOtherAffix(ILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1135
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    goto :goto_1

    .line 1139
    :cond_1
    xor-int/lit8 v0, p2, -0x1

    goto :goto_1

    :cond_2
    move-object v6, v2

    move-object v3, v0

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
    .line 1114
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;->iSingularText:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1115
    return-void

    .line 1114
    :cond_0
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;->iPluralText:Ljava/lang/String;

    goto :goto_0
.end method

.method public printTo(Ljava/lang/StringBuffer;I)V
    .locals 1

    .prologue
    .line 1110
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;->iSingularText:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1111
    return-void

    .line 1110
    :cond_0
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;->iPluralText:Ljava/lang/String;

    goto :goto_0
.end method

.method public scan(Ljava/lang/String;I)I
    .locals 13

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1143
    iget-object v9, p0, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;->iPluralText:Ljava/lang/String;

    .line 1144
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;->iSingularText:Ljava/lang/String;

    .line 1146
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    move-object v3, v0

    .line 1153
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    .line 1154
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    .line 1156
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v12

    move v2, p2

    .line 1157
    :goto_1
    if-ge v2, v12, :cond_3

    move-object v0, p1

    .line 1158
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1159
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0, p1, v2}, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;->matchesOtherAffix(ILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1169
    :cond_0
    :goto_2
    return v2

    :cond_1
    move-object v6, p1

    move v7, v1

    move v8, v2

    move v10, v4

    .line 1163
    invoke-virtual/range {v6 .. v11}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1164
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0, p1, v2}, Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;->matchesOtherAffix(ILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1157
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1169
    :cond_3
    xor-int/lit8 v2, p2, -0x1

    goto :goto_2

    :cond_4
    move-object v3, v9

    move-object v9, v0

    goto :goto_0
.end method
