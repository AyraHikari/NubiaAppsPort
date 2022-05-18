.class final Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    }
.end annotation


# static fields
.field private static final AL:I = 0x1c

.field private static final AS:I = 0x1b

.field private static final BEGIN_MACRO_PDF417_CONTROL_BLOCK:I = 0x3a0

.field private static final BEGIN_MACRO_PDF417_OPTIONAL_FIELD:I = 0x39b

.field private static final BYTE_COMPACTION_MODE_LATCH:I = 0x385

.field private static final BYTE_COMPACTION_MODE_LATCH_6:I = 0x39c

.field private static final ECI_CHARSET:I = 0x39f

.field private static final ECI_GENERAL_PURPOSE:I = 0x39e

.field private static final ECI_USER_DEFINED:I = 0x39d

.field private static final EXP900:[Ljava/math/BigInteger;

.field private static final LL:I = 0x1b

.field private static final MACRO_PDF417_TERMINATOR:I = 0x39a

.field private static final MAX_NUMERIC_CODEWORDS:I = 0xf

.field private static final MIXED_CHARS:[C

.field private static final ML:I = 0x1c

.field private static final MODE_SHIFT_TO_BYTE_COMPACTION_MODE:I = 0x391

.field private static final NUMBER_OF_SEQUENCE_CODEWORDS:I = 0x2

.field private static final NUMERIC_COMPACTION_MODE_LATCH:I = 0x386

.field private static final PAL:I = 0x1d

.field private static final PL:I = 0x19

.field private static final PS:I = 0x1d

.field private static final PUNCT_CHARS:[C

.field private static final TEXT_COMPACTION_MODE_LATCH:I = 0x384


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 68
    const-string v2, ";<>@[\\]_`~!\r\t,:\n-.$/\"|*()?{}\'"

    .line 69
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    sput-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    .line 71
    const-string v2, "0123456789&\r\t,:#-.$/+%*=^"

    .line 72
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    sput-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    .line 80
    const/16 v2, 0x10

    new-array v2, v2, [Ljava/math/BigInteger;

    .line 81
    sput-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    const/4 v3, 0x0

    sget-object v4, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    aput-object v4, v2, v3

    .line 82
    const-wide/16 v2, 0x384

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 83
    .local v1, "nineHundred":Ljava/math/BigInteger;
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 84
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 85
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    add-int/lit8 v4, v0, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v2, v0

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    return-void
.end method

.method private static byteCompaction(I[ILjava/nio/charset/Charset;ILjava/lang/StringBuilder;)I
    .locals 18
    .param p0, "mode"    # I
    .param p1, "codewords"    # [I
    .param p2, "encoding"    # Ljava/nio/charset/Charset;
    .param p3, "codeIndex"    # I
    .param p4, "result"    # Ljava/lang/StringBuilder;

    .prologue
    .line 478
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 479
    .local v7, "decodedBytes":Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    .line 480
    .local v5, "count":I
    const-wide/16 v12, 0x0

    .line 481
    .local v12, "value":J
    const/4 v8, 0x0

    .line 483
    .local v8, "end":Z
    sparse-switch p0, :sswitch_data_0

    .line 570
    :cond_0
    new-instance v14, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    move-object/from16 v0, p2

    invoke-direct {v14, v15, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    return p3

    .line 488
    :sswitch_0
    const/4 v14, 0x6

    new-array v2, v14, [I

    .line 489
    .local v2, "byteCompactedCodewords":[I
    add-int/lit8 v4, p3, 0x1

    .end local p3    # "codeIndex":I
    .local v4, "codeIndex":I
    aget v11, p1, p3

    .local v11, "nextCode":I
    move/from16 p3, v4

    .line 490
    .end local v4    # "codeIndex":I
    .restart local p3    # "codeIndex":I
    :goto_0
    const/4 v14, 0x0

    aget v14, p1, v14

    move/from16 v0, p3

    if-ge v0, v14, :cond_2

    if-nez v8, :cond_2

    .line 491
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "count":I
    .local v6, "count":I
    aput v11, v2, v5

    .line 493
    const-wide/16 v14, 0x384

    mul-long/2addr v14, v12

    int-to-long v0, v11

    move-wide/from16 v16, v0

    add-long v12, v14, v16

    .line 494
    add-int/lit8 v4, p3, 0x1

    .end local p3    # "codeIndex":I
    .restart local v4    # "codeIndex":I
    aget v11, p1, p3

    .line 496
    sparse-switch v11, :sswitch_data_1

    .line 508
    rem-int/lit8 v14, v6, 0x5

    if-nez v14, :cond_7

    if-lez v6, :cond_7

    .line 511
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    const/4 v14, 0x6

    if-ge v10, v14, :cond_1

    .line 512
    rsub-int/lit8 v14, v10, 0x5

    mul-int/lit8 v14, v14, 0x8

    shr-long v14, v12, v14

    long-to-int v14, v14

    int-to-byte v14, v14

    invoke-virtual {v7, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 511
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 504
    .end local v10    # "j":I
    :sswitch_1
    add-int/lit8 p3, v4, -0x1

    .line 505
    .end local v4    # "codeIndex":I
    .restart local p3    # "codeIndex":I
    const/4 v8, 0x1

    move v5, v6

    .line 506
    .end local v6    # "count":I
    .restart local v5    # "count":I
    goto :goto_0

    .line 514
    .end local v5    # "count":I
    .end local p3    # "codeIndex":I
    .restart local v4    # "codeIndex":I
    .restart local v6    # "count":I
    .restart local v10    # "j":I
    :cond_1
    const-wide/16 v12, 0x0

    .line 515
    const/4 v5, 0x0

    .end local v6    # "count":I
    .restart local v5    # "count":I
    move/from16 p3, v4

    .end local v4    # "codeIndex":I
    .restart local p3    # "codeIndex":I
    goto :goto_0

    .line 522
    .end local v10    # "j":I
    :cond_2
    const/4 v14, 0x0

    aget v14, p1, v14

    move/from16 v0, p3

    if-ne v0, v14, :cond_3

    const/16 v14, 0x384

    if-ge v11, v14, :cond_3

    .line 523
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "count":I
    .restart local v6    # "count":I
    aput v11, v2, v5

    move v5, v6

    .line 529
    .end local v6    # "count":I
    .restart local v5    # "count":I
    :cond_3
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-ge v9, v5, :cond_0

    .line 530
    aget v14, v2, v9

    int-to-byte v14, v14

    invoke-virtual {v7, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 529
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 564
    .end local v2    # "byteCompactedCodewords":[I
    .end local v9    # "i":I
    .end local v11    # "nextCode":I
    .local v3, "code":I
    .restart local v10    # "j":I
    :cond_4
    const-wide/16 v12, 0x0

    .line 565
    const/4 v5, 0x0

    .line 538
    .end local v3    # "code":I
    .end local v10    # "j":I
    :cond_5
    :sswitch_2
    const/4 v14, 0x0

    aget v14, p1, v14

    move/from16 v0, p3

    if-ge v0, v14, :cond_0

    if-nez v8, :cond_0

    .line 539
    add-int/lit8 v4, p3, 0x1

    .end local p3    # "codeIndex":I
    .restart local v4    # "codeIndex":I
    aget v3, p1, p3

    .line 540
    .restart local v3    # "code":I
    const/16 v14, 0x384

    if-ge v3, v14, :cond_6

    .line 541
    add-int/lit8 v5, v5, 0x1

    .line 543
    const-wide/16 v14, 0x384

    mul-long/2addr v14, v12

    int-to-long v0, v3

    move-wide/from16 v16, v0

    add-long v12, v14, v16

    move/from16 p3, v4

    .line 558
    .end local v4    # "codeIndex":I
    .restart local p3    # "codeIndex":I
    :goto_3
    rem-int/lit8 v14, v5, 0x5

    if-nez v14, :cond_5

    if-lez v5, :cond_5

    .line 561
    const/4 v10, 0x0

    .restart local v10    # "j":I
    :goto_4
    const/4 v14, 0x6

    if-ge v10, v14, :cond_4

    .line 562
    rsub-int/lit8 v14, v10, 0x5

    mul-int/lit8 v14, v14, 0x8

    shr-long v14, v12, v14

    long-to-int v14, v14

    int-to-byte v14, v14

    invoke-virtual {v7, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 561
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 545
    .end local v10    # "j":I
    .end local p3    # "codeIndex":I
    .restart local v4    # "codeIndex":I
    :cond_6
    sparse-switch v3, :sswitch_data_2

    move/from16 p3, v4

    .end local v4    # "codeIndex":I
    .restart local p3    # "codeIndex":I
    goto :goto_3

    .line 553
    .end local p3    # "codeIndex":I
    .restart local v4    # "codeIndex":I
    :sswitch_3
    add-int/lit8 p3, v4, -0x1

    .line 554
    .end local v4    # "codeIndex":I
    .restart local p3    # "codeIndex":I
    const/4 v8, 0x1

    goto :goto_3

    .end local v3    # "code":I
    .end local v5    # "count":I
    .end local p3    # "codeIndex":I
    .restart local v2    # "byteCompactedCodewords":[I
    .restart local v4    # "codeIndex":I
    .restart local v6    # "count":I
    .restart local v11    # "nextCode":I
    :cond_7
    move v5, v6

    .end local v6    # "count":I
    .restart local v5    # "count":I
    move/from16 p3, v4

    .end local v4    # "codeIndex":I
    .restart local p3    # "codeIndex":I
    goto/16 :goto_0

    .line 483
    :sswitch_data_0
    .sparse-switch
        0x385 -> :sswitch_0
        0x39c -> :sswitch_2
    .end sparse-switch

    .line 496
    :sswitch_data_1
    .sparse-switch
        0x384 -> :sswitch_1
        0x385 -> :sswitch_1
        0x386 -> :sswitch_1
        0x39a -> :sswitch_1
        0x39b -> :sswitch_1
        0x39c -> :sswitch_1
        0x3a0 -> :sswitch_1
    .end sparse-switch

    .line 545
    :sswitch_data_2
    .sparse-switch
        0x384 -> :sswitch_3
        0x385 -> :sswitch_3
        0x386 -> :sswitch_3
        0x39a -> :sswitch_3
        0x39b -> :sswitch_3
        0x39c -> :sswitch_3
        0x3a0 -> :sswitch_3
    .end sparse-switch
.end method

.method static decode([ILjava/lang/String;)Lcom/google/zxing/common/DecoderResult;
    .locals 9
    .param p0, "codewords"    # [I
    .param p1, "ecLevel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 95
    new-instance v5, Ljava/lang/StringBuilder;

    array-length v7, p0

    shl-int/lit8 v7, v7, 0x1

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 96
    .local v5, "result":Ljava/lang/StringBuilder;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 98
    .local v4, "encoding":Ljava/nio/charset/Charset;
    const/4 v1, 0x1

    .line 99
    .local v1, "codeIndex":I
    const/4 v7, 0x1

    add-int/lit8 v1, v1, 0x1

    aget v0, p0, v7

    .line 100
    .local v0, "code":I
    new-instance v6, Lcom/google/zxing/pdf417/PDF417ResultMetadata;

    invoke-direct {v6}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;-><init>()V

    .line 101
    .local v6, "resultMetadata":Lcom/google/zxing/pdf417/PDF417ResultMetadata;
    :goto_0
    const/4 v7, 0x0

    aget v7, p0, v7

    if-ge v1, v7, :cond_1

    .line 102
    sparse-switch v0, :sswitch_data_0

    .line 140
    add-int/lit8 v1, v1, -0x1

    .line 141
    invoke-static {p0, v1, v5}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v1

    .line 144
    :goto_1
    array-length v7, p0

    if-ge v1, v7, :cond_0

    .line 145
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "codeIndex":I
    .local v2, "codeIndex":I
    aget v0, p0, v1

    move v1, v2

    .end local v2    # "codeIndex":I
    .restart local v1    # "codeIndex":I
    goto :goto_0

    .line 104
    :sswitch_0
    invoke-static {p0, v1, v5}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v1

    .line 105
    goto :goto_1

    .line 108
    :sswitch_1
    invoke-static {v0, p0, v4, v1, v5}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[ILjava/nio/charset/Charset;ILjava/lang/StringBuilder;)I

    move-result v1

    .line 109
    goto :goto_1

    .line 111
    :sswitch_2
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    aget v7, p0, v1

    int-to-char v7, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v2

    .line 112
    .end local v2    # "codeIndex":I
    .restart local v1    # "codeIndex":I
    goto :goto_1

    .line 114
    :sswitch_3
    invoke-static {p0, v1, v5}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuilder;)I

    move-result v1

    .line 115
    goto :goto_1

    .line 117
    :sswitch_4
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    aget v7, p0, v1

    .line 118
    invoke-static {v7}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v7

    .line 119
    invoke-virtual {v7}, Lcom/google/zxing/common/CharacterSetECI;->name()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    move v1, v2

    .line 120
    .end local v2    # "codeIndex":I
    .restart local v1    # "codeIndex":I
    goto :goto_1

    .line 123
    :sswitch_5
    add-int/lit8 v1, v1, 0x2

    .line 124
    goto :goto_1

    .line 127
    :sswitch_6
    add-int/lit8 v1, v1, 0x1

    .line 128
    goto :goto_1

    .line 130
    :sswitch_7
    invoke-static {p0, v1, v6}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I

    move-result v1

    .line 131
    goto :goto_1

    .line 135
    :sswitch_8
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    .line 147
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    .line 150
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-nez v7, :cond_2

    .line 151
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    .line 153
    :cond_2
    new-instance v3, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v8, v7, v8, p1}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 154
    .local v3, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    invoke-virtual {v3, v6}, Lcom/google/zxing/common/DecoderResult;->setOther(Ljava/lang/Object;)V

    .line 155
    return-object v3

    .line 102
    nop

    :sswitch_data_0
    .sparse-switch
        0x384 -> :sswitch_0
        0x385 -> :sswitch_1
        0x386 -> :sswitch_3
        0x391 -> :sswitch_2
        0x39a -> :sswitch_8
        0x39b -> :sswitch_8
        0x39c -> :sswitch_1
        0x39d -> :sswitch_6
        0x39e -> :sswitch_5
        0x39f -> :sswitch_4
        0x3a0 -> :sswitch_7
    .end sparse-switch
.end method

.method private static decodeBase900toBase10([II)Ljava/lang/String;
    .locals 6
    .param p0, "codewords"    # [I
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 665
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 666
    .local v1, "result":Ljava/math/BigInteger;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 667
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sub-int v4, p1, v0

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    aget v4, p0, v0

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 666
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 669
    :cond_0
    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    .line 670
    .local v2, "resultString":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    if-eq v3, v4, :cond_1

    .line 671
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 673
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I
    .locals 11
    .param p0, "codewords"    # [I
    .param p1, "codeIndex"    # I
    .param p2, "resultMetadata"    # Lcom/google/zxing/pdf417/PDF417ResultMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 160
    add-int/lit8 v9, p1, 0x2

    const/4 v10, 0x0

    aget v10, p0, v10

    if-le v9, v10, :cond_0

    .line 162
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v9

    throw v9

    .line 164
    :cond_0
    const/4 v9, 0x2

    new-array v8, v9, [I

    .line 165
    .local v8, "segmentIndexArray":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/4 v9, 0x2

    if-ge v7, v9, :cond_1

    .line 166
    aget v9, p0, p1

    aput v9, v8, v7

    .line 165
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 168
    :cond_1
    const/4 v9, 0x2

    invoke-static {v8, v9}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p2, v9}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSegmentIndex(I)V

    .line 171
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .local v6, "fileId":Ljava/lang/StringBuilder;
    invoke-static {p0, p1, v6}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result p1

    .line 173
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setFileId(Ljava/lang/String;)V

    .line 175
    aget v9, p0, p1

    packed-switch v9, :pswitch_data_0

    .line 206
    :goto_1
    return p1

    .line 177
    :pswitch_0
    add-int/lit8 p1, p1, 0x1

    .line 178
    const/4 v9, 0x0

    aget v9, p0, v9

    sub-int/2addr v9, p1

    new-array v0, v9, [I

    .line 179
    .local v0, "additionalOptionCodeWords":[I
    const/4 v1, 0x0

    .line 181
    .local v1, "additionalOptionCodeWordsIndex":I
    const/4 v5, 0x0

    .line 182
    .local v5, "end":Z
    :goto_2
    const/4 v9, 0x0

    aget v9, p0, v9

    if-ge p1, v9, :cond_3

    if-nez v5, :cond_3

    .line 183
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "codeIndex":I
    .local v4, "codeIndex":I
    aget v3, p0, p1

    .line 184
    .local v3, "code":I
    const/16 v9, 0x384

    if-ge v3, v9, :cond_2

    .line 185
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "additionalOptionCodeWordsIndex":I
    .local v2, "additionalOptionCodeWordsIndex":I
    aput v3, v0, v1

    move v1, v2

    .end local v2    # "additionalOptionCodeWordsIndex":I
    .restart local v1    # "additionalOptionCodeWordsIndex":I
    move p1, v4

    .end local v4    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    goto :goto_2

    .line 187
    .end local p1    # "codeIndex":I
    .restart local v4    # "codeIndex":I
    :cond_2
    packed-switch v3, :pswitch_data_1

    .line 194
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v9

    throw v9

    .line 189
    :pswitch_1
    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    .line 190
    add-int/lit8 p1, v4, 0x1

    .line 191
    .end local v4    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    const/4 v5, 0x1

    .line 192
    goto :goto_2

    .line 198
    .end local v3    # "code":I
    :cond_3
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v9

    invoke-virtual {p2, v9}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setOptionalData([I)V

    goto :goto_1

    .line 201
    .end local v0    # "additionalOptionCodeWords":[I
    .end local v1    # "additionalOptionCodeWordsIndex":I
    .end local v5    # "end":Z
    :pswitch_2
    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    .line 202
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x39a
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 187
    :pswitch_data_1
    .packed-switch 0x39a
        :pswitch_1
    .end packed-switch
.end method

.method private static decodeTextCompaction([I[IILjava/lang/StringBuilder;)V
    .locals 9
    .param p0, "textCompactionData"    # [I
    .param p1, "byteCompactionData"    # [I
    .param p2, "length"    # I
    .param p3, "result"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v8, 0x1d

    const/16 v7, 0x1a

    .line 291
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 292
    .local v3, "subMode":Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 293
    .local v2, "priorToShiftMode":Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    const/4 v1, 0x0

    .line 294
    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_7

    .line 295
    aget v4, p0, v1

    .line 296
    .local v4, "subModeCh":I
    const/4 v0, 0x0

    .line 297
    .local v0, "ch":C
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 453
    :goto_1
    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 457
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 458
    goto :goto_0

    .line 300
    :pswitch_0
    if-ge v4, v7, :cond_1

    .line 302
    add-int/lit8 v5, v4, 0x41

    int-to-char v0, v5

    goto :goto_1

    .line 304
    :cond_1
    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    .line 306
    :sswitch_0
    const/16 v0, 0x20

    .line 307
    goto :goto_1

    .line 309
    :sswitch_1
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 310
    goto :goto_1

    .line 312
    :sswitch_2
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 313
    goto :goto_1

    .line 316
    :sswitch_3
    move-object v2, v3

    .line 317
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 318
    goto :goto_1

    .line 320
    :sswitch_4
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 323
    :sswitch_5
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 331
    :pswitch_1
    if-ge v4, v7, :cond_2

    .line 332
    add-int/lit8 v5, v4, 0x61

    int-to-char v0, v5

    goto :goto_1

    .line 334
    :cond_2
    sparse-switch v4, :sswitch_data_1

    goto :goto_1

    .line 336
    :sswitch_6
    const/16 v0, 0x20

    .line 337
    goto :goto_1

    .line 340
    :sswitch_7
    move-object v2, v3

    .line 341
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 342
    goto :goto_1

    .line 344
    :sswitch_8
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 345
    goto :goto_1

    .line 348
    :sswitch_9
    move-object v2, v3

    .line 349
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 350
    goto :goto_1

    .line 353
    :sswitch_a
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 356
    :sswitch_b
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 364
    :pswitch_2
    const/16 v5, 0x19

    if-ge v4, v5, :cond_3

    .line 365
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    aget-char v0, v5, v4

    goto :goto_1

    .line 367
    :cond_3
    sparse-switch v4, :sswitch_data_2

    goto :goto_1

    .line 369
    :sswitch_c
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 370
    goto :goto_1

    .line 372
    :sswitch_d
    const/16 v0, 0x20

    .line 373
    goto :goto_1

    .line 375
    :sswitch_e
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 376
    goto :goto_1

    .line 378
    :sswitch_f
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 379
    goto :goto_1

    .line 382
    :sswitch_10
    move-object v2, v3

    .line 383
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 384
    goto :goto_1

    .line 386
    :sswitch_11
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 389
    :sswitch_12
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 397
    :pswitch_3
    if-ge v4, v8, :cond_4

    .line 398
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v0, v5, v4

    goto :goto_1

    .line 400
    :cond_4
    sparse-switch v4, :sswitch_data_3

    goto :goto_1

    .line 402
    :sswitch_13
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 403
    goto :goto_1

    .line 405
    :sswitch_14
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 408
    :sswitch_15
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 416
    :pswitch_4
    move-object v3, v2

    .line 417
    if-ge v4, v7, :cond_5

    .line 418
    add-int/lit8 v5, v4, 0x41

    int-to-char v0, v5

    goto/16 :goto_1

    .line 420
    :cond_5
    sparse-switch v4, :sswitch_data_4

    goto/16 :goto_1

    .line 422
    :sswitch_16
    const/16 v0, 0x20

    .line 423
    goto/16 :goto_1

    .line 425
    :sswitch_17
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 433
    :pswitch_5
    move-object v3, v2

    .line 434
    if-ge v4, v8, :cond_6

    .line 435
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v0, v5, v4

    goto/16 :goto_1

    .line 437
    :cond_6
    sparse-switch v4, :sswitch_data_5

    goto/16 :goto_1

    .line 439
    :sswitch_18
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 440
    goto/16 :goto_1

    .line 444
    :sswitch_19
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 447
    :sswitch_1a
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 459
    .end local v0    # "ch":C
    .end local v4    # "subModeCh":I
    :cond_7
    return-void

    .line 297
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 304
    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_0
        0x1b -> :sswitch_1
        0x1c -> :sswitch_2
        0x1d -> :sswitch_3
        0x384 -> :sswitch_5
        0x391 -> :sswitch_4
    .end sparse-switch

    .line 334
    :sswitch_data_1
    .sparse-switch
        0x1a -> :sswitch_6
        0x1b -> :sswitch_7
        0x1c -> :sswitch_8
        0x1d -> :sswitch_9
        0x384 -> :sswitch_b
        0x391 -> :sswitch_a
    .end sparse-switch

    .line 367
    :sswitch_data_2
    .sparse-switch
        0x19 -> :sswitch_c
        0x1a -> :sswitch_d
        0x1b -> :sswitch_e
        0x1c -> :sswitch_f
        0x1d -> :sswitch_10
        0x384 -> :sswitch_12
        0x391 -> :sswitch_11
    .end sparse-switch

    .line 400
    :sswitch_data_3
    .sparse-switch
        0x1d -> :sswitch_13
        0x384 -> :sswitch_15
        0x391 -> :sswitch_14
    .end sparse-switch

    .line 420
    :sswitch_data_4
    .sparse-switch
        0x1a -> :sswitch_16
        0x384 -> :sswitch_17
    .end sparse-switch

    .line 437
    :sswitch_data_5
    .sparse-switch
        0x1d -> :sswitch_18
        0x384 -> :sswitch_1a
        0x391 -> :sswitch_19
    .end sparse-switch
.end method

.method private static numericCompaction([IILjava/lang/StringBuilder;)I
    .locals 7
    .param p0, "codewords"    # [I
    .param p1, "codeIndex"    # I
    .param p2, "result"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 583
    const/4 v2, 0x0

    .line 584
    .local v2, "count":I
    const/4 v3, 0x0

    .line 586
    .local v3, "end":Z
    const/16 v5, 0xf

    new-array v4, v5, [I

    .line 588
    .local v4, "numericCodewords":[I
    :cond_0
    :goto_0
    aget v5, p0, v6

    if-ge p1, v5, :cond_4

    if-nez v3, :cond_4

    .line 589
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "codeIndex":I
    .local v1, "codeIndex":I
    aget v0, p0, p1

    .line 590
    .local v0, "code":I
    aget v5, p0, v6

    if-ne v1, v5, :cond_1

    .line 591
    const/4 v3, 0x1

    .line 593
    :cond_1
    const/16 v5, 0x384

    if-ge v0, v5, :cond_3

    .line 594
    aput v0, v4, v2

    .line 595
    add-int/lit8 v2, v2, 0x1

    move p1, v1

    .line 609
    .end local v1    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    :goto_1
    rem-int/lit8 v5, v2, 0xf

    if-eqz v5, :cond_2

    const/16 v5, 0x386

    if-eq v0, v5, :cond_2

    if-eqz v3, :cond_0

    :cond_2
    if-lez v2, :cond_0

    .line 614
    invoke-static {v4, v2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    const/4 v2, 0x0

    goto :goto_0

    .line 597
    .end local p1    # "codeIndex":I
    .restart local v1    # "codeIndex":I
    :cond_3
    sparse-switch v0, :sswitch_data_0

    move p1, v1

    .end local v1    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    goto :goto_1

    .line 604
    .end local p1    # "codeIndex":I
    .restart local v1    # "codeIndex":I
    :sswitch_0
    add-int/lit8 p1, v1, -0x1

    .line 605
    .end local v1    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    const/4 v3, 0x1

    goto :goto_1

    .line 618
    .end local v0    # "code":I
    :cond_4
    return p1

    .line 597
    :sswitch_data_0
    .sparse-switch
        0x384 -> :sswitch_0
        0x385 -> :sswitch_0
        0x39a -> :sswitch_0
        0x39b -> :sswitch_0
        0x39c -> :sswitch_0
        0x3a0 -> :sswitch_0
    .end sparse-switch
.end method

.method private static textCompaction([IILjava/lang/StringBuilder;)I
    .locals 11
    .param p0, "codewords"    # [I
    .param p1, "codeIndex"    # I
    .param p2, "result"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v10, 0x384

    const/4 v9, 0x0

    .line 221
    aget v7, p0, v9

    sub-int/2addr v7, p1

    shl-int/lit8 v7, v7, 0x1

    new-array v6, v7, [I

    .line 223
    .local v6, "textCompactionData":[I
    aget v7, p0, v9

    sub-int/2addr v7, p1

    shl-int/lit8 v7, v7, 0x1

    new-array v0, v7, [I

    .line 225
    .local v0, "byteCompactionData":[I
    const/4 v4, 0x0

    .line 226
    .local v4, "index":I
    const/4 v3, 0x0

    .line 227
    .local v3, "end":Z
    :goto_0
    aget v7, p0, v9

    if-ge p1, v7, :cond_1

    if-nez v3, :cond_1

    .line 228
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "codeIndex":I
    .local v2, "codeIndex":I
    aget v1, p0, p1

    .line 229
    .local v1, "code":I
    if-ge v1, v10, :cond_0

    .line 230
    div-int/lit8 v7, v1, 0x1e

    aput v7, v6, v4

    .line 231
    add-int/lit8 v7, v4, 0x1

    rem-int/lit8 v8, v1, 0x1e

    aput v8, v6, v7

    .line 232
    add-int/lit8 v4, v4, 0x2

    move p1, v2

    .end local v2    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    goto :goto_0

    .line 234
    .end local p1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    :cond_0
    sparse-switch v1, :sswitch_data_0

    move p1, v2

    .end local v2    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    goto :goto_0

    .line 237
    .end local p1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    :sswitch_0
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .local v5, "index":I
    aput v10, v6, v4

    move v4, v5

    .end local v5    # "index":I
    .restart local v4    # "index":I
    move p1, v2

    .line 238
    .end local v2    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    goto :goto_0

    .line 245
    .end local p1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    :sswitch_1
    add-int/lit8 p1, v2, -0x1

    .line 246
    .end local v2    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    const/4 v3, 0x1

    .line 247
    goto :goto_0

    .line 255
    .end local p1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    :sswitch_2
    const/16 v7, 0x391

    aput v7, v6, v4

    .line 256
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    aget v1, p0, v2

    .line 257
    aput v1, v0, v4

    .line 258
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 263
    .end local v1    # "code":I
    :cond_1
    invoke-static {v6, v0, v4, p2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeTextCompaction([I[IILjava/lang/StringBuilder;)V

    .line 264
    return p1

    .line 234
    :sswitch_data_0
    .sparse-switch
        0x384 -> :sswitch_0
        0x385 -> :sswitch_1
        0x386 -> :sswitch_1
        0x391 -> :sswitch_2
        0x39a -> :sswitch_1
        0x39b -> :sswitch_1
        0x39c -> :sswitch_1
        0x3a0 -> :sswitch_1
    .end sparse-switch
.end method
