.class public final Lcom/google/zxing/oned/EAN8Reader;
.super Lcom/google/zxing/oned/UPCEANReader;
.source "EAN8Reader.java"


# instance fields
.field private final decodeMiddleCounters:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANReader;-><init>()V

    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/EAN8Reader;->decodeMiddleCounters:[I

    .line 34
    return-void
.end method


# virtual methods
.method protected decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
    .locals 11
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "startRange"    # [I
    .param p3, "result"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 40
    iget-object v2, p0, Lcom/google/zxing/oned/EAN8Reader;->decodeMiddleCounters:[I

    .line 41
    .local v2, "counters":[I
    aput v7, v2, v7

    .line 42
    aput v7, v2, v9

    .line 43
    const/4 v6, 0x2

    aput v7, v2, v6

    .line 44
    const/4 v6, 0x3

    aput v7, v2, v6

    .line 45
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    .line 46
    .local v3, "end":I
    aget v4, p2, v9

    .line 48
    .local v4, "rowOffset":I
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_0
    if-ge v5, v10, :cond_1

    if-ge v4, v3, :cond_1

    .line 49
    sget-object v6, Lcom/google/zxing/oned/EAN8Reader;->L_PATTERNS:[[I

    invoke-static {p1, v2, v4, v6}, Lcom/google/zxing/oned/EAN8Reader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v0

    .line 50
    .local v0, "bestMatch":I
    add-int/lit8 v6, v0, 0x30

    int-to-char v6, v6

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    array-length v8, v2

    move v6, v7

    :goto_1
    if-ge v6, v8, :cond_0

    aget v1, v2, v6

    .line 52
    .local v1, "counter":I
    add-int/2addr v4, v1

    .line 51
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 48
    .end local v1    # "counter":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 56
    .end local v0    # "bestMatch":I
    :cond_1
    sget-object v6, Lcom/google/zxing/oned/EAN8Reader;->MIDDLE_PATTERN:[I

    invoke-static {p1, v4, v9, v6}, Lcom/google/zxing/oned/EAN8Reader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object v6

    .line 57
    aget v4, v6, v9

    .line 59
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v10, :cond_3

    if-ge v4, v3, :cond_3

    .line 60
    sget-object v6, Lcom/google/zxing/oned/EAN8Reader;->L_PATTERNS:[[I

    invoke-static {p1, v2, v4, v6}, Lcom/google/zxing/oned/EAN8Reader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v0

    .line 61
    .restart local v0    # "bestMatch":I
    add-int/lit8 v6, v0, 0x30

    int-to-char v6, v6

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    array-length v8, v2

    move v6, v7

    :goto_3
    if-ge v6, v8, :cond_2

    aget v1, v2, v6

    .line 63
    .restart local v1    # "counter":I
    add-int/2addr v4, v1

    .line 62
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 59
    .end local v1    # "counter":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 67
    .end local v0    # "bestMatch":I
    :cond_3
    return v4
.end method

.method getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    return-object v0
.end method
