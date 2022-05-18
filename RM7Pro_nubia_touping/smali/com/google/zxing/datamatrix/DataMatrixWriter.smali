.class public final Lcom/google/zxing/datamatrix/DataMatrixWriter;
.super Ljava/lang/Object;
.source "DataMatrixWriter.java"

# interfaces
.implements Lcom/google/zxing/Writer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertByteMatrixToBitMatrix(Lcom/google/zxing/qrcode/encoder/ByteMatrix;II)Lcom/google/zxing/common/BitMatrix;
    .locals 16
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v6

    .line 165
    .local v6, "matrixWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v5

    .line 166
    .local v5, "matrixHeight":I
    move/from16 v0, p1

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 167
    .local v10, "outputWidth":I
    move/from16 v0, p2

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 169
    .local v9, "outputHeight":I
    div-int v14, v10, v6

    div-int v15, v9, v5

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 171
    .local v7, "multiple":I
    mul-int v14, v6, v7

    sub-int v14, v10, v14

    div-int/lit8 v4, v14, 0x2

    .line 172
    .local v4, "leftPadding":I
    mul-int v14, v5, v7

    sub-int v14, v9, v14

    div-int/lit8 v13, v14, 0x2

    .line 177
    .local v13, "topPadding":I
    move/from16 v0, p2

    if-lt v0, v5, :cond_0

    move/from16 v0, p1

    if-ge v0, v6, :cond_2

    .line 178
    :cond_0
    const/4 v4, 0x0

    .line 179
    const/4 v13, 0x0

    .line 180
    new-instance v8, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v8, v6, v5}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 185
    .local v8, "output":Lcom/google/zxing/common/BitMatrix;
    :goto_0
    invoke-virtual {v8}, Lcom/google/zxing/common/BitMatrix;->clear()V

    .line 186
    const/4 v3, 0x0

    .local v3, "inputY":I
    move v12, v13

    .local v12, "outputY":I
    :goto_1
    if-ge v3, v5, :cond_4

    .line 188
    const/4 v2, 0x0

    .local v2, "inputX":I
    move v11, v4

    .local v11, "outputX":I
    :goto_2
    if-ge v2, v6, :cond_3

    .line 189
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 190
    invoke-virtual {v8, v11, v12, v7, v7}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    .line 188
    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int/2addr v11, v7

    goto :goto_2

    .line 182
    .end local v2    # "inputX":I
    .end local v3    # "inputY":I
    .end local v8    # "output":Lcom/google/zxing/common/BitMatrix;
    .end local v11    # "outputX":I
    .end local v12    # "outputY":I
    :cond_2
    new-instance v8, Lcom/google/zxing/common/BitMatrix;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v8, v0, v1}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .restart local v8    # "output":Lcom/google/zxing/common/BitMatrix;
    goto :goto_0

    .line 186
    .restart local v2    # "inputX":I
    .restart local v3    # "inputY":I
    .restart local v11    # "outputX":I
    .restart local v12    # "outputY":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    add-int/2addr v12, v7

    goto :goto_1

    .line 195
    .end local v2    # "inputX":I
    .end local v11    # "outputX":I
    :cond_4
    return-object v8
.end method

