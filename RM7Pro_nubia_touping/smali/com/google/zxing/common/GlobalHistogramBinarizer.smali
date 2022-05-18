.class public Lcom/google/zxing/common/GlobalHistogramBinarizer;
.super Lcom/google/zxing/Binarizer;
.source "GlobalHistogramBinarizer.java"


# static fields
.field private static final EMPTY:[B

.field private static final LUMINANCE_BITS:I = 0x5

.field private static final LUMINANCE_BUCKETS:I = 0x20

.field private static final LUMINANCE_SHIFT:I = 0x3


# instance fields
.field private final buckets:[I

.field private luminances:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->EMPTY:[B

    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/LuminanceSource;)V
    .locals 1
    .param p1, "source"    # Lcom/google/zxing/LuminanceSource;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/zxing/Binarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    .line 46
    sget-object v0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->EMPTY:[B

    iput-object v0, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->luminances:[B

    .line 47
    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->buckets:[I

    .line 48
    return-void
.end method

.method private static estimateBlackPoint([I)I
    .locals 14
    .param p0, "buckets"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 148
    array-length v6, p0

    .line 149
    .local v6, "numBuckets":I
    const/4 v5, 0x0

    .line 150
    .local v5, "maxBucketCount":I
    const/4 v3, 0x0

    .line 151
    .local v3, "firstPeak":I
    const/4 v4, 0x0

    .line 152
    .local v4, "firstPeakSize":I
    const/4 v11, 0x0

    .local v11, "x":I
    :goto_0
    if-ge v11, v6, :cond_2

    .line 153
    aget v12, p0, v11

    if-le v12, v4, :cond_0

    .line 154
    move v3, v11

    .line 155
    aget v4, p0, v11

    .line 157
    :cond_0
    aget v12, p0, v11

    if-le v12, v5, :cond_1

    .line 158
    aget v5, p0, v11

    .line 152
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 163
    :cond_2
    const/4 v8, 0x0

    .line 164
    .local v8, "secondPeak":I
    const/4 v9, 0x0

    .line 165
    .local v9, "secondPeakScore":I
    const/4 v11, 0x0

    :goto_1
    if-ge v11, v6, :cond_4

    .line 166
    sub-int v2, v11, v3

    .line 168
    .local v2, "distanceToBiggest":I
    aget v12, p0, v11

    mul-int/2addr v12, v2

    mul-int v7, v12, v2

    .line 169
    .local v7, "score":I
    if-le v7, v9, :cond_3

    .line 170
    move v8, v11

    .line 171
    move v9, v7

    .line 165
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 176
    .end local v2    # "distanceToBiggest":I
    .end local v7    # "score":I
    :cond_4
    if-le v3, v8, :cond_5

    .line 177
    move v10, v3

    .line 178
    .local v10, "temp":I
    move v3, v8

    .line 179
    move v8, v10

    .line 184
    .end local v10    # "temp":I
    :cond_5
    sub-int v12, v8, v3

    div-int/lit8 v13, v6, 0x10

    if-gt v12, v13, :cond_6

    .line 185
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v12

    throw v12

    .line 189
    :cond_6
    add-int/lit8 v0, v8, -0x1

    .line 190
    .local v0, "bestValley":I
    const/4 v1, -0x1

    .line 191
    .local v1, "bestValleyScore":I
    add-int/lit8 v11, v8, -0x1

    :goto_2
    if-le v11, v3, :cond_8

    .line 192
    sub-int v12, v11, v3

    .line 193
    mul-int/2addr v12, v12

    sub-int v13, v8, v11

    mul-int/2addr v12, v13

    aget v13, p0, v11

    sub-int v13, v5, v13

    mul-int v7, v12, v13

    .line 194
    .restart local v7    # "score":I
    if-le v7, v1, :cond_7

    .line 195
    move v0, v11

    .line 196
    move v1, v7

    .line 191
    :cond_7
    add-int/lit8 v11, v11, -0x1

    goto :goto_2

    .line 200
    .end local v7    # "score":I
    :cond_8
    shl-int/lit8 v12, v0, 0x3

    return v12
.end method

.method private initArrays(I)V
    .locals 3
    .param p1, "luminanceSize"    # I

    .prologue
    .line 138
    iget-object v1, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->luminances:[B

    array-length v1, v1

    if-ge v1, p1, :cond_0

    .line 139
    new-array v1, p1, [B

    iput-object v1, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->luminances:[B

    .line 141
    :cond_0
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    .line 142
    iget-object v1, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->buckets:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_1
    return-void
.end method


# virtual methods
.method public createBinarizer(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Binarizer;
    .locals 1
    .param p1, "source"    # Lcom/google/zxing/LuminanceSource;

    .prologue
    .line 134
    new-instance v0, Lcom/google/zxing/common/GlobalHistogramBinarizer;

    invoke-direct {v0, p1}, Lcom/google/zxing/common/GlobalHistogramBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    return-object v0
.end method

.method public getBlackMatrix()Lcom/google/zxing/common/BitMatrix;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->getLuminanceSource()Lcom/google/zxing/LuminanceSource;

    move-result-object v9

    .line 96
    .local v9, "source":Lcom/google/zxing/LuminanceSource;
    invoke-virtual {v9}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v10

    .line 97
    .local v10, "width":I
    invoke-virtual {v9}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    move-result v1

    .line 98
    .local v1, "height":I
    new-instance v4, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v4, v10, v1}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 102
    .local v4, "matrix":Lcom/google/zxing/common/BitMatrix;
    invoke-direct {p0, v10}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->initArrays(I)V

    .line 103
    iget-object v2, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->buckets:[I

    .line 104
    .local v2, "localBuckets":[I
    const/4 v12, 0x1

    .local v12, "y":I
    :goto_0
    const/4 v13, 0x5

    if-ge v12, v13, :cond_1

    .line 105
    mul-int v13, v1, v12

    div-int/lit8 v8, v13, 0x5

    .line 106
    .local v8, "row":I
    iget-object v13, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->luminances:[B

    invoke-virtual {v9, v8, v13}, Lcom/google/zxing/LuminanceSource;->getRow(I[B)[B

    move-result-object v3

    .line 107
    .local v3, "localLuminances":[B
    shl-int/lit8 v13, v10, 0x2

    div-int/lit8 v7, v13, 0x5

    .line 108
    .local v7, "right":I
    div-int/lit8 v11, v10, 0x5

    .local v11, "x":I
    :goto_1
    if-ge v11, v7, :cond_0

    .line 109
    aget-byte v13, v3, v11

    and-int/lit16 v6, v13, 0xff

    .line 110
    .local v6, "pixel":I
    shr-int/lit8 v13, v6, 0x3

    aget v14, v2, v13

    add-int/lit8 v14, v14, 0x1

    aput v14, v2, v13

    .line 108
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 104
    .end local v6    # "pixel":I
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 113
    .end local v3    # "localLuminances":[B
    .end local v7    # "right":I
    .end local v8    # "row":I
    .end local v11    # "x":I
    :cond_1
    invoke-static {v2}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->estimateBlackPoint([I)I

    move-result v0

    .line 118
    .local v0, "blackPoint":I
    invoke-virtual {v9}, Lcom/google/zxing/LuminanceSource;->getMatrix()[B

    move-result-object v3

    .line 119
    .restart local v3    # "localLuminances":[B
    const/4 v12, 0x0

    :goto_2
    if-ge v12, v1, :cond_4

    .line 120
    mul-int v5, v12, v10

    .line 121
    .local v5, "offset":I
    const/4 v11, 0x0

    .restart local v11    # "x":I
    :goto_3
    if-ge v11, v10, :cond_3

    .line 122
    add-int v13, v5, v11

    aget-byte v13, v3, v13

    and-int/lit16 v13, v13, 0xff

    .line 123
    if-ge v13, v0, :cond_2

    .line 124
    invoke-virtual {v4, v11, v12}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 121
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 119
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 129
    .end local v5    # "offset":I
    .end local v11    # "x":I
    :cond_4
    return-object v4
.end method

.method public getBlackRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
    .locals 11
    .param p1, "y"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->getLuminanceSource()Lcom/google/zxing/LuminanceSource;

    move-result-object v6

    .line 54
    .local v6, "source":Lcom/google/zxing/LuminanceSource;
    invoke-virtual {v6}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v7

    .line 55
    .local v7, "width":I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v9

    if-ge v9, v7, :cond_1

    .line 56
    :cond_0
    new-instance p2, Lcom/google/zxing/common/BitArray;

    .end local p2    # "row":Lcom/google/zxing/common/BitArray;
    invoke-direct {p2, v7}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 61
    .restart local p2    # "row":Lcom/google/zxing/common/BitArray;
    :goto_0
    invoke-direct {p0, v7}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->initArrays(I)V

    .line 62
    iget-object v9, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->luminances:[B

    invoke-virtual {v6, p1, v9}, Lcom/google/zxing/LuminanceSource;->getRow(I[B)[B

    move-result-object v4

    .line 63
    .local v4, "localLuminances":[B
    iget-object v3, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->buckets:[I

    .line 64
    .local v3, "localBuckets":[I
    const/4 v8, 0x0

    .local v8, "x":I
    :goto_1
    if-ge v8, v7, :cond_2

    .line 65
    aget-byte v9, v4, v8

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v9, v9, 0x3

    aget v10, v3, v9

    add-int/lit8 v10, v10, 0x1

    aput v10, v3, v9

    .line 64
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 58
    .end local v3    # "localBuckets":[I
    .end local v4    # "localLuminances":[B
    .end local v8    # "x":I
    :cond_1
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->clear()V

    goto :goto_0

    .line 67
    .restart local v3    # "localBuckets":[I
    .restart local v4    # "localLuminances":[B
    .restart local v8    # "x":I
    :cond_2
    invoke-static {v3}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->estimateBlackPoint([I)I

    move-result v0

    .line 69
    .local v0, "blackPoint":I
    const/4 v9, 0x3

    if-ge v7, v9, :cond_4

    .line 71
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_6

    .line 72
    aget-byte v9, v4, v8

    and-int/lit16 v9, v9, 0xff

    if-ge v9, v0, :cond_3

    .line 73
    invoke-virtual {p2, v8}, Lcom/google/zxing/common/BitArray;->set(I)V

    .line 71
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 77
    :cond_4
    const/4 v9, 0x0

    aget-byte v9, v4, v9

    and-int/lit16 v2, v9, 0xff

    .line 78
    .local v2, "left":I
    const/4 v9, 0x1

    aget-byte v9, v4, v9

    and-int/lit16 v1, v9, 0xff

    .line 79
    .local v1, "center":I
    const/4 v8, 0x1

    :goto_3
    add-int/lit8 v9, v7, -0x1

    if-ge v8, v9, :cond_6

    .line 80
    add-int/lit8 v9, v8, 0x1

    aget-byte v9, v4, v9

    and-int/lit16 v5, v9, 0xff

    .line 82
    .local v5, "right":I
    shl-int/lit8 v9, v1, 0x2

    sub-int/2addr v9, v2

    sub-int/2addr v9, v5

    div-int/lit8 v9, v9, 0x2

    if-ge v9, v0, :cond_5

    .line 83
    invoke-virtual {p2, v8}, Lcom/google/zxing/common/BitArray;->set(I)V

    .line 85
    :cond_5
    move v2, v1

    .line 86
    move v1, v5

    .line 79
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 89
    .end local v1    # "center":I
    .end local v2    # "left":I
    .end local v5    # "right":I
    :cond_6
    return-object p2
.end method
