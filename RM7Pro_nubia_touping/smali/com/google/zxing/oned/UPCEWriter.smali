.class public final Lcom/google/zxing/oned/UPCEWriter;
.super Lcom/google/zxing/oned/UPCEANWriter;
.source "UPCEWriter.java"


# static fields
.field private static final CODE_WIDTH:I = 0x33


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 3
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "format"    # Lcom/google/zxing/BarcodeFormat;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 44
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    if-eq p2, v0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can only encode UPC_E, but got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/UPCEANWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)[Z
    .locals 14
    .param p1, "contents"    # Ljava/lang/String;

    .prologue
    const/16 v13, 0xa

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 54
    .local v6, "length":I
    packed-switch v6, :pswitch_data_0

    .line 75
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Requested contents should be 8 digits long, but got "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 59
    :pswitch_0
    :try_start_0
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEReader;->convertUPCEtoUPCA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/zxing/oned/UPCEANReader;->getStandardUPCEANChecksum(Ljava/lang/CharSequence;)I
    :try_end_0
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 63
    .local v0, "check":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 79
    .end local v0    # "check":I
    :cond_0
    invoke-virtual {p1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10, v13}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 80
    .local v4, "firstDigit":I
    if-eqz v4, :cond_1

    if-eq v4, v12, :cond_1

    .line 81
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Number system must be 0 or 1"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 60
    .end local v4    # "firstDigit":I
    :catch_0
    move-exception v3

    .line 61
    .local v3, "fe":Lcom/google/zxing/FormatException;
    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 67
    .end local v3    # "fe":Lcom/google/zxing/FormatException;
    :pswitch_1
    :try_start_1
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEANReader;->checkStandardUPCEANChecksum(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 68
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Contents do not pass checksum"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catch Lcom/google/zxing/FormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 71
    :catch_1
    move-exception v10

    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Illegal contents"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 84
    .restart local v4    # "firstDigit":I
    :cond_1
    const/4 v10, 0x7

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10, v13}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 85
    .local v1, "checkDigit":I
    sget-object v10, Lcom/google/zxing/oned/UPCEReader;->NUMSYS_AND_CHECK_DIGIT_PATTERNS:[[I

    aget-object v10, v10, v4

    aget v7, v10, v1

    .line 86
    .local v7, "parities":I
    const/16 v10, 0x33

    new-array v9, v10, [Z

    .line 89
    .local v9, "result":[Z
    sget-object v10, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    invoke-static {v9, v11, v10, v12}, Lcom/google/zxing/oned/UPCEWriter;->appendPattern([ZI[IZ)I

    move-result v10

    add-int/lit8 v8, v10, 0x0

    .line 91
    .local v8, "pos":I
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    const/4 v10, 0x6

    if-gt v5, v10, :cond_3

    .line 92
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10, v13}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 93
    .local v2, "digit":I
    rsub-int/lit8 v10, v5, 0x6

    shr-int v10, v7, v10

    and-int/lit8 v10, v10, 0x1

    if-ne v10, v12, :cond_2

    .line 94
    add-int/lit8 v2, v2, 0xa

    .line 96
    :cond_2
    sget-object v10, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    aget-object v10, v10, v2

    invoke-static {v9, v8, v10, v11}, Lcom/google/zxing/oned/UPCEWriter;->appendPattern([ZI[IZ)I

    move-result v10

    add-int/2addr v8, v10

    .line 91
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 99
    .end local v2    # "digit":I
    :cond_3
    sget-object v10, Lcom/google/zxing/oned/UPCEANReader;->END_PATTERN:[I

    invoke-static {v9, v8, v10, v11}, Lcom/google/zxing/oned/UPCEWriter;->appendPattern([ZI[IZ)I

    .line 101
    return-object v9

    .line 54
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
