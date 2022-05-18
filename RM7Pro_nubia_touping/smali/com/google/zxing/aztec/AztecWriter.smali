.class public final Lcom/google/zxing/aztec/AztecWriter;
.super Ljava/lang/Object;
.source "AztecWriter.java"

# interfaces
.implements Lcom/google/zxing/Writer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/nio/charset/Charset;II)Lcom/google/zxing/common/BitMatrix;
    .locals 3
    .param p0, "contents"    # Ljava/lang/String;
    .param p1, "format"    # Lcom/google/zxing/BarcodeFormat;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "charset"    # Ljava/nio/charset/Charset;
    .param p5, "eccPercent"    # I
    .param p6, "layers"    # I

    .prologue
    .line 62
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    if-eq p1, v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can only encode AZTEC, but got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    invoke-virtual {p0, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, p5, p6}, Lcom/google/zxing/aztec/encoder/Encoder;->encode([BII)Lcom/google/zxing/aztec/encoder/AztecCode;

    move-result-object v0

    .line 66
    invoke-static {v0, p2, p3}, Lcom/google/zxing/aztec/AztecWriter;->renderResult(Lcom/google/zxing/aztec/encoder/AztecCode;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method private static renderResult(Lcom/google/zxing/aztec/encoder/AztecCode;II)Lcom/google/zxing/common/BitMatrix;
    .locals 16
    .param p0, "code"    # Lcom/google/zxing/aztec/encoder/AztecCode;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/aztec/encoder/AztecCode;->getMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    .line 71
    .local v1, "input":Lcom/google/zxing/common/BitMatrix;
    if-nez v1, :cond_0

    .line 72
    new-instance v14, Ljava/lang/IllegalStateException;

    invoke-direct {v14}, Ljava/lang/IllegalStateException;-><init>()V

    throw v14

    .line 74
    :cond_0
    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v3

    .line 75
    .local v3, "inputWidth":I
    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v2

    .line 76
    .local v2, "inputHeight":I
    move/from16 v0, p1

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 77
    .local v10, "outputWidth":I
    move/from16 v0, p2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 79
    .local v9, "outputHeight":I
    div-int v14, v10, v3

    div-int v15, v9, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 80
    .local v7, "multiple":I
    mul-int v14, v3, v7

    sub-int v14, v10, v14

    div-int/lit8 v6, v14, 0x2

    .line 81
    .local v6, "leftPadding":I
    mul-int v14, v2, v7

    sub-int v14, v9, v14

    div-int/lit8 v13, v14, 0x2

    .line 83
    .local v13, "topPadding":I
    new-instance v8, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v8, v10, v9}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 85
    .local v8, "output":Lcom/google/zxing/common/BitMatrix;
    const/4 v5, 0x0

    .local v5, "inputY":I
    move v12, v13

    .local v12, "outputY":I
    :goto_0
    if-ge v5, v2, :cond_3

    .line 87
    const/4 v4, 0x0

    .local v4, "inputX":I
    move v11, v6

    .local v11, "outputX":I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 88
    invoke-virtual {v1, v4, v5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 89
    invoke-virtual {v8, v11, v12, v7, v7}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    .line 87
    :cond_1
    add-int/lit8 v4, v4, 0x1

    add-int/2addr v11, v7

    goto :goto_1

    .line 85
    :cond_2
    add-int/lit8 v5, v5, 0x1

    add-int/2addr v12, v7

    goto :goto_0

    .line 93
    .end local v4    # "inputX":I
    .end local v11    # "outputX":I
    :cond_3
    return-object v8
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;
    .locals 6
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "format"    # Lcom/google/zxing/BarcodeFormat;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 37
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/aztec/AztecWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 7
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

    .prologue
    .line 42
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    sget-object v4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 43
    .local v4, "charset":Ljava/nio/charset/Charset;
    const/16 v5, 0x21

    .line 44
    .local v5, "eccPercent":I
    const/4 v6, 0x0

    .line 45
    .local v6, "layers":I
    if-eqz p5, :cond_2

    .line 46
    sget-object v0, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    sget-object v0, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    .line 49
    :cond_0
    sget-object v0, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    sget-object v0, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 52
    :cond_1
    sget-object v0, Lcom/google/zxing/EncodeHintType;->AZTEC_LAYERS:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    sget-object v0, Lcom/google/zxing/EncodeHintType;->AZTEC_LAYERS:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :cond_2
    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    .line 56
    invoke-static/range {v0 .. v6}, Lcom/google/zxing/aztec/AztecWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/nio/charset/Charset;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method
