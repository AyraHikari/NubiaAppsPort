.class public final Lcom/google/zxing/multi/GenericMultipleBarcodeReader;
.super Ljava/lang/Object;
.source "GenericMultipleBarcodeReader.java"

# interfaces
.implements Lcom/google/zxing/multi/MultipleBarcodeReader;


# static fields
.field private static final MAX_DEPTH:I = 0x4

.field private static final MIN_DIMENSION_TO_RECUR:I = 0x64


# instance fields
.field private final delegate:Lcom/google/zxing/Reader;


# direct methods
.method public constructor <init>(Lcom/google/zxing/Reader;)V
    .locals 0
    .param p1, "delegate"    # Lcom/google/zxing/Reader;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->delegate:Lcom/google/zxing/Reader;

    .line 54
    return-void
.end method

.method private doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V
    .locals 22
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .param p4, "xOffset"    # I
    .param p5, "yOffset"    # I
    .param p6, "currentDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/Result;",
            ">;III)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    .local p3, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/Result;>;"
    const/4 v3, 0x4

    move/from16 v0, p6

    if-le v0, v3, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->delegate:Lcom/google/zxing/Reader;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v3, v0, v1}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 88
    .local v17, "result":Lcom/google/zxing/Result;
    const/4 v10, 0x0

    .line 89
    .local v10, "alreadyFound":Z
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/Result;

    .line 90
    invoke-virtual {v3}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 91
    const/4 v10, 0x1

    .line 95
    :cond_3
    if-nez v10, :cond_4

    .line 96
    move-object/from16 v0, v17

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->translateResultPoints(Lcom/google/zxing/Result;II)Lcom/google/zxing/Result;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_4
    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v18

    .line 99
    .local v18, "resultPoints":[Lcom/google/zxing/ResultPoint;
    if-eqz v18, :cond_0

    move-object/from16 v0, v18

    array-length v3, v0

    if-eqz v3, :cond_0

    .line 102
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getWidth()I

    move-result v19

    .line 103
    .local v19, "width":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getHeight()I

    move-result v11

    .line 104
    .local v11, "height":I
    move/from16 v0, v19

    int-to-float v14, v0

    .line 105
    .local v14, "minX":F
    int-to-float v15, v11

    .line 106
    .local v15, "minY":F
    const/4 v12, 0x0

    .line 107
    .local v12, "maxX":F
    const/4 v13, 0x0

    .line 108
    .local v13, "maxY":F
    move-object/from16 v0, v18

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_9

    aget-object v16, v18, v3

    .line 109
    .local v16, "point":Lcom/google/zxing/ResultPoint;
    if-eqz v16, :cond_8

    .line 112
    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v20

    .line 113
    .local v20, "x":F
    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v21

    .line 114
    .local v21, "y":F
    cmpg-float v5, v20, v14

    if-gez v5, :cond_5

    .line 115
    move/from16 v14, v20

    .line 117
    :cond_5
    cmpg-float v5, v21, v15

    if-gez v5, :cond_6

    .line 118
    move/from16 v15, v21

    .line 120
    :cond_6
    cmpl-float v5, v20, v12

    if-lez v5, :cond_7

    .line 121
    move/from16 v12, v20

    .line 123
    :cond_7
    cmpl-float v5, v21, v13

    if-lez v5, :cond_8

    .line 124
    move/from16 v13, v21

    .line 108
    .end local v20    # "x":F
    .end local v21    # "y":F
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 129
    .end local v16    # "point":Lcom/google/zxing/ResultPoint;
    :cond_9
    const/high16 v3, 0x42c80000    # 100.0f

    cmpl-float v3, v14, v3

    if-lez v3, :cond_a

    .line 130
    const/4 v3, 0x0

    const/4 v4, 0x0

    float-to-int v5, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v11}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v4

    add-int/lit8 v9, p6, 0x1

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v3 .. v9}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    .line 136
    :cond_a
    const/high16 v3, 0x42c80000    # 100.0f

    cmpl-float v3, v15, v3

    if-lez v3, :cond_b

    .line 137
    const/4 v3, 0x0

    const/4 v4, 0x0

    float-to-int v5, v15

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v3, v4, v1, v5}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v4

    add-int/lit8 v9, p6, 0x1

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v3 .. v9}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    .line 143
    :cond_b
    add-int/lit8 v3, v19, -0x64

    int-to-float v3, v3

    cmpg-float v3, v12, v3

    if-gez v3, :cond_c

    .line 144
    float-to-int v3, v12

    const/4 v4, 0x0

    float-to-int v5, v12

    sub-int v5, v19, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v11}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v4

    float-to-int v3, v12

    add-int v7, p4, v3

    add-int/lit8 v9, p6, 0x1

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v8, p5

    invoke-direct/range {v3 .. v9}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    .line 150
    :cond_c
    add-int/lit8 v3, v11, -0x64

    int-to-float v3, v3

    cmpg-float v3, v13, v3

    if-gez v3, :cond_0

    .line 151
    const/4 v3, 0x0

    float-to-int v4, v13

    float-to-int v5, v13

    sub-int v5, v11, v5

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v3, v4, v1, v5}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v4

    float-to-int v3, v13

    add-int v8, p5, v3

    add-int/lit8 v9, p6, 0x1

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    invoke-direct/range {v3 .. v9}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    goto/16 :goto_0

    .line 86
    .end local v10    # "alreadyFound":Z
    .end local v11    # "height":I
    .end local v12    # "maxX":F
    .end local v13    # "maxY":F
    .end local v14    # "minX":F
    .end local v15    # "minY":F
    .end local v17    # "result":Lcom/google/zxing/Result;
    .end local v18    # "resultPoints":[Lcom/google/zxing/ResultPoint;
    .end local v19    # "width":I
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method

