.class public final Lcom/google/zxing/qrcode/QRCodeWriter;
.super Ljava/lang/Object;
.source "QRCodeWriter.java"

# interfaces
.implements Lcom/google/zxing/Writer;


# static fields
.field private static final QUIET_ZONE_SIZE:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static renderResult(Lcom/google/zxing/qrcode/encoder/QRCode;III)Lcom/google/zxing/common/BitMatrix;
    .locals 19
    .param p0, "code"    # Lcom/google/zxing/qrcode/encoder/QRCode;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "quietZone"    # I

    .prologue
    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/qrcode/encoder/QRCode;->getMatrix()Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    move-result-object v2

    .line 86
    .local v2, "input":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    if-nez v2, :cond_0

    .line 87
    new-instance v17, Ljava/lang/IllegalStateException;

    invoke-direct/range {v17 .. v17}, Ljava/lang/IllegalStateException;-><init>()V

    throw v17

    .line 89
    :cond_0
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v4

    .line 90
    .local v4, "inputWidth":I
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v3

    .line 91
    .local v3, "inputHeight":I
    shl-int/lit8 v17, p3, 0x1

    add-int v15, v4, v17

    .line 92
    .local v15, "qrWidth":I
    shl-int/lit8 v17, p3, 0x1

    add-int v14, v3, v17

    .line 93
    .local v14, "qrHeight":I
    move/from16 v0, p1

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 94
    .local v11, "outputWidth":I
    move/from16 v0, p2

    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 96
    .local v10, "outputHeight":I
    div-int v17, v11, v15

    div-int v18, v10, v14

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 101
    .local v8, "multiple":I
    mul-int v17, v4, v8

    sub-int v17, v11, v17

    div-int/lit8 v7, v17, 0x2

    .line 102
    .local v7, "leftPadding":I
    mul-int v17, v3, v8

    sub-int v17, v10, v17

    div-int/lit8 v16, v17, 0x2

    .line 104
    .local v16, "topPadding":I
    new-instance v9, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v9, v11, v10}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 106
    .local v9, "output":Lcom/google/zxing/common/BitMatrix;
    const/4 v6, 0x0

    .local v6, "inputY":I
    move/from16 v13, v16

    .local v13, "outputY":I
    :goto_0
    if-ge v6, v3, :cond_3

    .line 108
    const/4 v5, 0x0

    .local v5, "inputX":I
    move v12, v7

    .local v12, "outputX":I
    :goto_1
    if-ge v5, v4, :cond_2

    .line 109
    invoke-virtual {v2, v5, v6}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 110
    invoke-virtual {v9, v12, v13, v8, v8}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    .line 108
    :cond_1
    add-int/lit8 v5, v5, 0x1

    add-int/2addr v12, v8

    goto :goto_1

    .line 106
    :cond_2
    add-int/lit8 v6, v6, 0x1

    add-int/2addr v13, v8

    goto :goto_0

    .line 115
    .end local v5    # "inputX":I
    .end local v12    # "outputX":I
    :cond_3
    return-object v9
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;
    .locals 6
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "format"    # Lcom/google/zxing/BarcodeFormat;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 44
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 5
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
    .line 54
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Found empty contents"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 58
    :cond_0
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    if-eq p2, v2, :cond_1

    .line 59
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can only encode QR_CODE, but got "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    :cond_1
    if-ltz p3, :cond_2

    if-gez p4, :cond_3

    .line 63
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Requested dimensions are too small: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x78

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_3
    sget-object v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->L:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 68
    .local v0, "errorCorrectionLevel":Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    const/4 v1, 0x4

    .line 69
    .local v1, "quietZone":I
    if-eqz p5, :cond_5

    .line 70
    sget-object v2, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 71
    sget-object v2, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->valueOf(Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-result-object v0

    .line 73
    :cond_4
    sget-object v2, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 74
    sget-object v2, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 78
    :cond_5
    invoke-static {p1, v0, p5}, Lcom/google/zxing/qrcode/encoder/Encoder;->encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/qrcode/encoder/QRCode;

    move-result-object v2

    .line 79
    invoke-static {v2, p3, p4, v1}, Lcom/google/zxing/qrcode/QRCodeWriter;->renderResult(Lcom/google/zxing/qrcode/encoder/QRCode;III)Lcom/google/zxing/common/BitMatrix;

    move-result-object v2

    return-object v2
.end method
