.class public Lorg/apache/commons/lang/time/DurationFormatUtils;
.super Ljava/lang/Object;
.source "DurationFormatUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang/time/DurationFormatUtils$Token;
    }
.end annotation


# static fields
.field static final H:Ljava/lang/Object;

.field public static final ISO_EXTENDED_FORMAT_PATTERN:Ljava/lang/String; = "\'P\'yyyy\'Y\'M\'M\'d\'DT\'H\'H\'m\'M\'s.S\'S\'"

.field static final M:Ljava/lang/Object;

.field static final S:Ljava/lang/Object;

.field static final d:Ljava/lang/Object;

.field static final m:Ljava/lang/Object;

.field static final s:Ljava/lang/Object;

.field static final y:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 477
    const-string v0, "y"

    sput-object v0, Lorg/apache/commons/lang/time/DurationFormatUtils;->y:Ljava/lang/Object;

    .line 478
    const-string v0, "M"

    sput-object v0, Lorg/apache/commons/lang/time/DurationFormatUtils;->M:Ljava/lang/Object;

    .line 479
    const-string v0, "d"

    sput-object v0, Lorg/apache/commons/lang/time/DurationFormatUtils;->d:Ljava/lang/Object;

    .line 480
    const-string v0, "H"

    sput-object v0, Lorg/apache/commons/lang/time/DurationFormatUtils;->H:Ljava/lang/Object;

    .line 481
    const-string v0, "m"

    sput-object v0, Lorg/apache/commons/lang/time/DurationFormatUtils;->m:Ljava/lang/Object;

    .line 482
    const-string v0, "s"

    sput-object v0, Lorg/apache/commons/lang/time/DurationFormatUtils;->s:Ljava/lang/Object;

    .line 483
    const-string v0, "S"

    sput-object v0, Lorg/apache/commons/lang/time/DurationFormatUtils;->S:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method static format([Lorg/apache/commons/lang/time/DurationFormatUtils$Token;IIIIIIIZ)Ljava/lang/String;
    .locals 11
    .param p0, "tokens"    # [Lorg/apache/commons/lang/time/DurationFormatUtils$Token;
    .param p1, "years"    # I
    .param p2, "months"    # I
    .param p3, "days"    # I
    .param p4, "hours"    # I
    .param p5, "minutes"    # I
    .param p6, "seconds"    # I
    .param p7, "milliseconds"    # I
    .param p8, "padWithZeros"    # Z

    .prologue
    .line 424
    new-instance v1, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-direct {v1}, Lorg/apache/commons/lang/text/StrBuilder;-><init>()V

    .line 425
    .local v1, "buffer":Lorg/apache/commons/lang/text/StrBuilder;
    const/4 v4, 0x0

    .line 426
    .local v4, "lastOutputSeconds":Z
    array-length v6, p0

    .line 427
    .local v6, "sz":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_11

    .line 428
    aget-object v7, p0, v3

    .line 429
    .local v7, "token":Lorg/apache/commons/lang/time/DurationFormatUtils$Token;
    invoke-virtual {v7}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 430
    .local v8, "value":Ljava/lang/Object;
    invoke-virtual {v7}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->getCount()I

    move-result v2

    .line 431
    .local v2, "count":I
    instance-of v9, v8, Ljava/lang/StringBuffer;

    if-eqz v9, :cond_1

    .line 432
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 427
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 434
    :cond_1
    sget-object v9, Lorg/apache/commons/lang/time/DurationFormatUtils;->y:Ljava/lang/Object;

    if-ne v8, v9, :cond_3

    .line 435
    if-eqz p8, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x30

    invoke-static {v9, v2, v10}, Lorg/apache/commons/lang/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v9

    :goto_2
    invoke-virtual {v1, v9}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 437
    const/4 v4, 0x0

    goto :goto_1

    .line 435
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 438
    :cond_3
    sget-object v9, Lorg/apache/commons/lang/time/DurationFormatUtils;->M:Ljava/lang/Object;

    if-ne v8, v9, :cond_5

    .line 439
    if-eqz p8, :cond_4

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x30

    invoke-static {v9, v2, v10}, Lorg/apache/commons/lang/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v9

    :goto_3
    invoke-virtual {v1, v9}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 441
    const/4 v4, 0x0

    goto :goto_1

    .line 439
    :cond_4
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    .line 442
    :cond_5
    sget-object v9, Lorg/apache/commons/lang/time/DurationFormatUtils;->d:Ljava/lang/Object;

    if-ne v8, v9, :cond_7

    .line 443
    if-eqz p8, :cond_6

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x30

    invoke-static {v9, v2, v10}, Lorg/apache/commons/lang/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v9

    :goto_4
    invoke-virtual {v1, v9}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 445
    const/4 v4, 0x0

    goto :goto_1

    .line 443
    :cond_6
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    .line 446
    :cond_7
    sget-object v9, Lorg/apache/commons/lang/time/DurationFormatUtils;->H:Ljava/lang/Object;

    if-ne v8, v9, :cond_9

    .line 447
    if-eqz p8, :cond_8

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x30

    invoke-static {v9, v2, v10}, Lorg/apache/commons/lang/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v9

    :goto_5
    invoke-virtual {v1, v9}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 449
    const/4 v4, 0x0

    goto :goto_1

    .line 447
    :cond_8
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    .line 450
    :cond_9
    sget-object v9, Lorg/apache/commons/lang/time/DurationFormatUtils;->m:Ljava/lang/Object;

    if-ne v8, v9, :cond_b

    .line 451
    if-eqz p8, :cond_a

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x30

    invoke-static {v9, v2, v10}, Lorg/apache/commons/lang/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v9

    :goto_6
    invoke-virtual {v1, v9}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 453
    const/4 v4, 0x0

    goto :goto_1

    .line 451
    :cond_a
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    .line 454
    :cond_b
    sget-object v9, Lorg/apache/commons/lang/time/DurationFormatUtils;->s:Ljava/lang/Object;

    if-ne v8, v9, :cond_d

    .line 455
    if-eqz p8, :cond_c

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x30

    invoke-static {v9, v2, v10}, Lorg/apache/commons/lang/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v9

    :goto_7
    invoke-virtual {v1, v9}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 457
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 455
    :cond_c
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_7

    .line 458
    :cond_d
    sget-object v9, Lorg/apache/commons/lang/time/DurationFormatUtils;->S:Ljava/lang/Object;

    if-ne v8, v9, :cond_0

    .line 459
    if-eqz v4, :cond_f

    .line 460
    move/from16 v0, p7

    add-int/lit16 v0, v0, 0x3e8

    move/from16 p7, v0

    .line 461
    if-eqz p8, :cond_e

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x30

    invoke-static {v9, v2, v10}, Lorg/apache/commons/lang/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v5

    .line 464
    .local v5, "str":Ljava/lang/String;
    :goto_8
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 470
    .end local v5    # "str":Ljava/lang/String;
    :goto_9
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 461
    :cond_e
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    .line 466
    :cond_f
    if-eqz p8, :cond_10

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x30

    invoke-static {v9, v2, v10}, Lorg/apache/commons/lang/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v9

    :goto_a
    invoke-virtual {v1, v9}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    goto :goto_9

    :cond_10
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_a

    .line 474
    .end local v2    # "count":I
    .end local v7    # "token":Lorg/apache/commons/lang/time/DurationFormatUtils$Token;
    .end local v8    # "value":Ljava/lang/Object;
    :cond_11
    invoke-virtual {v1}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method public static formatDuration(JLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "durationMillis"    # J
    .param p2, "format"    # Ljava/lang/String;

    .prologue
    .line 112
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDuration(JLjava/lang/String;Z)Ljava/lang/String;
    .locals 12
    .param p0, "durationMillis"    # J
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "padWithZeros"    # Z

    .prologue
    .line 130
    invoke-static {p2}, Lorg/apache/commons/lang/time/DurationFormatUtils;->lexx(Ljava/lang/String;)[Lorg/apache/commons/lang/time/DurationFormatUtils$Token;

    move-result-object v0

    .line 132
    .local v0, "tokens":[Lorg/apache/commons/lang/time/DurationFormatUtils$Token;
    const/4 v3, 0x0

    .line 133
    .local v3, "days":I
    const/4 v4, 0x0

    .line 134
    .local v4, "hours":I
    const/4 v5, 0x0

    .line 135
    .local v5, "minutes":I
    const/4 v6, 0x0

    .line 136
    .local v6, "seconds":I
    const/4 v7, 0x0

    .line 138
    .local v7, "milliseconds":I
    sget-object v1, Lorg/apache/commons/lang/time/DurationFormatUtils;->d:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    const-wide/32 v8, 0x5265c00

    div-long v8, p0, v8

    long-to-int v3, v8

    .line 140
    int-to-long v8, v3

    const-wide/32 v10, 0x5265c00

    mul-long/2addr v8, v10

    sub-long/2addr p0, v8

    .line 142
    :cond_0
    sget-object v1, Lorg/apache/commons/lang/time/DurationFormatUtils;->H:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    const-wide/32 v8, 0x36ee80

    div-long v8, p0, v8

    long-to-int v4, v8

    .line 144
    int-to-long v8, v4

    const-wide/32 v10, 0x36ee80

    mul-long/2addr v8, v10

    sub-long/2addr p0, v8

    .line 146
    :cond_1
    sget-object v1, Lorg/apache/commons/lang/time/DurationFormatUtils;->m:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 147
    const-wide/32 v8, 0xea60

    div-long v8, p0, v8

    long-to-int v5, v8

    .line 148
    int-to-long v8, v5

    const-wide/32 v10, 0xea60

    mul-long/2addr v8, v10

    sub-long/2addr p0, v8

    .line 150
    :cond_2
    sget-object v1, Lorg/apache/commons/lang/time/DurationFormatUtils;->s:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 151
    const-wide/16 v8, 0x3e8

    div-long v8, p0, v8

    long-to-int v6, v8

    .line 152
    int-to-long v8, v6

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    sub-long/2addr p0, v8

    .line 154
    :cond_3
    sget-object v1, Lorg/apache/commons/lang/time/DurationFormatUtils;->S:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 155
    long-to-int v7, p0

    .line 158
    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x0

    move v8, p3

    invoke-static/range {v0 .. v8}, Lorg/apache/commons/lang/time/DurationFormatUtils;->format([Lorg/apache/commons/lang/time/DurationFormatUtils$Token;IIIIIIIZ)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatDurationHMS(J)Ljava/lang/String;
    .locals 2
    .param p0, "durationMillis"    # J

    .prologue
    .line 82
    const-string v0, "H:mm:ss.SSS"

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDurationISO(J)Ljava/lang/String;
    .locals 2
    .param p0, "durationMillis"    # J

    .prologue
    .line 97
    const-string v0, "\'P\'yyyy\'Y\'M\'M\'d\'DT\'H\'H\'m\'M\'s.S\'S\'"

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDurationWords(JZZ)Ljava/lang/String;
    .locals 4
    .param p0, "durationMillis"    # J
    .param p2, "suppressLeadingZeroElements"    # Z
    .param p3, "suppressTrailingZeroElements"    # Z

    .prologue
    .line 180
    const-string v2, "d\' days \'H\' hours \'m\' minutes \'s\' seconds\'"

    invoke-static {p0, p1, v2}, Lorg/apache/commons/lang/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "duration":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 183
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    const-string v2, " 0 days"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lorg/apache/commons/lang/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "tmp":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 186
    move-object v0, v1

    .line 187
    const-string v2, " 0 hours"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lorg/apache/commons/lang/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 189
    move-object v0, v1

    .line 190
    const-string v2, " 0 minutes"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lorg/apache/commons/lang/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 191
    move-object v0, v1

    .line 192
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 193
    const-string v2, " 0 seconds"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lorg/apache/commons/lang/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 202
    .end local v1    # "tmp":Ljava/lang/String;
    :cond_1
    if-eqz p3, :cond_2

    .line 203
    const-string v2, " 0 seconds"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lorg/apache/commons/lang/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 204
    .restart local v1    # "tmp":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 205
    move-object v0, v1

    .line 206
    const-string v2, " 0 minutes"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lorg/apache/commons/lang/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 208
    move-object v0, v1

    .line 209
    const-string v2, " 0 hours"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lorg/apache/commons/lang/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 211
    const-string v2, " 0 days"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lorg/apache/commons/lang/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .end local v1    # "tmp":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    const-string v2, " 1 seconds"

    const-string v3, " 1 second"

    invoke-static {v0, v2, v3}, Lorg/apache/commons/lang/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    const-string v2, " 1 minutes"

    const-string v3, " 1 minute"

    invoke-static {v0, v2, v3}, Lorg/apache/commons/lang/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    const-string v2, " 1 hours"

    const-string v3, " 1 hour"

    invoke-static {v0, v2, v3}, Lorg/apache/commons/lang/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    const-string v2, " 1 days"

    const-string v3, " 1 day"

    invoke-static {v0, v2, v3}, Lorg/apache/commons/lang/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static formatPeriod(JJLjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "startMillis"    # J
    .param p2, "endMillis"    # J
    .param p4, "format"    # Ljava/lang/String;

    .prologue
    .line 249
    const/4 v5, 0x1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang/time/DurationFormatUtils;->formatPeriod(JJLjava/lang/String;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatPeriod(JJLjava/lang/String;ZLjava/util/TimeZone;)Ljava/lang/String;
    .locals 16
    .param p0, "startMillis"    # J
    .param p2, "endMillis"    # J
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "padWithZeros"    # Z
    .param p6, "timezone"    # Ljava/util/TimeZone;

    .prologue
    .line 284
    invoke-static/range {p4 .. p4}, Lorg/apache/commons/lang/time/DurationFormatUtils;->lexx(Ljava/lang/String;)[Lorg/apache/commons/lang/time/DurationFormatUtils$Token;

    move-result-object v2

    .line 288
    .local v2, "tokens":[Lorg/apache/commons/lang/time/DurationFormatUtils$Token;
    invoke-static/range {p6 .. p6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v12

    .line 289
    .local v12, "start":Ljava/util/Calendar;
    new-instance v10, Ljava/util/Date;

    move-wide/from16 v0, p0

    invoke-direct {v10, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 290
    invoke-static/range {p6 .. p6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v11

    .line 291
    .local v11, "end":Ljava/util/Calendar;
    new-instance v10, Ljava/util/Date;

    move-wide/from16 v0, p2

    invoke-direct {v10, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 294
    const/16 v10, 0xe

    invoke-virtual {v11, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/16 v14, 0xe

    invoke-virtual {v12, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    sub-int v9, v10, v14

    .line 295
    .local v9, "milliseconds":I
    const/16 v10, 0xd

    invoke-virtual {v11, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/16 v14, 0xd

    invoke-virtual {v12, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    sub-int v8, v10, v14

    .line 296
    .local v8, "seconds":I
    const/16 v10, 0xc

    invoke-virtual {v11, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/16 v14, 0xc

    invoke-virtual {v12, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    sub-int v7, v10, v14

    .line 297
    .local v7, "minutes":I
    const/16 v10, 0xb

    invoke-virtual {v11, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/16 v14, 0xb

    invoke-virtual {v12, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    sub-int v6, v10, v14

    .line 298
    .local v6, "hours":I
    const/4 v10, 0x5

    invoke-virtual {v11, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/4 v14, 0x5

    invoke-virtual {v12, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    sub-int v5, v10, v14

    .line 299
    .local v5, "days":I
    const/4 v10, 0x2

    invoke-virtual {v11, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/4 v14, 0x2

    invoke-virtual {v12, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    sub-int v4, v10, v14

    .line 300
    .local v4, "months":I
    const/4 v10, 0x1

    invoke-virtual {v11, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    sub-int v3, v10, v14

    .line 303
    .local v3, "years":I
    :goto_0
    if-gez v9, :cond_0

    .line 304
    add-int/lit16 v9, v9, 0x3e8

    .line 305
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 307
    :cond_0
    :goto_1
    if-gez v8, :cond_1

    .line 308
    add-int/lit8 v8, v8, 0x3c

    .line 309
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 311
    :cond_1
    :goto_2
    if-gez v7, :cond_2

    .line 312
    add-int/lit8 v7, v7, 0x3c

    .line 313
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 315
    :cond_2
    :goto_3
    if-gez v6, :cond_3

    .line 316
    add-int/lit8 v6, v6, 0x18

    .line 317
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 320
    :cond_3
    sget-object v10, Lorg/apache/commons/lang/time/DurationFormatUtils;->M:Ljava/lang/Object;

    invoke-static {v2, v10}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 321
    :goto_4
    if-gez v5, :cond_4

    .line 322
    const/4 v10, 0x5

    invoke-virtual {v12, v10}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v10

    add-int/2addr v5, v10

    .line 323
    add-int/lit8 v4, v4, -0x1

    .line 324
    const/4 v10, 0x2

    const/4 v14, 0x1

    invoke-virtual {v12, v10, v14}, Ljava/util/Calendar;->add(II)V

    goto :goto_4

    .line 327
    :cond_4
    :goto_5
    if-gez v4, :cond_5

    .line 328
    add-int/lit8 v4, v4, 0xc

    .line 329
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    .line 332
    :cond_5
    sget-object v10, Lorg/apache/commons/lang/time/DurationFormatUtils;->y:Ljava/lang/Object;

    invoke-static {v2, v10}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    if-eqz v3, :cond_c

    .line 333
    :goto_6
    if-eqz v3, :cond_c

    .line 334
    mul-int/lit8 v10, v3, 0xc

    add-int/2addr v4, v10

    .line 335
    const/4 v3, 0x0

    goto :goto_6

    .line 341
    :cond_6
    sget-object v10, Lorg/apache/commons/lang/time/DurationFormatUtils;->y:Ljava/lang/Object;

    invoke-static {v2, v10}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 342
    const/4 v10, 0x1

    invoke-virtual {v11, v10}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 343
    .local v13, "target":I
    if-gez v4, :cond_7

    .line 345
    add-int/lit8 v13, v13, -0x1

    .line 348
    :cond_7
    :goto_7
    const/4 v10, 0x1

    invoke-virtual {v12, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-eq v10, v13, :cond_9

    .line 349
    const/4 v10, 0x6

    invoke-virtual {v12, v10}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v10

    const/4 v14, 0x6

    invoke-virtual {v12, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    sub-int/2addr v10, v14

    add-int/2addr v5, v10

    .line 352
    instance-of v10, v12, Ljava/util/GregorianCalendar;

    if-eqz v10, :cond_8

    .line 353
    const/4 v10, 0x2

    invoke-virtual {v12, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/4 v14, 0x1

    if-ne v10, v14, :cond_8

    const/4 v10, 0x5

    invoke-virtual {v12, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/16 v14, 0x1d

    if-ne v10, v14, :cond_8

    .line 356
    add-int/lit8 v5, v5, 0x1

    .line 360
    :cond_8
    const/4 v10, 0x1

    const/4 v14, 0x1

    invoke-virtual {v12, v10, v14}, Ljava/util/Calendar;->add(II)V

    .line 362
    const/4 v10, 0x6

    invoke-virtual {v12, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    add-int/2addr v5, v10

    goto :goto_7

    .line 365
    :cond_9
    const/4 v3, 0x0

    .line 368
    .end local v13    # "target":I
    :cond_a
    :goto_8
    const/4 v10, 0x2

    invoke-virtual {v12, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/4 v14, 0x2

    invoke-virtual {v11, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    if-eq v10, v14, :cond_b

    .line 369
    const/4 v10, 0x5

    invoke-virtual {v12, v10}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v10

    add-int/2addr v5, v10

    .line 370
    const/4 v10, 0x2

    const/4 v14, 0x1

    invoke-virtual {v12, v10, v14}, Ljava/util/Calendar;->add(II)V

    goto :goto_8

    .line 373
    :cond_b
    const/4 v4, 0x0

    .line 375
    :goto_9
    if-gez v5, :cond_c

    .line 376
    const/4 v10, 0x5

    invoke-virtual {v12, v10}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v10

    add-int/2addr v5, v10

    .line 377
    add-int/lit8 v4, v4, -0x1

    .line 378
    const/4 v10, 0x2

    const/4 v14, 0x1

    invoke-virtual {v12, v10, v14}, Ljava/util/Calendar;->add(II)V

    goto :goto_9

    .line 387
    :cond_c
    sget-object v10, Lorg/apache/commons/lang/time/DurationFormatUtils;->d:Ljava/lang/Object;

    invoke-static {v2, v10}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 388
    mul-int/lit8 v10, v5, 0x18

    add-int/2addr v6, v10

    .line 389
    const/4 v5, 0x0

    .line 391
    :cond_d
    sget-object v10, Lorg/apache/commons/lang/time/DurationFormatUtils;->H:Ljava/lang/Object;

    invoke-static {v2, v10}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 392
    mul-int/lit8 v10, v6, 0x3c

    add-int/2addr v7, v10

    .line 393
    const/4 v6, 0x0

    .line 395
    :cond_e
    sget-object v10, Lorg/apache/commons/lang/time/DurationFormatUtils;->m:Ljava/lang/Object;

    invoke-static {v2, v10}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f

    .line 396
    mul-int/lit8 v10, v7, 0x3c

    add-int/2addr v8, v10

    .line 397
    const/4 v7, 0x0

    .line 399
    :cond_f
    sget-object v10, Lorg/apache/commons/lang/time/DurationFormatUtils;->s:Ljava/lang/Object;

    invoke-static {v2, v10}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    .line 400
    mul-int/lit16 v10, v8, 0x3e8

    add-int/2addr v9, v10

    .line 401
    const/4 v8, 0x0

    :cond_10
    move/from16 v10, p5

    .line 404
    invoke-static/range {v2 .. v10}, Lorg/apache/commons/lang/time/DurationFormatUtils;->format([Lorg/apache/commons/lang/time/DurationFormatUtils$Token;IIIIIIIZ)Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method

.method public static formatPeriodISO(JJ)Ljava/lang/String;
    .locals 8
    .param p0, "startMillis"    # J
    .param p2, "endMillis"    # J

    .prologue
    .line 236
    const-string v4, "\'P\'yyyy\'Y\'M\'M\'d\'DT\'H\'H\'m\'M\'s.S\'S\'"

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    move-wide v0, p0

    move-wide v2, p2

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang/time/DurationFormatUtils;->formatPeriod(JJLjava/lang/String;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static lexx(Ljava/lang/String;)[Lorg/apache/commons/lang/time/DurationFormatUtils$Token;
    .locals 11
    .param p0, "format"    # Ljava/lang/String;

    .prologue
    .line 492
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 493
    .local v0, "array":[C
    new-instance v5, Ljava/util/ArrayList;

    array-length v10, v0

    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 495
    .local v5, "list":Ljava/util/ArrayList;
    const/4 v4, 0x0

    .line 496
    .local v4, "inLiteral":Z
    const/4 v1, 0x0

    .line 497
    .local v1, "buffer":Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    .line 498
    .local v6, "previous":Lorg/apache/commons/lang/time/DurationFormatUtils$Token;
    array-length v7, v0

    .line 499
    .local v7, "sz":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v7, :cond_5

    .line 500
    aget-char v2, v0, v3

    .line 501
    .local v2, "ch":C
    if-eqz v4, :cond_1

    const/16 v10, 0x27

    if-eq v2, v10, :cond_1

    .line 502
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 499
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 505
    :cond_1
    const/4 v9, 0x0

    .line 506
    .local v9, "value":Ljava/lang/Object;
    sparse-switch v2, :sswitch_data_0

    .line 526
    if-nez v1, :cond_2

    .line 527
    new-instance v1, Ljava/lang/StringBuffer;

    .end local v1    # "buffer":Ljava/lang/StringBuffer;
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 528
    .restart local v1    # "buffer":Ljava/lang/StringBuffer;
    new-instance v10, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;

    invoke-direct {v10, v1}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 533
    .end local v9    # "value":Ljava/lang/Object;
    :goto_2
    if-eqz v9, :cond_0

    .line 534
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->getValue()Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v9, :cond_4

    .line 535
    invoke-virtual {v6}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;->increment()V

    .line 541
    :goto_3
    const/4 v1, 0x0

    goto :goto_1

    .line 509
    .restart local v9    # "value":Ljava/lang/Object;
    :sswitch_0
    if-eqz v4, :cond_3

    .line 510
    const/4 v1, 0x0

    .line 511
    const/4 v4, 0x0

    goto :goto_2

    .line 513
    :cond_3
    new-instance v1, Ljava/lang/StringBuffer;

    .end local v1    # "buffer":Ljava/lang/StringBuffer;
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 514
    .restart local v1    # "buffer":Ljava/lang/StringBuffer;
    new-instance v10, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;

    invoke-direct {v10, v1}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    const/4 v4, 0x1

    .line 517
    goto :goto_2

    .line 518
    :sswitch_1
    sget-object v9, Lorg/apache/commons/lang/time/DurationFormatUtils;->y:Ljava/lang/Object;

    goto :goto_2

    .line 519
    :sswitch_2
    sget-object v9, Lorg/apache/commons/lang/time/DurationFormatUtils;->M:Ljava/lang/Object;

    goto :goto_2

    .line 520
    :sswitch_3
    sget-object v9, Lorg/apache/commons/lang/time/DurationFormatUtils;->d:Ljava/lang/Object;

    goto :goto_2

    .line 521
    :sswitch_4
    sget-object v9, Lorg/apache/commons/lang/time/DurationFormatUtils;->H:Ljava/lang/Object;

    goto :goto_2

    .line 522
    :sswitch_5
    sget-object v9, Lorg/apache/commons/lang/time/DurationFormatUtils;->m:Ljava/lang/Object;

    goto :goto_2

    .line 523
    :sswitch_6
    sget-object v9, Lorg/apache/commons/lang/time/DurationFormatUtils;->s:Ljava/lang/Object;

    goto :goto_2

    .line 524
    :sswitch_7
    sget-object v9, Lorg/apache/commons/lang/time/DurationFormatUtils;->S:Ljava/lang/Object;

    goto :goto_2

    .line 537
    .end local v9    # "value":Ljava/lang/Object;
    :cond_4
    new-instance v8, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;

    invoke-direct {v8, v9}, Lorg/apache/commons/lang/time/DurationFormatUtils$Token;-><init>(Ljava/lang/Object;)V

    .line 538
    .local v8, "token":Lorg/apache/commons/lang/time/DurationFormatUtils$Token;
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    move-object v6, v8

    goto :goto_3

    .line 544
    .end local v2    # "ch":C
    .end local v8    # "token":Lorg/apache/commons/lang/time/DurationFormatUtils$Token;
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Lorg/apache/commons/lang/time/DurationFormatUtils$Token;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lorg/apache/commons/lang/time/DurationFormatUtils$Token;

    check-cast v10, [Lorg/apache/commons/lang/time/DurationFormatUtils$Token;

    return-object v10

    .line 506
    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_0
        0x48 -> :sswitch_4
        0x4d -> :sswitch_2
        0x53 -> :sswitch_7
        0x64 -> :sswitch_3
        0x6d -> :sswitch_5
        0x73 -> :sswitch_6
        0x79 -> :sswitch_1
    .end sparse-switch
.end method
