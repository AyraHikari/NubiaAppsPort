.class final Lcom/google/zxing/qrcode/decoder/DataBlock;
.super Ljava/lang/Object;
.source "DataBlock.java"


# instance fields
.field private final codewords:[B

.field private final numDataCodewords:I


# direct methods
.method private constructor <init>(I[B)V
    .locals 0
    .param p1, "numDataCodewords"    # I
    .param p2, "codewords"    # [B

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->numDataCodewords:I

    .line 33
    iput-object p2, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    .line 34
    return-void
.end method

.method static getDataBlocks([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)[Lcom/google/zxing/qrcode/decoder/DataBlock;
    .locals 24
    .param p0, "rawCodewords"    # [B
    .param p1, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p2, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .prologue
    .line 51
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    .line 52
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 57
    :cond_0
    invoke-virtual/range {p1 .. p2}, Lcom/google/zxing/qrcode/decoder/Version;->getECBlocksForLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-result-object v4

    .line 60
    .local v4, "ecBlocks":Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    const/16 v19, 0x0

    .line 61
    .local v19, "totalBlocks":I
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECBlocks()[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v3

    .line 62
    .local v3, "ecBlockArray":[Lcom/google/zxing/qrcode/decoder/Version$ECB;
    array-length v0, v3

    move/from16 v21, v0

    const/16 v20, 0x0

    :goto_0
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    aget-object v2, v3, v20

    .line 63
    .local v2, "ecBlock":Lcom/google/zxing/qrcode/decoder/Version$ECB;
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getCount()I

    move-result v22

    add-int v19, v19, v22

    .line 62
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 67
    .end local v2    # "ecBlock":Lcom/google/zxing/qrcode/decoder/Version$ECB;
    :cond_1
    move/from16 v0, v19

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/DataBlock;

    move-object/from16 v16, v0

    .line 68
    .local v16, "result":[Lcom/google/zxing/qrcode/decoder/DataBlock;
    const/4 v12, 0x0

    .line 69
    .local v12, "numResultBlocks":I
    array-length v0, v3

    move/from16 v21, v0

    const/16 v20, 0x0

    :goto_1
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    aget-object v2, v3, v20

    .line 70
    .restart local v2    # "ecBlock":Lcom/google/zxing/qrcode/decoder/Version$ECB;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getCount()I

    move-result v22

    move/from16 v0, v22

    if-ge v5, v0, :cond_2

    .line 71
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getDataCodewords()I

    move-result v11

    .line 72
    .local v11, "numDataCodewords":I
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECCodewordsPerBlock()I

    move-result v22

    add-int v10, v22, v11

    .line 73
    .local v10, "numBlockCodewords":I
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "numResultBlocks":I
    .local v13, "numResultBlocks":I
    new-instance v22, Lcom/google/zxing/qrcode/decoder/DataBlock;

    new-array v0, v10, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v11, v1}, Lcom/google/zxing/qrcode/decoder/DataBlock;-><init>(I[B)V

    aput-object v22, v16, v12

    .line 70
    add-int/lit8 v5, v5, 0x1

    move v12, v13

    .end local v13    # "numResultBlocks":I
    .restart local v12    # "numResultBlocks":I
    goto :goto_2

    .line 69
    .end local v10    # "numBlockCodewords":I
    .end local v11    # "numDataCodewords":I
    :cond_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 79
    .end local v2    # "ecBlock":Lcom/google/zxing/qrcode/decoder/Version$ECB;
    .end local v5    # "i":I
    :cond_3
    const/16 v20, 0x0

    aget-object v20, v16, v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v18, v0

    .line 80
    .local v18, "shorterBlocksTotalCodewords":I
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v8, v20, -0x1

    .line 81
    .local v8, "longerBlocksStartAt":I
    :goto_3
    if-ltz v8, :cond_4

    .line 82
    aget-object v20, v16, v8

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    .line 83
    move/from16 v0, v20

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 86
    add-int/lit8 v8, v8, -0x1

    .line 87
    goto :goto_3

    .line 88
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 90
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECCodewordsPerBlock()I

    move-result v20

    sub-int v17, v18, v20

    .line 93
    .local v17, "shorterBlocksNumDataCodewords":I
    const/4 v14, 0x0

    .line 94
    .local v14, "rawCodewordsOffset":I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    move/from16 v0, v17

    if-ge v5, v0, :cond_6

    .line 95
    const/4 v7, 0x0

    .local v7, "j":I
    move v15, v14

    .end local v14    # "rawCodewordsOffset":I
    .local v15, "rawCodewordsOffset":I
    :goto_5
    if-ge v7, v12, :cond_5

    .line 96
    aget-object v20, v16, v7

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v20, v0

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "rawCodewordsOffset":I
    .restart local v14    # "rawCodewordsOffset":I
    aget-byte v21, p0, v15

    aput-byte v21, v20, v5

    .line 95
    add-int/lit8 v7, v7, 0x1

    move v15, v14

    .end local v14    # "rawCodewordsOffset":I
    .restart local v15    # "rawCodewordsOffset":I
    goto :goto_5

    .line 94
    :cond_5
    add-int/lit8 v5, v5, 0x1

    move v14, v15

    .end local v15    # "rawCodewordsOffset":I
    .restart local v14    # "rawCodewordsOffset":I
    goto :goto_4

    .line 100
    .end local v7    # "j":I
    :cond_6
    move v7, v8

    .restart local v7    # "j":I
    move v15, v14

    .end local v14    # "rawCodewordsOffset":I
    .restart local v15    # "rawCodewordsOffset":I
    :goto_6
    if-ge v7, v12, :cond_7

    .line 101
    aget-object v20, v16, v7

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v20, v0

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "rawCodewordsOffset":I
    .restart local v14    # "rawCodewordsOffset":I
    aget-byte v21, p0, v15

    aput-byte v21, v20, v17

    .line 100
    add-int/lit8 v7, v7, 0x1

    move v15, v14

    .end local v14    # "rawCodewordsOffset":I
    .restart local v15    # "rawCodewordsOffset":I
    goto :goto_6

    .line 104
    :cond_7
    const/16 v20, 0x0

    aget-object v20, v16, v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v9, v0

    .line 105
    .local v9, "max":I
    move/from16 v5, v17

    move v14, v15

    .end local v15    # "rawCodewordsOffset":I
    .restart local v14    # "rawCodewordsOffset":I
    :goto_7
    if-ge v5, v9, :cond_a

    .line 106
    const/4 v7, 0x0

    move v15, v14

    .end local v14    # "rawCodewordsOffset":I
    .restart local v15    # "rawCodewordsOffset":I
    :goto_8
    if-ge v7, v12, :cond_9

    .line 107
    if-ge v7, v8, :cond_8

    move v6, v5

    .line 108
    .local v6, "iOffset":I
    :goto_9
    aget-object v20, v16, v7

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v20, v0

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "rawCodewordsOffset":I
    .restart local v14    # "rawCodewordsOffset":I
    aget-byte v21, p0, v15

    aput-byte v21, v20, v6

    .line 106
    add-int/lit8 v7, v7, 0x1

    move v15, v14

    .end local v14    # "rawCodewordsOffset":I
    .restart local v15    # "rawCodewordsOffset":I
    goto :goto_8

    .line 107
    .end local v6    # "iOffset":I
    :cond_8
    add-int/lit8 v6, v5, 0x1

    goto :goto_9

    .line 105
    :cond_9
    add-int/lit8 v5, v5, 0x1

    move v14, v15

    .end local v15    # "rawCodewordsOffset":I
    .restart local v14    # "rawCodewordsOffset":I
    goto :goto_7

    .line 111
    :cond_a
    return-object v16
.end method


# virtual methods
.method getCodewords()[B
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    return-object v0
.end method

.method getNumDataCodewords()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->numDataCodewords:I

    return v0
.end method