.method private static encodeLowLevel(Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;Lcom/google/zxing/datamatrix/encoder/SymbolInfo;II)Lcom/google/zxing/common/BitMatrix;
    .locals 11
    .param p0, "placement"    # Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;
    .param p1, "symbolInfo"    # Lcom/google/zxing/datamatrix/encoder/SymbolInfo;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 107
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolDataWidth()I

    move-result v4

    .line 108
    .local v4, "symbolWidth":I
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolDataHeight()I

    move-result v3

    .line 110
    .local v3, "symbolHeight":I
    new-instance v0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I

    move-result v7

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolHeight()I

    move-result v10

    invoke-direct {v0, v7, v10}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;-><init>(II)V

    .line 112
    .local v0, "matrix":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    const/4 v2, 0x0

    .line 114
    .local v2, "matrixY":I
    const/4 v6, 0x0

    .local v6, "y":I
    :goto_0
    if-ge v6, v3, :cond_9

    .line 117
    iget v7, p1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixHeight:I

    rem-int v7, v6, v7

    if-nez v7, :cond_2

    .line 118
    const/4 v1, 0x0

    .line 119
    .local v1, "matrixX":I
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_1
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I

    move-result v7

    if-ge v5, v7, :cond_1

    .line 120
    rem-int/lit8 v7, v5, 0x2

    if-nez v7, :cond_0

    move v7, v8

    :goto_2
    invoke-virtual {v0, v1, v2, v7}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 121
    add-int/lit8 v1, v1, 0x1

    .line 119
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    move v7, v9

    .line 120
    goto :goto_2

    .line 123
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 125
    .end local v1    # "matrixX":I
    .end local v5    # "x":I
    :cond_2
    const/4 v1, 0x0

    .line 126
    .restart local v1    # "matrixX":I
    const/4 v5, 0x0

    .restart local v5    # "x":I
    :goto_3
    if-ge v5, v4, :cond_6

    .line 128
    iget v7, p1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixWidth:I

    rem-int v7, v5, v7

    if-nez v7, :cond_3

    .line 129
    invoke-virtual {v0, v1, v2, v8}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 130
    add-int/lit8 v1, v1, 0x1

    .line 132
    :cond_3
    invoke-virtual {p0, v5, v6}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->getBit(II)Z

    move-result v7

    invoke-virtual {v0, v1, v2, v7}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 133
    add-int/lit8 v1, v1, 0x1

    .line 135
    iget v7, p1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixWidth:I

    rem-int v7, v5, v7

    iget v10, p1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixWidth:I

    add-int/lit8 v10, v10, -0x1

    if-ne v7, v10, :cond_4

    .line 136
    rem-int/lit8 v7, v6, 0x2

    if-nez v7, :cond_5

    move v7, v8

    :goto_4
    invoke-virtual {v0, v1, v2, v7}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 137
    add-int/lit8 v1, v1, 0x1

    .line 126
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    move v7, v9

    .line 136
    goto :goto_4

    .line 140
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 142
    iget v7, p1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixHeight:I

    rem-int v7, v6, v7

    iget v10, p1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixHeight:I

    add-int/lit8 v10, v10, -0x1

    if-ne v7, v10, :cond_8

    .line 143
    const/4 v1, 0x0

    .line 144
    const/4 v5, 0x0

    :goto_5
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I

    move-result v7

    if-ge v5, v7, :cond_7

    .line 145
    invoke-virtual {v0, v1, v2, v8}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 146
    add-int/lit8 v1, v1, 0x1

    .line 144
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 148
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 114
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 152
    .end local v1    # "matrixX":I
    .end local v5    # "x":I
    :cond_9
    invoke-static {v0, p2, p3}, Lcom/google/zxing/datamatrix/DataMatrixWriter;->convertByteMatrixToBitMatrix(Lcom/google/zxing/qrcode/encoder/ByteMatrix;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object v7

    return-object v7
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;
    .locals 6
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "format"    # Lcom/google/zxing/BarcodeFormat;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 43
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/datamatrix/DataMatrixWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 15
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "format"    # Lcom/google/zxing/BarcodeFormat;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .prologue
    .line 49
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 50
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "Found empty contents"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 53
    :cond_0
    sget-object v12, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, p2

    if-eq v0, v12, :cond_1

    .line 54
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Can only encode DATA_MATRIX, but got "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 57
    :cond_1
    if-ltz p3, :cond_2

    if-gez p4, :cond_3

    .line 58
    :cond_2
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Requested dimensions can\'t be negative: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x78

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 62
    :cond_3
    sget-object v10, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_NONE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    .line 63
    .local v10, "shape":Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;
    const/4 v5, 0x0

    .line 64
    .local v5, "minSize":Lcom/google/zxing/Dimension;
    const/4 v4, 0x0

    .line 65
    .local v4, "maxSize":Lcom/google/zxing/Dimension;
    if-eqz p5, :cond_6

    .line 66
    sget-object v12, Lcom/google/zxing/EncodeHintType;->DATA_MATRIX_SHAPE:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v0, p5

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    .line 67
    .local v9, "requestedShape":Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;
    if-eqz v9, :cond_4

    .line 68
    move-object v10, v9

    .line 71
    :cond_4
    sget-object v12, Lcom/google/zxing/EncodeHintType;->MIN_SIZE:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v0, p5

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/zxing/Dimension;

    .line 72
    .local v8, "requestedMinSize":Lcom/google/zxing/Dimension;
    if-eqz v8, :cond_5

    .line 73
    move-object v5, v8

    .line 76
    :cond_5
    sget-object v12, Lcom/google/zxing/EncodeHintType;->MAX_SIZE:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v0, p5

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/Dimension;

    .line 77
    .local v7, "requestedMaxSize":Lcom/google/zxing/Dimension;
    if-eqz v7, :cond_6

    .line 78
    move-object v4, v7

    .line 84
    .end local v7    # "requestedMaxSize":Lcom/google/zxing/Dimension;
    .end local v8    # "requestedMinSize":Lcom/google/zxing/Dimension;
    .end local v9    # "requestedShape":Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;
    :cond_6
    move-object/from16 v0, p1

    invoke-static {v0, v10, v5, v4}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->encodeHighLevel(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;)Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "encoded":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    invoke-static {v12, v10, v5, v4, v13}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->lookup(ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;Z)Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v11

    .line 89
    .local v11, "symbolInfo":Lcom/google/zxing/datamatrix/encoder/SymbolInfo;
    invoke-static {v3, v11}, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->encodeECC200(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolInfo;)Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "codewords":Ljava/lang/String;
    new-instance v6, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;

    invoke-virtual {v11}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolDataWidth()I

    move-result v12

    invoke-virtual {v11}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolDataHeight()I

    move-result v13

    invoke-direct {v6, v2, v12, v13}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;-><init>(Ljava/lang/CharSequence;II)V

    .line 93
    .local v6, "placement":Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;
    invoke-virtual {v6}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->place()V

    .line 96
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v6, v11, v0, v1}, Lcom/google/zxing/datamatrix/DataMatrixWriter;->encodeLowLevel(Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;Lcom/google/zxing/datamatrix/encoder/SymbolInfo;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object v12

    return-object v12
.end method
