.class public final Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;
.super Lcom/google/zxing/oned/rss/AbstractRSSReader;
.source "RSSExpandedReader.java"


# static fields
.field private static final EVEN_TOTAL_SUBSET:[I

.field private static final FINDER_PATTERNS:[[I

.field private static final FINDER_PATTERN_SEQUENCES:[[I

.field private static final FINDER_PAT_A:I = 0x0

.field private static final FINDER_PAT_B:I = 0x1

.field private static final FINDER_PAT_C:I = 0x2

.field private static final FINDER_PAT_D:I = 0x3

.field private static final FINDER_PAT_E:I = 0x4

.field private static final FINDER_PAT_F:I = 0x5

.field private static final GSUM:[I

.field private static final MAX_PAIRS:I = 0xb

.field private static final SYMBOL_WIDEST:[I

.field private static final WEIGHTS:[[I


# instance fields
.field private final pairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation
.end field

.field private final rows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedRow;",
            ">;"
        }
    .end annotation
.end field

.field private final startEnd:[I

.field private startFromEven:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/16 v3, 0x8

    .line 55
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->SYMBOL_WIDEST:[I

    .line 56
    new-array v0, v5, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->EVEN_TOTAL_SUBSET:[I

    .line 57
    new-array v0, v5, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->GSUM:[I

    .line 59
    const/4 v0, 0x6

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v4, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v4, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    new-array v1, v4, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v6

    new-array v1, v4, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v7

    new-array v1, v4, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v4

    new-array v1, v4, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERNS:[[I

    .line 68
    const/16 v0, 0x17

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v7

    new-array v1, v3, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_e

    aput-object v1, v0, v5

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_11

    aput-object v1, v0, v3

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [I

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [I

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [I

    fill-array-data v2, :array_1f

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->WEIGHTS:[[I

    .line 101
    const/16 v0, 0xa

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v6, [I

    fill-array-data v2, :array_20

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v7, [I

    fill-array-data v2, :array_21

    aput-object v2, v0, v1

    new-array v1, v4, [I

    fill-array-data v1, :array_22

    aput-object v1, v0, v6

    new-array v1, v5, [I

    fill-array-data v1, :array_23

    aput-object v1, v0, v7

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_24

    aput-object v1, v0, v4

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_25

    aput-object v1, v0, v5

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_26

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_27

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_28

    aput-object v1, v0, v3

    const/16 v1, 0x9

    const/16 v2, 0xb

    new-array v2, v2, [I

    fill-array-data v2, :array_29

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERN_SEQUENCES:[[I

    return-void

    .line 55
    :array_0
    .array-data 4
        0x7
        0x5
        0x4
        0x3
        0x1
    .end array-data

    .line 56
    :array_1
    .array-data 4
        0x4
        0x14
        0x34
        0x68
        0xcc
    .end array-data

    .line 57
    :array_2
    .array-data 4
        0x0
        0x15c
        0x56c
        0xb84
        0xf94
    .end array-data

    .line 59
    :array_3
    .array-data 4
        0x1
        0x8
        0x4
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x3
        0x6
        0x4
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x3
        0x4
        0x6
        0x1
    .end array-data

    :array_6
    .array-data 4
        0x3
        0x2
        0x8
        0x1
    .end array-data

    :array_7
    .array-data 4
        0x2
        0x6
        0x5
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x2
        0x2
        0x9
        0x1
    .end array-data

    .line 68
    :array_9
    .array-data 4
        0x1
        0x3
        0x9
        0x1b
        0x51
        0x20
        0x60
        0x4d
    .end array-data

    :array_a
    .array-data 4
        0x14
        0x3c
        0xb4
        0x76
        0x8f
        0x7
        0x15
        0x3f
    .end array-data

    :array_b
    .array-data 4
        0xbd
        0x91
        0xd
        0x27
        0x75
        0x8c
        0xd1
        0xcd
    .end array-data

    :array_c
    .array-data 4
        0xc1
        0x9d
        0x31
        0x93
        0x13
        0x39
        0xab
        0x5b
    .end array-data

    :array_d
    .array-data 4
        0x3e
        0xba
        0x88
        0xc5
        0xa9
        0x55
        0x2c
        0x84
    .end array-data

    :array_e
    .array-data 4
        0xb9
        0x85
        0xbc
        0x8e
        0x4
        0xc
        0x24
        0x6c
    .end array-data

    :array_f
    .array-data 4
        0x71
        0x80
        0xad
        0x61
        0x50
        0x1d
        0x57
        0x32
    .end array-data

    :array_10
    .array-data 4
        0x96
        0x1c
        0x54
        0x29
        0x7b
        0x9e
        0x34
        0x9c
    .end array-data

    :array_11
    .array-data 4
        0x2e
        0x8a
        0xcb
        0xbb
        0x8b
        0xce
        0xc4
        0xa6
    .end array-data

    :array_12
    .array-data 4
        0x4c
        0x11
        0x33
        0x99
        0x25
        0x6f
        0x7a
        0x9b
    .end array-data

    :array_13
    .array-data 4
        0x2b
        0x81
        0xb0
        0x6a
        0x6b
        0x6e
        0x77
        0x92
    .end array-data

    :array_14
    .array-data 4
        0x10
        0x30
        0x90
        0xa
        0x1e
        0x5a
        0x3b
        0xb1
    .end array-data

    :array_15
    .array-data 4
        0x6d
        0x74
        0x89
        0xc8
        0xb2
        0x70
        0x7d
        0xa4
    .end array-data

    :array_16
    .array-data 4
        0x46
        0xd2
        0xd0
        0xca
        0xb8
        0x82
        0xb3
        0x73
    .end array-data

    :array_17
    .array-data 4
        0x86
        0xbf
        0x97
        0x1f
        0x5d
        0x44
        0xcc
        0xbe
    .end array-data

    :array_18
    .array-data 4
        0x94
        0x16
        0x42
        0xc6
        0xac
        0x5e
        0x47
        0x2
    .end array-data

    :array_19
    .array-data 4
        0x6
        0x12
        0x36
        0xa2
        0x40
        0xc0
        0x9a
        0x28
    .end array-data

    :array_1a
    .array-data 4
        0x78
        0x95
        0x19
        0x4b
        0xe
        0x2a
        0x7e
        0xa7
    .end array-data

    :array_1b
    .array-data 4
        0x4f
        0x1a
        0x4e
        0x17
        0x45
        0xcf
        0xc7
        0xaf
    .end array-data

    :array_1c
    .array-data 4
        0x67
        0x62
        0x53
        0x26
        0x72
        0x83
        0xb6
        0x7c
    .end array-data

    :array_1d
    .array-data 4
        0xa1
        0x3d
        0xb7
        0x7f
        0xaa
        0x58
        0x35
        0x9f
    .end array-data

    :array_1e
    .array-data 4
        0x37
        0xa5
        0x49
        0x8
        0x18
        0x48
        0x5
        0xf
    .end array-data

    :array_1f
    .array-data 4
        0x2d
        0x87
        0xc2
        0xa0
        0x3a
        0xae
        0x64
        0x59
    .end array-data

    .line 101
    :array_20
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_21
    .array-data 4
        0x0
        0x1
        0x1
    .end array-data

    :array_22
    .array-data 4
        0x0
        0x2
        0x1
        0x3
    .end array-data

    :array_23
    .array-data 4
        0x0
        0x4
        0x1
        0x3
        0x2
    .end array-data

    :array_24
    .array-data 4
        0x0
        0x4
        0x1
        0x3
        0x3
        0x5
    .end array-data

    :array_25
    .array-data 4
        0x0
        0x4
        0x1
        0x3
        0x4
        0x5
        0x5
    .end array-data

    :array_26
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x3
    .end array-data

    :array_27
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x4
        0x4
    .end array-data

    :array_28
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x4
        0x5
        0x5
    .end array-data

    :array_29
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;-><init>()V

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    .line 118
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    return-void
.end method

.method private adjustOddEvenCounts(I)V
    .locals 13
    .param p1, "numModules"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/16 v12, 0xd

    const/4 v11, 0x4

    const/4 v2, 0x0

    const/4 v9, 0x1

    .line 686
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddCounts()[I

    move-result-object v10

    invoke-static {v10}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v8

    .line 687
    .local v8, "oddSum":I
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenCounts()[I

    move-result-object v10

    invoke-static {v10}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v3

    .line 689
    .local v3, "evenSum":I
    const/4 v5, 0x0

    .line 690
    .local v5, "incrementOdd":Z
    const/4 v1, 0x0

    .line 692
    .local v1, "decrementOdd":Z
    if-le v8, v12, :cond_3

    .line 693
    const/4 v1, 0x1

    .line 697
    :cond_0
    :goto_0
    const/4 v4, 0x0

    .line 698
    .local v4, "incrementEven":Z
    const/4 v0, 0x0

    .line 699
    .local v0, "decrementEven":Z
    if-le v3, v12, :cond_4

    .line 700
    const/4 v0, 0x1

    .line 705
    :cond_1
    :goto_1
    add-int v10, v8, v3

    sub-int v6, v10, p1

    .line 706
    .local v6, "mismatch":I
    and-int/lit8 v10, v8, 0x1

    if-ne v10, v9, :cond_5

    move v7, v9

    .line 707
    .local v7, "oddParityBad":Z
    :goto_2
    and-int/lit8 v10, v3, 0x1

    if-nez v10, :cond_2

    move v2, v9

    .line 708
    .local v2, "evenParityBad":Z
    :cond_2
    if-ne v6, v9, :cond_a

    .line 709
    if-eqz v7, :cond_8

    .line 710
    if-eqz v2, :cond_6

    .line 711
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 694
    .end local v0    # "decrementEven":Z
    .end local v2    # "evenParityBad":Z
    .end local v4    # "incrementEven":Z
    .end local v6    # "mismatch":I
    .end local v7    # "oddParityBad":Z
    :cond_3
    if-ge v8, v11, :cond_0

    .line 695
    const/4 v5, 0x1

    goto :goto_0

    .line 701
    .restart local v0    # "decrementEven":Z
    .restart local v4    # "incrementEven":Z
    :cond_4
    if-ge v3, v11, :cond_1

    .line 702
    const/4 v4, 0x1

    goto :goto_1

    .restart local v6    # "mismatch":I
    :cond_5
    move v7, v2

    .line 706
    goto :goto_2

    .line 713
    .restart local v2    # "evenParityBad":Z
    .restart local v7    # "oddParityBad":Z
    :cond_6
    const/4 v1, 0x1

    .line 755
    :cond_7
    :goto_3
    if-eqz v5, :cond_14

    .line 756
    if-eqz v1, :cond_13

    .line 757
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 715
    :cond_8
    if-nez v2, :cond_9

    .line 716
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 718
    :cond_9
    const/4 v0, 0x1

    goto :goto_3

    .line 720
    :cond_a
    const/4 v9, -0x1

    if-ne v6, v9, :cond_e

    .line 721
    if-eqz v7, :cond_c

    .line 722
    if-eqz v2, :cond_b

    .line 723
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 725
    :cond_b
    const/4 v5, 0x1

    goto :goto_3

    .line 727
    :cond_c
    if-nez v2, :cond_d

    .line 728
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 730
    :cond_d
    const/4 v4, 0x1

    goto :goto_3

    .line 732
    :cond_e
    if-nez v6, :cond_12

    .line 733
    if-eqz v7, :cond_11

    .line 734
    if-nez v2, :cond_f

    .line 735
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 738
    :cond_f
    if-ge v8, v3, :cond_10

    .line 739
    const/4 v5, 0x1

    .line 740
    const/4 v0, 0x1

    goto :goto_3

    .line 742
    :cond_10
    const/4 v1, 0x1

    .line 743
    const/4 v4, 0x1

    goto :goto_3

    .line 746
    :cond_11
    if-eqz v2, :cond_7

    .line 747
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 752
    :cond_12
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 759
    :cond_13
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->increment([I[F)V

    .line 761
    :cond_14
    if-eqz v1, :cond_15

    .line 762
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decrement([I[F)V

    .line 764
    :cond_15
    if-eqz v4, :cond_17

    .line 765
    if-eqz v0, :cond_16

    .line 766
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 768
    :cond_16
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->increment([I[F)V

    .line 770
    :cond_17
    if-eqz v0, :cond_18

    .line 771
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decrement([I[F)V

    .line 773
    :cond_18
    return-void
.end method

.method private checkChecksum()Z
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 377
    iget-object v9, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 378
    .local v5, "firstPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getLeftChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v0

    .line 379
    .local v0, "checkCharacter":Lcom/google/zxing/oned/rss/DataCharacter;
    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v4

    .line 381
    .local v4, "firstCharacter":Lcom/google/zxing/oned/rss/DataCharacter;
    if-nez v4, :cond_1

    .line 403
    :cond_0
    :goto_0
    return v8

    .line 385
    :cond_1
    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v1

    .line 386
    .local v1, "checksum":I
    const/4 v7, 0x2

    .line 388
    .local v7, "s":I
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_1
    iget-object v9, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_3

    .line 389
    iget-object v9, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 390
    .local v2, "currentPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getLeftChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v9

    add-int/2addr v1, v9

    .line 391
    add-int/lit8 v7, v7, 0x1

    .line 392
    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v3

    .line 393
    .local v3, "currentRightChar":Lcom/google/zxing/oned/rss/DataCharacter;
    if-eqz v3, :cond_2

    .line 394
    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v9

    add-int/2addr v1, v9

    .line 395
    add-int/lit8 v7, v7, 0x1

    .line 388
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 399
    .end local v2    # "currentPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    .end local v3    # "currentRightChar":Lcom/google/zxing/oned/rss/DataCharacter;
    :cond_3
    rem-int/lit16 v1, v1, 0xd3

    .line 401
    add-int/lit8 v9, v7, -0x4

    mul-int/lit16 v9, v9, 0xd3

    add-int/2addr v9, v1

    .line 403
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v10

    if-ne v9, v10, :cond_0

    const/4 v8, 0x1

    goto :goto_0
.end method

.method private checkRows(Ljava/util/List;I)Ljava/util/List;
    .locals 7
    .param p2, "currentRow"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedRow;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 214
    .local p1, "collectedRows":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedRow;>;"
    move v1, p2

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 215
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    .line 216
    .local v2, "row":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 217
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    .line 218
    .local v0, "collectedRow":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    iget-object v5, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 220
    .end local v0    # "collectedRow":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    :cond_0
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 222
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-static {v4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isValidSequence(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 226
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkChecksum()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 227
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 235
    :goto_2
    return-object v4

    .line 230
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v3, "rs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedRow;>;"
    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 232
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    add-int/lit8 v4, v1, 0x1

    :try_start_0
    invoke-direct {p0, v3, v4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkRows(Ljava/util/List;I)Ljava/util/List;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_2

    :catch_0
    move-exception v4

    .line 214
    .end local v3    # "rs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedRow;>;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    .end local v2    # "row":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v4

    throw v4
.end method

.method private checkRows(Z)Ljava/util/List;
    .locals 3
    .param p1, "reverse"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x19

    if-le v1, v2, :cond_1

    .line 188
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 189
    const/4 v0, 0x0

    .line 208
    :cond_0
    :goto_0
    return-object v0

    .line 192
    :cond_1
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 193
    if-eqz p1, :cond_2

    .line 194
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 197
    :cond_2
    const/4 v0, 0x0

    .line 199
    .local v0, "ps":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkRows(Ljava/util/List;I)Ljava/util/List;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 204
    :goto_1
    if-eqz p1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method static constructResult(Ljava/util/List;)Lcom/google/zxing/Result;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;)",
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
    .local p0, "pairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 360
    invoke-static {p0}, Lcom/google/zxing/oned/rss/expanded/BitArrayBuilder;->buildBitArray(Ljava/util/List;)Lcom/google/zxing/common/BitArray;

    move-result-object v3

    .line 362
    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->createDecoder(Lcom/google/zxing/common/BitArray;)Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;

    move-result-object v3

    .line 363
    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->parseInformation()Ljava/lang/String;

    move-result-object v2

    .line 365
    .local v2, "resultingString":Ljava/lang/String;
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    .line 366
    .local v0, "firstPoints":[Lcom/google/zxing/ResultPoint;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v1

    .line 368
    .local v1, "lastPoints":[Lcom/google/zxing/ResultPoint;
    new-instance v3, Lcom/google/zxing/Result;

    const/4 v4, 0x0

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/ResultPoint;

    aget-object v6, v0, v7

    aput-object v6, v5, v7

    aget-object v6, v0, v8

    aput-object v6, v5, v8

    const/4 v6, 0x2

    aget-object v7, v1, v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aget-object v7, v1, v8

    aput-object v7, v5, v6

    sget-object v6, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v3, v2, v4, v5, v6}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v3
.end method

.method private findNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)V
    .locals 10
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p3, "forcedOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 460
    .local p2, "previousPairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getDecodeFinderCounters()[I

    move-result-object v1

    .line 461
    .local v1, "counters":[I
    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v1, v8

    .line 462
    const/4 v8, 0x1

    const/4 v9, 0x0

    aput v9, v1, v8

    .line 463
    const/4 v8, 0x2

    const/4 v9, 0x0

    aput v9, v1, v8

    .line 464
    const/4 v8, 0x3

    const/4 v9, 0x0

    aput v9, v1, v8

    .line 466
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    .line 469
    .local v6, "width":I
    if-ltz p3, :cond_1

    .line 470
    move v4, p3

    .line 477
    .local v4, "rowOffset":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    rem-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_3

    const/4 v5, 0x1

    .line 478
    .local v5, "searchingEvenPair":Z
    :goto_1
    iget-boolean v8, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    if-eqz v8, :cond_0

    .line 479
    if-nez v5, :cond_4

    const/4 v5, 0x1

    .line 482
    :cond_0
    :goto_2
    const/4 v2, 0x0

    .line 483
    .local v2, "isWhite":Z
    :goto_3
    if-ge v4, v6, :cond_6

    .line 484
    invoke-virtual {p1, v4}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v8

    if-nez v8, :cond_5

    const/4 v2, 0x1

    .line 485
    :goto_4
    if-eqz v2, :cond_6

    .line 488
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 471
    .end local v2    # "isWhite":Z
    .end local v4    # "rowOffset":I
    .end local v5    # "searchingEvenPair":Z
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 472
    const/4 v4, 0x0

    .restart local v4    # "rowOffset":I
    goto :goto_0

    .line 474
    .end local v4    # "rowOffset":I
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 475
    invoke-virtual {v8}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v8

    const/4 v9, 0x1

    aget v4, v8, v9

    .restart local v4    # "rowOffset":I
    goto :goto_0

    .line 477
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 479
    .restart local v5    # "searchingEvenPair":Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 484
    .restart local v2    # "isWhite":Z
    :cond_5
    const/4 v2, 0x0

    goto :goto_4

    .line 491
    :cond_6
    const/4 v0, 0x0

    .line 492
    .local v0, "counterPosition":I
    move v3, v4

    .line 493
    .local v3, "patternStart":I
    move v7, v4

    .local v7, "x":I
    :goto_5
    if-ge v7, v6, :cond_d

    .line 494
    invoke-virtual {p1, v7}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v8

    if-eq v8, v2, :cond_7

    .line 495
    aget v8, v1, v0

    add-int/lit8 v8, v8, 0x1

    aput v8, v1, v0

    .line 493
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 497
    :cond_7
    const/4 v8, 0x3

    if-ne v0, v8, :cond_b

    .line 498
    if-eqz v5, :cond_8

    .line 499
    invoke-static {v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->reverseCounters([I)V

    .line 502
    :cond_8
    invoke-static {v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isFinderPattern([I)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 503
    iget-object v8, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    const/4 v9, 0x0

    aput v3, v8, v9

    .line 504
    iget-object v8, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    const/4 v9, 0x1

    aput v7, v8, v9

    .line 505
    return-void

    .line 508
    :cond_9
    if-eqz v5, :cond_a

    .line 509
    invoke-static {v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->reverseCounters([I)V

    .line 512
    :cond_a
    const/4 v8, 0x0

    aget v8, v1, v8

    const/4 v9, 0x1

    aget v9, v1, v9

    add-int/2addr v8, v9

    add-int/2addr v3, v8

    .line 513
    const/4 v8, 0x0

    const/4 v9, 0x2

    aget v9, v1, v9

    aput v9, v1, v8

    .line 514
    const/4 v8, 0x1

    const/4 v9, 0x3

    aget v9, v1, v9

    aput v9, v1, v8

    .line 515
    const/4 v8, 0x2

    const/4 v9, 0x0

    aput v9, v1, v8

    .line 516
    const/4 v8, 0x3

    const/4 v9, 0x0

    aput v9, v1, v8

    .line 517
    add-int/lit8 v0, v0, -0x1

    .line 521
    :goto_7
    const/4 v8, 0x1

    aput v8, v1, v0

    .line 522
    if-nez v2, :cond_c

    const/4 v2, 0x1

    :goto_8
    goto :goto_6

    .line 519
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 522
    :cond_c
    const/4 v2, 0x0

    goto :goto_8

    .line 525
    :cond_d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v8

    throw v8
.end method

.method private static getNextSecondBar(Lcom/google/zxing/common/BitArray;I)I
    .locals 2
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "initialPos"    # I

    .prologue
    .line 408
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 409
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v0

    .line 410
    .local v0, "currentPos":I
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v0

    .line 415
    :goto_0
    return v0

    .line 412
    .end local v0    # "currentPos":I
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v0

    .line 413
    .restart local v0    # "currentPos":I
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v0

    goto :goto_0
.end method

.method private static isNotA1left(Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Z
    .locals 1
    .param p0, "pattern"    # Lcom/google/zxing/oned/rss/FinderPattern;
    .param p1, "isOddPattern"    # Z
    .param p2, "leftChar"    # Z

    .prologue
    .line 681
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPartialRow(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedRow;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 330
    .local p0, "pairs":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    .local p1, "rows":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/zxing/oned/rss/expanded/ExpandedRow;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    .line 331
    .local v4, "r":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    const/4 v0, 0x1

    .line 332
    .local v0, "allFound":Z
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 333
    .local v2, "p":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    const/4 v1, 0x0

    .line 334
    .local v1, "found":Z
    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 335
    .local v3, "pp":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    invoke-virtual {v2, v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 336
    const/4 v1, 0x1

    .line 340
    .end local v3    # "pp":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    :cond_3
    if-nez v1, :cond_1

    .line 341
    const/4 v0, 0x0

    .line 345
    .end local v1    # "found":Z
    .end local v2    # "p":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    :cond_4
    if-eqz v0, :cond_0

    .line 347
    const/4 v5, 0x1

    .line 350
    .end local v0    # "allFound":Z
    .end local v4    # "r":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    :goto_0
    return v5

    :cond_5
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private static isValidSequence(Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "pairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    const/4 v4, 0x0

    .line 247
    sget-object v6, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERN_SEQUENCES:[[I

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_3

    aget-object v1, v6, v5

    .line 248
    .local v1, "sequence":[I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    array-length v8, v1

    if-gt v3, v8, :cond_2

    .line 252
    const/4 v2, 0x1

    .line 253
    .local v2, "stop":Z
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 254
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v3

    aget v8, v1, v0

    if-eq v3, v8, :cond_1

    .line 255
    const/4 v2, 0x0

    .line 260
    :cond_0
    if-eqz v2, :cond_2

    .line 261
    const/4 v3, 0x1

    .line 265
    .end local v0    # "j":I
    .end local v1    # "sequence":[I
    .end local v2    # "stop":Z
    :goto_2
    return v3

    .line 253
    .restart local v0    # "j":I
    .restart local v1    # "sequence":[I
    .restart local v2    # "stop":Z
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 247
    .end local v0    # "j":I
    .end local v2    # "stop":Z
    :cond_2
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_0

    .end local v1    # "sequence":[I
    :cond_3
    move v3, v4

    .line 265
    goto :goto_2
.end method

.method private parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZ)Lcom/google/zxing/oned/rss/FinderPattern;
    .locals 10
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "rowNumber"    # I
    .param p3, "oddPattern"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 543
    if-eqz p3, :cond_1

    .line 546
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v0, v0, v5

    add-int/lit8 v8, v0, -0x1

    .line 548
    .local v8, "firstElementStart":I
    :goto_0
    if-ltz v8, :cond_0

    invoke-virtual {p1, v8}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 549
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 552
    :cond_0
    add-int/lit8 v8, v8, 0x1

    .line 553
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v0, v0, v5

    sub-int v7, v0, v8

    .line 554
    .local v7, "firstCounter":I
    move v3, v8

    .line 555
    .local v3, "start":I
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v4, v0, v9

    .line 567
    .end local v8    # "firstElementStart":I
    .local v4, "end":I
    :goto_1
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getDecodeFinderCounters()[I

    move-result-object v6

    .line 568
    .local v6, "counters":[I
    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    invoke-static {v6, v5, v6, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 570
    aput v7, v6, v5

    .line 573
    :try_start_0
    sget-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERNS:[[I

    invoke-static {v6, v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->parseFinderValue([I[[I)I
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 577
    .local v1, "value":I
    new-instance v0, Lcom/google/zxing/oned/rss/FinderPattern;

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v3, v2, v5

    aput v4, v2, v9

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/oned/rss/FinderPattern;-><init>(I[IIII)V

    .end local v1    # "value":I
    :goto_2
    return-object v0

    .line 560
    .end local v3    # "start":I
    .end local v4    # "end":I
    .end local v6    # "counters":[I
    .end local v7    # "firstCounter":I
    :cond_1
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v3, v0, v5

    .line 562
    .restart local v3    # "start":I
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v0, v0, v9

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v4

    .line 563
    .restart local v4    # "end":I
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v0, v0, v9

    sub-int v7, v4, v0

    .restart local v7    # "firstCounter":I
    goto :goto_1

    .line 575
    .restart local v6    # "counters":[I
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_2
.end method

.method private static removePartialRows(Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedRow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 302
    .local p0, "pairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    .local p1, "rows":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedRow;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/zxing/oned/rss/expanded/ExpandedRow;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 303
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    .line 304
    .local v5, "r":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-eq v6, v7, :cond_0

    .line 307
    const/4 v0, 0x1

    .line 308
    .local v0, "allFound":Z
    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 309
    .local v3, "p":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    const/4 v1, 0x0

    .line 310
    .local v1, "found":Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 311
    .local v4, "pp":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    invoke-virtual {v3, v4}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 312
    const/4 v1, 0x1

    .line 316
    .end local v4    # "pp":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    :cond_3
    if-nez v1, :cond_1

    .line 317
    const/4 v0, 0x0

    .line 321
    .end local v1    # "found":Z
    .end local v3    # "p":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    :cond_4
    if-eqz v0, :cond_0

    .line 323
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 326
    .end local v0    # "allFound":Z
    .end local v5    # "r":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    :cond_5
    return-void
.end method

.method private static reverseCounters([I)V
    .locals 4
    .param p0, "counters"    # [I

    .prologue
    .line 529
    array-length v1, p0

    .line 530
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    div-int/lit8 v3, v1, 0x2

    if-ge v0, v3, :cond_0

    .line 531
    aget v2, p0, v0

    .line 532
    .local v2, "tmp":I
    sub-int v3, v1, v0

    add-int/lit8 v3, v3, -0x1

    aget v3, p0, v3

    aput v3, p0, v0

    .line 533
    sub-int v3, v1, v0

    add-int/lit8 v3, v3, -0x1

    aput v2, p0, v3

    .line 530
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 535
    .end local v2    # "tmp":I
    :cond_0
    return-void
.end method

.method private storeRow(IZ)V
    .locals 7
    .param p1, "rowNumber"    # I
    .param p2, "wasReversed"    # Z

    .prologue
    .line 270
    const/4 v1, 0x0

    .line 271
    .local v1, "insertPos":I
    const/4 v3, 0x0

    .line 272
    .local v3, "prevIsSame":Z
    const/4 v2, 0x0

    .line 273
    .local v2, "nextIsSame":Z
    :goto_0
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 274
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    .line 275
    .local v0, "erow":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getRowNumber()I

    move-result v4

    if-le v4, p1, :cond_2

    .line 276
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-virtual {v0, v4}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->isEquivalent(Ljava/util/List;)Z

    move-result v2

    .line 282
    .end local v0    # "erow":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    :cond_0
    if-nez v2, :cond_1

    if-eqz v3, :cond_3

    .line 298
    :cond_1
    :goto_1
    return-void

    .line 279
    .restart local v0    # "erow":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    :cond_2
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-virtual {v0, v4}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->isEquivalent(Ljava/util/List;)Z

    move-result v3

    .line 280
    add-int/lit8 v1, v1, 0x1

    .line 281
    goto :goto_0

    .line 291
    .end local v0    # "erow":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    :cond_3
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    iget-object v5, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-static {v4, v5}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isPartialRow(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 295
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    new-instance v5, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    iget-object v6, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-direct {v5, v6, p1, p2}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;-><init>(Ljava/util/List;IZ)V

    invoke-interface {v4, v1, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 297
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    iget-object v5, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-static {v4, v5}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->removePartialRows(Ljava/util/List;Ljava/util/List;)V

    goto :goto_1
.end method


# virtual methods
.method decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Lcom/google/zxing/oned/rss/DataCharacter;
    .locals 33
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "pattern"    # Lcom/google/zxing/oned/rss/FinderPattern;
    .param p3, "isOddPattern"    # Z
    .param p4, "leftChar"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 584
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getDataCharacterCounters()[I

    move-result-object v5

    .line 585
    .local v5, "counters":[I
    const/16 v29, 0x0

    .local v29, "x":I
    :goto_0
    array-length v0, v5

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_0

    .line 586
    const/16 v30, 0x0

    aput v30, v5, v29

    .line 585
    add-int/lit8 v29, v29, 0x1

    goto :goto_0

    .line 589
    :cond_0
    if-eqz p4, :cond_2

    .line 590
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v30

    const/16 v31, 0x0

    aget v30, v30, v31

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1, v5}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->recordPatternInReverse(Lcom/google/zxing/common/BitArray;I[I)V

    .line 602
    :cond_1
    invoke-static {v5}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    const/high16 v31, 0x41880000    # 17.0f

    div-float v6, v30, v31

    .line 605
    .local v6, "elementWidth":F
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v30

    const/16 v31, 0x1

    aget v30, v30, v31

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v31

    const/16 v32, 0x0

    aget v31, v31, v32

    sub-int v30, v30, v31

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    const/high16 v31, 0x41700000    # 15.0f

    div-float v11, v30, v31

    .line 606
    .local v11, "expectedElementWidth":F
    sub-float v30, v6, v11

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(F)F

    move-result v30

    div-float v30, v30, v11

    const v31, 0x3e99999a    # 0.3f

    cmpl-float v30, v30, v31

    if-lez v30, :cond_3

    .line 607
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v30

    throw v30

    .line 592
    .end local v6    # "elementWidth":F
    .end local v11    # "expectedElementWidth":F
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v30

    const/16 v31, 0x1

    aget v30, v30, v31

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1, v5}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 594
    const/4 v14, 0x0

    .local v14, "i":I
    array-length v0, v5

    move/from16 v30, v0

    add-int/lit8 v15, v30, -0x1

    .local v15, "j":I
    :goto_1
    if-ge v14, v15, :cond_1

    .line 595
    aget v23, v5, v14

    .line 596
    .local v23, "temp":I
    aget v30, v5, v15

    aput v30, v5, v14

    .line 597
    aput v23, v5, v15

    .line 594
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v15, v15, -0x1

    goto :goto_1

    .line 610
    .end local v14    # "i":I
    .end local v15    # "j":I
    .end local v23    # "temp":I
    .restart local v6    # "elementWidth":F
    .restart local v11    # "expectedElementWidth":F
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddCounts()[I

    move-result-object v17

    .line 611
    .local v17, "oddCounts":[I
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenCounts()[I

    move-result-object v8

    .line 612
    .local v8, "evenCounts":[I
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddRoundingErrors()[F

    move-result-object v18

    .line 613
    .local v18, "oddRoundingErrors":[F
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenRoundingErrors()[F

    move-result-object v9

    .line 615
    .local v9, "evenRoundingErrors":[F
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_2
    array-length v0, v5

    move/from16 v30, v0

    move/from16 v0, v30

    if-ge v14, v0, :cond_9

    .line 616
    const/high16 v30, 0x3f800000    # 1.0f

    aget v31, v5, v14

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v30, v30, v31

    div-float v26, v30, v6

    .line 617
    .local v26, "value":F
    const/high16 v30, 0x3f000000    # 0.5f

    add-float v30, v30, v26

    move/from16 v0, v30

    float-to-int v4, v0

    .line 618
    .local v4, "count":I
    if-gtz v4, :cond_6

    .line 619
    const v30, 0x3e99999a    # 0.3f

    cmpg-float v30, v26, v30

    if-gez v30, :cond_4

    .line 620
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v30

    throw v30

    .line 622
    :cond_4
    const/4 v4, 0x1

    .line 629
    :cond_5
    :goto_3
    div-int/lit8 v21, v14, 0x2

    .line 630
    .local v21, "offset":I
    and-int/lit8 v30, v14, 0x1

    if-nez v30, :cond_8

    .line 631
    aput v4, v17, v21

    .line 632
    int-to-float v0, v4

    move/from16 v30, v0

    sub-float v30, v26, v30

    aput v30, v18, v21

    .line 615
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 623
    .end local v21    # "offset":I
    :cond_6
    const/16 v30, 0x8

    move/from16 v0, v30

    if-le v4, v0, :cond_5

    .line 624
    const v30, 0x410b3333    # 8.7f

    cmpl-float v30, v26, v30

    if-lez v30, :cond_7

    .line 625
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v30

    throw v30

    .line 627
    :cond_7
    const/16 v4, 0x8

    goto :goto_3

    .line 634
    .restart local v21    # "offset":I
    :cond_8
    aput v4, v8, v21

    .line 635
    int-to-float v0, v4

    move/from16 v30, v0

    sub-float v30, v26, v30

    aput v30, v9, v21

    goto :goto_4

    .line 639
    .end local v4    # "count":I
    .end local v21    # "offset":I
    .end local v26    # "value":F
    :cond_9
    const/16 v30, 0x11

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->adjustOddEvenCounts(I)V

    .line 641
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v30

    mul-int/lit8 v31, v30, 0x4

    if-eqz p3, :cond_b

    const/16 v30, 0x0

    :goto_5
    add-int v31, v31, v30

    if-eqz p4, :cond_c

    const/16 v30, 0x0

    :goto_6
    add-int v30, v30, v31

    add-int/lit8 v28, v30, -0x1

    .line 643
    .local v28, "weightRowNumber":I
    const/16 v19, 0x0

    .line 644
    .local v19, "oddSum":I
    const/16 v16, 0x0

    .line 645
    .local v16, "oddChecksumPortion":I
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v30, v0

    add-int/lit8 v14, v30, -0x1

    :goto_7
    if-ltz v14, :cond_d

    .line 646
    invoke-static/range {p2 .. p4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isNotA1left(Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Z

    move-result v30

    if-eqz v30, :cond_a

    .line 647
    sget-object v30, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->WEIGHTS:[[I

    aget-object v30, v30, v28

    mul-int/lit8 v31, v14, 0x2

    aget v27, v30, v31

    .line 648
    .local v27, "weight":I
    aget v30, v17, v14

    mul-int v30, v30, v27

    add-int v16, v16, v30

    .line 650
    .end local v27    # "weight":I
    :cond_a
    aget v30, v17, v14

    add-int v19, v19, v30

    .line 645
    add-int/lit8 v14, v14, -0x1

    goto :goto_7

    .line 641
    .end local v16    # "oddChecksumPortion":I
    .end local v19    # "oddSum":I
    .end local v28    # "weightRowNumber":I
    :cond_b
    const/16 v30, 0x2

    goto :goto_5

    :cond_c
    const/16 v30, 0x1

    goto :goto_6

    .line 652
    .restart local v16    # "oddChecksumPortion":I
    .restart local v19    # "oddSum":I
    .restart local v28    # "weightRowNumber":I
    :cond_d
    const/4 v7, 0x0

    .line 654
    .local v7, "evenChecksumPortion":I
    array-length v0, v8

    move/from16 v30, v0

    add-int/lit8 v14, v30, -0x1

    :goto_8
    if-ltz v14, :cond_f

    .line 655
    invoke-static/range {p2 .. p4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isNotA1left(Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Z

    move-result v30

    if-eqz v30, :cond_e

    .line 656
    sget-object v30, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->WEIGHTS:[[I

    aget-object v30, v30, v28

    mul-int/lit8 v31, v14, 0x2

    add-int/lit8 v31, v31, 0x1

    aget v27, v30, v31

    .line 657
    .restart local v27    # "weight":I
    aget v30, v8, v14

    mul-int v30, v30, v27

    add-int v7, v7, v30

    .line 654
    .end local v27    # "weight":I
    :cond_e
    add-int/lit8 v14, v14, -0x1

    goto :goto_8

    .line 661
    :cond_f
    add-int v3, v16, v7

    .line 663
    .local v3, "checksumPortion":I
    and-int/lit8 v30, v19, 0x1

    if-nez v30, :cond_10

    const/16 v30, 0xd

    move/from16 v0, v19

    move/from16 v1, v30

    if-gt v0, v1, :cond_10

    const/16 v30, 0x4

    move/from16 v0, v19

    move/from16 v1, v30

    if-ge v0, v1, :cond_11

    .line 664
    :cond_10
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v30

    throw v30

    .line 667
    :cond_11
    rsub-int/lit8 v30, v19, 0xd

    div-int/lit8 v13, v30, 0x2

    .line 668
    .local v13, "group":I
    sget-object v30, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->SYMBOL_WIDEST:[I

    aget v20, v30, v13

    .line 669
    .local v20, "oddWidest":I
    rsub-int/lit8 v10, v20, 0x9

    .line 670
    .local v10, "evenWidest":I
    const/16 v30, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v25

    .line 671
    .local v25, "vOdd":I
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-static {v8, v10, v0}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v24

    .line 672
    .local v24, "vEven":I
    sget-object v30, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->EVEN_TOTAL_SUBSET:[I

    aget v22, v30, v13

    .line 673
    .local v22, "tEven":I
    sget-object v30, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->GSUM:[I

    aget v12, v30, v13

    .line 674
    .local v12, "gSum":I
    mul-int v30, v25, v22

    add-int v30, v30, v24

    add-int v26, v30, v12

    .line 676
    .local v26, "value":I
    new-instance v30, Lcom/google/zxing/oned/rss/DataCharacter;

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-direct {v0, v1, v3}, Lcom/google/zxing/oned/rss/DataCharacter;-><init>(II)V

    return-object v30
.end method

.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 1
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
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 127
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    .line 130
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeRow2pairs(ILcom/google/zxing/common/BitArray;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->constructResult(Ljava/util/List;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    .line 135
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    .line 137
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeRow2pairs(ILcom/google/zxing/common/BitArray;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->constructResult(Ljava/util/List;)Lcom/google/zxing/Result;

    move-result-object v0

    goto :goto_0
.end method

.method decodeRow2pairs(ILcom/google/zxing/common/BitArray;)Ljava/util/List;
    .locals 7
    .param p1, "rowNumber"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 150
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-virtual {p0, p2, v6, p1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->retrieveNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    move-result-object v0

    .line 151
    .local v0, "nextPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    iget-object v6, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    .end local v0    # "nextPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    :catch_0
    move-exception v1

    .line 155
    .local v1, "nfe":Lcom/google/zxing/NotFoundException;
    iget-object v6, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 156
    throw v1

    .line 161
    :cond_0
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkChecksum()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 162
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 176
    :cond_1
    return-object v2

    .line 165
    :cond_2
    iget-object v6, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    move v3, v4

    .line 166
    .local v3, "tryStackedDecode":Z
    :goto_1
    invoke-direct {p0, p1, v5}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->storeRow(IZ)V

    .line 167
    if-eqz v3, :cond_3

    .line 170
    invoke-direct {p0, v5}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkRows(Z)Ljava/util/List;

    move-result-object v2

    .line 171
    .local v2, "ps":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    if-nez v2, :cond_1

    .line 174
    invoke-direct {p0, v4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkRows(Z)Ljava/util/List;

    move-result-object v2

    .line 175
    if-nez v2, :cond_1

    .line 180
    .end local v2    # "ps":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v4

    throw v4

    .end local v3    # "tryStackedDecode":Z
    :cond_4
    move v3, v5

    .line 165
    goto :goto_1
.end method

.method getRows()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedRow;",
            ">;"
        }
    .end annotation

    .prologue
    .line 355
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 143
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 144
    return-void
.end method

.method retrieveNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    .locals 9
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p3, "rowNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;I)",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .local p2, "previousPairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 421
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    rem-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_2

    move v1, v7

    .line 422
    .local v1, "isOddPattern":Z
    :goto_0
    iget-boolean v8, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    if-eqz v8, :cond_0

    .line 423
    if-nez v1, :cond_3

    move v1, v7

    .line 428
    :cond_0
    :goto_1
    const/4 v2, 0x1

    .line 429
    .local v2, "keepFinding":Z
    const/4 v0, -0x1

    .line 431
    .local v0, "forcedOffset":I
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->findNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)V

    .line 432
    invoke-direct {p0, p1, p3, v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZ)Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v4

    .line 433
    .local v4, "pattern":Lcom/google/zxing/oned/rss/FinderPattern;
    if-nez v4, :cond_4

    .line 434
    iget-object v8, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v8, v8, v6

    invoke-static {p1, v8}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getNextSecondBar(Lcom/google/zxing/common/BitArray;I)I

    move-result v0

    .line 438
    :goto_2
    if-nez v2, :cond_1

    .line 443
    invoke-virtual {p0, p1, v4, v1, v7}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v3

    .line 445
    .local v3, "leftChar":Lcom/google/zxing/oned/rss/DataCharacter;
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->mustBeLast()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 446
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6

    .end local v0    # "forcedOffset":I
    .end local v1    # "isOddPattern":Z
    .end local v2    # "keepFinding":Z
    .end local v3    # "leftChar":Lcom/google/zxing/oned/rss/DataCharacter;
    .end local v4    # "pattern":Lcom/google/zxing/oned/rss/FinderPattern;
    :cond_2
    move v1, v6

    .line 421
    goto :goto_0

    .restart local v1    # "isOddPattern":Z
    :cond_3
    move v1, v6

    .line 423
    goto :goto_1

    .line 436
    .restart local v0    # "forcedOffset":I
    .restart local v2    # "keepFinding":Z
    .restart local v4    # "pattern":Lcom/google/zxing/oned/rss/FinderPattern;
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 451
    .restart local v3    # "leftChar":Lcom/google/zxing/oned/rss/DataCharacter;
    :cond_5
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v4, v1, v6}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Lcom/google/zxing/oned/rss/DataCharacter;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 455
    .local v5, "rightChar":Lcom/google/zxing/oned/rss/DataCharacter;
    :goto_3
    new-instance v6, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-direct {v6, v3, v5, v4, v7}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;-><init>(Lcom/google/zxing/oned/rss/DataCharacter;Lcom/google/zxing/oned/rss/DataCharacter;Lcom/google/zxing/oned/rss/FinderPattern;Z)V

    return-object v6

    .line 453
    .end local v5    # "rightChar":Lcom/google/zxing/oned/rss/DataCharacter;
    :catch_0
    move-exception v6

    const/4 v5, 0x0

    .restart local v5    # "rightChar":Lcom/google/zxing/oned/rss/DataCharacter;
    goto :goto_3
.end method
