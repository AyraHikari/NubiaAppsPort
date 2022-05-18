.class public final Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;
.super Lcom/google/zxing/qrcode/QRCodeReader;
.source "QRCodeMultiReader.java"

# interfaces
.implements Lcom/google/zxing/multi/MultipleBarcodeReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/multi/qrcode/QRCodeMultiReader$SAComparator;
    }
.end annotation


# static fields
.field private static final EMPTY_RESULT_ARRAY:[Lcom/google/zxing/Result;

.field private static final NO_POINTS:[Lcom/google/zxing/ResultPoint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    new-array v0, v1, [Lcom/google/zxing/Result;

    sput-object v0, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/Result;

    .line 51
    new-array v0, v1, [Lcom/google/zxing/ResultPoint;

    sput-object v0, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;->NO_POINTS:[Lcom/google/zxing/ResultPoint;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/zxing/qrcode/QRCodeReader;-><init>()V

    return-void
.end method

.method private static processStructuredAppend(Ljava/util/List;)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/Result;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/Result;>;"
    const/4 v7, 0x0

    .line 103
    .local v7, "hasSA":Z
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/zxing/Result;

    .line 104
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v18

    sget-object v20, Lcom/google/zxing/ResultMetadataType;->STRUCTURED_APPEND_SEQUENCE:Lcom/google/zxing/ResultMetadataType;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 105
    const/4 v7, 0x1

    .line 109
    :cond_1
    if-nez v7, :cond_2

    .line 163
    .end local p0    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/Result;>;"
    :goto_0
    return-object p0

    .line 114
    .restart local p0    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/Result;>;"
    :cond_2
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v12, "newResults":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/Result;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v16, "saResults":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/Result;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_3
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/zxing/Result;

    .line 117
    .local v14, "result":Lcom/google/zxing/Result;
    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-virtual {v14}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v19

    sget-object v20, Lcom/google/zxing/ResultMetadataType;->STRUCTURED_APPEND_SEQUENCE:Lcom/google/zxing/ResultMetadataType;

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 119
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 123
    .end local v14    # "result":Lcom/google/zxing/Result;
    :cond_4
    new-instance v18, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader$SAComparator;

    const/16 v19, 0x0

    invoke-direct/range {v18 .. v19}, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader$SAComparator;-><init>(Lcom/google/zxing/multi/qrcode/QRCodeMultiReader$1;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 124
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v6, "concatedText":Ljava/lang/StringBuilder;
    const/4 v13, 0x0

    .line 126
    .local v13, "rawBytesLen":I
    const/4 v4, 0x0

    .line 127
    .local v4, "byteSegmentLength":I
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/zxing/Result;

    .line 128
    .local v15, "saResult":Lcom/google/zxing/Result;
    invoke-virtual {v15}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v15}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    add-int v13, v13, v18

    .line 130
    invoke-virtual {v15}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v18

    sget-object v20, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 133
    invoke-virtual {v15}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v18

    sget-object v20, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Iterable;

    .line 134
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [B

    .line 135
    .local v17, "segment":[B
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v20, v0

    add-int v4, v4, v20

    .line 136
    goto :goto_2

    .line 139
    .end local v15    # "saResult":Lcom/google/zxing/Result;
    .end local v17    # "segment":[B
    :cond_6
    new-array v9, v13, [B

    .line 140
    .local v9, "newRawBytes":[B
    new-array v8, v4, [B

    .line 141
    .local v8, "newByteSegment":[B
    const/4 v10, 0x0

    .line 142
    .local v10, "newRawBytesIndex":I
    const/4 v3, 0x0

    .line 143
    .local v3, "byteSegmentIndex":I
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_7
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/zxing/Result;

    .line 144
    .restart local v15    # "saResult":Lcom/google/zxing/Result;
    invoke-virtual {v15}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object v18

    const/16 v20, 0x0

    invoke-virtual {v15}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v9, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    invoke-virtual {v15}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    add-int v10, v10, v18

    .line 146
    invoke-virtual {v15}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v18

    sget-object v20, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 149
    invoke-virtual {v15}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v18

    sget-object v20, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Iterable;

    .line 150
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [B

    .line 151
    .restart local v17    # "segment":[B
    const/16 v20, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v8, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v20, v0

    add-int v3, v3, v20

    .line 153
    goto :goto_3

    .line 156
    .end local v15    # "saResult":Lcom/google/zxing/Result;
    .end local v17    # "segment":[B
    :cond_8
    new-instance v11, Lcom/google/zxing/Result;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    sget-object v19, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;->NO_POINTS:[Lcom/google/zxing/ResultPoint;

    sget-object v20, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v11, v0, v9, v1, v2}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 157
    .local v11, "newResult":Lcom/google/zxing/Result;
    if-lez v4, :cond_9

    .line 158
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v5, "byteSegmentList":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    invoke-interface {v5, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v18, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v5}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 162
    .end local v5    # "byteSegmentList":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    :cond_9
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 p0, v12

    .line 163
    goto/16 :goto_0
.end method


# virtual methods
.method public decodeMultiple(Lcom/google/zxing/BinaryBitmap;)[Lcom/google/zxing/Result;
    .locals 1
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;->decodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)[Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)[Lcom/google/zxing/Result;
    .locals 13
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)[",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 60
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v6, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/Result;>;"
    new-instance v7, Lcom/google/zxing/multi/qrcode/detector/MultiDetector;

    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/zxing/multi/qrcode/detector/MultiDetector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    invoke-virtual {v7, p2}, Lcom/google/zxing/multi/qrcode/detector/MultiDetector;->detectMulti(Ljava/util/Map;)[Lcom/google/zxing/common/DetectorResult;

    move-result-object v9

    .line 62
    array-length v10, v9

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v10, :cond_4

    aget-object v2, v9, v8

    .line 64
    .local v2, "detectorResult":Lcom/google/zxing/common/DetectorResult;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;->getDecoder()Lcom/google/zxing/qrcode/decoder/Decoder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/google/zxing/common/DetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object v11

    invoke-virtual {v7, v11, p2}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v1

    .line 65
    .local v1, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    invoke-virtual {v2}, Lcom/google/zxing/common/DetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v4

    .line 67
    .local v4, "points":[Lcom/google/zxing/ResultPoint;
    invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getOther()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;

    if-eqz v7, :cond_0

    .line 68
    invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getOther()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;

    invoke-virtual {v7, v4}, Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;->applyMirroredCorrection([Lcom/google/zxing/ResultPoint;)V

    .line 70
    :cond_0
    new-instance v5, Lcom/google/zxing/Result;

    invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getRawBytes()[B

    move-result-object v11

    sget-object v12, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v5, v7, v11, v4, v12}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 72
    .local v5, "result":Lcom/google/zxing/Result;
    invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getByteSegments()Ljava/util/List;

    move-result-object v0

    .line 73
    .local v0, "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    if-eqz v0, :cond_1

    .line 74
    sget-object v7, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v5, v7, v0}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 76
    :cond_1
    invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getECLevel()Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "ecLevel":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 78
    sget-object v7, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v5, v7, v3}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 80
    :cond_2
    invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->hasStructuredAppend()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 81
    sget-object v7, Lcom/google/zxing/ResultMetadataType;->STRUCTURED_APPEND_SEQUENCE:Lcom/google/zxing/ResultMetadataType;

    .line 82
    invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getStructuredAppendSequenceNumber()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 81
    invoke-virtual {v5, v7, v11}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 83
    sget-object v7, Lcom/google/zxing/ResultMetadataType;->STRUCTURED_APPEND_PARITY:Lcom/google/zxing/ResultMetadataType;

    .line 84
    invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getStructuredAppendParity()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 83
    invoke-virtual {v5, v7, v11}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 86
    :cond_3
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v0    # "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v1    # "decoderResult":Lcom/google/zxing/common/DecoderResult;
    .end local v3    # "ecLevel":Ljava/lang/String;
    .end local v4    # "points":[Lcom/google/zxing/ResultPoint;
    .end local v5    # "result":Lcom/google/zxing/Result;
    :goto_1
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_0

    .line 91
    .end local v2    # "detectorResult":Lcom/google/zxing/common/DetectorResult;
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 92
    sget-object v7, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/Result;

    .line 95
    :goto_2
    return-object v7

    .line 94
    :cond_5
    invoke-static {v6}, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;->processStructuredAppend(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 95
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Lcom/google/zxing/Result;

    invoke-interface {v7, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/google/zxing/Result;

    goto :goto_2

    .restart local v2    # "detectorResult":Lcom/google/zxing/common/DetectorResult;
    :catch_0
    move-exception v7

    goto :goto_1
.end method
