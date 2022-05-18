.class public final Lcom/google/zxing/qrcode/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# instance fields
.field private final rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    sget-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    iput-object v0, p0, Lcom/google/zxing/qrcode/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    .line 42
    return-void
.end method

.method private correctErrors([BI)V
    .locals 5
    .param p1, "codewordBytes"    # [B
    .param p2, "numDataCodewords"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 175
    array-length v2, p1

    .line 177
    .local v2, "numCodewords":I
    new-array v0, v2, [I

    .line 178
    .local v0, "codewordsInts":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 179
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    aput v3, v0, v1

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/google/zxing/qrcode/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    array-length v4, p1

    sub-int/2addr v4, p2

    invoke-virtual {v3, v0, v4}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_1

    .line 189
    aget v3, v0, v1

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 184
    :catch_0
    move-exception v3

    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v3

    throw v3

    .line 191
    :cond_1
    return-void
.end method

.method private decode(Lcom/google/zxing/qrcode/decoder/BitMatrixParser;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .locals 15
    .param p1, "parser"    # Lcom/google/zxing/qrcode/decoder/BitMatrixParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/qrcode/decoder/BitMatrixParser;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DecoderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 136
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readVersion()Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v11

    .line 137
    .local v11, "version":Lcom/google/zxing/qrcode/decoder/Version;
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readFormatInformation()Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->getErrorCorrectionLevel()Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-result-object v4

    .line 140
    .local v4, "ecLevel":Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readCodewords()[B

    move-result-object v12

    .line 142
    invoke-static {v12, v11, v4}, Lcom/google/zxing/qrcode/decoder/DataBlock;->getDataBlocks([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)[Lcom/google/zxing/qrcode/decoder/DataBlock;

    move-result-object v3

    .line 145
    .local v3, "dataBlocks":[Lcom/google/zxing/qrcode/decoder/DataBlock;
    const/4 v10, 0x0

    .line 146
    .local v10, "totalBytes":I
    array-length v13, v3

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v13, :cond_0

    aget-object v2, v3, v12

    .line 147
    .local v2, "dataBlock":Lcom/google/zxing/qrcode/decoder/DataBlock;
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/DataBlock;->getNumDataCodewords()I

    move-result v14

    add-int/2addr v10, v14

    .line 146
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 149
    .end local v2    # "dataBlock":Lcom/google/zxing/qrcode/decoder/DataBlock;
    :cond_0
    new-array v7, v10, [B

    .line 150
    .local v7, "resultBytes":[B
    const/4 v8, 0x0

    .line 153
    .local v8, "resultOffset":I
    array-length v13, v3

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v13, :cond_2

    aget-object v2, v3, v12

    .line 154
    .restart local v2    # "dataBlock":Lcom/google/zxing/qrcode/decoder/DataBlock;
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/DataBlock;->getCodewords()[B

    move-result-object v1

    .line 155
    .local v1, "codewordBytes":[B
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/DataBlock;->getNumDataCodewords()I

    move-result v6

    .line 156
    .local v6, "numDataCodewords":I
    invoke-direct {p0, v1, v6}, Lcom/google/zxing/qrcode/decoder/Decoder;->correctErrors([BI)V

    .line 157
    const/4 v5, 0x0

    .local v5, "i":I
    move v9, v8

    .end local v8    # "resultOffset":I
    .local v9, "resultOffset":I
    :goto_2
    if-ge v5, v6, :cond_1

    .line 158
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "resultOffset":I
    .restart local v8    # "resultOffset":I
    aget-byte v14, v1, v5

    aput-byte v14, v7, v9

    .line 157
    add-int/lit8 v5, v5, 0x1

    move v9, v8

    .end local v8    # "resultOffset":I
    .restart local v9    # "resultOffset":I
    goto :goto_2

    .line 153
    :cond_1
    add-int/lit8 v12, v12, 0x1

    move v8, v9

    .end local v9    # "resultOffset":I
    .restart local v8    # "resultOffset":I
    goto :goto_1

    .line 163
    .end local v1    # "codewordBytes":[B
    .end local v2    # "dataBlock":Lcom/google/zxing/qrcode/decoder/DataBlock;
    .end local v5    # "i":I
    .end local v6    # "numDataCodewords":I
    :cond_2
    move-object/from16 v0, p2

    invoke-static {v7, v11, v4, v0}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decode([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v12

    return-object v12
.end method


# virtual methods
.method public decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;
    .locals 1
    .param p1, "bits"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .locals 7
    .param p1, "bits"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitMatrix;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DecoderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 80
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    new-instance v3, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;

    invoke-direct {v3, p1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    .line 81
    .local v3, "parser":Lcom/google/zxing/qrcode/decoder/BitMatrixParser;
    const/4 v2, 0x0

    .line 82
    .local v2, "fe":Lcom/google/zxing/FormatException;
    const/4 v0, 0x0

    .line 84
    .local v0, "ce":Lcom/google/zxing/ChecksumException;
    :try_start_0
    invoke-direct {p0, v3, p2}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/qrcode/decoder/BitMatrixParser;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    :try_end_0
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/zxing/ChecksumException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 119
    :goto_0
    return-object v4

    .line 86
    :catch_0
    move-exception v2

    .line 94
    :goto_1
    :try_start_1
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->remask()V

    .line 97
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->setMirror(Z)V

    .line 100
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readVersion()Lcom/google/zxing/qrcode/decoder/Version;

    .line 103
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readFormatInformation()Lcom/google/zxing/qrcode/decoder/FormatInformation;

    .line 112
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->mirror()V

    .line 114
    invoke-direct {p0, v3, p2}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/qrcode/decoder/BitMatrixParser;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v4

    .line 117
    .local v4, "result":Lcom/google/zxing/common/DecoderResult;
    new-instance v5, Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;-><init>(Z)V

    invoke-virtual {v4, v5}, Lcom/google/zxing/common/DecoderResult;->setOther(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/google/zxing/FormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/zxing/ChecksumException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 121
    .end local v4    # "result":Lcom/google/zxing/common/DecoderResult;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 123
    .local v1, "e":Lcom/google/zxing/ReaderException;
    :goto_2
    if-eqz v2, :cond_0

    .line 124
    throw v2

    .line 88
    .end local v1    # "e":Lcom/google/zxing/ReaderException;
    :catch_2
    move-exception v0

    goto :goto_1

    .line 126
    .restart local v1    # "e":Lcom/google/zxing/ReaderException;
    :cond_0
    if-eqz v0, :cond_1

    .line 127
    throw v0

    .line 129
    :cond_1
    throw v1

    .line 121
    .end local v1    # "e":Lcom/google/zxing/ReaderException;
    :catch_3
    move-exception v5

    move-object v1, v5

    goto :goto_2
.end method

.method public decode([[Z)Lcom/google/zxing/common/DecoderResult;
    .locals 1
    .param p1, "image"    # [[Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode([[ZLjava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0

    return-object v0
.end method

.method public decode([[ZLjava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .locals 1
    .param p1, "image"    # [[Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[Z",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DecoderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 60
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    invoke-static {p1}, Lcom/google/zxing/common/BitMatrix;->parse([[Z)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0

    return-object v0
.end method
