.class public final Lcom/google/zxing/oned/Code39Reader;
.super Lcom/google/zxing/oned/OneDReader;
.source "Code39Reader.java"


# static fields
.field static final ALPHABET_STRING:Ljava/lang/String; = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%"

.field static final ASTERISK_ENCODING:I = 0x94

.field static final CHARACTER_ENCODINGS:[I


# instance fields
.field private final counters:[I

.field private final decodeRowResult:Ljava/lang/StringBuilder;

.field private final extendedMode:Z

.field private final usingCheckDigit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/16 v0, 0x2b

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    return-void

    :array_0
    .array-data 4
        0x34
        0x121
        0x61
        0x160
        0x31
        0x130
        0x70
        0x25
        0x124
        0x64
        0x109
        0x49
        0x148
        0x19
        0x118
        0x58
        0xd
        0x10c
        0x4c
        0x1c
        0x103
        0x43
        0x142
        0x13
        0x112
        0x52
        0x7
        0x106
        0x46
        0x16
        0x181
        0xc1
        0x1c0
        0x91
        0x190
        0xd0
        0x85
        0x184
        0xc4
        0xa8
        0xa2
        0x8a
        0x2a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/zxing/oned/Code39Reader;-><init>(Z)V

    .line 67
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "usingCheckDigit"    # Z

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/zxing/oned/Code39Reader;-><init>(ZZ)V

    .line 78
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 2
    .param p1, "usingCheckDigit"    # Z
    .param p2, "extendedMode"    # Z

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 91
    iput-boolean p1, p0, Lcom/google/zxing/oned/Code39Reader;->usingCheckDigit:Z

    .line 92
    iput-boolean p2, p0, Lcom/google/zxing/oned/Code39Reader;->extendedMode:Z

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/Code39Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 94
    const/16 v0, 0x9

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/Code39Reader;->counters:[I

    .line 95
    return-void
.end method

.method private static decodeExtended(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 10
    .param p0, "encoded"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x4f

    const/16 v8, 0x5a

    const/16 v7, 0x41

    .line 270
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 271
    .local v4, "length":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 272
    .local v1, "decoded":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_f

    .line 273
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 274
    .local v0, "c":C
    const/16 v6, 0x2b

    if-eq v0, v6, :cond_0

    const/16 v6, 0x24

    if-eq v0, v6, :cond_0

    const/16 v6, 0x25

    if-eq v0, v6, :cond_0

    const/16 v6, 0x2f

    if-ne v0, v6, :cond_e

    .line 275
    :cond_0
    add-int/lit8 v6, v3, 0x1

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 276
    .local v5, "next":C
    const/4 v2, 0x0

    .line 277
    .local v2, "decodedChar":C
    sparse-switch v0, :sswitch_data_0

    .line 327
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 329
    add-int/lit8 v3, v3, 0x1

    .line 272
    .end local v2    # "decodedChar":C
    .end local v5    # "next":C
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 280
    .restart local v2    # "decodedChar":C
    .restart local v5    # "next":C
    :sswitch_0
    if-lt v5, v7, :cond_1

    if-gt v5, v8, :cond_1

    .line 281
    add-int/lit8 v6, v5, 0x20

    int-to-char v2, v6

    goto :goto_1

    .line 283
    :cond_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 288
    :sswitch_1
    if-lt v5, v7, :cond_2

    if-gt v5, v8, :cond_2

    .line 289
    add-int/lit8 v6, v5, -0x40

    int-to-char v2, v6

    goto :goto_1

    .line 291
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 296
    :sswitch_2
    if-lt v5, v7, :cond_3

    const/16 v6, 0x45

    if-gt v5, v6, :cond_3

    .line 297
    add-int/lit8 v6, v5, -0x26

    int-to-char v2, v6

    goto :goto_1

    .line 298
    :cond_3
    const/16 v6, 0x46

    if-lt v5, v6, :cond_4

    const/16 v6, 0x4a

    if-gt v5, v6, :cond_4

    .line 299
    add-int/lit8 v6, v5, -0xb

    int-to-char v2, v6

    goto :goto_1

    .line 300
    :cond_4
    const/16 v6, 0x4b

    if-lt v5, v6, :cond_5

    if-gt v5, v9, :cond_5

    .line 301
    add-int/lit8 v6, v5, 0x10

    int-to-char v2, v6

    goto :goto_1

    .line 302
    :cond_5
    const/16 v6, 0x50

    if-lt v5, v6, :cond_6

    const/16 v6, 0x54

    if-gt v5, v6, :cond_6

    .line 303
    add-int/lit8 v6, v5, 0x2b

    int-to-char v2, v6

    goto :goto_1

    .line 304
    :cond_6
    const/16 v6, 0x55

    if-ne v5, v6, :cond_7

    .line 305
    const/4 v2, 0x0

    goto :goto_1

    .line 306
    :cond_7
    const/16 v6, 0x56

    if-ne v5, v6, :cond_8

    .line 307
    const/16 v2, 0x40

    goto :goto_1

    .line 308
    :cond_8
    const/16 v6, 0x57

    if-ne v5, v6, :cond_9

    .line 309
    const/16 v2, 0x60

    goto :goto_1

    .line 310
    :cond_9
    const/16 v6, 0x58

    if-eq v5, v6, :cond_a

    const/16 v6, 0x59

    if-eq v5, v6, :cond_a

    if-ne v5, v8, :cond_b

    .line 311
    :cond_a
    const/16 v2, 0x7f

    goto :goto_1

    .line 313
    :cond_b
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 318
    :sswitch_3
    if-lt v5, v7, :cond_c

    if-gt v5, v9, :cond_c

    .line 319
    add-int/lit8 v6, v5, -0x20

    int-to-char v2, v6

    goto :goto_1

    .line 320
    :cond_c
    if-ne v5, v8, :cond_d

    .line 321
    const/16 v2, 0x3a

    goto :goto_1

    .line 323
    :cond_d
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 331
    .end local v2    # "decodedChar":C
    .end local v5    # "next":C
    :cond_e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 334
    .end local v0    # "c":C
    :cond_f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 277
    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_1
        0x25 -> :sswitch_2
        0x2b -> :sswitch_0
        0x2f -> :sswitch_3
    .end sparse-switch
.end method

.method private static findAsteriskPattern(Lcom/google/zxing/common/BitArray;[I)[I
    .locals 12
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "counters"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 179
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    .line 180
    .local v6, "width":I
    invoke-virtual {p0, v8}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v5

    .line 182
    .local v5, "rowOffset":I
    const/4 v0, 0x0

    .line 183
    .local v0, "counterPosition":I
    move v4, v5

    .line 184
    .local v4, "patternStart":I
    const/4 v2, 0x0

    .line 185
    .local v2, "isWhite":Z
    array-length v3, p1

    .line 187
    .local v3, "patternLength":I
    move v1, v5

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_4

    .line 188
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    if-eq v9, v2, :cond_0

    .line 189
    aget v9, p1, v0

    add-int/lit8 v9, v9, 0x1

    aput v9, p1, v0

    .line 187
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    :cond_0
    add-int/lit8 v9, v3, -0x1

    if-ne v0, v9, :cond_2

    .line 193
    invoke-static {p1}, Lcom/google/zxing/oned/Code39Reader;->toNarrowWidePattern([I)I

    move-result v9

    const/16 v10, 0x94

    if-ne v9, v10, :cond_1

    sub-int v9, v1, v4

    div-int/lit8 v9, v9, 0x2

    sub-int v9, v4, v9

    .line 194
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual {p0, v9, v4, v8}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 195
    new-array v9, v11, [I

    aput v4, v9, v8

    aput v1, v9, v7

    return-object v9

    .line 197
    :cond_1
    aget v9, p1, v8

    aget v10, p1, v7

    add-int/2addr v9, v10

    add-int/2addr v4, v9

    .line 198
    add-int/lit8 v9, v0, -0x1

    invoke-static {p1, v11, p1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    add-int/lit8 v9, v0, -0x1

    aput v8, p1, v9

    .line 200
    aput v8, p1, v0

    .line 201
    add-int/lit8 v0, v0, -0x1

    .line 205
    :goto_2
    aput v7, p1, v0

    .line 206
    if-nez v2, :cond_3

    move v2, v7

    :goto_3
    goto :goto_1

    .line 203
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v2, v8

    .line 206
    goto :goto_3

    .line 209
    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v7

    throw v7
.end method

.method private static patternToChar(I)C
    .locals 2
    .param p0, "pattern"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 258
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 259
    sget-object v1, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    aget v1, v1, v0

    if-ne v1, p0, :cond_0

    .line 260
    const-string v1, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%"

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 264
    :goto_1
    return v1

    .line 258
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    :cond_1
    const/16 v1, 0x94

    if-ne p0, v1, :cond_2

    .line 264
    const/16 v1, 0x2a

    goto :goto_1

    .line 266
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method

.method private static toNarrowWidePattern([I)I
    .locals 12
    .param p0, "counters"    # [I

    .prologue
    const/4 v11, 0x3

    const/4 v8, -0x1

    .line 215
    array-length v4, p0

    .line 216
    .local v4, "numCounters":I
    const/4 v2, 0x0

    .line 219
    .local v2, "maxNarrowCounter":I
    :cond_0
    const v3, 0x7fffffff

    .line 220
    .local v3, "minCounter":I
    array-length v10, p0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v10, :cond_2

    aget v0, p0, v9

    .line 221
    .local v0, "counter":I
    if-ge v0, v3, :cond_1

    if-le v0, v2, :cond_1

    .line 222
    move v3, v0

    .line 220
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 225
    .end local v0    # "counter":I
    :cond_2
    move v2, v3

    .line 226
    const/4 v7, 0x0

    .line 227
    .local v7, "wideCounters":I
    const/4 v6, 0x0

    .line 228
    .local v6, "totalWideCountersWidth":I
    const/4 v5, 0x0

    .line 229
    .local v5, "pattern":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_4

    .line 230
    aget v0, p0, v1

    .line 231
    .restart local v0    # "counter":I
    if-le v0, v2, :cond_3

    .line 232
    const/4 v9, 0x1

    add-int/lit8 v10, v4, -0x1

    sub-int/2addr v10, v1

    shl-int/2addr v9, v10

    or-int/2addr v5, v9

    .line 233
    add-int/lit8 v7, v7, 0x1

    .line 234
    add-int/2addr v6, v0

    .line 229
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 237
    .end local v0    # "counter":I
    :cond_4
    if-ne v7, v11, :cond_7

    .line 241
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v4, :cond_5

    if-lez v7, :cond_5

    .line 242
    aget v0, p0, v1

    .line 243
    .restart local v0    # "counter":I
    if-le v0, v2, :cond_6

    .line 244
    add-int/lit8 v7, v7, -0x1

    .line 246
    shl-int/lit8 v9, v0, 0x1

    if-lt v9, v6, :cond_6

    move v5, v8

    .line 254
    .end local v0    # "counter":I
    .end local v5    # "pattern":I
    :cond_5
    :goto_3
    return v5

    .line 241
    .restart local v0    # "counter":I
    .restart local v5    # "pattern":I
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 253
    .end local v0    # "counter":I
    :cond_7
    if-gt v7, v11, :cond_0

    move v5, v8

    .line 254
    goto :goto_3
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 27
    .param p1, "rowNumber"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 101
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/oned/Code39Reader;->counters:[I

    move-object/from16 v18, v0

    .line 102
    .local v18, "theCounters":[I
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 103
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/oned/Code39Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 104
    .local v14, "result":Ljava/lang/StringBuilder;
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 106
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/zxing/oned/Code39Reader;->findAsteriskPattern(Lcom/google/zxing/common/BitArray;[I)[I

    move-result-object v17

    .line 108
    .local v17, "start":[I
    const/16 v21, 0x1

    aget v21, v17, v21

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v12

    .line 109
    .local v12, "nextStart":I
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    .line 114
    .local v6, "end":I
    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-static {v0, v12, v1}, Lcom/google/zxing/oned/Code39Reader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 115
    invoke-static/range {v18 .. v18}, Lcom/google/zxing/oned/Code39Reader;->toNarrowWidePattern([I)I

    move-result v13

    .line 116
    .local v13, "pattern":I
    if-gez v13, :cond_1

    .line 117
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v21

    throw v21

    .line 119
    :cond_1
    invoke-static {v13}, Lcom/google/zxing/oned/Code39Reader;->patternToChar(I)C

    move-result v5

    .line 120
    .local v5, "decodedChar":C
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    move v9, v12

    .line 122
    .local v9, "lastStart":I
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    const/16 v21, 0x0

    :goto_0
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    aget v4, v18, v21

    .line 123
    .local v4, "counter":I
    add-int/2addr v12, v4

    .line 122
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 126
    .end local v4    # "counter":I
    :cond_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v12

    .line 127
    const/16 v21, 0x2a

    move/from16 v0, v21

    if-ne v5, v0, :cond_0

    .line 128
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 131
    const/4 v8, 0x0

    .line 132
    .local v8, "lastPatternSize":I
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    const/16 v21, 0x0

    :goto_1
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    aget v4, v18, v21

    .line 133
    .restart local v4    # "counter":I
    add-int/2addr v8, v4

    .line 132
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 135
    .end local v4    # "counter":I
    :cond_3
    sub-int v21, v12, v9

    sub-int v20, v21, v8

    .line 138
    .local v20, "whiteSpaceAfterEnd":I
    if-eq v12, v6, :cond_4

    shl-int/lit8 v21, v20, 0x1

    move/from16 v0, v21

    if-ge v0, v8, :cond_4

    .line 139
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v21

    throw v21

    .line 142
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/zxing/oned/Code39Reader;->usingCheckDigit:Z

    move/from16 v21, v0

    if-eqz v21, :cond_7

    .line 143
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    add-int/lit8 v11, v21, -0x1

    .line 144
    .local v11, "max":I
    const/16 v19, 0x0

    .line 145
    .local v19, "total":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v11, :cond_5

    .line 146
    const-string v21, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/oned/Code39Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->indexOf(I)I

    move-result v21

    add-int v19, v19, v21

    .line 145
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 148
    :cond_5
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v21

    const-string v22, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%"

    rem-int/lit8 v23, v19, 0x2b

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->charAt(I)C

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_6

    .line 149
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v21

    throw v21

    .line 151
    :cond_6
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 154
    .end local v7    # "i":I
    .end local v11    # "max":I
    .end local v19    # "total":I
    :cond_7
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    if-nez v21, :cond_8

    .line 156
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v21

    throw v21

    .line 160
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/zxing/oned/Code39Reader;->extendedMode:Z

    move/from16 v21, v0

    if-eqz v21, :cond_9

    .line 161
    invoke-static {v14}, Lcom/google/zxing/oned/Code39Reader;->decodeExtended(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 166
    .local v15, "resultString":Ljava/lang/String;
    :goto_3
    const/16 v21, 0x1

    aget v21, v17, v21

    const/16 v22, 0x0

    aget v22, v17, v22

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v10, v21, v22

    .line 167
    .local v10, "left":F
    int-to-float v0, v9

    move/from16 v21, v0

    int-to-float v0, v8

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    add-float v16, v21, v22

    .line 168
    .local v16, "right":F
    new-instance v21, Lcom/google/zxing/Result;

    const/16 v22, 0x0

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    new-instance v25, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v0, v10, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v25, v23, v24

    const/16 v24, 0x1

    new-instance v25, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v25

    move/from16 v1, v16

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v25, v23, v24

    sget-object v24, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v15, v1, v2, v3}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v21

    .line 163
    .end local v10    # "left":F
    .end local v15    # "resultString":Ljava/lang/String;
    .end local v16    # "right":F
    :cond_9
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "resultString":Ljava/lang/String;
    goto :goto_3
.end method
