.class public abstract Lcom/google/zxing/oned/OneDReader;
.super Ljava/lang/Object;
.source "OneDReader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doDecode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 21
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
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 105
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getWidth()I

    move-result v15

    .line 106
    .local v15, "width":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getHeight()I

    move-result v3

    .line 107
    .local v3, "height":I
    new-instance v10, Lcom/google/zxing/common/BitArray;

    invoke-direct {v10, v15}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 109
    .local v10, "row":Lcom/google/zxing/common/BitArray;
    if-eqz p2, :cond_2

    sget-object v17, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    const/4 v14, 0x1

    .line 110
    .local v14, "tryHarder":Z
    :goto_0
    const/16 v18, 0x1

    if-eqz v14, :cond_3

    const/16 v17, 0x8

    :goto_1
    shr-int v17, v3, v17

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 112
    .local v12, "rowStep":I
    if-eqz v14, :cond_4

    .line 113
    move v5, v3

    .line 118
    .local v5, "maxLines":I
    :goto_2
    div-int/lit8 v6, v3, 0x2

    .line 119
    .local v6, "middle":I
    const/16 v16, 0x0

    .local v16, "x":I
    :goto_3
    move/from16 v0, v16

    if-ge v0, v5, :cond_8

    .line 122
    add-int/lit8 v17, v16, 0x1

    div-int/lit8 v13, v17, 0x2

    .line 123
    .local v13, "rowStepsAboveOrBelow":I
    and-int/lit8 v17, v16, 0x1

    if-nez v17, :cond_5

    const/4 v4, 0x1

    .line 124
    .local v4, "isAbove":Z
    :goto_4
    if-eqz v4, :cond_6

    .end local v13    # "rowStepsAboveOrBelow":I
    :goto_5
    mul-int v17, v12, v13

    add-int v11, v6, v17

    .line 125
    .local v11, "rowNumber":I
    if-ltz v11, :cond_8

    if-ge v11, v3, :cond_8

    .line 132
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v10}, Lcom/google/zxing/BinaryBitmap;->getBlackRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    .line 139
    const/4 v2, 0x0

    .local v2, "attempt":I
    :goto_6
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ge v2, v0, :cond_7

    .line 140
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v2, v0, :cond_0

    .line 141
    invoke-virtual {v10}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 146
    if-eqz p2, :cond_0

    sget-object v17, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 147
    new-instance v7, Ljava/util/EnumMap;

    const-class v17, Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 148
    .local v7, "newHints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 149
    sget-object v17, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, v17

    invoke-interface {v7, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    move-object/from16 p2, v7

    .line 155
    .end local v7    # "newHints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v11, v10, v1}, Lcom/google/zxing/oned/OneDReader;->decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v9

    .line 157
    .local v9, "result":Lcom/google/zxing/Result;
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v2, v0, :cond_1

    .line 159
    sget-object v17, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    const/16 v18, 0xb4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 161
    invoke-virtual {v9}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v8

    .line 162
    .local v8, "points":[Lcom/google/zxing/ResultPoint;
    if-eqz v8, :cond_1

    .line 163
    const/16 v17, 0x0

    new-instance v18, Lcom/google/zxing/ResultPoint;

    int-to-float v0, v15

    move/from16 v19, v0

    const/16 v20, 0x0

    aget-object v20, v8, v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v20

    sub-float v19, v19, v20

    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v19, v19, v20

    const/16 v20, 0x0

    aget-object v20, v8, v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v20

    invoke-direct/range {v18 .. v20}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v18, v8, v17

    .line 164
    const/16 v17, 0x1

    new-instance v18, Lcom/google/zxing/ResultPoint;

    int-to-float v0, v15

    move/from16 v19, v0

    const/16 v20, 0x1

    aget-object v20, v8, v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v20

    sub-float v19, v19, v20

    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v19, v19, v20

    const/16 v20, 0x1

    aget-object v20, v8, v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v20

    invoke-direct/range {v18 .. v20}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v18, v8, v17
    :try_end_1
    .catch Lcom/google/zxing/ReaderException; {:try_start_1 .. :try_end_1} :catch_0

    .line 167
    .end local v8    # "points":[Lcom/google/zxing/ResultPoint;
    :cond_1
    return-object v9

    .line 109
    .end local v2    # "attempt":I
    .end local v4    # "isAbove":Z
    .end local v5    # "maxLines":I
    .end local v6    # "middle":I
    .end local v9    # "result":Lcom/google/zxing/Result;
    .end local v11    # "rowNumber":I
    .end local v12    # "rowStep":I
    .end local v14    # "tryHarder":Z
    .end local v16    # "x":I
    :cond_2
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 110
    .restart local v14    # "tryHarder":Z
    :cond_3
    const/16 v17, 0x5

    goto/16 :goto_1

    .line 115
    .restart local v12    # "rowStep":I
    :cond_4
    const/16 v5, 0xf

    .restart local v5    # "maxLines":I
    goto/16 :goto_2

    .line 123
    .restart local v6    # "middle":I
    .restart local v13    # "rowStepsAboveOrBelow":I
    .restart local v16    # "x":I
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 124
    .restart local v4    # "isAbove":Z
    :cond_6
    neg-int v13, v13

    goto/16 :goto_5

    .line 139
    .end local v13    # "rowStepsAboveOrBelow":I
    .restart local v2    # "attempt":I
    .restart local v11    # "rowNumber":I
    :catch_0
    move-exception v17

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    .line 134
    .end local v2    # "attempt":I
    :catch_1
    move-exception v17

    .line 119
    :cond_7
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3

    .line 174
    .end local v4    # "isAbove":Z
    .end local v11    # "rowNumber":I
    :cond_8
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v17

    throw v17
.end method

.method protected static patternMatchVariance([I[IF)F
    .locals 13
    .param p0, "counters"    # [I
    .param p1, "pattern"    # [I
    .param p2, "maxIndividualVariance"    # F

    .prologue
    const/high16 v10, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 252
    array-length v2, p0

    .line 253
    .local v2, "numCounters":I
    const/4 v5, 0x0

    .line 254
    .local v5, "total":I
    const/4 v3, 0x0

    .line 255
    .local v3, "patternLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 256
    aget v11, p0, v1

    add-int/2addr v5, v11

    .line 257
    aget v11, p1, v1

    add-int/2addr v3, v11

    .line 255
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    :cond_0
    if-ge v5, v3, :cond_2

    .line 278
    :cond_1
    :goto_1
    return v10

    .line 265
    :cond_2
    int-to-float v11, v5

    int-to-float v12, v3

    div-float v7, v11, v12

    .line 266
    .local v7, "unitBarWidth":F
    mul-float/2addr p2, v7

    .line 268
    const/4 v6, 0x0

    .line 269
    .local v6, "totalVariance":F
    const/4 v9, 0x0

    .local v9, "x":I
    :goto_2
    if-ge v9, v2, :cond_4

    .line 270
    aget v0, p0, v9

    .line 271
    .local v0, "counter":I
    aget v11, p1, v9

    int-to-float v11, v11

    mul-float v4, v11, v7

    .line 272
    .local v4, "scaledPattern":F
    int-to-float v11, v0

    cmpl-float v11, v11, v4

    if-lez v11, :cond_3

    int-to-float v11, v0

    sub-float v8, v11, v4

    .line 273
    .local v8, "variance":F
    :goto_3
    cmpl-float v11, v8, p2

    if-gtz v11, :cond_1

    .line 276
    add-float/2addr v6, v8

    .line 269
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 272
    .end local v8    # "variance":F
    :cond_3
    int-to-float v11, v0

    sub-float v8, v4, v11

    goto :goto_3

    .line 278
    .end local v0    # "counter":I
    .end local v4    # "scaledPattern":F
    :cond_4
    int-to-float v10, v5

    div-float v10, v6, v10

    goto :goto_1
.end method

.method protected static recordPattern(Lcom/google/zxing/common/BitArray;I[I)V
    .locals 8
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "start"    # I
    .param p2, "counters"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 193
    array-length v4, p2

    .line 194
    .local v4, "numCounters":I
    invoke-static {p2, v6, v4, v6}, Ljava/util/Arrays;->fill([IIII)V

    .line 195
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    .line 196
    .local v1, "end":I
    if-lt p1, v1, :cond_0

    .line 197
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v5

    throw v5

    .line 199
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v7

    if-nez v7, :cond_1

    move v3, v5

    .line 200
    .local v3, "isWhite":Z
    :goto_0
    const/4 v0, 0x0

    .line 201
    .local v0, "counterPosition":I
    move v2, p1

    .line 202
    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_4

    .line 203
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v7

    if-eq v7, v3, :cond_2

    .line 204
    aget v7, p2, v0

    add-int/lit8 v7, v7, 0x1

    aput v7, p2, v0

    .line 213
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "counterPosition":I
    .end local v2    # "i":I
    .end local v3    # "isWhite":Z
    :cond_1
    move v3, v6

    .line 199
    goto :goto_0

    .line 206
    .restart local v0    # "counterPosition":I
    .restart local v2    # "i":I
    .restart local v3    # "isWhite":Z
    :cond_2
    add-int/lit8 v0, v0, 0x1

    if-eq v0, v4, :cond_4

    .line 209
    aput v5, p2, v0

    .line 210
    if-nez v3, :cond_3

    move v3, v5

    :goto_3
    goto :goto_2

    :cond_3
    move v3, v6

    goto :goto_3

    .line 217
    :cond_4
    if-eq v0, v4, :cond_6

    add-int/lit8 v5, v4, -0x1

    if-ne v0, v5, :cond_5

    if-eq v2, v1, :cond_6

    .line 218
    :cond_5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v5

    throw v5

    .line 220
    :cond_6
    return-void
.end method

.method protected static recordPatternInReverse(Lcom/google/zxing/common/BitArray;I[I)V
    .locals 3
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "start"    # I
    .param p2, "counters"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 225
    array-length v1, p2

    .line 226
    .local v1, "numTransitionsLeft":I
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v0

    .line 227
    .local v0, "last":Z
    :cond_0
    :goto_0
    if-lez p1, :cond_2

    if-ltz v1, :cond_2

    .line 228
    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-eq v2, v0, :cond_0

    .line 229
    add-int/lit8 v1, v1, -0x1

    .line 230
    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 233
    :cond_2
    if-ltz v1, :cond_3

    .line 234
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2

    .line 236
    :cond_3
    add-int/lit8 v2, p1, 0x1

    invoke-static {p0, v2, p2}, Lcom/google/zxing/oned/OneDReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 237
    return-void
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .locals 1
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/oned/OneDReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 11
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
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 54
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/oned/OneDReader;->doDecode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 77
    :cond_0
    return-object v6

    .line 55
    :catch_0
    move-exception v3

    .line 56
    .local v3, "nfe":Lcom/google/zxing/NotFoundException;
    if-eqz p2, :cond_2

    sget-object v8, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p2, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    .line 57
    :goto_0
    if-eqz v8, :cond_3

    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->isRotateSupported()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 58
    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->rotateCounterClockwise()Lcom/google/zxing/BinaryBitmap;

    move-result-object v7

    .line 59
    .local v7, "rotatedImage":Lcom/google/zxing/BinaryBitmap;
    invoke-direct {p0, v7, p2}, Lcom/google/zxing/oned/OneDReader;->doDecode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v6

    .line 61
    .local v6, "result":Lcom/google/zxing/Result;
    invoke-virtual {v6}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v2

    .line 62
    .local v2, "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;*>;"
    const/16 v4, 0x10e

    .line 63
    .local v4, "orientation":I
    if-eqz v2, :cond_1

    sget-object v8, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v2, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 65
    sget-object v8, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    .line 66
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit16 v8, v8, 0x10e

    rem-int/lit16 v4, v8, 0x168

    .line 68
    :cond_1
    sget-object v8, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 70
    invoke-virtual {v6}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v5

    .line 71
    .local v5, "points":[Lcom/google/zxing/ResultPoint;
    if-eqz v5, :cond_0

    .line 72
    invoke-virtual {v7}, Lcom/google/zxing/BinaryBitmap;->getHeight()I

    move-result v0

    .line 73
    .local v0, "height":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v8, v5

    if-ge v1, v8, :cond_0

    .line 74
    new-instance v8, Lcom/google/zxing/ResultPoint;

    int-to-float v9, v0

    aget-object v10, v5, v1

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v10

    sub-float/2addr v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v9, v10

    aget-object v10, v5, v1

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v10

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v8, v5, v1

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 56
    .end local v0    # "height":I
    .end local v1    # "i":I
    .end local v2    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;*>;"
    .end local v4    # "orientation":I
    .end local v5    # "points":[Lcom/google/zxing/ResultPoint;
    .end local v6    # "result":Lcom/google/zxing/Result;
    .end local v7    # "rotatedImage":Lcom/google/zxing/BinaryBitmap;
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 79
    :cond_3
    throw v3
.end method

.method public abstract decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
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
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method
