.class final Lcom/google/zxing/datamatrix/encoder/ASCIIEncoder;
.super Ljava/lang/Object;
.source "ASCIIEncoder.java"

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

.method private static encodeASCIIDigits(CC)C
    .locals 3
    .param p0, "digit1"    # C
    .param p1, "digit2"    # C

    .prologue
    .line 75
    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    add-int/lit8 v0, p0, -0x30

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v1, p1, -0x30

    add-int/2addr v0, v1

    .line 77
    add-int/lit16 v0, v0, 0x82

    int-to-char v0, v0

    return v0

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not digits: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public encode(Lcom/google/zxing/datamatrix/encoder/EncoderContext;)V
    .locals 6
    .param p1, "context"    # Lcom/google/zxing/datamatrix/encoder/EncoderContext;

    .prologue
    const/4 v5, 0x2

    .line 29
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    invoke-static {v2, v3}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->determineConsecutiveDigitCount(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 30
    if-lt v2, v5, :cond_0

    .line 31
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 32
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getMessage()Ljava/lang/String;

    move-result-object v3

    iget v4, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 31
    invoke-static {v2, v3}, Lcom/google/zxing/datamatrix/encoder/ASCIIEncoder;->encodeASCIIDigits(CC)C

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 33
    iget v2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 72
    :goto_0
    return-void

    .line 35
    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCurrentChar()C

    move-result v0

    .line 36
    .local v0, "c":C
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/ASCIIEncoder;->getEncodingMode()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->lookAheadTest(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 37
    .local v1, "newMode":I
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/ASCIIEncoder;->getEncodingMode()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 38
    packed-switch v1, :pswitch_data_0

    .line 60
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Illegal mode: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 40
    :pswitch_0
    const/16 v2, 0xe7

    invoke-virtual {p1, v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 41
    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    goto :goto_0

    .line 44
    :pswitch_1
    const/16 v2, 0xe6

    invoke-virtual {p1, v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 45
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    goto :goto_0

    .line 48
    :pswitch_2
    const/16 v2, 0xee

    invoke-virtual {p1, v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 49
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    goto :goto_0

    .line 52
    :pswitch_3
    const/16 v2, 0xef

    invoke-virtual {p1, v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 53
    invoke-virtual {p1, v5}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    goto :goto_0

    .line 56
    :pswitch_4
    const/16 v2, 0xf0

    invoke-virtual {p1, v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 57
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    goto :goto_0

    .line 62
    :cond_1
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 63
    const/16 v2, 0xeb

    invoke-virtual {p1, v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 64
    add-int/lit8 v2, v0, -0x80

    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    invoke-virtual {p1, v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 65
    iget v2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    goto :goto_0

    .line 67
    :cond_2
    add-int/lit8 v2, v0, 0x1

    int-to-char v2, v2

    invoke-virtual {p1, v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 68
    iget v2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    goto/16 :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public getEncodingMode()I
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method
