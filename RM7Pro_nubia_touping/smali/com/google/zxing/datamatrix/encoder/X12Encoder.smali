.class final Lcom/google/zxing/datamatrix/encoder/X12Encoder;
.super Lcom/google/zxing/datamatrix/encoder/C40Encoder;
.source "X12Encoder.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Lcom/google/zxing/datamatrix/encoder/EncoderContext;)V
    .locals 5
    .param p1, "context"    # Lcom/google/zxing/datamatrix/encoder/EncoderContext;

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .local v0, "buffer":Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 31
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCurrentChar()C

    move-result v1

    .line 32
    .local v1, "c":C
    iget v2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 34
    invoke-virtual {p0, v1, v0}, Lcom/google/zxing/datamatrix/encoder/X12Encoder;->encodeChar(CLjava/lang/StringBuilder;)I

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 37
    rem-int/lit8 v2, v2, 0x3

    if-nez v2, :cond_0

    .line 38
    invoke-static {p1, v0}, Lcom/google/zxing/datamatrix/encoder/X12Encoder;->writeNextTriplet(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V

    .line 40
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/X12Encoder;->getEncodingMode()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->lookAheadTest(Ljava/lang/CharSequence;II)I

    move-result v2

    .line 41
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/X12Encoder;->getEncodingMode()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 43
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    .line 48
    .end local v1    # "c":C
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/datamatrix/encoder/X12Encoder;->handleEOD(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V

    .line 49
    return-void
.end method

.method encodeChar(CLjava/lang/StringBuilder;)I
    .locals 2
    .param p1, "c"    # C
    .param p2, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v1, 0x1

    .line 53
    sparse-switch p1, :sswitch_data_0

    .line 67
    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    .line 68
    add-int/lit8 v0, p1, -0x30

    add-int/lit8 v0, v0, 0x4

    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    :goto_0
    return v1

    .line 55
    :sswitch_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 58
    :sswitch_1
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 61
    :sswitch_2
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 64
    :sswitch_3
    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 69
    :cond_0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_1

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_1

    .line 70
    add-int/lit8 v0, p1, -0x41

    add-int/lit8 v0, v0, 0xe

    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 72
    :cond_1
    invoke-static {p1}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->illegalCharacter(C)V

    goto :goto_0

    .line 53
    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0x20 -> :sswitch_3
        0x2a -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public getEncodingMode()I
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x3

    return v0
.end method

.method handleEOD(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V
    .locals 5
    .param p1, "context"    # Lcom/google/zxing/datamatrix/encoder/EncoderContext;
    .param p2, "buffer"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v4, 0x1

    .line 81
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo()V

    .line 82
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v3

    sub-int v0, v2, v3

    .line 83
    .local v0, "available":I
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 84
    .local v1, "count":I
    iget v2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    sub-int/2addr v2, v1

    iput v2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 85
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getRemainingCharacters()I

    move-result v2

    if-gt v2, v4, :cond_0

    if-gt v0, v4, :cond_0

    .line 86
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getRemainingCharacters()I

    move-result v2

    if-eq v2, v0, :cond_1

    .line 87
    :cond_0
    const/16 v2, 0xfe

    invoke-virtual {p1, v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 89
    :cond_1
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getNewEncoding()I

    move-result v2

    if-gez v2, :cond_2

    .line 90
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    .line 92
    :cond_2
    return-void
.end method
