.class public Lcom/google/zxing/qrcode/QRCodeReader;
.super Ljava/lang/Object;
.source "QRCodeReader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# static fields
.field private static final NO_POINTS:[Lcom/google/zxing/ResultPoint;


# instance fields
.field private final decoder:Lcom/google/zxing/qrcode/decoder/Decoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    sput-object v0, Lcom/google/zxing/qrcode/QRCodeReader;->NO_POINTS:[Lcom/google/zxing/ResultPoint;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/google/zxing/qrcode/decoder/Decoder;

    invoke-direct {v0}, Lcom/google/zxing/qrcode/decoder/Decoder;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/qrcode/QRCodeReader;->decoder:Lcom/google/zxing/qrcode/decoder/Decoder;

    return-void
.end method

.method private static extractPureBits(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;
    .locals 20
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/common/BitMatrix;->getTopLeftOnBit()[I

    move-result-object v6

    .line 121
    .local v6, "leftTopBlack":[I
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/common/BitMatrix;->getBottomRightOnBit()[I

    move-result-object v14

    .line 122
    .local v14, "rightBottomBlack":[I
    if-eqz v6, :cond_0

    if-nez v14, :cond_1

    .line 123
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v18

    throw v18

    .line 126
    :cond_1
    move-object/from16 v0, p0

    invoke-static {v6, v0}, Lcom/google/zxing/qrcode/QRCodeReader;->moduleSize([ILcom/google/zxing/common/BitMatrix;)F

    move-result v9

    .line 128
    .local v9, "moduleSize":F
    const/16 v18, 0x1

    aget v15, v6, v18

    .line 129
    .local v15, "top":I
    const/16 v18, 0x1

    aget v3, v14, v18

    .line 130
    .local v3, "bottom":I
    const/16 v18, 0x0

    aget v5, v6, v18

    .line 131
    .local v5, "left":I
    const/16 v18, 0x0

    aget v13, v14, v18

    .line 134
    .local v13, "right":I
    if-ge v5, v13, :cond_2

    if-lt v15, v3, :cond_3

    .line 135
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v18

    throw v18

    .line 138
    :cond_3
    sub-int v18, v3, v15

    sub-int v19, v13, v5

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    .line 141
    sub-int v18, v3, v15

    add-int v13, v5, v18

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v18

    move/from16 v0, v18

    if-lt v13, v0, :cond_4

    .line 144
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v18

    throw v18

    .line 148
    :cond_4
    sub-int v18, v13, v5

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v18, v18, v9

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 149
    .local v8, "matrixWidth":I
    sub-int v18, v3, v15

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v18, v18, v9

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 150
    .local v7, "matrixHeight":I
    if-lez v8, :cond_5

    if-gtz v7, :cond_6

    .line 151
    :cond_5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v18

    throw v18

    .line 153
    :cond_6
    if-eq v7, v8, :cond_7

    .line 155
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v18

    throw v18

    .line 161
    :cond_7
    const/high16 v18, 0x40000000    # 2.0f

    div-float v18, v9, v18

    move/from16 v0, v18

    float-to-int v10, v0

    .line 162
    .local v10, "nudge":I
    add-int/2addr v15, v10

    .line 163
    add-int/2addr v5, v10

    .line 168
    add-int/lit8 v18, v8, -0x1

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v9

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    add-int v18, v18, v5

    sub-int v12, v18, v13

    .line 169
    .local v12, "nudgedTooFarRight":I
    if-lez v12, :cond_9

    .line 170
    if-le v12, v10, :cond_8

    .line 172
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v18

    throw v18

    .line 174
    :cond_8
    sub-int/2addr v5, v12

    .line 177
    :cond_9
    add-int/lit8 v18, v7, -0x1

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v9

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    add-int v18, v18, v15

    sub-int v11, v18, v3

    .line 178
    .local v11, "nudgedTooFarDown":I
    if-lez v11, :cond_b

    .line 179
    if-le v11, v10, :cond_a

    .line 181
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v18

    throw v18

    .line 183
    :cond_a
    sub-int/2addr v15, v11

    .line 187
    :cond_b
    new-instance v2, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v2, v8, v7}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 188
    .local v2, "bits":Lcom/google/zxing/common/BitMatrix;
    const/16 v17, 0x0

    .local v17, "y":I
    :goto_0
    move/from16 v0, v17

    if-ge v0, v7, :cond_e

    .line 189
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v9

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    add-int v4, v15, v18

    .line 190
    .local v4, "iOffset":I
    const/16 v16, 0x0

    .local v16, "x":I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v8, :cond_d

    .line 191
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v9

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    add-int v18, v18, v5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 192
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 190
    :cond_c
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 188
    :cond_d
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 196
    .end local v4    # "iOffset":I
    .end local v16    # "x":I
    :cond_e
    return-object v2
.end method

.method private static moduleSize([ILcom/google/zxing/common/BitMatrix;)F
    .locals 9
    .param p0, "leftTopBlack"    # [I
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 200
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    .line 201
    .local v0, "height":I
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v3

    .line 202
    .local v3, "width":I
    aget v4, p0, v7

    .line 203
    .local v4, "x":I
    aget v5, p0, v6

    .line 204
    .local v5, "y":I
    const/4 v1, 0x1

    .line 205
    .local v1, "inBlack":Z
    const/4 v2, 0x0

    .line 206
    .local v2, "transitions":I
    :goto_0
    if-ge v4, v3, :cond_2

    if-ge v5, v0, :cond_2

    .line 207
    invoke-virtual {p1, v4, v5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-eq v1, v8, :cond_0

    .line 208
    add-int/lit8 v2, v2, 0x1

    const/4 v8, 0x5

    if-eq v2, v8, :cond_2

    .line 211
    if-nez v1, :cond_1

    move v1, v6

    .line 213
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 214
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move v1, v7

    .line 211
    goto :goto_1

    .line 216
    :cond_2
    if-eq v4, v3, :cond_3

    if-ne v5, v0, :cond_4

    .line 217
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6

    .line 219
    :cond_4
    aget v6, p0, v7

    sub-int v6, v4, v6

    int-to-float v6, v6

    const/high16 v7, 0x40e00000    # 7.0f

    div-float/2addr v6, v7

    return v6
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .locals 1
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/qrcode/QRCodeReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public final decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 10
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
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
    .line 72
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    if-eqz p2, :cond_4

    sget-object v7, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 73
    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v7

    invoke-static {v7}, Lcom/google/zxing/qrcode/QRCodeReader;->extractPureBits(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    .line 74
    .local v0, "bits":Lcom/google/zxing/common/BitMatrix;
    iget-object v7, p0, Lcom/google/zxing/qrcode/QRCodeReader;->decoder:Lcom/google/zxing/qrcode/decoder/Decoder;

    invoke-virtual {v7, v0, p2}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v2

    .line 75
    .local v2, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    sget-object v5, Lcom/google/zxing/qrcode/QRCodeReader;->NO_POINTS:[Lcom/google/zxing/ResultPoint;

    .line 83
    .end local v0    # "bits":Lcom/google/zxing/common/BitMatrix;
    .local v5, "points":[Lcom/google/zxing/ResultPoint;
    :goto_0
    invoke-virtual {v2}, Lcom/google/zxing/common/DecoderResult;->getOther()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;

    if-eqz v7, :cond_0

    .line 84
    invoke-virtual {v2}, Lcom/google/zxing/common/DecoderResult;->getOther()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;

    invoke-virtual {v7, v5}, Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;->applyMirroredCorrection([Lcom/google/zxing/ResultPoint;)V

    .line 87
    :cond_0
    new-instance v6, Lcom/google/zxing/Result;

    invoke-virtual {v2}, Lcom/google/zxing/common/DecoderResult;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/google/zxing/common/DecoderResult;->getRawBytes()[B

    move-result-object v8

    sget-object v9, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v6, v7, v8, v5, v9}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 88
    .local v6, "result":Lcom/google/zxing/Result;
    invoke-virtual {v2}, Lcom/google/zxing/common/DecoderResult;->getByteSegments()Ljava/util/List;

    move-result-object v1

    .line 89
    .local v1, "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    if-eqz v1, :cond_1

    .line 90
    sget-object v7, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v6, v7, v1}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 92
    :cond_1
    invoke-virtual {v2}, Lcom/google/zxing/common/DecoderResult;->getECLevel()Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, "ecLevel":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 94
    sget-object v7, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v6, v7, v4}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 96
    :cond_2
    invoke-virtual {v2}, Lcom/google/zxing/common/DecoderResult;->hasStructuredAppend()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 97
    sget-object v7, Lcom/google/zxing/ResultMetadataType;->STRUCTURED_APPEND_SEQUENCE:Lcom/google/zxing/ResultMetadataType;

    .line 98
    invoke-virtual {v2}, Lcom/google/zxing/common/DecoderResult;->getStructuredAppendSequenceNumber()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 97
    invoke-virtual {v6, v7, v8}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 99
    sget-object v7, Lcom/google/zxing/ResultMetadataType;->STRUCTURED_APPEND_PARITY:Lcom/google/zxing/ResultMetadataType;

    .line 100
    invoke-virtual {v2}, Lcom/google/zxing/common/DecoderResult;->getStructuredAppendParity()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 99
    invoke-virtual {v6, v7, v8}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 102
    :cond_3
    return-object v6

    .line 77
    .end local v1    # "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v2    # "decoderResult":Lcom/google/zxing/common/DecoderResult;
    .end local v4    # "ecLevel":Ljava/lang/String;
    .end local v5    # "points":[Lcom/google/zxing/ResultPoint;
    .end local v6    # "result":Lcom/google/zxing/Result;
    :cond_4
    new-instance v7, Lcom/google/zxing/qrcode/detector/Detector;

    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/zxing/qrcode/detector/Detector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    invoke-virtual {v7, p2}, Lcom/google/zxing/qrcode/detector/Detector;->detect(Ljava/util/Map;)Lcom/google/zxing/common/DetectorResult;

    move-result-object v3

    .line 78
    .local v3, "detectorResult":Lcom/google/zxing/common/DetectorResult;
    iget-object v7, p0, Lcom/google/zxing/qrcode/QRCodeReader;->decoder:Lcom/google/zxing/qrcode/decoder/Decoder;

    invoke-virtual {v3}, Lcom/google/zxing/common/DetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object v8

    invoke-virtual {v7, v8, p2}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v2

    .line 79
    .restart local v2    # "decoderResult":Lcom/google/zxing/common/DecoderResult;
    invoke-virtual {v3}, Lcom/google/zxing/common/DetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v5

    .restart local v5    # "points":[Lcom/google/zxing/ResultPoint;
    goto :goto_0
.end method

.method protected final getDecoder()Lcom/google/zxing/qrcode/decoder/Decoder;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/zxing/qrcode/QRCodeReader;->decoder:Lcom/google/zxing/qrcode/decoder/Decoder;

    return-object v0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method
