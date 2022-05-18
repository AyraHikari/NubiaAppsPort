.class final Lcom/google/zxing/qrcode/encoder/MaskUtil;
.super Ljava/lang/Object;
.source "MaskUtil.java"


# static fields
.field private static final N1:I = 0x3

.field private static final N2:I = 0x3

.field private static final N3:I = 0x28

.field private static final N4:I = 0xa


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method static applyMaskPenaltyRule1(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 2
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .prologue
    .line 41
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I
    .locals 11
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .param p1, "isHorizontal"    # Z

    .prologue
    const/4 v10, 0x5

    .line 196
    const/4 v7, 0x0

    .line 197
    .local v7, "penalty":I
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v3

    .line 198
    .local v3, "iLimit":I
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v5

    .line 199
    .local v5, "jLimit":I
    :goto_1
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v0

    .line 200
    .local v0, "array":[[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v3, :cond_7

    .line 201
    const/4 v6, 0x0

    .line 202
    .local v6, "numSameBitCells":I
    const/4 v8, -0x1

    .line 203
    .local v8, "prevBit":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    if-ge v4, v5, :cond_5

    .line 204
    if-eqz p1, :cond_2

    aget-object v9, v0, v2

    aget-byte v1, v9, v4

    .line 205
    .local v1, "bit":I
    :goto_4
    if-ne v1, v8, :cond_3

    .line 206
    add-int/lit8 v6, v6, 0x1

    .line 203
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 197
    .end local v0    # "array":[[B
    .end local v1    # "bit":I
    .end local v2    # "i":I
    .end local v3    # "iLimit":I
    .end local v4    # "j":I
    .end local v5    # "jLimit":I
    .end local v6    # "numSameBitCells":I
    .end local v8    # "prevBit":I
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v3

    goto :goto_0

    .line 198
    .restart local v3    # "iLimit":I
    :cond_1
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v5

    goto :goto_1

    .line 204
    .restart local v0    # "array":[[B
    .restart local v2    # "i":I
    .restart local v4    # "j":I
    .restart local v5    # "jLimit":I
    .restart local v6    # "numSameBitCells":I
    .restart local v8    # "prevBit":I
    :cond_2
    aget-object v9, v0, v4

    aget-byte v1, v9, v2

    goto :goto_4

    .line 208
    .restart local v1    # "bit":I
    :cond_3
    if-lt v6, v10, :cond_4

    .line 209
    add-int/lit8 v9, v6, -0x5

    add-int/lit8 v9, v9, 0x3

    add-int/2addr v7, v9

    .line 211
    :cond_4
    const/4 v6, 0x1

    .line 212
    move v8, v1

    goto :goto_5

    .line 215
    .end local v1    # "bit":I
    :cond_5
    if-lt v6, v10, :cond_6

    .line 216
    add-int/lit8 v9, v6, -0x5

    add-int/lit8 v9, v9, 0x3

    add-int/2addr v7, v9

    .line 200
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 219
    .end local v4    # "j":I
    .end local v6    # "numSameBitCells":I
    .end local v8    # "prevBit":I
    :cond_7
    return v7
.end method

.method static applyMaskPenaltyRule2(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 10
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .prologue
    .line 50
    const/4 v3, 0x0

    .line 51
    .local v3, "penalty":I
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v0

    .line 52
    .local v0, "array":[[B
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v5

    .line 53
    .local v5, "width":I
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v2

    .line 54
    .local v2, "height":I
    const/4 v7, 0x0

    .local v7, "y":I
    :goto_0
    add-int/lit8 v8, v2, -0x1

    if-ge v7, v8, :cond_2

    .line 55
    aget-object v1, v0, v7

    .line 56
    .local v1, "arrayY":[B
    const/4 v6, 0x0

    .local v6, "x":I
    :goto_1
    add-int/lit8 v8, v5, -0x1

    if-ge v6, v8, :cond_1

    .line 57
    aget-byte v4, v1, v6

    .line 58
    .local v4, "value":I
    add-int/lit8 v8, v6, 0x1

    aget-byte v8, v1, v8

    if-ne v4, v8, :cond_0

    add-int/lit8 v8, v7, 0x1

    aget-object v8, v0, v8

    aget-byte v8, v8, v6

    if-ne v4, v8, :cond_0

    add-int/lit8 v8, v7, 0x1

    aget-object v8, v0, v8

    add-int/lit8 v9, v6, 0x1

    aget-byte v8, v8, v9

    if-ne v4, v8, :cond_0

    .line 59
    add-int/lit8 v3, v3, 0x1

    .line 56
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 54
    .end local v4    # "value":I
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 63
    .end local v1    # "arrayY":[B
    .end local v6    # "x":I
    :cond_2
    mul-int/lit8 v8, v3, 0x3

    return v8
.end method

.method static applyMaskPenaltyRule3(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 10
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .prologue
    const/4 v9, 0x1

    .line 72
    const/4 v3, 0x0

    .line 73
    .local v3, "numPenalties":I
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v0

    .line 74
    .local v0, "array":[[B
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v4

    .line 75
    .local v4, "width":I
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v2

    .line 76
    .local v2, "height":I
    const/4 v6, 0x0

    .local v6, "y":I
    :goto_0
    if-ge v6, v2, :cond_5

    .line 77
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_1
    if-ge v5, v4, :cond_4

    .line 78
    aget-object v1, v0, v6

    .line 79
    .local v1, "arrayY":[B
    add-int/lit8 v7, v5, 0x6

    if-ge v7, v4, :cond_1

    aget-byte v7, v1, v5

    if-ne v7, v9, :cond_1

    add-int/lit8 v7, v5, 0x1

    aget-byte v7, v1, v7

    if-nez v7, :cond_1

    add-int/lit8 v7, v5, 0x2

    aget-byte v7, v1, v7

    if-ne v7, v9, :cond_1

    add-int/lit8 v7, v5, 0x3

    aget-byte v7, v1, v7

    if-ne v7, v9, :cond_1

    add-int/lit8 v7, v5, 0x4

    aget-byte v7, v1, v7

    if-ne v7, v9, :cond_1

    add-int/lit8 v7, v5, 0x5

    aget-byte v7, v1, v7

    if-nez v7, :cond_1

    add-int/lit8 v7, v5, 0x6

    aget-byte v7, v1, v7

    if-ne v7, v9, :cond_1

    add-int/lit8 v7, v5, -0x4

    .line 87
    invoke-static {v1, v7, v5}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->isWhiteHorizontal([BII)Z

    move-result v7

    if-nez v7, :cond_0

    add-int/lit8 v7, v5, 0x7

    add-int/lit8 v8, v5, 0xb

    invoke-static {v1, v7, v8}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->isWhiteHorizontal([BII)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 88
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 90
    :cond_1
    add-int/lit8 v7, v6, 0x6

    if-ge v7, v2, :cond_3

    aget-object v7, v0, v6

    aget-byte v7, v7, v5

    if-ne v7, v9, :cond_3

    add-int/lit8 v7, v6, 0x1

    aget-object v7, v0, v7

    aget-byte v7, v7, v5

    if-nez v7, :cond_3

    add-int/lit8 v7, v6, 0x2

    aget-object v7, v0, v7

    aget-byte v7, v7, v5

    if-ne v7, v9, :cond_3

    add-int/lit8 v7, v6, 0x3

    aget-object v7, v0, v7

    aget-byte v7, v7, v5

    if-ne v7, v9, :cond_3

    add-int/lit8 v7, v6, 0x4

    aget-object v7, v0, v7

    aget-byte v7, v7, v5

    if-ne v7, v9, :cond_3

    add-int/lit8 v7, v6, 0x5

    aget-object v7, v0, v7

    aget-byte v7, v7, v5

    if-nez v7, :cond_3

    add-int/lit8 v7, v6, 0x6

    aget-object v7, v0, v7

    aget-byte v7, v7, v5

    if-ne v7, v9, :cond_3

    add-int/lit8 v7, v6, -0x4

    .line 98
    invoke-static {v0, v5, v7, v6}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->isWhiteVertical([[BIII)Z

    move-result v7

    if-nez v7, :cond_2

    add-int/lit8 v7, v6, 0x7

    add-int/lit8 v8, v6, 0xb

    invoke-static {v0, v5, v7, v8}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->isWhiteVertical([[BIII)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 99
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 77
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 76
    .end local v1    # "arrayY":[B
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 103
    .end local v5    # "x":I
    :cond_5
    mul-int/lit8 v7, v3, 0x28

    return v7
.end method

.method static applyMaskPenaltyRule4(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 10
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .prologue
    .line 133
    const/4 v3, 0x0

    .line 134
    .local v3, "numDarkCells":I
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v0

    .line 135
    .local v0, "array":[[B
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v5

    .line 136
    .local v5, "width":I
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v2

    .line 137
    .local v2, "height":I
    const/4 v7, 0x0

    .local v7, "y":I
    :goto_0
    if-ge v7, v2, :cond_2

    .line 138
    aget-object v1, v0, v7

    .line 139
    .local v1, "arrayY":[B
    const/4 v6, 0x0

    .local v6, "x":I
    :goto_1
    if-ge v6, v5, :cond_1

    .line 140
    aget-byte v8, v1, v6

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 141
    add-int/lit8 v3, v3, 0x1

    .line 139
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 137
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 145
    .end local v1    # "arrayY":[B
    .end local v6    # "x":I
    :cond_2
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v9

    mul-int v4, v8, v9

    .line 146
    .local v4, "numTotalCells":I
    shl-int/lit8 v8, v3, 0x1

    sub-int/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0xa

    div-int/2addr v8, v4

    .line 147
    mul-int/lit8 v8, v8, 0xa

    return v8
.end method

.method static getDataMaskBit(III)Z
    .locals 5
    .param p0, "maskPattern"    # I
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 157
    packed-switch p0, :pswitch_data_0

    .line 186
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid mask pattern: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 159
    :pswitch_0
    add-int v2, p2, p1

    and-int/lit8 v0, v2, 0x1

    .line 188
    .local v0, "intermediate":I
    :goto_0
    if-nez v0, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 162
    .end local v0    # "intermediate":I
    :pswitch_1
    and-int/lit8 v0, p2, 0x1

    .line 163
    .restart local v0    # "intermediate":I
    goto :goto_0

    .line 165
    .end local v0    # "intermediate":I
    :pswitch_2
    rem-int/lit8 v0, p1, 0x3

    .line 166
    .restart local v0    # "intermediate":I
    goto :goto_0

    .line 168
    .end local v0    # "intermediate":I
    :pswitch_3
    add-int v2, p2, p1

    rem-int/lit8 v0, v2, 0x3

    .line 169
    .restart local v0    # "intermediate":I
    goto :goto_0

    .line 171
    .end local v0    # "intermediate":I
    :pswitch_4
    div-int/lit8 v2, p2, 0x2

    div-int/lit8 v3, p1, 0x3

    add-int/2addr v2, v3

    and-int/lit8 v0, v2, 0x1

    .line 172
    .restart local v0    # "intermediate":I
    goto :goto_0

    .line 174
    .end local v0    # "intermediate":I
    :pswitch_5
    mul-int v1, p2, p1

    .line 175
    .local v1, "temp":I
    and-int/lit8 v2, v1, 0x1

    rem-int/lit8 v3, v1, 0x3

    add-int v0, v2, v3

    .line 176
    .restart local v0    # "intermediate":I
    goto :goto_0

    .line 178
    .end local v0    # "intermediate":I
    .end local v1    # "temp":I
    :pswitch_6
    mul-int v1, p2, p1

    .line 179
    .restart local v1    # "temp":I
    and-int/lit8 v2, v1, 0x1

    rem-int/lit8 v3, v1, 0x3

    add-int/2addr v2, v3

    and-int/lit8 v0, v2, 0x1

    .line 180
    .restart local v0    # "intermediate":I
    goto :goto_0

    .line 182
    .end local v0    # "intermediate":I
    .end local v1    # "temp":I
    :pswitch_7
    mul-int v2, p2, p1

    .line 183
    rem-int/lit8 v2, v2, 0x3

    add-int v3, p2, p1

    and-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    and-int/lit8 v0, v2, 0x1

    .line 184
    .restart local v0    # "intermediate":I
    goto :goto_0

    .line 188
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static isWhiteHorizontal([BII)Z
    .locals 4
    .param p0, "rowArray"    # [B
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 107
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 108
    array-length v3, p0

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 109
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 110
    aget-byte v3, p0, v0

    if-ne v3, v2, :cond_0

    .line 114
    :goto_1
    return v1

    .line 109
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 114
    goto :goto_1
.end method

.method private static isWhiteVertical([[BIII)Z
    .locals 4
    .param p0, "array"    # [[B
    .param p1, "col"    # I
    .param p2, "from"    # I
    .param p3, "to"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 118
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 119
    array-length v3, p0

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 120
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 121
    aget-object v3, p0, v0

    aget-byte v3, v3, p1

    if-ne v3, v2, :cond_0

    .line 125
    :goto_1
    return v1

    .line 120
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 125
    goto :goto_1
.end method
