.class public final Lcom/google/zxing/oned/ITFReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "ITFReader.java"


# static fields
.field private static final DEFAULT_ALLOWED_LENGTHS:[I

.field private static final END_PATTERN_REVERSED:[[I

.field private static final MAX_AVG_VARIANCE:F = 0.38f

.field private static final MAX_INDIVIDUAL_VARIANCE:F = 0.5f

.field private static final N:I = 0x1

.field private static final PATTERNS:[[I

.field private static final START_PATTERN:[I

.field private static final W:I = 0x3

.field private static final w:I = 0x2


# instance fields
.field private narrowLineWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x5

    .line 55
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/ITFReader;->DEFAULT_ALLOWED_LENGTHS:[I

    .line 66
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/oned/ITFReader;->START_PATTERN:[I

    .line 67
    new-array v0, v6, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/zxing/oned/ITFReader;->END_PATTERN_REVERSED:[[I

    .line 77
    const/16 v0, 0x14

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v2

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v3

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    return-void

    .line 55
    :array_0
    .array-data 4
        0x6
        0x8
        0xa
        0xc
        0xe
    .end array-data

    .line 66
    :array_1
    .array-data 4
        0x1
        0x1
        0x1
        0x1
    .end array-data

    .line 67
    :array_2
    .array-data 4
        0x1
        0x1
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x1
        0x3
    .end array-data

    .line 77
    :array_4
    .array-data 4
        0x1
        0x1
        0x2
        0x2
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x2
        0x1
        0x1
        0x1
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x2
        0x1
        0x1
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x2
        0x2
        0x1
        0x1
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x1
        0x1
        0x2
        0x1
        0x2
    .end array-data

    :array_9
    .array-data 4
        0x2
        0x1
        0x2
        0x1
        0x1
    .end array-data

    :array_a
    .array-data 4
        0x1
        0x2
        0x2
        0x1
        0x1
    .end array-data

    :array_b
    .array-data 4
        0x1
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_c
    .array-data 4
        0x2
        0x1
        0x1
        0x2
        0x1
    .end array-data

    :array_d
    .array-data 4
        0x1
        0x2
        0x1
        0x2
        0x1
    .end array-data

    :array_e
    .array-data 4
        0x1
        0x1
        0x3
        0x3
        0x1
    .end array-data

    :array_f
    .array-data 4
        0x3
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_10
    .array-data 4
        0x1
        0x3
        0x1
        0x1
        0x3
    .end array-data

    :array_11
    .array-data 4
        0x3
        0x3
        0x1
        0x1
        0x1
    .end array-data

    :array_12
    .array-data 4
        0x1
        0x1
        0x3
        0x1
        0x3
    .end array-data

    :array_13
    .array-data 4
        0x3
        0x1
        0x3
        0x1
        0x1
    .end array-data

    :array_14
    .array-data 4
        0x1
        0x3
        0x3
        0x1
        0x1
    .end array-data

    :array_15
    .array-data 4
        0x1
        0x1
        0x1
        0x3
        0x3
    .end array-data

    :array_16
    .array-data 4
        0x3
        0x1
        0x1
        0x3
        0x1
    .end array-data

    :array_17
    .array-data 4
        0x1
        0x3
        0x1
        0x3
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    return-void
.end method

.method private static decodeDigit([I)I
    .locals 7
    .param p0, "counters"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 355
    const v1, 0x3ec28f5c    # 0.38f

    .line 356
    .local v1, "bestVariance":F
    const/4 v0, -0x1

    .line 357
    .local v0, "bestMatch":I
    sget-object v6, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    array-length v3, v6

    .line 358
    .local v3, "max":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 359
    sget-object v6, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    aget-object v4, v6, v2

    .line 360
    .local v4, "pattern":[I
    const/high16 v6, 0x3f000000    # 0.5f

    invoke-static {p0, v4, v6}, Lcom/google/zxing/oned/ITFReader;->patternMatchVariance([I[IF)F

    move-result v5

    .line 361
    .local v5, "variance":F
    cmpg-float v6, v5, v1

    if-gez v6, :cond_1

    .line 362
    move v1, v5

    .line 363
    move v0, v2

    .line 358
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 364
    :cond_1
    cmpl-float v6, v5, v1

    if-nez v6, :cond_0

    .line 366
    const/4 v0, -0x1

    goto :goto_1

    .line 369
    .end local v4    # "pattern":[I
    .end local v5    # "variance":F
    :cond_2
    if-ltz v0, :cond_3

    .line 370
    rem-int/lit8 v6, v0, 0xa

    return v6

    .line 372
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6
.end method

.method private decodeEnd(Lcom/google/zxing/common/BitArray;)[I
    .locals 6
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 275
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 277
    :try_start_0
    invoke-static {p1}, Lcom/google/zxing/oned/ITFReader;->skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 280
    .local v1, "endStart":I
    :try_start_1
    sget-object v3, Lcom/google/zxing/oned/ITFReader;->END_PATTERN_REVERSED:[[I

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {p1, v1, v3}, Lcom/google/zxing/oned/ITFReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I
    :try_end_1
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 288
    .local v0, "endPattern":[I
    :goto_0
    const/4 v3, 0x0

    :try_start_2
    aget v3, v0, v3

    invoke-direct {p0, p1, v3}, Lcom/google/zxing/oned/ITFReader;->validateQuietZone(Lcom/google/zxing/common/BitArray;I)V

    .line 293
    const/4 v3, 0x0

    aget v2, v0, v3

    .line 294
    .local v2, "temp":I
    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    const/4 v5, 0x1

    aget v5, v0, v5

    sub-int/2addr v4, v5

    aput v4, v0, v3

    .line 295
    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    sub-int/2addr v4, v2

    aput v4, v0, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 300
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 297
    return-object v0

    .line 282
    .end local v0    # "endPattern":[I
    .end local v2    # "temp":I
    :catch_0
    move-exception v3

    :try_start_3
    sget-object v3, Lcom/google/zxing/oned/ITFReader;->END_PATTERN_REVERSED:[[I

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {p1, v1, v3}, Lcom/google/zxing/oned/ITFReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .restart local v0    # "endPattern":[I
    goto :goto_0

    .line 300
    .end local v0    # "endPattern":[I
    .end local v1    # "endStart":I
    :catchall_0
    move-exception v3

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 301
    throw v3
.end method

.method private static decodeMiddle(Lcom/google/zxing/common/BitArray;IILjava/lang/StringBuilder;)V
    .locals 10
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "payloadStart"    # I
    .param p2, "payloadEnd"    # I
    .param p3, "resultString"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x5

    .line 166
    new-array v3, v9, [I

    .line 167
    .local v3, "counterDigitPair":[I
    new-array v1, v8, [I

    .line 168
    .local v1, "counterBlack":[I
    new-array v4, v8, [I

    .line 170
    .local v4, "counterWhite":[I
    :cond_0
    if-ge p1, p2, :cond_2

    .line 173
    invoke-static {p0, p1, v3}, Lcom/google/zxing/oned/ITFReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 175
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_0
    if-ge v5, v8, :cond_1

    .line 176
    mul-int/lit8 v6, v5, 0x2

    .line 177
    .local v6, "twoK":I
    aget v7, v3, v6

    aput v7, v1, v5

    .line 178
    add-int/lit8 v7, v6, 0x1

    aget v7, v3, v7

    aput v7, v4, v5

    .line 175
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 181
    .end local v6    # "twoK":I
    :cond_1
    invoke-static {v1}, Lcom/google/zxing/oned/ITFReader;->decodeDigit([I)I

    move-result v0

    .line 182
    .local v0, "bestMatch":I
    add-int/lit8 v7, v0, 0x30

    int-to-char v7, v7

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 183
    invoke-static {v4}, Lcom/google/zxing/oned/ITFReader;->decodeDigit([I)I

    move-result v0

    .line 184
    add-int/lit8 v7, v0, 0x30

    int-to-char v7, v7

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 186
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v9, :cond_0

    aget v2, v3, v7

    .line 187
    .local v2, "counterDigit":I
    add-int/2addr p1, v2

    .line 186
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 190
    .end local v0    # "bestMatch":I
    .end local v2    # "counterDigit":I
    .end local v5    # "k":I
    :cond_2
    return-void
.end method

.method private decodeStart(Lcom/google/zxing/common/BitArray;)[I
    .locals 5
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 200
    invoke-static {p1}, Lcom/google/zxing/oned/ITFReader;->skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I

    move-result v0

    .line 201
    .local v0, "endStart":I
    sget-object v2, Lcom/google/zxing/oned/ITFReader;->START_PATTERN:[I

    invoke-static {p1, v0, v2}, Lcom/google/zxing/oned/ITFReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I

    move-result-object v1

    .line 206
    .local v1, "startPattern":[I
    const/4 v2, 0x1

    aget v2, v1, v2

    aget v3, v1, v4

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    .line 208
    aget v2, v1, v4

    invoke-direct {p0, p1, v2}, Lcom/google/zxing/oned/ITFReader;->validateQuietZone(Lcom/google/zxing/common/BitArray;I)V

    .line 210
    return-object v1
.end method

.method private static findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I
    .locals 12
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "rowOffset"    # I
    .param p2, "pattern"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 316
    array-length v3, p2

    .line 317
    .local v3, "patternLength":I
    new-array v1, v3, [I

    .line 318
    .local v1, "counters":[I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    .line 319
    .local v5, "width":I
    const/4 v2, 0x0

    .line 321
    .local v2, "isWhite":Z
    const/4 v0, 0x0

    .line 322
    .local v0, "counterPosition":I
    move v4, p1

    .line 323
    .local v4, "patternStart":I
    move v6, p1

    .local v6, "x":I
    :goto_0
    if-ge v6, v5, :cond_4

    .line 324
    invoke-virtual {p0, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    if-eq v9, v2, :cond_0

    .line 325
    aget v9, v1, v0

    add-int/lit8 v9, v9, 0x1

    aput v9, v1, v0

    .line 323
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 327
    :cond_0
    add-int/lit8 v9, v3, -0x1

    if-ne v0, v9, :cond_2

    .line 328
    const/high16 v9, 0x3f000000    # 0.5f

    invoke-static {v1, p2, v9}, Lcom/google/zxing/oned/ITFReader;->patternMatchVariance([I[IF)F

    move-result v9

    const v10, 0x3ec28f5c    # 0.38f

    cmpg-float v9, v9, v10

    if-gez v9, :cond_1

    .line 329
    new-array v9, v11, [I

    aput v4, v9, v8

    aput v6, v9, v7

    return-object v9

    .line 331
    :cond_1
    aget v9, v1, v8

    aget v10, v1, v7

    add-int/2addr v9, v10

    add-int/2addr v4, v9

    .line 332
    add-int/lit8 v9, v0, -0x1

    invoke-static {v1, v11, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 333
    add-int/lit8 v9, v0, -0x1

    aput v8, v1, v9

    .line 334
    aput v8, v1, v0

    .line 335
    add-int/lit8 v0, v0, -0x1

    .line 339
    :goto_2
    aput v7, v1, v0

    .line 340
    if-nez v2, :cond_3

    move v2, v7

    :goto_3
    goto :goto_1

    .line 337
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v2, v8

    .line 340
    goto :goto_3

    .line 343
    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v7

    throw v7
.end method

.method private static skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I
    .locals 3
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    .line 256
    .local v1, "width":I
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v0

    .line 257
    .local v0, "endStart":I
    if-ne v0, v1, :cond_0

    .line 258
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2

    .line 261
    :cond_0
    return v0
.end method

.method private validateQuietZone(Lcom/google/zxing/common/BitArray;I)V
    .locals 3
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "startPattern"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 230
    iget v2, p0, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    mul-int/lit8 v1, v2, 0xa

    .line 233
    .local v1, "quietCount":I
    if-ge v1, p2, :cond_0

    .line 235
    :goto_0
    add-int/lit8 v0, p2, -0x1

    .local v0, "i":I
    :goto_1
    if-lez v1, :cond_1

    if-ltz v0, :cond_1

    .line 236
    invoke-virtual {p1, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 239
    add-int/lit8 v1, v1, -0x1

    .line 235
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_0
    move v1, p2

    .line 233
    goto :goto_0

    .line 241
    .restart local v0    # "i":I
    :cond_1
    if-eqz v1, :cond_2

    .line 243
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2

    .line 245
    :cond_2
    return-void
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 18
    .param p1, "rowNumber"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;
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
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 105
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/zxing/oned/ITFReader;->decodeStart(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v10

    .line 106
    .local v10, "startRange":[I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/zxing/oned/ITFReader;->decodeEnd(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v4

    .line 108
    .local v4, "endRange":[I
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v11, 0x14

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 109
    .local v8, "result":Ljava/lang/StringBuilder;
    const/4 v11, 0x1

    aget v11, v10, v11

    const/4 v12, 0x0

    aget v12, v4, v12

    move-object/from16 v0, p2

    invoke-static {v0, v11, v12, v8}, Lcom/google/zxing/oned/ITFReader;->decodeMiddle(Lcom/google/zxing/common/BitArray;IILjava/lang/StringBuilder;)V

    .line 110
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 112
    .local v9, "resultString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 113
    .local v3, "allowedLengths":[I
    if-eqz p3, :cond_0

    .line 114
    sget-object v11, Lcom/google/zxing/DecodeHintType;->ALLOWED_LENGTHS:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [I

    move-object v3, v11

    check-cast v3, [I

    .line 117
    :cond_0
    if-nez v3, :cond_1

    .line 118
    sget-object v3, Lcom/google/zxing/oned/ITFReader;->DEFAULT_ALLOWED_LENGTHS:[I

    .line 123
    :cond_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    .line 124
    .local v5, "length":I
    const/4 v6, 0x0

    .line 125
    .local v6, "lengthOK":Z
    const/4 v7, 0x0

    .line 126
    .local v7, "maxAllowedLength":I
    array-length v12, v3

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v12, :cond_2

    aget v2, v3, v11

    .line 127
    .local v2, "allowedLength":I
    if-ne v5, v2, :cond_4

    .line 128
    const/4 v6, 0x1

    .line 135
    .end local v2    # "allowedLength":I
    :cond_2
    if-nez v6, :cond_3

    if-le v5, v7, :cond_3

    .line 136
    const/4 v6, 0x1

    .line 138
    :cond_3
    if-nez v6, :cond_6

    .line 139
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v11

    throw v11

    .line 131
    .restart local v2    # "allowedLength":I
    :cond_4
    if-le v2, v7, :cond_5

    .line 132
    move v7, v2

    .line 126
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 142
    .end local v2    # "allowedLength":I
    :cond_6
    new-instance v11, Lcom/google/zxing/Result;

    const/4 v12, 0x0

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/ResultPoint;

    const/4 v14, 0x0

    new-instance v15, Lcom/google/zxing/ResultPoint;

    const/16 v16, 0x1

    aget v16, v10, v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v15, v13, v14

    const/4 v14, 0x1

    new-instance v15, Lcom/google/zxing/ResultPoint;

    const/16 v16, 0x0

    aget v16, v4, v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v15, v13, v14

    sget-object v14, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v11, v9, v12, v13, v14}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v11
.end method
