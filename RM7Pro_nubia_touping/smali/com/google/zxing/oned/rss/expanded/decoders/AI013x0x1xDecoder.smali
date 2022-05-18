.class final Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;
.super Lcom/google/zxing/oned/rss/expanded/decoders/AI01weightDecoder;
.source "AI013x0x1xDecoder.java"


# static fields
.field private static final DATE_SIZE:I = 0x10

.field private static final HEADER_SIZE:I = 0x8

.field private static final WEIGHT_SIZE:I = 0x14


# instance fields
.field private final dateCode:Ljava/lang/String;

.field private final firstAIdigits:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitArray;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "information"    # Lcom/google/zxing/common/BitArray;
    .param p2, "firstAIdigits"    # Ljava/lang/String;
    .param p3, "dateCode"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01weightDecoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    .line 47
    iput-object p3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;->dateCode:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;->firstAIdigits:Ljava/lang/String;

    .line 49
    return-void
.end method

.method private encodeCompressedDate(Ljava/lang/StringBuilder;I)V
    .locals 6
    .param p1, "buf"    # Ljava/lang/StringBuilder;
    .param p2, "currentPos"    # I

    .prologue
    const/16 v5, 0x30

    .line 67
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;->getGeneralDecoder()Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, p2, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v2

    .line 68
    .local v2, "numericDate":I
    const v3, 0x9600

    if-ne v2, v3, :cond_0

    .line 94
    :goto_0
    return-void

    .line 72
    :cond_0
    const/16 v3, 0x28

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;->dateCode:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const/16 v3, 0x29

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    rem-int/lit8 v0, v2, 0x20

    .line 77
    .local v0, "day":I
    div-int/lit8 v2, v2, 0x20

    .line 78
    rem-int/lit8 v3, v2, 0xc

    add-int/lit8 v1, v3, 0x1

    .line 79
    .local v1, "month":I
    div-int/lit8 v2, v2, 0xc

    .line 82
    div-int/lit8 v3, v2, 0xa

    if-nez v3, :cond_1

    .line 83
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    div-int/lit8 v3, v1, 0xa

    if-nez v3, :cond_2

    .line 87
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    div-int/lit8 v3, v0, 0xa

    if-nez v3, :cond_3

    .line 91
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method protected addWeightCode(Ljava/lang/StringBuilder;I)V
    .locals 1
    .param p1, "buf"    # Ljava/lang/StringBuilder;
    .param p2, "weight"    # I

    .prologue
    .line 98
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;->firstAIdigits:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const v0, 0x186a0

    div-int v0, p2, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    return-void
.end method

.method protected checkWeight(I)I
    .locals 1
    .param p1, "weight"    # I

    .prologue
    .line 106
    const v0, 0x186a0

    rem-int v0, p1, v0

    return v0
.end method

.method public parseInformation()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;->getInformation()Lcom/google/zxing/common/BitArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    const/16 v2, 0x54

    if-eq v1, v2, :cond_0

    .line 54
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;->encodeCompressedGtin(Ljava/lang/StringBuilder;I)V

    .line 60
    const/16 v1, 0x30

    const/16 v2, 0x14

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;->encodeCompressedWeight(Ljava/lang/StringBuilder;II)V

    .line 61
    const/16 v1, 0x44

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;->encodeCompressedDate(Ljava/lang/StringBuilder;I)V

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
