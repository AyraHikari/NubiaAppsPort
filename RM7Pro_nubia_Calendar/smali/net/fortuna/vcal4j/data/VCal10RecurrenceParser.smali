.class public Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;
.super Ljava/lang/Object;
.source "VCal10RecurrenceParser.java"


# static fields
.field static final DEBUG:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "VCal10RecurrenceParser"

.field static final PARSE_RESULT_ERROR:I = -0x1


# instance fields
.field mBuffer:Ljava/lang/String;

.field mVisiter:Lnet/fortuna/vcal4j/data/IFrequenceVisister;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method accept(Lnet/fortuna/vcal4j/data/IFrequenceVisister;)V
    .locals 0
    .param p1, "visiter"    # Lnet/fortuna/vcal4j/data/IFrequenceVisister;

    .prologue
    .line 41
    iput-object p1, p0, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->mVisiter:Lnet/fortuna/vcal4j/data/IFrequenceVisister;

    .line 42
    return-void
.end method

.method protected doParse(I)I
    .locals 10
    .param p1, "offset"    # I

    .prologue
    const/4 v6, -0x1

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "result":I
    const/4 v5, 0x0

    .line 89
    .local v5, "sum":I
    invoke-virtual {p0, p1}, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->parseRequencies(I)I

    move-result v0

    .line 90
    if-ne v0, v6, :cond_1

    .line 185
    :cond_0
    :goto_0
    return v6

    .line 93
    :cond_1
    iget-object v7, p0, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->mBuffer:Ljava/lang/String;

    add-int v8, p1, v0

    invoke-virtual {v7, p1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, "strfreq":Ljava/lang/String;
    iget-object v7, p0, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->mVisiter:Lnet/fortuna/vcal4j/data/IFrequenceVisister;

    invoke-interface {v7, v3}, Lnet/fortuna/vcal4j/data/IFrequenceVisister;->visitFrequencies(Ljava/lang/String;)V

    .line 95
    add-int/2addr p1, v0

    .line 96
    add-int/2addr v5, v0

    .line 98
    iget-object v7, p0, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, "subStringForDebug":Ljava/lang/String;
    const-string v7, "VCal10RecurrenceParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sub string after frequencies is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p0, p1}, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->removeWs(I)I

    move-result v0

    .line 104
    if-eq v0, v6, :cond_0

    .line 107
    add-int/2addr p1, v0

    .line 108
    add-int/2addr v5, v0

    .line 110
    const-string v7, "VCal10RecurrenceParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sub string after white space is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {p0, p1}, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->parseInterval(I)I

    move-result v0

    .line 115
    if-eq v0, v6, :cond_0

    .line 118
    iget-object v7, p0, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->mBuffer:Ljava/lang/String;

    add-int v8, p1, v0

    invoke-virtual {v7, p1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "strInterval":Ljava/lang/String;
    iget-object v7, p0, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->mVisiter:Lnet/fortuna/vcal4j/data/IFrequenceVisister;

    invoke-interface {v7, v2}, Lnet/fortuna/vcal4j/data/IFrequenceVisister;->visitInterval(Ljava/lang/String;)V

    .line 120
    add-int/2addr p1, v0

    .line 121
    add-int/2addr v5, v0

    .line 123
    const-string v7, "VCal10RecurrenceParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sub string after interval is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p0, p1}, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->removeWs(I)I

    move-result v0

    .line 128
    if-eq v0, v6, :cond_0

    .line 131
    add-int/2addr p1, v0

    .line 132
    add-int/2addr v5, v0

    .line 134
    const-string v7, "VCal10RecurrenceParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sub string after white space is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {p0, p1}, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->parseFrequenciesModifiers(I)I

    move-result v0

    .line 139
    if-eq v0, v6, :cond_0

    .line 143
    add-int/2addr p1, v0

    .line 144
    add-int/2addr v5, v0

    .line 146
    const-string v7, "VCal10RecurrenceParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sub string after Frequencies Modifiers is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p0, p1}, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->removeWs(I)I

    move-result v0

    .line 151
    if-eq v0, v6, :cond_0

    .line 154
    add-int/2addr p1, v0

    .line 155
    add-int/2addr v5, v0

    .line 157
    const-string v7, "VCal10RecurrenceParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sub string after white space is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {p0, p1}, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->parseDuration(I)I

    move-result v0

    .line 162
    if-eq v0, v6, :cond_0

    .line 166
    iget-object v7, p0, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->mBuffer:Ljava/lang/String;

    add-int v8, p1, v0

    invoke-virtual {v7, p1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "strDuration":Ljava/lang/String;
    iget-object v7, p0, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->mVisiter:Lnet/fortuna/vcal4j/data/IFrequenceVisister;

    invoke-interface {v7, v1}, Lnet/fortuna/vcal4j/data/IFrequenceVisister;->visitDuration(Ljava/lang/String;)V

    .line 169
    add-int/2addr p1, v0

    .line 170
    add-int/2addr v5, v0

    .line 172
    const-string v7, "VCal10RecurrenceParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sub string after duration is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {p0, p1}, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->removeWs(I)I

    move-result v0

    .line 177
    if-eq v0, v6, :cond_0

    .line 180
    add-int/2addr p1, v0

    .line 181
    add-int/2addr v5, v0

    .line 183
    const-string v6, "VCal10RecurrenceParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sub string after whitespace is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    .line 185
    goto/16 :goto_0
.end method

.method public parse(Ljava/lang/String;)I
    .locals 5
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "offset":I
    iput-object p1, p0, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->mBuffer:Ljava/lang/String;

    .line 52
    const/4 v2, 0x0

    .line 53
    .local v2, "sum":I
    const/4 v1, 0x0

    .line 54
    .local v1, "result":I
    invoke-virtual {p0, v4}, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->removeWs(I)I

    move-result v1

    .line 55
    if-ne v1, v3, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v3

    .line 58
    :cond_1
    add-int/2addr v0, v1

    .line 59
    add-int/2addr v2, v1

    .line 61
    invoke-virtual {p0, v0}, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->doParse(I)I

    move-result v1

    .line 62
    if-eq v1, v3, :cond_0

    .line 65
    add-int/2addr v0, v1

    .line 66
    add-int/2addr v2, v1

    .line 68
    invoke-virtual {p0, v4}, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->removeWs(I)I

    move-result v1

    .line 69
    if-eq v1, v3, :cond_0

    .line 72
    add-int/2addr v0, v1

    .line 73
    add-int/2addr v2, v1

    move v3, v2

    .line 75
    goto :goto_0
.end method

.method parseCharSequence(I)I
    .locals 4
    .param p1, "offset"    # I

    .prologue
    .line 352
    const/4 v1, 0x0

    .line 354
    .local v1, "sum":I
    move v0, p1

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 355
    iget-object v2, p0, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    aget-char v2, v2, v0

    const/16 v3, 0x41

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    aget-char v2, v2, v0

    const/16 v3, 0x5a

    if-le v2, v3, :cond_3

    :cond_0
    iget-object v2, p0, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->mBuffer:Ljava/lang/String;

    .line 356
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    aget-char v2, v2, v0

    const/16 v3, 0x61

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    aget-char v2, v2, v0

    const/16 v3, 0x7a

    if-le v2, v3, :cond_3

    :cond_1
    iget-object v2, p0, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->mBuffer:Ljava/lang/String;

    .line 357
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    aget-char v2, v2, v0

    const/16 v3, 0x30

    if-lt v2, v3, :cond_2

    iget-object v2, p0, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    aget-char v2, v2, v0

    const/16 v3, 0x39

    if-le v2, v3, :cond_3

    :cond_2
    iget-object v2, p0, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->mBuffer:Ljava/lang/String;

    .line 358
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    aget-char v2, v2, v0

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->mBuffer:Ljava/lang/String;

    .line 359
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    aget-char v2, v2, v0

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_4

    .line 361
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 354
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 366
    :cond_4
    return v1
.end method

.method protected parseDuration(I)I
    .locals 5
    .param p1, "offset"    # I

    .prologue
    const/4 v2, -0x1

    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, "result":I
    const/4 v1, 0x0

    .line 205
    .local v1, "sum":I
    const-string v3, "#"

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v3, v4}, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 206
    if-ne v0, v2, :cond_1

    .line 227
    :cond_0
    :goto_0
    return v2

    .line 209
    :cond_1
    add-int/2addr p1, v0

    .line 210
    add-int/2addr v1, v0

    .line 213
    invoke-virtual {p0, p1}, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->removeWs(I)I

    move-result v0

    .line 214
    if-eq v0, v2, :cond_0

    .line 217
    add-int/2addr p1, v0

    .line 218
    add-int/2addr v1, v0

    .line 221
    invoke-virtual {p0, p1}, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->parseNumbers(I)I

    move-result v0

    .line 222
    if-eq v0, v2, :cond_0

    .line 225
    add-int/2addr p1, v0

    .line 226
    add-int/2addr v1, v0

    move v2, v1

    .line 227
    goto :goto_0
.end method

.method protected parseFrequenciesModifier(I)I
    .locals 3
    .param p1, "offset"    # I

    .prologue
    .line 271
    const/4 v1, 0x0

    .line 272
    .local v1, "sum":I
    invoke-virtual {p0, p1}, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->parseCharSequence(I)I

    move-result v0

    .line 273
    .local v0, "result":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 274
    const/4 v2, 0x0

    .line 278
    :goto_0
    return v2

    .line 276
    :cond_0
    add-int/2addr p1, v0

    .line 277
    add-int/2addr v1, v0

    move v2, v1

    .line 278
    goto :goto_0
.end method

.method protected parseFrequenciesModifiers(I)I
    .locals 6
    .param p1, "offset"    # I

    .prologue
    const/4 v3, -0x1

    .line 236
    const/4 v2, 0x0

    .line 237
    .local v2, "sum":I
    const/4 v0, 0x0

    .line 240
    .local v0, "result":I
    :goto_0
    invoke-virtual {p0, p1}, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->parseFrequenciesModifier(I)I

    move-result v0

    .line 242
    if-ne v0, v3, :cond_1

    .line 263
    :cond_0
    :goto_1
    return v3

    .line 245
    :cond_1
    if-nez v0, :cond_2

    move v3, v2

    .line 263
    goto :goto_1

    .line 249
    :cond_2
    iget-object v4, p0, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->mBuffer:Ljava/lang/String;

    add-int v5, p1, v0

    invoke-virtual {v4, p1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "strModifier":Ljava/lang/String;
    iget-object v4, p0, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->mVisiter:Lnet/fortuna/vcal4j/data/IFrequenceVisister;

    invoke-interface {v4, v1}, Lnet/fortuna/vcal4j/data/IFrequenceVisister;->visitFrequencyModifier(Ljava/lang/String;)V

    .line 252
    add-int/2addr p1, v0

    .line 253
    add-int/2addr v2, v0

    .line 256
    invoke-virtual {p0, p1}, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->removeWs(I)I

    move-result v0

    .line 257
    if-eq v0, v3, :cond_0

    .line 260
    add-int/2addr p1, v0

    .line 261
    add-int/2addr v2, v0

    .line 262
    goto :goto_0
.end method

.method protected parseInterval(I)I
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->parseNumbers(I)I

    move-result v0

    return v0
.end method

.method parseNumbers(I)I
    .locals 5
    .param p1, "offset"    # I

    .prologue
    .line 333
    const/4 v2, 0x0

    .line 334
    .local v2, "sum":I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 335
    .local v1, "numbericBuffer":Ljava/lang/StringBuffer;
    move v0, p1

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 336
    iget-object v3, p0, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    aget-char v3, v3, v0

    const/16 v4, 0x30

    if-lt v3, v4, :cond_0

    iget-object v3, p0, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    aget-char v3, v3, v0

    const/16 v4, 0x39

    if-gt v3, v4, :cond_0

    .line 337
    iget-object v3, p0, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    aget-char v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 338
    add-int/lit8 v2, v2, 0x1

    .line 335
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 343
    :cond_0
    return v2
.end method

.method protected parseRequencies(I)I
    .locals 5
    .param p1, "offset"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v2, -0x1

    .line 288
    const/4 v1, 0x0

    .line 289
    .local v1, "sum":I
    const/4 v0, 0x0

    .line 290
    .local v0, "result":I
    const-string v3, "D"

    invoke-virtual {p0, p1, v3, v4}, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 291
    add-int/2addr v1, v0

    :goto_0
    move v2, v1

    .line 309
    :cond_0
    return v2

    .line 293
    :cond_1
    const-string v3, "W"

    invoke-virtual {p0, p1, v3, v4}, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 294
    add-int/2addr v1, v0

    goto :goto_0

    .line 296
    :cond_2
    const-string v3, "MD"

    invoke-virtual {p0, p1, v3, v4}, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v0, v2, :cond_3

    .line 297
    add-int/2addr v1, v0

    goto :goto_0

    .line 299
    :cond_3
    const-string v3, "YM"

    invoke-virtual {p0, p1, v3, v4}, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v0, v2, :cond_4

    .line 300
    add-int/2addr v1, v0

    goto :goto_0

    .line 302
    :cond_4
    const-string v3, "YD"

    invoke-virtual {p0, p1, v3, v4}, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 303
    add-int/2addr v1, v0

    goto :goto_0
.end method

.method parseString(ILjava/lang/String;Z)I
    .locals 7
    .param p1, "offset"    # I
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "ignoreCase"    # Z

    .prologue
    const/4 v3, -0x1

    .line 376
    const-string v4, "VCal10RecurrenceParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseString:The passed String is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const/4 v2, 0x0

    .line 381
    .local v2, "sum":I
    const/4 v1, 0x0

    .line 383
    .local v1, "len":I
    if-nez p2, :cond_0

    move v2, v3

    .line 409
    .end local v2    # "sum":I
    :goto_0
    return v2

    .line 385
    .restart local v2    # "sum":I
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 387
    if-nez p3, :cond_1

    .line 388
    iget-object v4, p0, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 390
    const-string v4, "VCal10RecurrenceParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseString:out(1) = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    move v2, v1

    .line 394
    goto :goto_0

    .line 396
    :cond_1
    iget-object v4, p0, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->mBuffer:Ljava/lang/String;

    add-int v5, p1, v1

    invoke-virtual {v4, p1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 397
    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 398
    move v2, v1

    .line 400
    const-string v4, "VCal10RecurrenceParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseString:out(2) = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    move v2, v3

    .line 407
    goto :goto_0

    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    move v2, v3

    .line 409
    goto :goto_0
.end method

.method protected removeWs(I)I
    .locals 3
    .param p1, "offset"    # I

    .prologue
    .line 318
    iget-object v2, p0, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 319
    const/4 v1, -0x1

    .line 324
    :cond_0
    return v1

    .line 322
    :cond_1
    const/4 v1, 0x0

    .local v1, "sum":I
    :goto_0
    iget-object v2, p0, Lnet/fortuna/vcal4j/data/VCal10RecurrenceParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "ch":C
    const/16 v2, 0x20

    if-eq v0, v2, :cond_2

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    .line 323
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 322
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
