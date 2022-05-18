.class public final Lcom/google/zxing/oned/rss/RSS14Reader;
.super Lcom/google/zxing/oned/rss/AbstractRSSReader;
.source "RSS14Reader.java"


# static fields
.field private static final FINDER_PATTERNS:[[I

.field private static final INSIDE_GSUM:[I

.field private static final INSIDE_ODD_TOTAL_SUBSET:[I

.field private static final INSIDE_ODD_WIDEST:[I

.field private static final OUTSIDE_EVEN_TOTAL_SUBSET:[I

.field private static final OUTSIDE_GSUM:[I

.field private static final OUTSIDE_ODD_WIDEST:[I


# instance fields
.field private final possibleLeftPairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/Pair;",
            ">;"
        }
    .end annotation
.end field

.field private final possibleRightPairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/Pair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    .line 38
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_EVEN_TOTAL_SUBSET:[I

    .line 39
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_TOTAL_SUBSET:[I

    .line 40
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_GSUM:[I

    .line 41
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_GSUM:[I

    .line 42
    new-array v0, v4, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_ODD_WIDEST:[I

    .line 43
    new-array v0, v3, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_WIDEST:[I

    .line 45
    const/16 v0, 0x9

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v4

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->FINDER_PATTERNS:[[I

    return-void

    .line 38
    :array_0
    .array-data 4
        0x1
        0xa
        0x22
        0x46
        0x7e
    .end array-data

    .line 39
    :array_1
    .array-data 4
        0x4
        0x14
        0x30
        0x51
    .end array-data

    .line 40
    :array_2
    .array-data 4
        0x0
        0xa1
        0x3c1
        0x7df
        0xa9b
    .end array-data

    .line 41
    :array_3
    .array-data 4
        0x0
        0x150
        0x40c
        0x5ec
    .end array-data

    .line 42
    :array_4
    .array-data 4
        0x8
        0x6
        0x4
        0x3
        0x1
    .end array-data

    .line 43
    :array_5
    .array-data 4
        0x2
        0x4
        0x6
        0x8
    .end array-data

    .line 45
    :array_6
    .array-data 4
        0x3
        0x8
        0x2
        0x1
    .end array-data

    :array_7
    .array-data 4
        0x3
        0x5
        0x5
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x3
        0x3
        0x7
        0x1
    .end array-data

    :array_9
    .array-data 4
        0x3
        0x1
        0x9
        0x1
    .end array-data

    :array_a
    .array-data 4
        0x2
        0x7
        0x4
        0x1
    .end array-data

    :array_b
    .array-data 4
        0x2
        0x5
        0x6
        0x1
    .end array-data

    :array_c
    .array-data 4
        0x2
        0x3
        0x8
        0x1
    .end array-data

    :array_d
    .array-data 4
        0x1
        0x5
        0x7
        0x1
    .end array-data

    :array_e
    .array-data 4
        0x1
        0x3
        0x9
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    .line 63
    return-void
.end method

.method private static addOrTally(Ljava/util/Collection;Lcom/google/zxing/oned/rss/Pair;)V
    .locals 5
    .param p1, "pair"    # Lcom/google/zxing/oned/rss/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/oned/rss/Pair;",
            ">;",
            "Lcom/google/zxing/oned/rss/Pair;",
            ")V"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "possiblePairs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/oned/rss/Pair;>;"
    if-nez p1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    const/4 v0, 0x0

    .line 92
    .local v0, "found":Z
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/oned/rss/Pair;

    .line 93
    .local v1, "other":Lcom/google/zxing/oned/rss/Pair;
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/Pair;->getValue()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getValue()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 94
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/Pair;->incrementCount()V

    .line 95
    const/4 v0, 0x1

    .line 99
    .end local v1    # "other":Lcom/google/zxing/oned/rss/Pair;
    :cond_3
    if-nez v0, :cond_0

    .line 100
    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private adjustOddEvenCounts(ZI)V
    .locals 13
    .param p1, "outsideChar"    # Z
    .param p2, "numModules"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/16 v12, 0xc

    const/4 v11, 0x4

    const/4 v2, 0x0

    const/4 v9, 0x1

    .line 353
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddCounts()[I

    move-result-object v10

    invoke-static {v10}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v8

    .line 354
    .local v8, "oddSum":I
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenCounts()[I

    move-result-object v10

    invoke-static {v10}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v3

    .line 356
    .local v3, "evenSum":I
    const/4 v5, 0x0

    .line 357
    .local v5, "incrementOdd":Z
    const/4 v1, 0x0

    .line 358
    .local v1, "decrementOdd":Z
    const/4 v4, 0x0

    .line 359
    .local v4, "incrementEven":Z
    const/4 v0, 0x0

    .line 361
    .local v0, "decrementEven":Z
    if-eqz p1, :cond_5

    .line 362
    if-le v8, v12, :cond_3

    .line 363
    const/4 v1, 0x1

    .line 367
    :cond_0
    :goto_0
    if-le v3, v12, :cond_4

    .line 368
    const/4 v0, 0x1

    .line 385
    :cond_1
    :goto_1
    add-int v10, v8, v3

    sub-int v6, v10, p2

    .line 386
    .local v6, "mismatch":I
    and-int/lit8 v11, v8, 0x1

    if-eqz p1, :cond_9

    move v10, v9

    :goto_2
    if-ne v11, v10, :cond_a

    move v7, v9

    .line 387
    .local v7, "oddParityBad":Z
    :goto_3
    and-int/lit8 v10, v3, 0x1

    if-ne v10, v9, :cond_2

    move v2, v9

    .line 400
    .local v2, "evenParityBad":Z
    :cond_2
    if-ne v6, v9, :cond_f

    .line 401
    if-eqz v7, :cond_d

    .line 402
    if-eqz v2, :cond_b

    .line 403
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 364
    .end local v2    # "evenParityBad":Z
    .end local v6    # "mismatch":I
    .end local v7    # "oddParityBad":Z
    :cond_3
    if-ge v8, v11, :cond_0

    .line 365
    const/4 v5, 0x1

    goto :goto_0

    .line 369
    :cond_4
    if-ge v3, v11, :cond_1

    .line 370
    const/4 v4, 0x1

    goto :goto_1

    .line 373
    :cond_5
    const/16 v10, 0xb

    if-le v8, v10, :cond_7

    .line 374
    const/4 v1, 0x1

    .line 378
    :cond_6
    :goto_4
    const/16 v10, 0xa

    if-le v3, v10, :cond_8

    .line 379
    const/4 v0, 0x1

    goto :goto_1

    .line 375
    :cond_7
    const/4 v10, 0x5

    if-ge v8, v10, :cond_6

    .line 376
    const/4 v5, 0x1

    goto :goto_4

    .line 380
    :cond_8
    if-ge v3, v11, :cond_1

    .line 381
    const/4 v4, 0x1

    goto :goto_1

    .restart local v6    # "mismatch":I
    :cond_9
    move v10, v2

    .line 386
    goto :goto_2

    :cond_a
    move v7, v2

    goto :goto_3

    .line 405
    .restart local v2    # "evenParityBad":Z
    .restart local v7    # "oddParityBad":Z
    :cond_b
    const/4 v1, 0x1

    .line 447
    :cond_c
    :goto_5
    if-eqz v5, :cond_19

    .line 448
    if-eqz v1, :cond_18

    .line 449
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 407
    :cond_d
    if-nez v2, :cond_e

    .line 408
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 410
    :cond_e
    const/4 v0, 0x1

    goto :goto_5

    .line 412
    :cond_f
    const/4 v9, -0x1

    if-ne v6, v9, :cond_13

    .line 413
    if-eqz v7, :cond_11

    .line 414
    if-eqz v2, :cond_10

    .line 415
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 417
    :cond_10
    const/4 v5, 0x1

    goto :goto_5

    .line 419
    :cond_11
    if-nez v2, :cond_12

    .line 420
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 422
    :cond_12
    const/4 v4, 0x1

    goto :goto_5

    .line 424
    :cond_13
    if-nez v6, :cond_17

    .line 425
    if-eqz v7, :cond_16

    .line 426
    if-nez v2, :cond_14

    .line 427
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 430
    :cond_14
    if-ge v8, v3, :cond_15

    .line 431
    const/4 v5, 0x1

    .line 432
    const/4 v0, 0x1

    goto :goto_5

    .line 434
    :cond_15
    const/4 v1, 0x1

    .line 435
    const/4 v4, 0x1

    goto :goto_5

    .line 438
    :cond_16
    if-eqz v2, :cond_c

    .line 439
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 444
    :cond_17
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 451
    :cond_18
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/RSS14Reader;->increment([I[F)V

    .line 453
    :cond_19
    if-eqz v1, :cond_1a

    .line 454
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/RSS14Reader;->decrement([I[F)V

    .line 456
    :cond_1a
    if-eqz v4, :cond_1c

    .line 457
    if-eqz v0, :cond_1b

    .line 458
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 460
    :cond_1b
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/RSS14Reader;->increment([I[F)V

    .line 462
    :cond_1c
    if-eqz v0, :cond_1d

    .line 463
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/RSS14Reader;->decrement([I[F)V

    .line 466
    :cond_1d
    return-void
.end method

.method private static checkChecksum(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Z
    .locals 4
    .param p0, "leftPair"    # Lcom/google/zxing/oned/rss/Pair;
    .param p1, "rightPair"    # Lcom/google/zxing/oned/rss/Pair;

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/Pair;->getChecksumPortion()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getChecksumPortion()I

    move-result v3

    mul-int/lit8 v3, v3, 0x10

    add-int/2addr v2, v3

    rem-int/lit8 v0, v2, 0x4f

    .line 148
    .local v0, "checkValue":I
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x9

    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v3

    add-int v1, v2, v3

    .line 149
    .local v1, "targetCheckValue":I
    const/16 v2, 0x48

    if-le v1, v2, :cond_0

    .line 150
    add-int/lit8 v1, v1, -0x1

    .line 152
    :cond_0
    const/16 v2, 0x8

    if-le v1, v2, :cond_1

    .line 153
    add-int/lit8 v1, v1, -0x1

    .line 155
    :cond_1
    if-ne v0, v1, :cond_2

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static constructResult(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Lcom/google/zxing/Result;
    .locals 14
    .param p0, "leftPair"    # Lcom/google/zxing/oned/rss/Pair;
    .param p1, "rightPair"    # Lcom/google/zxing/oned/rss/Pair;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 111
    const-wide/32 v8, 0x453af5

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/Pair;->getValue()I

    move-result v7

    int-to-long v10, v7

    mul-long/2addr v8, v10

    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getValue()I

    move-result v7

    int-to-long v10, v7

    add-long/2addr v8, v10

    .line 112
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 114
    .local v6, "text":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v7, 0xe

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 115
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    rsub-int/lit8 v3, v7, 0xd

    .local v3, "i":I
    :goto_0
    if-lez v3, :cond_0

    .line 116
    const/16 v7, 0x30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const/4 v1, 0x0

    .line 121
    .local v1, "checkDigit":I
    const/4 v3, 0x0

    :goto_1
    const/16 v7, 0xd

    if-ge v3, v7, :cond_2

    .line 122
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    add-int/lit8 v2, v7, -0x30

    .line 123
    .local v2, "digit":I
    and-int/lit8 v7, v3, 0x1

    if-nez v7, :cond_1

    mul-int/lit8 v2, v2, 0x3

    .end local v2    # "digit":I
    :cond_1
    add-int/2addr v1, v2

    .line 121
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 125
    :cond_2
    rem-int/lit8 v7, v1, 0xa

    rsub-int/lit8 v1, v7, 0xa

    .line 126
    const/16 v7, 0xa

    if-ne v1, v7, :cond_3

    .line 127
    const/4 v1, 0x0

    .line 129
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v4

    .line 132
    .local v4, "leftPoints":[Lcom/google/zxing/ResultPoint;
    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v5

    .line 133
    .local v5, "rightPoints":[Lcom/google/zxing/ResultPoint;
    new-instance v7, Lcom/google/zxing/Result;

    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x4

    new-array v10, v10, [Lcom/google/zxing/ResultPoint;

    aget-object v11, v4, v12

    aput-object v11, v10, v12

    aget-object v11, v4, v13

    aput-object v11, v10, v13

    const/4 v11, 0x2

    aget-object v12, v5, v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    aget-object v12, v5, v13

    aput-object v12, v10, v11

    sget-object v11, Lcom/google/zxing/BarcodeFormat;->RSS_14:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 133
    return-object v7
.end method

.method private decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;Z)Lcom/google/zxing/oned/rss/DataCharacter;
    .locals 32
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "pattern"    # Lcom/google/zxing/oned/rss/FinderPattern;
    .param p3, "outsideChar"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getDataCharacterCounters()[I

    move-result-object v5

    .line 189
    .local v5, "counters":[I
    const/16 v29, 0x0

    .local v29, "x":I
    :goto_0
    array-length v0, v5

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_0

    .line 190
    const/16 v30, 0x0

    aput v30, v5, v29

    .line 189
    add-int/lit8 v29, v29, 0x1

    goto :goto_0

    .line 193
    :cond_0
    if-eqz p3, :cond_3

    .line 194
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v30

    const/16 v31, 0x0

    aget v30, v30, v31

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1, v5}, Lcom/google/zxing/oned/rss/RSS14Reader;->recordPatternInReverse(Lcom/google/zxing/common/BitArray;I[I)V

    .line 205
    :cond_1
    if-eqz p3, :cond_4

    const/16 v16, 0x10

    .line 206
    .local v16, "numModules":I
    :goto_1
    invoke-static {v5}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v6, v30, v31

    .line 208
    .local v6, "elementWidth":F
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddCounts()[I

    move-result-object v18

    .line 209
    .local v18, "oddCounts":[I
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenCounts()[I

    move-result-object v8

    .line 210
    .local v8, "evenCounts":[I
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddRoundingErrors()[F

    move-result-object v19

    .line 211
    .local v19, "oddRoundingErrors":[F
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenRoundingErrors()[F

    move-result-object v9

    .line 213
    .local v9, "evenRoundingErrors":[F
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    array-length v0, v5

    move/from16 v30, v0

    move/from16 v0, v30

    if-ge v14, v0, :cond_7

    .line 214
    aget v30, v5, v14

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v28, v30, v6

    .line 215
    .local v28, "value":F
    const/high16 v30, 0x3f000000    # 0.5f

    add-float v30, v30, v28

    move/from16 v0, v30

    float-to-int v4, v0

    .line 216
    .local v4, "count":I
    if-gtz v4, :cond_5

    .line 217
    const/4 v4, 0x1

    .line 221
    :cond_2
    :goto_3
    div-int/lit8 v22, v14, 0x2

    .line 222
    .local v22, "offset":I
    and-int/lit8 v30, v14, 0x1

    if-nez v30, :cond_6

    .line 223
    aput v4, v18, v22

    .line 224
    int-to-float v0, v4

    move/from16 v30, v0

    sub-float v30, v28, v30

    aput v30, v19, v22

    .line 213
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 196
    .end local v4    # "count":I
    .end local v6    # "elementWidth":F
    .end local v8    # "evenCounts":[I
    .end local v9    # "evenRoundingErrors":[F
    .end local v14    # "i":I
    .end local v16    # "numModules":I
    .end local v18    # "oddCounts":[I
    .end local v19    # "oddRoundingErrors":[F
    .end local v22    # "offset":I
    .end local v28    # "value":F
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v30

    const/16 v31, 0x1

    aget v30, v30, v31

    add-int/lit8 v30, v30, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1, v5}, Lcom/google/zxing/oned/rss/RSS14Reader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 198
    const/4 v14, 0x0

    .restart local v14    # "i":I
    array-length v0, v5

    move/from16 v30, v0

    add-int/lit8 v15, v30, -0x1

    .local v15, "j":I
    :goto_5
    if-ge v14, v15, :cond_1

    .line 199
    aget v25, v5, v14

    .line 200
    .local v25, "temp":I
    aget v30, v5, v15

    aput v30, v5, v14

    .line 201
    aput v25, v5, v15

    .line 198
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v15, v15, -0x1

    goto :goto_5

    .line 205
    .end local v14    # "i":I
    .end local v15    # "j":I
    .end local v25    # "temp":I
    :cond_4
    const/16 v16, 0xf

    goto :goto_1

    .line 218
    .restart local v4    # "count":I
    .restart local v6    # "elementWidth":F
    .restart local v8    # "evenCounts":[I
    .restart local v9    # "evenRoundingErrors":[F
    .restart local v14    # "i":I
    .restart local v16    # "numModules":I
    .restart local v18    # "oddCounts":[I
    .restart local v19    # "oddRoundingErrors":[F
    .restart local v28    # "value":F
    :cond_5
    const/16 v30, 0x8

    move/from16 v0, v30

    if-le v4, v0, :cond_2

    .line 219
    const/16 v4, 0x8

    goto :goto_3

    .line 226
    .restart local v22    # "offset":I
    :cond_6
    aput v4, v8, v22

    .line 227
    int-to-float v0, v4

    move/from16 v30, v0

    sub-float v30, v28, v30

    aput v30, v9, v22

    goto :goto_4

    .line 231
    .end local v4    # "count":I
    .end local v22    # "offset":I
    .end local v28    # "value":F
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/oned/rss/RSS14Reader;->adjustOddEvenCounts(ZI)V

    .line 233
    const/16 v20, 0x0

    .line 234
    .local v20, "oddSum":I
    const/16 v17, 0x0

    .line 235
    .local v17, "oddChecksumPortion":I
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v30, v0

    add-int/lit8 v14, v30, -0x1

    :goto_6
    if-ltz v14, :cond_8

    .line 236
    mul-int/lit8 v30, v17, 0x9

    .line 237
    aget v31, v18, v14

    add-int v17, v30, v31

    .line 238
    aget v30, v18, v14

    add-int v20, v20, v30

    .line 235
    add-int/lit8 v14, v14, -0x1

    goto :goto_6

    .line 240
    :cond_8
    const/4 v7, 0x0

    .line 241
    .local v7, "evenChecksumPortion":I
    const/4 v10, 0x0

    .line 242
    .local v10, "evenSum":I
    array-length v0, v8

    move/from16 v30, v0

    add-int/lit8 v14, v30, -0x1

    :goto_7
    if-ltz v14, :cond_9

    .line 243
    mul-int/lit8 v30, v7, 0x9

    .line 244
    aget v31, v8, v14

    add-int v7, v30, v31

    .line 245
    aget v30, v8, v14

    add-int v10, v10, v30

    .line 242
    add-int/lit8 v14, v14, -0x1

    goto :goto_7

    .line 247
    :cond_9
    mul-int/lit8 v30, v7, 0x3

    add-int v3, v17, v30

    .line 249
    .local v3, "checksumPortion":I
    if-eqz p3, :cond_c

    .line 250
    and-int/lit8 v30, v20, 0x1

    if-nez v30, :cond_a

    const/16 v30, 0xc

    move/from16 v0, v20

    move/from16 v1, v30

    if-gt v0, v1, :cond_a

    const/16 v30, 0x4

    move/from16 v0, v20

    move/from16 v1, v30

    if-ge v0, v1, :cond_b

    .line 251
    :cond_a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v30

    throw v30

    .line 253
    :cond_b
    rsub-int/lit8 v30, v20, 0xc

    div-int/lit8 v13, v30, 0x2

    .line 254
    .local v13, "group":I
    sget-object v30, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_ODD_WIDEST:[I

    aget v21, v30, v13

    .line 255
    .local v21, "oddWidest":I
    rsub-int/lit8 v11, v21, 0x9

    .line 256
    .local v11, "evenWidest":I
    const/16 v30, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v27

    .line 257
    .local v27, "vOdd":I
    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-static {v8, v11, v0}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v26

    .line 258
    .local v26, "vEven":I
    sget-object v30, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_EVEN_TOTAL_SUBSET:[I

    aget v23, v30, v13

    .line 259
    .local v23, "tEven":I
    sget-object v30, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_GSUM:[I

    aget v12, v30, v13

    .line 260
    .local v12, "gSum":I
    new-instance v30, Lcom/google/zxing/oned/rss/DataCharacter;

    mul-int v31, v27, v23

    add-int v31, v31, v26

    add-int v31, v31, v12

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-direct {v0, v1, v3}, Lcom/google/zxing/oned/rss/DataCharacter;-><init>(II)V

    .line 272
    .end local v23    # "tEven":I
    :goto_8
    return-object v30

    .line 262
    .end local v11    # "evenWidest":I
    .end local v12    # "gSum":I
    .end local v13    # "group":I
    .end local v21    # "oddWidest":I
    .end local v26    # "vEven":I
    .end local v27    # "vOdd":I
    :cond_c
    and-int/lit8 v30, v10, 0x1

    if-nez v30, :cond_d

    const/16 v30, 0xa

    move/from16 v0, v30

    if-gt v10, v0, :cond_d

    const/16 v30, 0x4

    move/from16 v0, v30

    if-ge v10, v0, :cond_e

    .line 263
    :cond_d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v30

    throw v30

    .line 265
    :cond_e
    rsub-int/lit8 v30, v10, 0xa

    div-int/lit8 v13, v30, 0x2

    .line 266
    .restart local v13    # "group":I
    sget-object v30, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_WIDEST:[I

    aget v21, v30, v13

    .line 267
    .restart local v21    # "oddWidest":I
    rsub-int/lit8 v11, v21, 0x9

    .line 268
    .restart local v11    # "evenWidest":I
    const/16 v30, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v27

    .line 269
    .restart local v27    # "vOdd":I
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-static {v8, v11, v0}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v26

    .line 270
    .restart local v26    # "vEven":I
    sget-object v30, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_TOTAL_SUBSET:[I

    aget v24, v30, v13

    .line 271
    .local v24, "tOdd":I
    sget-object v30, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_GSUM:[I

    aget v12, v30, v13

    .line 272
    .restart local v12    # "gSum":I
    new-instance v30, Lcom/google/zxing/oned/rss/DataCharacter;

    mul-int v31, v26, v24

    add-int v31, v31, v27

    add-int v31, v31, v12

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-direct {v0, v1, v3}, Lcom/google/zxing/oned/rss/DataCharacter;-><init>(II)V

    goto :goto_8
.end method

.method private decodePair(Lcom/google/zxing/common/BitArray;ZILjava/util/Map;)Lcom/google/zxing/oned/rss/Pair;
    .locals 11
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "right"    # Z
    .param p3, "rowNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitArray;",
            "ZI",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/oned/rss/Pair;"
        }
    .end annotation

    .prologue
    .local p4, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    const/4 v7, 0x0

    .line 160
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/oned/rss/RSS14Reader;->findFinderPattern(Lcom/google/zxing/common/BitArray;Z)[I

    move-result-object v5

    .line 161
    .local v5, "startEnd":[I
    invoke-direct {p0, p1, p3, p2, v5}, Lcom/google/zxing/oned/rss/RSS14Reader;->parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZ[I)Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v3

    .line 163
    .local v3, "pattern":Lcom/google/zxing/oned/rss/FinderPattern;
    if-nez p4, :cond_2

    move-object v4, v7

    .line 166
    .local v4, "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    :goto_0
    if-eqz v4, :cond_1

    .line 167
    const/4 v6, 0x0

    aget v6, v5, v6

    const/4 v8, 0x1

    aget v8, v5, v8

    add-int/2addr v6, v8

    int-to-float v6, v6

    const/high16 v8, 0x40000000    # 2.0f

    div-float v0, v6, v8

    .line 168
    .local v0, "center":F
    if-eqz p2, :cond_0

    .line 170
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    sub-float v0, v6, v0

    .line 172
    :cond_0
    new-instance v6, Lcom/google/zxing/ResultPoint;

    int-to-float v8, p3

    invoke-direct {v6, v0, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    invoke-interface {v4, v6}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 175
    .end local v0    # "center":F
    :cond_1
    const/4 v6, 0x1

    invoke-direct {p0, p1, v3, v6}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;Z)Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v2

    .line 176
    .local v2, "outside":Lcom/google/zxing/oned/rss/DataCharacter;
    const/4 v6, 0x0

    invoke-direct {p0, p1, v3, v6}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;Z)Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v1

    .line 177
    .local v1, "inside":Lcom/google/zxing/oned/rss/DataCharacter;
    new-instance v6, Lcom/google/zxing/oned/rss/Pair;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v8

    mul-int/lit16 v8, v8, 0x63d

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v9

    add-int/2addr v8, v9

    .line 178
    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v9

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v10

    mul-int/lit8 v10, v10, 0x4

    add-int/2addr v9, v10

    invoke-direct {v6, v8, v9, v3}, Lcom/google/zxing/oned/rss/Pair;-><init>(IILcom/google/zxing/oned/rss/FinderPattern;)V

    .line 181
    .end local v1    # "inside":Lcom/google/zxing/oned/rss/DataCharacter;
    .end local v2    # "outside":Lcom/google/zxing/oned/rss/DataCharacter;
    .end local v3    # "pattern":Lcom/google/zxing/oned/rss/FinderPattern;
    .end local v4    # "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    .end local v5    # "startEnd":[I
    :goto_1
    return-object v6

    .line 163
    .restart local v3    # "pattern":Lcom/google/zxing/oned/rss/FinderPattern;
    .restart local v5    # "startEnd":[I
    :cond_2
    sget-object v6, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    .line 164
    invoke-interface {p4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/ResultPointCallback;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v6

    goto :goto_0

    .line 181
    .end local v3    # "pattern":Lcom/google/zxing/oned/rss/FinderPattern;
    .end local v5    # "startEnd":[I
    :catch_0
    move-exception v6

    move-object v6, v7

    goto :goto_1
.end method

.method private findFinderPattern(Lcom/google/zxing/common/BitArray;Z)[I
    .locals 13
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "rightFinderPattern"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 280
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getDecodeFinderCounters()[I

    move-result-object v1

    .line 281
    .local v1, "counters":[I
    aput v8, v1, v8

    .line 282
    aput v8, v1, v7

    .line 283
    aput v8, v1, v11

    .line 284
    aput v8, v1, v12

    .line 286
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    .line 287
    .local v5, "width":I
    const/4 v2, 0x0

    .line 288
    .local v2, "isWhite":Z
    const/4 v4, 0x0

    .line 289
    .local v4, "rowOffset":I
    :goto_0
    if-ge v4, v5, :cond_1

    .line 290
    invoke-virtual {p1, v4}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    if-nez v9, :cond_0

    move v2, v7

    .line 291
    :goto_1
    if-eq p2, v2, :cond_1

    .line 295
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v2, v8

    .line 290
    goto :goto_1

    .line 298
    :cond_1
    const/4 v0, 0x0

    .line 299
    .local v0, "counterPosition":I
    move v3, v4

    .line 300
    .local v3, "patternStart":I
    move v6, v4

    .local v6, "x":I
    :goto_2
    if-ge v6, v5, :cond_6

    .line 301
    invoke-virtual {p1, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    if-eq v9, v2, :cond_2

    .line 302
    aget v9, v1, v0

    add-int/lit8 v9, v9, 0x1

    aput v9, v1, v0

    .line 300
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 304
    :cond_2
    if-ne v0, v12, :cond_4

    .line 305
    invoke-static {v1}, Lcom/google/zxing/oned/rss/RSS14Reader;->isFinderPattern([I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 306
    new-array v9, v11, [I

    aput v3, v9, v8

    aput v6, v9, v7

    return-object v9

    .line 308
    :cond_3
    aget v9, v1, v8

    aget v10, v1, v7

    add-int/2addr v9, v10

    add-int/2addr v3, v9

    .line 309
    aget v9, v1, v11

    aput v9, v1, v8

    .line 310
    aget v9, v1, v12

    aput v9, v1, v7

    .line 311
    aput v8, v1, v11

    .line 312
    aput v8, v1, v12

    .line 313
    add-int/lit8 v0, v0, -0x1

    .line 317
    :goto_4
    aput v7, v1, v0

    .line 318
    if-nez v2, :cond_5

    move v2, v7

    :goto_5
    goto :goto_3

    .line 315
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    move v2, v8

    .line 318
    goto :goto_5

    .line 321
    :cond_6
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v7

    throw v7
.end method

.method private parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZ[I)Lcom/google/zxing/oned/rss/FinderPattern;
    .locals 11
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "rowNumber"    # I
    .param p3, "right"    # Z
    .param p4, "startEnd"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 328
    aget v0, p4, v5

    invoke-virtual {p1, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    .line 329
    .local v9, "firstIsBlack":Z
    aget v0, p4, v5

    add-int/lit8 v8, v0, -0x1

    .line 331
    .local v8, "firstElementStart":I
    :goto_0
    if-ltz v8, :cond_0

    invoke-virtual {p1, v8}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v0

    if-eq v9, v0, :cond_0

    .line 332
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 334
    :cond_0
    add-int/lit8 v8, v8, 0x1

    .line 335
    aget v0, p4, v5

    sub-int v7, v0, v8

    .line 337
    .local v7, "firstCounter":I
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getDecodeFinderCounters()[I

    move-result-object v6

    .line 338
    .local v6, "counters":[I
    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    invoke-static {v6, v5, v6, v10, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    aput v7, v6, v5

    .line 340
    sget-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->FINDER_PATTERNS:[[I

    invoke-static {v6, v0}, Lcom/google/zxing/oned/rss/RSS14Reader;->parseFinderValue([I[[I)I

    move-result v1

    .line 341
    .local v1, "value":I
    move v3, v8

    .line 342
    .local v3, "start":I
    aget v4, p4, v10

    .line 343
    .local v4, "end":I
    if-eqz p3, :cond_1

    .line 345
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int v3, v0, v3

    .line 346
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int v4, v0, v4

    .line 348
    :cond_1
    new-instance v0, Lcom/google/zxing/oned/rss/FinderPattern;

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v8, v2, v5

    aget v5, p4, v10

    aput v5, v2, v10

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/oned/rss/FinderPattern;-><init>(I[IIII)V

    return-object v0
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 8
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
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    const/4 v7, 0x1

    .line 69
    const/4 v4, 0x0

    invoke-direct {p0, p2, v4, p1, p3}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodePair(Lcom/google/zxing/common/BitArray;ZILjava/util/Map;)Lcom/google/zxing/oned/rss/Pair;

    move-result-object v1

    .line 70
    .local v1, "leftPair":Lcom/google/zxing/oned/rss/Pair;
    iget-object v4, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    invoke-static {v4, v1}, Lcom/google/zxing/oned/rss/RSS14Reader;->addOrTally(Ljava/util/Collection;Lcom/google/zxing/oned/rss/Pair;)V

    .line 71
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 72
    invoke-direct {p0, p2, v7, p1, p3}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodePair(Lcom/google/zxing/common/BitArray;ZILjava/util/Map;)Lcom/google/zxing/oned/rss/Pair;

    move-result-object v3

    .line 73
    .local v3, "rightPair":Lcom/google/zxing/oned/rss/Pair;
    iget-object v4, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    invoke-static {v4, v3}, Lcom/google/zxing/oned/rss/RSS14Reader;->addOrTally(Ljava/util/Collection;Lcom/google/zxing/oned/rss/Pair;)V

    .line 74
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 75
    iget-object v4, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/Pair;

    .line 76
    .local v0, "left":Lcom/google/zxing/oned/rss/Pair;
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/Pair;->getCount()I

    move-result v5

    if-le v5, v7, :cond_0

    .line 77
    iget-object v5, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/oned/rss/Pair;

    .line 78
    .local v2, "right":Lcom/google/zxing/oned/rss/Pair;
    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/Pair;->getCount()I

    move-result v6

    if-le v6, v7, :cond_1

    invoke-static {v0, v2}, Lcom/google/zxing/oned/rss/RSS14Reader;->checkChecksum(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 79
    invoke-static {v0, v2}, Lcom/google/zxing/oned/rss/RSS14Reader;->constructResult(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Lcom/google/zxing/Result;

    move-result-object v4

    return-object v4

    .line 84
    .end local v0    # "left":Lcom/google/zxing/oned/rss/Pair;
    .end local v2    # "right":Lcom/google/zxing/oned/rss/Pair;
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v4

    throw v4
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 107
    iget-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 108
    return-void
.end method
