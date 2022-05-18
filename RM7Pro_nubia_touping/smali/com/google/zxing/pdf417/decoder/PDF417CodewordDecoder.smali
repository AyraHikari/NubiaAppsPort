.class final Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;
.super Ljava/lang/Object;
.source "PDF417CodewordDecoder.java"


# static fields
.field private static final RATIOS_TABLE:[[F


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    .line 28
    sget-object v5, Lcom/google/zxing/pdf417/PDF417Common;->SYMBOL_TABLE:[I

    array-length v5, v5

    filled-new-array {v5, v8}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[F

    sput-object v5, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->RATIOS_TABLE:[[F

    .line 33
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v5, Lcom/google/zxing/pdf417/PDF417Common;->SYMBOL_TABLE:[I

    array-length v5, v5

    if-ge v2, v5, :cond_2

    .line 34
    sget-object v5, Lcom/google/zxing/pdf417/PDF417Common;->SYMBOL_TABLE:[I

    aget v1, v5, v2

    .line 35
    .local v1, "currentSymbol":I
    and-int/lit8 v0, v1, 0x1

    .line 36
    .local v0, "currentBit":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v8, :cond_1

    .line 37
    const/4 v4, 0x0

    .line 38
    .local v4, "size":F
    :goto_2
    and-int/lit8 v5, v1, 0x1

    if-ne v5, v0, :cond_0

    .line 39
    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    .line 40
    shr-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 42
    :cond_0
    and-int/lit8 v0, v1, 0x1

    .line 43
    sget-object v5, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->RATIOS_TABLE:[[F

    aget-object v5, v5, v2

    rsub-int/lit8 v6, v3, 0x8

    add-int/lit8 v6, v6, -0x1

    const/high16 v7, 0x41880000    # 17.0f

    div-float v7, v4, v7

    aput v7, v5, v6

    .line 36
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 33
    .end local v4    # "size":F
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46
    .end local v0    # "currentBit":I
    .end local v1    # "currentSymbol":I
    .end local v3    # "j":I
    :cond_2
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method private static getBitValue([I)I
    .locals 10
    .param p0, "moduleBitCount"    # [I

    .prologue
    const/4 v5, 0x1

    .line 83
    const-wide/16 v2, 0x0

    .line 84
    .local v2, "result":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_2

    .line 85
    const/4 v0, 0x0

    .local v0, "bit":I
    :goto_1
    aget v4, p0, v1

    if-ge v0, v4, :cond_1

    .line 86
    shl-long v6, v2, v5

    rem-int/lit8 v4, v1, 0x2

    if-nez v4, :cond_0

    move v4, v5

    :goto_2
    int-to-long v8, v4

    or-long v2, v6, v8

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 86
    :cond_0
    const/4 v4, 0x0

    goto :goto_2

    .line 84
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    .end local v0    # "bit":I
    :cond_2
    long-to-int v4, v2

    return v4
.end method

.method private static getClosestDecodedValue([I)I
    .locals 13
    .param p0, "moduleBitCount"    # [I

    .prologue
    const/16 v12, 0x8

    .line 93
    invoke-static {p0}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v3

    .line 94
    .local v3, "bitCountSum":I
    new-array v2, v12, [F

    .line 95
    .local v2, "bitCountRatios":[F
    const/4 v10, 0x1

    if-le v3, v10, :cond_0

    .line 96
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v12, :cond_0

    .line 97
    aget v10, p0, v6

    int-to-float v10, v10

    int-to-float v11, v3

    div-float/2addr v10, v11

    aput v10, v2, v6

    .line 96
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 100
    .end local v6    # "i":I
    :cond_0
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 101
    .local v1, "bestMatchError":F
    const/4 v0, -0x1

    .line 102
    .local v0, "bestMatch":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    sget-object v10, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->RATIOS_TABLE:[[F

    array-length v10, v10

    if-ge v7, v10, :cond_3

    .line 103
    const/4 v5, 0x0

    .line 104
    .local v5, "error":F
    sget-object v10, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->RATIOS_TABLE:[[F

    aget-object v9, v10, v7

    .line 105
    .local v9, "ratioTableRow":[F
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_2
    if-ge v8, v12, :cond_1

    .line 106
    aget v10, v9, v8

    aget v11, v2, v8

    sub-float v4, v10, v11

    .line 107
    .local v4, "diff":F
    mul-float v10, v4, v4

    add-float/2addr v5, v10

    .line 108
    cmpl-float v10, v5, v1

    if-gez v10, :cond_1

    .line 105
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 112
    .end local v4    # "diff":F
    :cond_1
    cmpg-float v10, v5, v1

    if-gez v10, :cond_2

    .line 113
    move v1, v5

    .line 114
    sget-object v10, Lcom/google/zxing/pdf417/PDF417Common;->SYMBOL_TABLE:[I

    aget v0, v10, v7

    .line 102
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 117
    .end local v5    # "error":F
    .end local v8    # "k":I
    .end local v9    # "ratioTableRow":[F
    :cond_3
    return v0
.end method

.method private static getDecodedCodewordValue([I)I
    .locals 3
    .param p0, "moduleBitCount"    # [I

    .prologue
    const/4 v1, -0x1

    .line 78
    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->getBitValue([I)I

    move-result v0

    .line 79
    .local v0, "decodedValue":I
    invoke-static {v0}, Lcom/google/zxing/pdf417/PDF417Common;->getCodeword(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    .end local v0    # "decodedValue":I
    :cond_0
    return v0
.end method

.method static getDecodedValue([I)I
    .locals 2
    .param p0, "moduleBitCount"    # [I

    .prologue
    .line 52
    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->sampleBitCounts([I)[I

    move-result-object v1

    invoke-static {v1}, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->getDecodedCodewordValue([I)I

    move-result v0

    .line 53
    .local v0, "decodedValue":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 56
    .end local v0    # "decodedValue":I
    :goto_0
    return v0

    .restart local v0    # "decodedValue":I
    :cond_0
    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->getClosestDecodedValue([I)I

    move-result v0

    goto :goto_0
.end method

.method private static sampleBitCounts([I)[I
    .locals 9
    .param p0, "moduleBitCount"    # [I

    .prologue
    .line 60
    invoke-static {p0}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v6

    int-to-float v1, v6

    .line 61
    .local v1, "bitCountSum":F
    const/16 v6, 0x8

    new-array v3, v6, [I

    .line 62
    .local v3, "result":[I
    const/4 v0, 0x0

    .line 63
    .local v0, "bitCountIndex":I
    const/4 v5, 0x0

    .line 64
    .local v5, "sumPreviousBits":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v6, 0x11

    if-ge v2, v6, :cond_1

    .line 65
    const/high16 v6, 0x42080000    # 34.0f

    div-float v6, v1, v6

    int-to-float v7, v2

    mul-float/2addr v7, v1

    const/high16 v8, 0x41880000    # 17.0f

    div-float/2addr v7, v8

    add-float v4, v6, v7

    .line 68
    .local v4, "sampleIndex":F
    aget v6, p0, v0

    add-int/2addr v6, v5

    int-to-float v6, v6

    cmpg-float v6, v6, v4

    if-gtz v6, :cond_0

    .line 69
    aget v6, p0, v0

    add-int/2addr v5, v6

    .line 70
    add-int/lit8 v0, v0, 0x1

    .line 72
    :cond_0
    aget v6, v3, v0

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v0

    .line 64
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    .end local v4    # "sampleIndex":F
    :cond_1
    return-object v3
.end method
