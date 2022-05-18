.class public final Lcom/google/zxing/oned/EAN8Writer;
.super Lcom/google/zxing/oned/UPCEANWriter;
.source "EAN8Writer.java"


# static fields
.field private static final CODE_WIDTH:I = 0x43


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
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    if-eq p2, v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can only encode EAN_8, but got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/UPCEANWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)[Z
    .locals 11
    .param p1, "contents"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0xa

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 59
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 60
    .local v4, "length":I
    packed-switch v4, :pswitch_data_0

    .line 81
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Requested contents should be 8 digits long, but got "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 65
    :pswitch_0
    :try_start_0
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEANReader;->getStandardUPCEANChecksum(Ljava/lang/CharSequence;)I
    :try_end_0
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 69
    .local v0, "check":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 85
    .end local v0    # "check":I
    :cond_0
    const/16 v7, 0x43

    new-array v6, v7, [Z

    .line 88
    .local v6, "result":[Z
    sget-object v7, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    invoke-static {v6, v8, v7, v9}, Lcom/google/zxing/oned/EAN8Writer;->appendPattern([ZI[IZ)I

    move-result v7

    add-int/lit8 v5, v7, 0x0

    .line 90
    .local v5, "pos":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v7, 0x3

    if-gt v3, v7, :cond_1

    .line 91
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, v10}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 92
    .local v1, "digit":I
    sget-object v7, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    aget-object v7, v7, v1

    invoke-static {v6, v5, v7, v8}, Lcom/google/zxing/oned/EAN8Writer;->appendPattern([ZI[IZ)I

    move-result v7

    add-int/2addr v5, v7

    .line 90
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 66
    .end local v1    # "digit":I
    .end local v3    # "i":I
    .end local v5    # "pos":I
    .end local v6    # "result":[Z
    :catch_0
    move-exception v2

    .line 67
    .local v2, "fe":Lcom/google/zxing/FormatException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 73
    .end local v2    # "fe":Lcom/google/zxing/FormatException;
    :pswitch_1
    :try_start_1
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEANReader;->checkStandardUPCEANChecksum(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 74
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Contents do not pass checksum"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Lcom/google/zxing/FormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 77
    :catch_1
    move-exception v7

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Illegal contents"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 95
    .restart local v3    # "i":I
    .restart local v5    # "pos":I
    .restart local v6    # "result":[Z
    :cond_1
    sget-object v7, Lcom/google/zxing/oned/UPCEANReader;->MIDDLE_PATTERN:[I

    invoke-static {v6, v5, v7, v8}, Lcom/google/zxing/oned/EAN8Writer;->appendPattern([ZI[IZ)I

    move-result v7

    add-int/2addr v5, v7

    .line 97
    const/4 v3, 0x4

    :goto_1
    const/4 v7, 0x7

    if-gt v3, v7, :cond_2

    .line 98
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, v10}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 99
    .restart local v1    # "digit":I
    sget-object v7, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    aget-object v7, v7, v1

    invoke-static {v6, v5, v7, v9}, Lcom/google/zxing/oned/EAN8Writer;->appendPattern([ZI[IZ)I

    move-result v7

    add-int/2addr v5, v7

    .line 97
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 101
    .end local v1    # "digit":I
    :cond_2
    sget-object v7, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    invoke-static {v6, v5, v7, v9}, Lcom/google/zxing/oned/EAN8Writer;->appendPattern([ZI[IZ)I

    .line 103
    return-object v6

    .line 60
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
