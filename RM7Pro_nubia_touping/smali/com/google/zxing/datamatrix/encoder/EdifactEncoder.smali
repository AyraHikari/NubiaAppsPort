.class final Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;
.super Ljava/lang/Object;
.source "EdifactEncoder.java"

# interfaces
.implements Lcom/google/zxing/datamatrix/encoder/Encoder;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static encodeChar(CLjava/lang/StringBuilder;)V
    .locals 1
    .param p0, "c"    # C
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 104
    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x3f

    if-gt p0, v0, :cond_0

    .line 105
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    :goto_0
    return-void

    .line 106
    :cond_0
    const/16 v0, 0x40

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5e

    if-gt p0, v0, :cond_1

    .line 107
    add-int/lit8 v0, p0, -0x40

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 109
    :cond_1
    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->illegalCharacter(C)V

    goto :goto_0
.end method

.method private static encodeToCodewords(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .locals 14
    .param p0, "sb"    # Ljava/lang/CharSequence;
    .param p1, "startPos"    # I

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x3

    const/4 v3, 0x0

    .line 114
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v10

    sub-int v7, v10, p1

    .line 115
    .local v7, "len":I
    if-nez v7, :cond_0

    .line 116
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "StringBuilder must not be empty"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 118
    :cond_0
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 119
    .local v0, "c1":C
    if-lt v7, v13, :cond_4

    add-int/lit8 v10, p1, 0x1

    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 120
    .local v1, "c2":C
    :goto_0
    if-lt v7, v12, :cond_5

    add-int/lit8 v10, p1, 0x2

    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 121
    .local v2, "c3":C
    :goto_1
    const/4 v10, 0x4

    if-lt v7, v10, :cond_1

    add-int/lit8 v10, p1, 0x3

    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 123
    .local v3, "c4":C
    :cond_1
    shl-int/lit8 v10, v0, 0x12

    shl-int/lit8 v11, v1, 0xc

    add-int/2addr v10, v11

    shl-int/lit8 v11, v2, 0x6

    add-int/2addr v10, v11

    add-int v9, v10, v3

    .line 124
    .local v9, "v":I
    shr-int/lit8 v10, v9, 0x10

    and-int/lit16 v10, v10, 0xff

    int-to-char v4, v10

    .line 125
    .local v4, "cw1":C
    shr-int/lit8 v10, v9, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-char v5, v10

    .line 126
    .local v5, "cw2":C
    and-int/lit16 v10, v9, 0xff

    int-to-char v6, v10

    .line 127
    .local v6, "cw3":C
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 128
    .local v8, "res":Ljava/lang/StringBuilder;
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    if-lt v7, v13, :cond_2

    .line 130
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    :cond_2
    if-lt v7, v12, :cond_3

    .line 133
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    :cond_3
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .end local v1    # "c2":C
    .end local v2    # "c3":C
    .end local v3    # "c4":C
    .end local v4    # "cw1":C
    .end local v5    # "cw2":C
    .end local v6    # "cw3":C
    .end local v8    # "res":Ljava/lang/StringBuilder;
    .end local v9    # "v":I
    :cond_4
    move v1, v3

    .line 119
    goto :goto_0

    .restart local v1    # "c2":C
    :cond_5
    move v2, v3

    .line 120
    goto :goto_1
.end method

.method private static handleEOD(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/CharSequence;)V
    .locals 9
    .param p0, "context"    # Lcom/google/zxing/datamatrix/encoder/EncoderContext;
    .param p1, "buffer"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 60
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 61
    .local v1, "count":I
    if-nez v1, :cond_0

    .line 99
    invoke-virtual {p0, v6}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    .line 100
    :goto_0
    return-void

    .line 64
    :cond_0
    if-ne v1, v4, :cond_1

    .line 66
    :try_start_1
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo()V

    .line 67
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v7

    sub-int v0, v5, v7

    .line 68
    .local v0, "available":I
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getRemainingCharacters()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    .line 69
    if-gt v5, v0, :cond_1

    if-gt v0, v8, :cond_1

    .line 99
    invoke-virtual {p0, v6}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    goto :goto_0

    .line 74
    .end local v0    # "available":I
    :cond_1
    const/4 v5, 0x4

    if-le v1, v5, :cond_2

    .line 75
    :try_start_2
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v7, "Count must not exceed 4"

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    .end local v1    # "count":I
    :catchall_0
    move-exception v5

    invoke-virtual {p0, v6}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    .line 100
    throw v5

    .line 77
    .restart local v1    # "count":I
    :cond_2
    add-int/lit8 v3, v1, -0x1

    .line 78
    .local v3, "restChars":I
    const/4 v5, 0x0

    :try_start_3
    invoke-static {p1, v5}, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;->encodeToCodewords(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "encoded":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v5

    if-nez v5, :cond_4

    move v5, v4

    .line 80
    :goto_1
    if-eqz v5, :cond_5

    if-gt v3, v8, :cond_5

    .line 82
    .local v4, "restInAscii":Z
    :goto_2
    if-gt v3, v8, :cond_3

    .line 83
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p0, v5}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo(I)V

    .line 84
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v7

    sub-int/2addr v5, v7

    .line 85
    const/4 v7, 0x3

    if-lt v5, v7, :cond_3

    .line 86
    const/4 v4, 0x0

    .line 87
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v5, v7

    invoke-virtual {p0, v5}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo(I)V

    .line 92
    :cond_3
    if-eqz v4, :cond_6

    .line 93
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->resetSymbolInfo()V

    .line 94
    iget v5, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    sub-int/2addr v5, v3

    iput v5, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 99
    :goto_3
    invoke-virtual {p0, v6}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    goto :goto_0

    .end local v4    # "restInAscii":Z
    :cond_4
    move v5, v6

    .line 79
    goto :goto_1

    :cond_5
    move v4, v6

    .line 80
    goto :goto_2

    .line 96
    .restart local v4    # "restInAscii":Z
    :cond_6
    :try_start_4
    invoke-virtual {p0, v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodewords(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3
.end method


# virtual methods
.method public encode(Lcom/google/zxing/datamatrix/encoder/EncoderContext;)V
    .locals 6
    .param p1, "context"    # Lcom/google/zxing/datamatrix/encoder/EncoderContext;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .local v0, "buffer":Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 31
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCurrentChar()C

    move-result v1

    .line 32
    invoke-static {v1, v0}, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;->encodeChar(CLjava/lang/StringBuilder;)V

    .line 33
    iget v1, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 36
    if-lt v1, v5, :cond_0

    .line 37
    invoke-static {v0, v4}, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;->encodeToCodewords(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodewords(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;->getEncodingMode()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->lookAheadTest(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 41
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;->getEncodingMode()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 43
    invoke-virtual {p1, v4}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    .line 48
    :cond_1
    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    invoke-static {p1, v0}, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;->handleEOD(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/CharSequence;)V

    .line 50
    return-void
.end method

.method public getEncodingMode()I
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x4

    return v0
.end method
