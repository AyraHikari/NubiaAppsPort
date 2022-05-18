.class public final Lcom/google/zxing/maxicode/MaxiCodeReader;
.super Ljava/lang/Object;
.source "MaxiCodeReader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# static fields
.field private static final MATRIX_HEIGHT:I = 0x21

.field private static final MATRIX_WIDTH:I = 0x1e

.field private static final NO_POINTS:[Lcom/google/zxing/ResultPoint;


# instance fields
.field private final decoder:Lcom/google/zxing/maxicode/decoder/Decoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    sput-object v0, Lcom/google/zxing/maxicode/MaxiCodeReader;->NO_POINTS:[Lcom/google/zxing/ResultPoint;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/google/zxing/maxicode/decoder/Decoder;

    invoke-direct {v0}, Lcom/google/zxing/maxicode/decoder/Decoder;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/maxicode/MaxiCodeReader;->decoder:Lcom/google/zxing/maxicode/decoder/Decoder;

    return-void
.end method

.method private static extractPureBits(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;
    .locals 14
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x21

    const/16 v12, 0x1e

    .line 101
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getEnclosingRectangle()[I

    move-result-object v1

    .line 102
    .local v1, "enclosingRectangle":[I
    if-nez v1, :cond_0

    .line 103
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v10

    throw v10

    .line 106
    :cond_0
    const/4 v10, 0x0

    aget v5, v1, v10

    .line 107
    .local v5, "left":I
    const/4 v10, 0x1

    aget v6, v1, v10

    .line 108
    .local v6, "top":I
    const/4 v10, 0x2

    aget v7, v1, v10

    .line 109
    .local v7, "width":I
    const/4 v10, 0x3

    aget v2, v1, v10

    .line 112
    .local v2, "height":I
    new-instance v0, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v0, v12, v13}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 113
    .local v0, "bits":Lcom/google/zxing/common/BitMatrix;
    const/4 v9, 0x0

    .local v9, "y":I
    :goto_0
    if-ge v9, v13, :cond_3

    .line 114
    mul-int v10, v9, v2

    div-int/lit8 v11, v2, 0x2

    add-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x21

    add-int v4, v6, v10

    .line 115
    .local v4, "iy":I
    const/4 v8, 0x0

    .local v8, "x":I
    :goto_1
    if-ge v8, v12, :cond_2

    .line 116
    mul-int v10, v8, v7

    div-int/lit8 v11, v7, 0x2

    add-int/2addr v10, v11

    and-int/lit8 v11, v9, 0x1

    mul-int/2addr v11, v7

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x1e

    add-int v3, v5, v10

    .line 117
    .local v3, "ix":I
    invoke-virtual {p0, v3, v4}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 118
    invoke-virtual {v0, v8, v9}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 115
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 113
    .end local v3    # "ix":I
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 122
    .end local v4    # "iy":I
    .end local v8    # "x":I
    :cond_3
    return-object v0
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .locals 1
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/maxicode/MaxiCodeReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 8
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 69
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    if-eqz p2, :cond_1

    sget-object v4, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 70
    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v4

    invoke-static {v4}, Lcom/google/zxing/maxicode/MaxiCodeReader;->extractPureBits(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    .line 71
    .local v0, "bits":Lcom/google/zxing/common/BitMatrix;
    iget-object v4, p0, Lcom/google/zxing/maxicode/MaxiCodeReader;->decoder:Lcom/google/zxing/maxicode/decoder/Decoder;

    invoke-virtual {v4, v0, p2}, Lcom/google/zxing/maxicode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v1

    .line 76
    .local v1, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    new-instance v3, Lcom/google/zxing/Result;

    invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getRawBytes()[B

    move-result-object v5

    sget-object v6, Lcom/google/zxing/maxicode/MaxiCodeReader;->NO_POINTS:[Lcom/google/zxing/ResultPoint;

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->MAXICODE:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 78
    .local v3, "result":Lcom/google/zxing/Result;
    invoke-virtual {v1}, Lcom/google/zxing/common/DecoderResult;->getECLevel()Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "ecLevel":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 80
    sget-object v4, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v3, v4, v2}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 82
    :cond_0
    return-object v3

    .line 73
    .end local v0    # "bits":Lcom/google/zxing/common/BitMatrix;
    .end local v1    # "decoderResult":Lcom/google/zxing/common/DecoderResult;
    .end local v2    # "ecLevel":Ljava/lang/String;
    .end local v3    # "result":Lcom/google/zxing/Result;
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v4

    throw v4
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method
