.class public abstract Lcom/google/zxing/oned/rss/AbstractRSSReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "AbstractRSSReader.java"


# static fields
.field private static final MAX_AVG_VARIANCE:F = 0.2f

.field private static final MAX_FINDER_PATTERN_RATIO:F = 0.89285713f

.field private static final MAX_INDIVIDUAL_VARIANCE:F = 0.45f

.field private static final MIN_FINDER_PATTERN_RATIO:F = 0.7916667f


# instance fields
.field private final dataCharacterCounters:[I

.field private final decodeFinderCounters:[I

.field private final evenCounts:[I

.field private final evenRoundingErrors:[F

.field private final oddCounts:[I

.field private final oddRoundingErrors:[F


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 42
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 43
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->decodeFinderCounters:[I

    .line 44
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->dataCharacterCounters:[I

    .line 45
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->oddRoundingErrors:[F

    .line 46
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->evenRoundingErrors:[F

    .line 47
    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->dataCharacterCounters:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->oddCounts:[I

    .line 48
    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->dataCharacterCounters:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->evenCounts:[I

    .line 49
    return-void
.end method

.method protected static count([I)I
    .locals 1
    .param p0, "array"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 93
    invoke-static {p0}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v0

    return v0
.end method

.method protected static decrement([I[F)V
    .locals 4
    .param p0, "array"    # [I
    .param p1, "errors"    # [F

    .prologue
    .line 109
    const/4 v2, 0x0

    .line 110
    .local v2, "index":I
    const/4 v3, 0x0

    aget v0, p1, v3

    .line 111
    .local v0, "biggestError":F
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 112
    aget v3, p1, v1

    cmpg-float v3, v3, v0

    if-gez v3, :cond_0

    .line 113
    aget v0, p1, v1

    .line 114
    move v2, v1

    .line 111
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    :cond_1
    aget v3, p0, v2

    add-int/lit8 v3, v3, -0x1

    aput v3, p0, v2

    .line 118
    return-void
.end method

.method protected static increment([I[F)V
    .locals 4
    .param p0, "array"    # [I
    .param p1, "errors"    # [F

    .prologue
    .line 97
    const/4 v2, 0x0

    .line 98
    .local v2, "index":I
    const/4 v3, 0x0

    aget v0, p1, v3

    .line 99
    .local v0, "biggestError":F
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 100
    aget v3, p1, v1

    cmpl-float v3, v3, v0

    if-lez v3, :cond_0

    .line 101
    aget v0, p1, v1

    .line 102
    move v2, v1

    .line 99
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    :cond_1
    aget v3, p0, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, p0, v2

    .line 106
    return-void
.end method

.method protected static isFinderPattern([I)Z
    .locals 10
    .param p0, "counters"    # [I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 121
    aget v8, p0, v7

    aget v9, p0, v6

    add-int v1, v8, v9

    .line 122
    .local v1, "firstTwoSum":I
    const/4 v8, 0x2

    aget v8, p0, v8

    add-int/2addr v8, v1

    const/4 v9, 0x3

    aget v9, p0, v9

    add-int v5, v8, v9

    .line 123
    .local v5, "sum":I
    int-to-float v8, v1

    int-to-float v9, v5

    div-float v4, v8, v9

    .line 124
    .local v4, "ratio":F
    const v8, 0x3f4aaaab

    cmpl-float v8, v4, v8

    if-ltz v8, :cond_4

    const v8, 0x3f649249

    cmpg-float v8, v4, v8

    if-gtz v8, :cond_4

    .line 126
    const v3, 0x7fffffff

    .line 127
    .local v3, "minCounter":I
    const/high16 v2, -0x80000000

    .line 128
    .local v2, "maxCounter":I
    array-length v9, p0

    move v8, v7

    :goto_0
    if-ge v8, v9, :cond_2

    aget v0, p0, v8

    .line 129
    .local v0, "counter":I
    if-le v0, v2, :cond_0

    .line 130
    move v2, v0

    .line 132
    :cond_0
    if-ge v0, v3, :cond_1

    .line 133
    move v3, v0

    .line 128
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 136
    .end local v0    # "counter":I
    :cond_2
    mul-int/lit8 v8, v3, 0xa

    if-ge v2, v8, :cond_3

    .line 138
    .end local v2    # "maxCounter":I
    .end local v3    # "minCounter":I
    :goto_1
    return v6

    .restart local v2    # "maxCounter":I
    .restart local v3    # "minCounter":I
    :cond_3
    move v6, v7

    .line 136
    goto :goto_1

    .end local v2    # "maxCounter":I
    .end local v3    # "minCounter":I
    :cond_4
    move v6, v7

    .line 138
    goto :goto_1
.end method

.method protected static parseFinderValue([I[[I)I
    .locals 3
    .param p0, "counters"    # [I
    .param p1, "finderPatterns"    # [[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 77
    const/4 v0, 0x0

    .local v0, "value":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 78
    aget-object v1, p1, v0

    const v2, 0x3ee66666    # 0.45f

    invoke-static {p0, v1, v2}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->patternMatchVariance([I[IF)F

    move-result v1

    const v2, 0x3e4ccccd    # 0.2f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 80
    return v0

    .line 77
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method protected final getDataCharacterCounters()[I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->dataCharacterCounters:[I

    return-object v0
.end method

.method protected final getDecodeFinderCounters()[I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->decodeFinderCounters:[I

    return-object v0
.end method

.method protected final getEvenCounts()[I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->evenCounts:[I

    return-object v0
.end method

.method protected final getEvenRoundingErrors()[F
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->evenRoundingErrors:[F

    return-object v0
.end method

.method protected final getOddCounts()[I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->oddCounts:[I

    return-object v0
.end method

.method protected final getOddRoundingErrors()[F
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->oddRoundingErrors:[F

    return-object v0
.end method
