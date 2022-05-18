.class final Lcom/google/zxing/oned/rss/expanded/BitArrayBuilder;
.super Ljava/lang/Object;
.source "BitArrayBuilder.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method static buildBitArray(Ljava/util/List;)Lcom/google/zxing/common/BitArray;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;)",
            "Lcom/google/zxing/common/BitArray;"
        }
    .end annotation

    .prologue
    .local p0, "pairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    const/4 v11, 0x1

    .line 43
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v10

    shl-int/lit8 v10, v10, 0x1

    add-int/lit8 v2, v10, -0x1

    .line 44
    .local v2, "charNumber":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-interface {p0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v10}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v10

    if-nez v10, :cond_0

    .line 45
    add-int/lit8 v2, v2, -0x1

    .line 48
    :cond_0
    mul-int/lit8 v9, v2, 0xc

    .line 50
    .local v9, "size":I
    new-instance v1, Lcom/google/zxing/common/BitArray;

    invoke-direct {v1, v9}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 51
    .local v1, "binary":Lcom/google/zxing/common/BitArray;
    const/4 v0, 0x0

    .line 53
    .local v0, "accPos":I
    const/4 v10, 0x0

    invoke-interface {p0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 54
    invoke-virtual {v10}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v4

    .line 55
    .local v4, "firstValue":I
    const/16 v5, 0xb

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_2

    .line 56
    shl-int v10, v11, v5

    and-int/2addr v10, v4

    if-eqz v10, :cond_1

    .line 57
    invoke-virtual {v1, v0}, Lcom/google/zxing/common/BitArray;->set(I)V

    .line 59
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 55
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 62
    :cond_2
    const/4 v5, 0x1

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_7

    .line 63
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 65
    .local v3, "currentPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getLeftChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v7

    .line 66
    .local v7, "leftValue":I
    const/16 v6, 0xb

    .local v6, "j":I
    :goto_2
    if-ltz v6, :cond_4

    .line 67
    shl-int v10, v11, v6

    and-int/2addr v10, v7

    if-eqz v10, :cond_3

    .line 68
    invoke-virtual {v1, v0}, Lcom/google/zxing/common/BitArray;->set(I)V

    .line 70
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 66
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 73
    :cond_4
    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 74
    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v8

    .line 75
    .local v8, "rightValue":I
    const/16 v6, 0xb

    :goto_3
    if-ltz v6, :cond_6

    .line 76
    shl-int v10, v11, v6

    and-int/2addr v10, v8

    if-eqz v10, :cond_5

    .line 77
    invoke-virtual {v1, v0}, Lcom/google/zxing/common/BitArray;->set(I)V

    .line 79
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 75
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 62
    .end local v8    # "rightValue":I
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 83
    .end local v3    # "currentPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    .end local v6    # "j":I
    .end local v7    # "leftValue":I
    :cond_7
    return-object v1
.end method