.method private static translateResultPoints(Lcom/google/zxing/Result;II)Lcom/google/zxing/Result;
    .locals 11
    .param p0, "result"    # Lcom/google/zxing/Result;
    .param p1, "xOffset"    # I
    .param p2, "yOffset"    # I

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v10

    .line 160
    .local v10, "oldResultPoints":[Lcom/google/zxing/ResultPoint;
    if-nez v10, :cond_0

    .line 177
    .end local p0    # "result":Lcom/google/zxing/Result;
    :goto_0
    return-object p0

    .line 163
    .restart local p0    # "result":Lcom/google/zxing/Result;
    :cond_0
    array-length v1, v10

    new-array v4, v1, [Lcom/google/zxing/ResultPoint;

    .line 164
    .local v4, "newResultPoints":[Lcom/google/zxing/ResultPoint;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    array-length v1, v10

    if-ge v8, v1, :cond_2

    .line 165
    aget-object v9, v10, v8

    .line 166
    .local v9, "oldPoint":Lcom/google/zxing/ResultPoint;
    if-eqz v9, :cond_1

    .line 167
    new-instance v1, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    int-to-float v3, p1

    add-float/2addr v2, v3

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    int-to-float v5, p2

    add-float/2addr v3, v5

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v1, v4, v8

    .line 164
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 170
    .end local v9    # "oldPoint":Lcom/google/zxing/ResultPoint;
    :cond_2
    new-instance v0, Lcom/google/zxing/Result;

    invoke-virtual {p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object v2

    .line 172
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getNumBits()I

    move-result v3

    .line 174
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v5

    .line 175
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getTimestamp()J

    move-result-wide v6

    invoke-direct/range {v0 .. v7}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[BI[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;J)V

    .line 176
    .local v0, "newResult":Lcom/google/zxing/Result;
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/zxing/Result;->putAllMetadata(Ljava/util/Map;)V

    move-object p0, v0

    .line 177
    goto :goto_0
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
    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->decodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)[Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)[Lcom/google/zxing/Result;
    .locals 7
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
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    const/4 v4, 0x0

    .line 64
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/Result;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v4

    move v6, v4

    .line 65
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    .line 66
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 69
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/zxing/Result;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/Result;

    return-object v0
.end method
