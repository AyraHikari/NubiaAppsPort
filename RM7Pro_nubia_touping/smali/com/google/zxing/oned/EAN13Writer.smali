.class public final Lcom/google/zxing/oned/EAN13Writer;
.super Lcom/google/zxing/oned/UPCEANWriter;
.source "EAN13Writer.java"


# static fields
.field private static final CODE_WIDTH:I = 0x5f


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
    .line 46
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    if-eq p2, v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can only encode EAN_13, but got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/UPCEANWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)[Z
    .locals 13
    .param p1, "contents"    # Ljava/lang/String;

    .prologue
    const/16 v12, 0xa

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 56
    .local v5, "length":I
    packed-switch v5, :pswitch_data_0

    .line 77
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Requested contents should be 12 or 13 digits long, but got "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 61
    :pswitch_0
    :try_start_0
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEANReader;->getStandardUPCEANChecksum(Ljava/lang/CharSequence;)I
    :try_end_0
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 65
    .local v0, "check":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 82
    .end local v0    # "check":I
    :cond_0
    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9, v12}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    .line 83
    .local v3, "firstDigit":I
    sget-object v9, Lcom/google/zxing/oned/EAN13Reader;->FIRST_DIGIT_ENCODINGS:[I

    aget v6, v9, v3

    .line 84
    .local v6, "parities":I
    const/16 v9, 0x5f

    new-array v8, v9, [Z

    .line 87
    .local v8, "result":[Z
    sget-object v9, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    invoke-static {v8, v10, v9, v11}, Lcom/google/zxing/oned/EAN13Writer;->appendPattern([ZI[IZ)I

    move-result v9

    add-int/lit8 v7, v9, 0x0

    .line 90
    .local v7, "pos":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    const/4 v9, 0x6

    if-gt v4, v9, :cond_2

    .line 91
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9, v12}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 92
    .local v1, "digit":I
    rsub-int/lit8 v9, v4, 0x6

    shr-int v9, v6, v9

    and-int/lit8 v9, v9, 0x1

    if-ne v9, v11, :cond_1

    .line 93
    add-int/lit8 v1, v1, 0xa

    .line 95
    :cond_1
    sget-object v9, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    aget-object v9, v9, v1

    invoke-static {v8, v7, v9, v10}, Lcom/google/zxing/oned/EAN13Writer;->appendPattern([ZI[IZ)I

    move-result v9

    add-int/2addr v7, v9

    .line 90
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 62
    .end local v1    # "digit":I
    .end local v3    # "firstDigit":I
    .end local v4    # "i":I
    .end local v6    # "parities":I
    .end local v7    # "pos":I
    .end local v8    # "result":[Z
    :catch_0
    move-exception v2

    .line 63
    .local v2, "fe":Lcom/google/zxing/FormatException;
    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-direct {v9, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 69
    .end local v2    # "fe":Lcom/google/zxing/FormatException;
    :pswitch_1
    :try_start_1
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEANReader;->checkStandardUPCEANChecksum(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 70
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Contents do not pass checksum"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catch Lcom/google/zxing/FormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 73
    :catch_1
    move-exception v9

    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Illegal contents"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 98
    .restart local v3    # "firstDigit":I
    .restart local v4    # "i":I
    .restart local v6    # "parities":I
    .restart local v7    # "pos":I
    .restart local v8    # "result":[Z
    :cond_2
    sget-object v9, Lcom/google/zxing/oned/UPCEANReader;->MIDDLE_PATTERN:[I

    invoke-static {v8, v7, v9, v10}, Lcom/google/zxing/oned/EAN13Writer;->appendPattern([ZI[IZ)I

    move-result v9

    add-int/2addr v7, v9

    .line 100
    const/4 v4, 0x7

    :goto_1
    const/16 v9, 0xc

    if-gt v4, v9, :cond_3

    .line 101
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9, v12}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 102
    .restart local v1    # "digit":I
    sget-object v9, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    aget-object v9, v9, v1

    invoke-static {v8, v7, v9, v11}, Lcom/google/zxing/oned/EAN13Writer;->appendPattern([ZI[IZ)I

    move-result v9

    add-int/2addr v7, v9

    .line 100
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 104
    .end local v1    # "digit":I
    :cond_3
    sget-object v9, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    invoke-static {v8, v7, v9, v11}, Lcom/google/zxing/oned/EAN13Writer;->appendPattern([ZI[IZ)I

    .line 106
    return-object v8

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
