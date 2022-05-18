.class public final Lcom/google/zxing/oned/UPCEReader;
.super Lcom/google/zxing/oned/UPCEANReader;
.source "UPCEReader.java"


# static fields
.field private static final MIDDLE_END_PATTERN:[I

.field static final NUMSYS_AND_CHECK_DIGIT_PATTERNS:[[I


# instance fields
.field private final decodeMiddleCounters:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 37
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/UPCEReader;->MIDDLE_END_PATTERN:[I

    .line 68
    const/4 v0, 0x2

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/oned/UPCEReader;->NUMSYS_AND_CHECK_DIGIT_PATTERNS:[[I

    return-void

    .line 37
    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    .line 68
    :array_1
    .array-data 4
        0x38
        0x34
        0x32
        0x31
        0x2c
        0x26
        0x23
        0x2a
        0x29
        0x25
    .end array-data

    :array_2
    .array-data 4
        0x7
        0xb
        0xd
        0xe
        0x13
        0x19
        0x1c
        0x15
        0x16
        0x1a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANReader;-><init>()V

    .line 76
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEReader;->decodeMiddleCounters:[I

    .line 77
    return-void
.end method

.method public static convertUPCEtoUPCA(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "upce"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 145
    const/4 v3, 0x6

    new-array v2, v3, [C

    .line 146
    .local v2, "upceChars":[C
    const/4 v3, 0x1

    const/4 v4, 0x7

    invoke-virtual {p0, v3, v4, v2, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0xc

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 148
    .local v1, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    aget-char v0, v2, v9

    .line 150
    .local v0, "lastChar":C
    packed-switch v0, :pswitch_data_0

    .line 170
    invoke-virtual {v1, v2, v5, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 171
    const-string v3, "0000"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-lt v3, v4, :cond_0

    .line 177
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 154
    :pswitch_0
    invoke-virtual {v1, v2, v5, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 156
    const-string v3, "0000"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v1, v2, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 160
    :pswitch_1
    invoke-virtual {v1, v2, v5, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 161
    const-string v3, "00000"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v1, v2, v7, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 165
    :pswitch_2
    invoke-virtual {v1, v2, v5, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 166
    const-string v3, "00000"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    aget-char v3, v2, v8

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static determineNumSysAndCheckDigit(Ljava/lang/StringBuilder;I)V
    .locals 4
    .param p0, "resultString"    # Ljava/lang/StringBuilder;
    .param p1, "lgPatternFound"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 121
    const/4 v1, 0x0

    .local v1, "numSys":I
    :goto_0
    const/4 v2, 0x1

    if-gt v1, v2, :cond_2

    .line 122
    const/4 v0, 0x0

    .local v0, "d":I
    :goto_1
    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    .line 123
    sget-object v2, Lcom/google/zxing/oned/UPCEReader;->NUMSYS_AND_CHECK_DIGIT_PATTERNS:[[I

    aget-object v2, v2, v1

    aget v2, v2, v0

    if-ne p1, v2, :cond_0

    .line 124
    const/4 v2, 0x0

    add-int/lit8 v3, v1, 0x30

    int-to-char v3, v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 125
    add-int/lit8 v2, v0, 0x30

    int-to-char v2, v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    return-void

    .line 122
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 121
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    .end local v0    # "d":I
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method protected checkChecksum(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEReader;->convertUPCEtoUPCA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/google/zxing/oned/UPCEANReader;->checkChecksum(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected decodeEnd(Lcom/google/zxing/common/BitArray;I)[I
    .locals 2
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "endStart"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 110
    const/4 v0, 0x1

    sget-object v1, Lcom/google/zxing/oned/UPCEReader;->MIDDLE_END_PATTERN:[I

    invoke-static {p1, p2, v0, v1}, Lcom/google/zxing/oned/UPCEReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object v0

    return-object v0
.end method

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
    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 82
    iget-object v2, p0, Lcom/google/zxing/oned/UPCEReader;->decodeMiddleCounters:[I

    .line 83
    .local v2, "counters":[I
    aput v8, v2, v8

    .line 84
    aput v8, v2, v10

    .line 85
    const/4 v7, 0x2

    aput v8, v2, v7

    .line 86
    const/4 v7, 0x3

    aput v8, v2, v7

    .line 87
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    .line 88
    .local v3, "end":I
    aget v5, p2, v10

    .line 90
    .local v5, "rowOffset":I
    const/4 v4, 0x0

    .line 92
    .local v4, "lgPatternFound":I
    const/4 v6, 0x0

    .local v6, "x":I
    :goto_0
    const/4 v7, 0x6

    if-ge v6, v7, :cond_2

    if-ge v5, v3, :cond_2

    .line 93
    sget-object v7, Lcom/google/zxing/oned/UPCEReader;->L_AND_G_PATTERNS:[[I

    invoke-static {p1, v2, v5, v7}, Lcom/google/zxing/oned/UPCEReader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v0

    .line 94
    .local v0, "bestMatch":I
    rem-int/lit8 v7, v0, 0xa

    add-int/lit8 v7, v7, 0x30

    int-to-char v7, v7

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    array-length v9, v2

    move v7, v8

    :goto_1
    if-ge v7, v9, :cond_0

    aget v1, v2, v7

    .line 96
    .local v1, "counter":I
    add-int/2addr v5, v1

    .line 95
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 98
    .end local v1    # "counter":I
    :cond_0
    const/16 v7, 0xa

    if-lt v0, v7, :cond_1

    .line 99
    rsub-int/lit8 v7, v6, 0x5

    shl-int v7, v10, v7

    or-int/2addr v4, v7

    .line 92
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 103
    .end local v0    # "bestMatch":I
    :cond_2
    invoke-static {p3, v4}, Lcom/google/zxing/oned/UPCEReader;->determineNumSysAndCheckDigit(Ljava/lang/StringBuilder;I)V

    .line 105
    return v5
.end method

.method getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    return-object v0
.end method
