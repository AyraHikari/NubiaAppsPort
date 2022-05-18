.class final Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# static fields
.field private static final ALPHANUMERIC_CHARS:[C

.field private static final GB2312_SUBSET:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ $%*+-./:"

    .line 46
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    .line 45
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method static decode([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .locals 17
    .param p0, "bytes"    # [B
    .param p1, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p2, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/zxing/qrcode/decoder/Version;",
            "Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DecoderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 56
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    new-instance v1, Lcom/google/zxing/common/BitSource;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/google/zxing/common/BitSource;-><init>([B)V

    .line 57
    .local v1, "bits":Lcom/google/zxing/common/BitSource;
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v6, 0x32

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 58
    .local v2, "result":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    .local v5, "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v11, -0x1

    .line 60
    .local v11, "symbolSequence":I
    const/4 v12, -0x1

    .line 63
    .local v12, "parityData":I
    const/4 v4, 0x0

    .line 64
    .local v4, "currentCharacterSetECI":Lcom/google/zxing/common/CharacterSetECI;
    const/4 v14, 0x0

    .line 68
    .local v14, "fc1InEffect":Z
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v6

    const/4 v7, 0x4

    if-ge v6, v7, :cond_1

    .line 70
    sget-object v15, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 74
    .local v15, "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    :goto_0
    sget-object v6, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$qrcode$decoder$Mode:[I

    invoke-virtual {v15}, Lcom/google/zxing/qrcode/decoder/Mode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 111
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v3

    .line 112
    .local v3, "count":I
    sget-object v6, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$qrcode$decoder$Mode:[I

    invoke-virtual {v15}, Lcom/google/zxing/qrcode/decoder/Mode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    .line 126
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v3    # "count":I
    .end local v15    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    :catch_0
    move-exception v6

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 72
    :cond_1
    const/4 v6, 0x4

    :try_start_1
    invoke-virtual {v1, v6}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v6

    invoke-static {v6}, Lcom/google/zxing/qrcode/decoder/Mode;->forBits(I)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object v15

    .restart local v15    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    goto :goto_0

    .line 80
    :pswitch_0
    const/4 v14, 0x1

    .line 130
    :cond_2
    :goto_1
    :pswitch_1
    sget-object v6, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v15, v6, :cond_0

    .line 136
    new-instance v6, Lcom/google/zxing/common/DecoderResult;

    .line 137
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 138
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v9, 0x0

    :goto_2
    if-nez p2, :cond_5

    const/4 v10, 0x0

    :goto_3
    move-object/from16 v7, p0

    .line 139
    invoke-direct/range {v6 .. v12}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;II)V

    .line 136
    return-object v6

    .line 83
    :pswitch_2
    :try_start_2
    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v6

    const/16 v7, 0x10

    if-ge v6, v7, :cond_3

    .line 84
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 88
    :cond_3
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v11

    .line 89
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v12

    .line 90
    goto :goto_1

    .line 93
    :pswitch_3
    invoke-static {v1}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->parseECIValue(Lcom/google/zxing/common/BitSource;)I

    move-result v6

    .line 94
    invoke-static {v6}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v4

    .line 95
    if-nez v4, :cond_2

    .line 96
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 102
    :pswitch_4
    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v16

    .line 103
    .local v16, "subset":I
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v13

    .line 104
    .local v13, "countHanzi":I
    const/4 v6, 0x1

    move/from16 v0, v16

    if-ne v0, v6, :cond_2

    .line 105
    invoke-static {v1, v2, v13}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeHanziSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V

    goto :goto_1

    .line 114
    .end local v13    # "countHanzi":I
    .end local v16    # "subset":I
    .restart local v3    # "count":I
    :pswitch_5
    invoke-static {v1, v2, v3}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeNumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V

    goto :goto_1

    .line 117
    :pswitch_6
    invoke-static {v1, v2, v3, v14}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeAlphanumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;IZ)V

    goto :goto_1

    :pswitch_7
    move-object/from16 v6, p3

    .line 120
    invoke-static/range {v1 .. v6}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeByteSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;ILcom/google/zxing/common/CharacterSetECI;Ljava/util/Collection;Ljava/util/Map;)V

    goto :goto_1

    .line 123
    :pswitch_8
    invoke-static {v1, v2, v3}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeKanjiSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .end local v3    # "count":I
    :cond_4
    move-object v9, v5

    .line 138
    goto :goto_2

    .line 139
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 112
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private static decodeAlphanumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;IZ)V
    .locals 8
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "count"    # I
    .param p3, "fc1InEffect"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x25

    const/16 v6, 0xb

    const/4 v5, 0x6

    const/4 v4, 0x1

    .line 265
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 266
    .local v2, "start":I
    :goto_0
    if-le p2, v4, :cond_1

    .line 267
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v3

    if-ge v3, v6, :cond_0

    .line 268
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 270
    :cond_0
    invoke-virtual {p0, v6}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    .line 271
    .local v1, "nextTwoCharsBits":I
    div-int/lit8 v3, v1, 0x2d

    invoke-static {v3}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 272
    rem-int/lit8 v3, v1, 0x2d

    invoke-static {v3}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 273
    add-int/lit8 p2, p2, -0x2

    .line 274
    goto :goto_0

    .line 275
    .end local v1    # "nextTwoCharsBits":I
    :cond_1
    if-ne p2, v4, :cond_3

    .line 277
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v3

    if-ge v3, v5, :cond_2

    .line 278
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 280
    :cond_2
    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 283
    :cond_3
    if-eqz p3, :cond_6

    .line 285
    move v0, v2

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 286
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_4

    .line 287
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_5

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_5

    .line 289
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 285
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 292
    :cond_5
    const/16 v3, 0x1d

    invoke-virtual {p1, v0, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_2

    .line 297
    .end local v0    # "i":I
    :cond_6
    return-void
.end method

.method private static decodeByteSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;ILcom/google/zxing/common/CharacterSetECI;Ljava/util/Collection;Ljava/util/Map;)V
    .locals 5
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "count"    # I
    .param p3, "currentCharacterSetECI"    # Lcom/google/zxing/common/CharacterSetECI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitSource;",
            "Ljava/lang/StringBuilder;",
            "I",
            "Lcom/google/zxing/common/CharacterSetECI;",
            "Ljava/util/Collection",
            "<[B>;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 226
    .local p4, "byteSegments":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    shl-int/lit8 v3, p2, 0x3

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 227
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 230
    :cond_0
    new-array v2, p2, [B

    .line 231
    .local v2, "readBytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 232
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 235
    :cond_1
    if-nez p3, :cond_2

    .line 241
    invoke-static {v2, p5}, Lcom/google/zxing/common/StringUtils;->guessEncoding([BLjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "encoding":Ljava/lang/String;
    :goto_1
    :try_start_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    invoke-interface {p4, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 251
    return-void

    .line 243
    .end local v0    # "encoding":Ljava/lang/String;
    :cond_2
    invoke-virtual {p3}, Lcom/google/zxing/common/CharacterSetECI;->name()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "encoding":Ljava/lang/String;
    goto :goto_1

    .line 248
    :catch_0
    move-exception v3

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3
.end method

.method private static decodeHanziSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V
    .locals 6
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 151
    mul-int/lit8 v4, p2, 0xd

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 152
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4

    .line 157
    :cond_0
    mul-int/lit8 v4, p2, 0x2

    new-array v1, v4, [B

    .line 158
    .local v1, "buffer":[B
    const/4 v2, 0x0

    .line 159
    .local v2, "offset":I
    :goto_0
    if-lez p2, :cond_2

    .line 161
    const/16 v4, 0xd

    invoke-virtual {p0, v4}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v3

    .line 162
    .local v3, "twoBytes":I
    div-int/lit8 v4, v3, 0x60

    shl-int/lit8 v4, v4, 0x8

    rem-int/lit8 v5, v3, 0x60

    or-int v0, v4, v5

    .line 163
    .local v0, "assembledTwoBytes":I
    const/16 v4, 0x3bf

    if-ge v0, v4, :cond_1

    .line 165
    const v4, 0xa1a1

    add-int/2addr v0, v4

    .line 170
    :goto_1
    shr-int/lit8 v4, v0, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 171
    add-int/lit8 v4, v2, 0x1

    int-to-byte v5, v0

    aput-byte v5, v1, v4

    .line 172
    add-int/lit8 v2, v2, 0x2

    .line 173
    add-int/lit8 p2, p2, -0x1

    .line 174
    goto :goto_0

    .line 168
    :cond_1
    const v4, 0xa6a1

    add-int/2addr v0, v4

    goto :goto_1

    .line 177
    .end local v0    # "assembledTwoBytes":I
    .end local v3    # "twoBytes":I
    :cond_2
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const-string v5, "GB2312"

    invoke-direct {v4, v1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    return-void

    .line 179
    :catch_0
    move-exception v4

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4
.end method

.method private static decodeKanjiSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V
    .locals 6
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 187
    mul-int/lit8 v4, p2, 0xd

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 188
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4

    .line 193
    :cond_0
    mul-int/lit8 v4, p2, 0x2

    new-array v1, v4, [B

    .line 194
    .local v1, "buffer":[B
    const/4 v2, 0x0

    .line 195
    .local v2, "offset":I
    :goto_0
    if-lez p2, :cond_2

    .line 197
    const/16 v4, 0xd

    invoke-virtual {p0, v4}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v3

    .line 198
    .local v3, "twoBytes":I
    div-int/lit16 v4, v3, 0xc0

    shl-int/lit8 v4, v4, 0x8

    rem-int/lit16 v5, v3, 0xc0

    or-int v0, v4, v5

    .line 199
    .local v0, "assembledTwoBytes":I
    const/16 v4, 0x1f00

    if-ge v0, v4, :cond_1

    .line 201
    const v4, 0x8140

    add-int/2addr v0, v4

    .line 206
    :goto_1
    shr-int/lit8 v4, v0, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 207
    add-int/lit8 v4, v2, 0x1

    int-to-byte v5, v0

    aput-byte v5, v1, v4

    .line 208
    add-int/lit8 v2, v2, 0x2

    .line 209
    add-int/lit8 p2, p2, -0x1

    .line 210
    goto :goto_0

    .line 204
    :cond_1
    const v4, 0xc140

    add-int/2addr v0, v4

    goto :goto_1

    .line 213
    .end local v0    # "assembledTwoBytes":I
    .end local v3    # "twoBytes":I
    :cond_2
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const-string v5, "SJIS"

    invoke-direct {v4, v1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    return-void

    .line 215
    :catch_0
    move-exception v4

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4
.end method

.method private static decodeNumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V
    .locals 7
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x4

    const/16 v4, 0xa

    .line 303
    :goto_0
    const/4 v3, 0x3

    if-lt p2, v3, :cond_2

    .line 305
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v3

    if-ge v3, v4, :cond_0

    .line 306
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 308
    :cond_0
    invoke-virtual {p0, v4}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    .line 309
    .local v1, "threeDigitsBits":I
    const/16 v3, 0x3e8

    if-lt v1, v3, :cond_1

    .line 310
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 312
    :cond_1
    div-int/lit8 v3, v1, 0x64

    invoke-static {v3}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 313
    div-int/lit8 v3, v1, 0xa

    rem-int/lit8 v3, v3, 0xa

    invoke-static {v3}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 314
    rem-int/lit8 v3, v1, 0xa

    invoke-static {v3}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 315
    add-int/lit8 p2, p2, -0x3

    .line 316
    goto :goto_0

    .line 317
    .end local v1    # "threeDigitsBits":I
    :cond_2
    const/4 v3, 0x2

    if-ne p2, v3, :cond_6

    .line 319
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v3

    if-ge v3, v6, :cond_3

    .line 320
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 322
    :cond_3
    invoke-virtual {p0, v6}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    .line 323
    .local v2, "twoDigitsBits":I
    const/16 v3, 0x64

    if-lt v2, v3, :cond_4

    .line 324
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 326
    :cond_4
    div-int/lit8 v3, v2, 0xa

    invoke-static {v3}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 327
    rem-int/lit8 v3, v2, 0xa

    invoke-static {v3}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 339
    .end local v2    # "twoDigitsBits":I
    :cond_5
    :goto_1
    return-void

    .line 328
    :cond_6
    const/4 v3, 0x1

    if-ne p2, v3, :cond_5

    .line 330
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v3

    if-ge v3, v5, :cond_7

    .line 331
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 333
    :cond_7
    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v0

    .line 334
    .local v0, "digitBits":I
    if-lt v0, v4, :cond_8

    .line 335
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 337
    :cond_8
    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static parseECIValue(Lcom/google/zxing/common/BitSource;)I
    .locals 6
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    .line 342
    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v0

    .line 343
    .local v0, "firstByte":I
    and-int/lit16 v3, v0, 0x80

    if-nez v3, :cond_0

    .line 345
    and-int/lit8 v3, v0, 0x7f

    .line 355
    :goto_0
    return v3

    .line 347
    :cond_0
    and-int/lit16 v3, v0, 0xc0

    const/16 v4, 0x80

    if-ne v3, v4, :cond_1

    .line 349
    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    .line 350
    .local v1, "secondByte":I
    and-int/lit8 v3, v0, 0x3f

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v1

    goto :goto_0

    .line 352
    .end local v1    # "secondByte":I
    :cond_1
    and-int/lit16 v3, v0, 0xe0

    const/16 v4, 0xc0

    if-ne v3, v4, :cond_2

    .line 354
    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    .line 355
    .local v2, "secondThirdBytes":I
    and-int/lit8 v3, v0, 0x1f

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v2

    goto :goto_0

    .line 357
    .end local v2    # "secondThirdBytes":I
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3
.end method

.method private static toAlphaNumericChar(I)C
    .locals 1
    .param p0, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 254
    sget-object v0, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    array-length v0, v0

    if-lt p0, v0, :cond_0

    .line 255
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 257
    :cond_0
    sget-object v0, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    aget-char v0, v0, p0

    return v0
.end method
