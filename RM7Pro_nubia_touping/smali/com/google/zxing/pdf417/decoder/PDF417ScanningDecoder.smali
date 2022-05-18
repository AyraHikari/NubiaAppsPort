.class public final Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;
.super Ljava/lang/Object;
.source "PDF417ScanningDecoder.java"


# static fields
.field private static final CODEWORD_SKEW_SIZE:I = 0x2

.field private static final MAX_EC_CODEWORDS:I = 0x200

.field private static final MAX_ERRORS:I = 0x3

.field private static final errorCorrection:Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;

    invoke-direct {v0}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;-><init>()V

    sput-object v0, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->errorCorrection:Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method private static adjustBoundingBox(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .locals 10
    .param p0, "rowIndicatorColumn"    # Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 144
    if-nez p0, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-object v7

    .line 147
    :cond_1
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getRowHeights()[I

    move-result-object v6

    .line 148
    .local v6, "rowHeights":[I
    if-eqz v6, :cond_0

    .line 151
    invoke-static {v6}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getMax([I)I

    move-result v1

    .line 152
    .local v1, "maxRowHeight":I
    const/4 v3, 0x0

    .line 153
    .local v3, "missingStartRows":I
    array-length v8, v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_2

    aget v5, v6, v7

    .line 154
    .local v5, "rowHeight":I
    sub-int v9, v1, v5

    add-int/2addr v3, v9

    .line 155
    if-gtz v5, :cond_2

    .line 153
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 159
    .end local v5    # "rowHeight":I
    :cond_2
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v0

    .line 160
    .local v0, "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    const/4 v4, 0x0

    .local v4, "row":I
    :goto_2
    if-lez v3, :cond_3

    aget-object v7, v0, v4

    if-nez v7, :cond_3

    .line 161
    add-int/lit8 v3, v3, -0x1

    .line 160
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 163
    :cond_3
    const/4 v2, 0x0

    .line 164
    .local v2, "missingEndRows":I
    array-length v7, v6

    add-int/lit8 v4, v7, -0x1

    :goto_3
    if-ltz v4, :cond_4

    .line 165
    aget v7, v6, v4

    sub-int v7, v1, v7

    add-int/2addr v2, v7

    .line 166
    aget v7, v6, v4

    if-gtz v7, :cond_4

    .line 164
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 170
    :cond_4
    array-length v7, v0

    add-int/lit8 v4, v7, -0x1

    :goto_4
    if-lez v2, :cond_5

    aget-object v7, v0, v4

    if-nez v7, :cond_5

    .line 171
    add-int/lit8 v2, v2, -0x1

    .line 170
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 173
    :cond_5
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v7

    .line 174
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft()Z

    move-result v8

    .line 173
    invoke-virtual {v7, v3, v2, v8}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->addMissingRows(IIZ)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v7

    goto :goto_0
.end method

.method private static adjustCodewordCount(Lcom/google/zxing/pdf417/decoder/DetectionResult;[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;)V
    .locals 6
    .param p0, "detectionResult"    # Lcom/google/zxing/pdf417/decoder/DetectionResult;
    .param p1, "barcodeMatrix"    # [[Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 236
    aget-object v3, p1, v5

    const/4 v4, 0x1

    aget-object v0, v3, v4

    .line 237
    .local v0, "barcodeMatrix01":Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v2

    .line 238
    .local v2, "numberOfCodewords":[I
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v3

    .line 239
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeRowCount()I

    move-result v4

    mul-int/2addr v3, v4

    .line 240
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeECLevel()I

    move-result v4

    invoke-static {v4}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getNumberOfECCodeWords(I)I

    move-result v4

    sub-int v1, v3, v4

    .line 241
    .local v1, "calculatedNumberOfCodewords":I
    array-length v3, v2

    if-nez v3, :cond_3

    .line 242
    if-lez v1, :cond_0

    const/16 v3, 0x3a0

    if-le v1, v3, :cond_1

    .line 243
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v3

    throw v3

    .line 245
    :cond_1
    invoke-virtual {v0, v1}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    .line 250
    :cond_2
    :goto_0
    return-void

    .line 246
    :cond_3
    aget v3, v2, v5

    if-eq v3, v1, :cond_2

    .line 248
    invoke-virtual {v0, v1}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    goto :goto_0
.end method

.method private static adjustCodewordStartColumn(Lcom/google/zxing/common/BitMatrix;IIZII)I
    .locals 6
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "minColumn"    # I
    .param p2, "maxColumn"    # I
    .param p3, "leftToRight"    # Z
    .param p4, "codewordStartColumn"    # I
    .param p5, "imageRow"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    .line 501
    move v0, p4

    .line 502
    .local v0, "correctedStartColumn":I
    if-eqz p3, :cond_1

    const/4 v2, -0x1

    .line 504
    .local v2, "increment":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_6

    .line 505
    :goto_2
    if-eqz p3, :cond_2

    if-lt v0, p1, :cond_3

    .line 506
    :cond_0
    invoke-virtual {p0, v0, p5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    if-ne p3, v4, :cond_3

    .line 507
    sub-int v4, p4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v4, v5, :cond_4

    .line 515
    .end local p4    # "codewordStartColumn":I
    :goto_3
    return p4

    .end local v1    # "i":I
    .end local v2    # "increment":I
    .restart local p4    # "codewordStartColumn":I
    :cond_1
    move v2, v3

    .line 502
    goto :goto_0

    .line 505
    .restart local v1    # "i":I
    .restart local v2    # "increment":I
    :cond_2
    if-lt v0, p2, :cond_0

    .line 512
    :cond_3
    neg-int v2, v2

    .line 513
    if-nez p3, :cond_5

    move p3, v3

    .line 504
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 510
    :cond_4
    add-int/2addr v0, v2

    goto :goto_2

    .line 513
    :cond_5
    const/4 p3, 0x0

    goto :goto_4

    :cond_6
    move p4, v0

    .line 515
    goto :goto_3
.end method

.method private static checkCodewordSkew(III)Z
    .locals 1
    .param p0, "codewordSize"    # I
    .param p1, "minCodewordWidth"    # I
    .param p2, "maxCodewordWidth"    # I

    .prologue
    .line 519
    add-int/lit8 v0, p1, -0x2

    if-gt v0, p0, :cond_0

    add-int/lit8 v0, p2, 0x2

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static correctErrors([I[II)I
    .locals 2
    .param p0, "codewords"    # [I
    .param p1, "erasures"    # [I
    .param p2, "numECCodewords"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 550
    if-eqz p1, :cond_0

    array-length v0, p1

    div-int/lit8 v1, p2, 0x2

    add-int/lit8 v1, v1, 0x3

    if-gt v0, v1, :cond_1

    :cond_0
    if-ltz p2, :cond_1

    const/16 v0, 0x200

    if-le p2, v0, :cond_2

    .line 555
    :cond_1
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    .line 557
    :cond_2
    sget-object v0, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->errorCorrection:Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;

    invoke-virtual {v0, p0, p2, p1}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->decode([II[I)I

    move-result v0

    return v0
.end method

.method private static createBarcodeMatrix(Lcom/google/zxing/pdf417/decoder/DetectionResult;)[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    .locals 15
    .param p0, "detectionResult"    # Lcom/google/zxing/pdf417/decoder/DetectionResult;

    .prologue
    const/4 v7, 0x0

    .line 332
    .line 333
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeRowCount()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v8

    add-int/lit8 v8, v8, 0x2

    filled-new-array {v6, v8}, [I

    move-result-object v6

    const-class v8, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-static {v8, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    .line 334
    .local v0, "barcodeMatrix":[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    const/4 v4, 0x0

    .local v4, "row":I
    :goto_0
    array-length v6, v0

    if-ge v4, v6, :cond_1

    .line 335
    const/4 v2, 0x0

    .local v2, "column":I
    :goto_1
    aget-object v6, v0, v4

    array-length v6, v6

    if-ge v2, v6, :cond_0

    .line 336
    aget-object v6, v0, v4

    new-instance v8, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-direct {v8}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;-><init>()V

    aput-object v8, v6, v2

    .line 335
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 334
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 340
    .end local v2    # "column":I
    :cond_1
    const/4 v2, 0x0

    .line 341
    .restart local v2    # "column":I
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumns()[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v9

    array-length v10, v9

    move v8, v7

    :goto_2
    if-ge v8, v10, :cond_4

    aget-object v3, v9, v8

    .line 342
    .local v3, "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    if-eqz v3, :cond_3

    .line 343
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v11

    array-length v12, v11

    move v6, v7

    :goto_3
    if-ge v6, v12, :cond_3

    aget-object v1, v11, v6

    .line 344
    .local v1, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-eqz v1, :cond_2

    .line 345
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v5

    .line 346
    .local v5, "rowNumber":I
    if-ltz v5, :cond_2

    .line 347
    array-length v13, v0

    if-ge v5, v13, :cond_2

    .line 351
    aget-object v13, v0, v5

    aget-object v13, v13, v2

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    .line 343
    .end local v5    # "rowNumber":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 356
    .end local v1    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 341
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto :goto_2

    .line 358
    .end local v3    # "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    :cond_4
    return-object v0
.end method

.method private static createDecoderResult(Lcom/google/zxing/pdf417/decoder/DetectionResult;)Lcom/google/zxing/common/DecoderResult;
    .locals 14
    .param p0, "detectionResult"    # Lcom/google/zxing/pdf417/decoder/DetectionResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 254
    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->createBarcodeMatrix(Lcom/google/zxing/pdf417/decoder/DetectionResult;)[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    move-result-object v3

    .line 255
    .local v3, "barcodeMatrix":[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    invoke-static {p0, v3}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->adjustCodewordCount(Lcom/google/zxing/pdf417/decoder/DetectionResult;[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;)V

    .line 256
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v7, "erasures":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeRowCount()I

    move-result v11

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v12

    mul-int/2addr v11, v12

    new-array v5, v11, [I

    .line 258
    .local v5, "codewords":[I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v1, "ambiguousIndexValuesList":Ljava/util/List;, "Ljava/util/List<[I>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v2, "ambiguousIndexesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    .local v9, "row":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeRowCount()I

    move-result v11

    if-ge v9, v11, :cond_3

    .line 261
    const/4 v6, 0x0

    .local v6, "column":I
    :goto_1
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v11

    if-ge v6, v11, :cond_2

    .line 262
    aget-object v11, v3, v9

    add-int/lit8 v12, v6, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v11}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v10

    .line 263
    .local v10, "values":[I
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v11

    mul-int/2addr v11, v9

    add-int v4, v11, v6

    .line 264
    .local v4, "codewordIndex":I
    array-length v11, v10

    if-nez v11, :cond_0

    .line 265
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 261
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 266
    :cond_0
    array-length v11, v10

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    .line 267
    const/4 v11, 0x0

    aget v11, v10, v11

    aput v11, v5, v4

    goto :goto_2

    .line 269
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 260
    .end local v4    # "codewordIndex":I
    .end local v10    # "values":[I
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 274
    .end local v6    # "column":I
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    new-array v0, v11, [[I

    .line 275
    .local v0, "ambiguousIndexValues":[[I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    array-length v11, v0

    if-ge v8, v11, :cond_4

    .line 276
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [I

    aput-object v11, v0, v8

    .line 275
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 278
    :cond_4
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeECLevel()I

    move-result v11

    .line 279
    invoke-static {v7}, Lcom/google/zxing/pdf417/PDF417Common;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v12

    invoke-static {v2}, Lcom/google/zxing/pdf417/PDF417Common;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v13

    .line 278
    invoke-static {v11, v5, v12, v13, v0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->createDecoderResultFromAmbiguousValues(I[I[I[I[[I)Lcom/google/zxing/common/DecoderResult;

    move-result-object v11

    return-object v11
.end method

.method private static createDecoderResultFromAmbiguousValues(I[I[I[I[[I)Lcom/google/zxing/common/DecoderResult;
    .locals 7
    .param p0, "ecLevel"    # I
    .param p1, "codewords"    # [I
    .param p2, "erasureArray"    # [I
    .param p3, "ambiguousIndexes"    # [I
    .param p4, "ambiguousIndexValues"    # [[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 301
    array-length v4, p3

    new-array v0, v4, [I

    .line 303
    .local v0, "ambiguousIndexCount":[I
    const/16 v2, 0x64

    .local v2, "tries":I
    move v3, v2

    .line 304
    .end local v2    # "tries":I
    .local v3, "tries":I
    :goto_0
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "tries":I
    .restart local v2    # "tries":I
    if-lez v3, :cond_5

    .line 305
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 306
    aget v4, p3, v1

    aget-object v5, p4, v1

    aget v6, v0, v1

    aget v5, v5, v6

    aput v5, p1, v4

    .line 305
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 309
    :cond_0
    :try_start_0
    invoke-static {p1, p0, p2}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->decodeCodewords([II[I)Lcom/google/zxing/common/DecoderResult;
    :try_end_0
    .catch Lcom/google/zxing/ChecksumException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 313
    :catch_0
    move-exception v4

    array-length v4, v0

    if-nez v4, :cond_1

    .line 314
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v4

    throw v4

    .line 316
    :cond_1
    const/4 v1, 0x0

    :goto_2
    array-length v4, v0

    if-ge v1, v4, :cond_4

    .line 317
    aget v4, v0, v1

    aget-object v5, p4, v1

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_2

    .line 318
    aget v4, v0, v1

    add-int/lit8 v4, v4, 0x1

    aput v4, v0, v1

    move v3, v2

    .line 319
    .end local v2    # "tries":I
    .restart local v3    # "tries":I
    goto :goto_0

    .line 321
    .end local v3    # "tries":I
    .restart local v2    # "tries":I
    :cond_2
    const/4 v4, 0x0

    aput v4, v0, v1

    .line 322
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_3

    .line 323
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v4

    throw v4

    .line 316
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move v3, v2

    .end local v2    # "tries":I
    .restart local v3    # "tries":I
    goto :goto_0

    .line 328
    .end local v1    # "i":I
    .end local v3    # "tries":I
    .restart local v2    # "tries":I
    :cond_5
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v4

    throw v4
.end method

.method public static decode(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/common/DecoderResult;
    .locals 21
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "imageTopLeft"    # Lcom/google/zxing/ResultPoint;
    .param p2, "imageBottomLeft"    # Lcom/google/zxing/ResultPoint;
    .param p3, "imageTopRight"    # Lcom/google/zxing/ResultPoint;
    .param p4, "imageBottomRight"    # Lcom/google/zxing/ResultPoint;
    .param p5, "minCodewordWidth"    # I
    .param p6, "maxCodewordWidth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 59
    new-instance v2, Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/google/zxing/pdf417/decoder/BoundingBox;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    .line 60
    .local v2, "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    const/16 v17, 0x0

    .line 61
    .local v17, "leftRowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    const/16 v20, 0x0

    .line 62
    .local v20, "rightRowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    const/4 v14, 0x0

    .line 63
    .local v14, "detectionResult":Lcom/google/zxing/pdf417/decoder/DetectionResult;
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    const/4 v3, 0x2

    move/from16 v0, v16

    if-ge v0, v3, :cond_5

    .line 64
    if-eqz p1, :cond_0

    .line 65
    const/4 v6, 0x1

    move-object/from16 v3, p0

    move-object v4, v2

    move-object/from16 v5, p1

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v3 .. v8}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getRowIndicatorColumn(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/ResultPoint;ZII)Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    move-result-object v17

    .line 68
    :cond_0
    if-eqz p3, :cond_1

    .line 69
    const/4 v6, 0x0

    move-object/from16 v3, p0

    move-object v4, v2

    move-object/from16 v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v3 .. v8}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getRowIndicatorColumn(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/ResultPoint;ZII)Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    move-result-object v20

    .line 72
    :cond_1
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->merge(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/DetectionResult;

    move-result-object v14

    .line 73
    if-nez v14, :cond_2

    .line 74
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v3

    throw v3

    .line 76
    :cond_2
    if-nez v16, :cond_4

    invoke-virtual {v14}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 77
    invoke-virtual {v14}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v4

    if-lt v3, v4, :cond_3

    invoke-virtual {v14}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v3

    .line 78
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v4

    if-le v3, v4, :cond_4

    .line 79
    :cond_3
    invoke-virtual {v14}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v2

    .line 63
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 81
    :cond_4
    invoke-virtual {v14, v2}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->setBoundingBox(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V

    .line 85
    :cond_5
    invoke-virtual {v14}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v3

    add-int/lit8 v18, v3, 0x1

    .line 86
    .local v18, "maxBarcodeColumn":I
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v14, v3, v0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->setDetectionResultColumn(ILcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    .line 87
    move/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->setDetectionResultColumn(ILcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    .line 89
    if-eqz v17, :cond_a

    const/4 v6, 0x1

    .line 90
    .local v6, "leftToRight":Z
    :goto_1
    const/4 v12, 0x1

    .local v12, "barcodeColumnCount":I
    :goto_2
    move/from16 v0, v18

    if-gt v12, v0, :cond_f

    .line 91
    if-eqz v6, :cond_b

    move v11, v12

    .line 92
    .local v11, "barcodeColumn":I
    :goto_3
    invoke-virtual {v14, v11}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v3

    if-nez v3, :cond_e

    .line 97
    if-eqz v11, :cond_6

    move/from16 v0, v18

    if-ne v11, v0, :cond_d

    .line 98
    :cond_6
    new-instance v15, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    if-nez v11, :cond_c

    const/4 v3, 0x1

    :goto_4
    invoke-direct {v15, v2, v3}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;Z)V

    .line 102
    .local v15, "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    :goto_5
    invoke-virtual {v14, v11, v15}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->setDetectionResultColumn(ILcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    .line 104
    const/16 v19, -0x1

    .line 106
    .local v19, "previousStartColumn":I
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v8

    .local v8, "imageRow":I
    :goto_6
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v3

    if-gt v8, v3, :cond_e

    .line 107
    invoke-static {v14, v11, v8, v6}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getStartColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;IIZ)I

    move-result v7

    .line 108
    .local v7, "startColumn":I
    if-ltz v7, :cond_7

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxX()I

    move-result v3

    if-le v7, v3, :cond_8

    .line 109
    :cond_7
    const/4 v3, -0x1

    move/from16 v0, v19

    if-eq v0, v3, :cond_9

    .line 112
    move/from16 v7, v19

    .line 114
    :cond_8
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinX()I

    move-result v4

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxX()I

    move-result v5

    move-object/from16 v3, p0

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v3 .. v10}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->detectCodeword(Lcom/google/zxing/common/BitMatrix;IIZIIII)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v13

    .line 116
    .local v13, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-eqz v13, :cond_9

    .line 117
    invoke-virtual {v15, v8, v13}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->setCodeword(ILcom/google/zxing/pdf417/decoder/Codeword;)V

    .line 118
    move/from16 v19, v7

    .line 119
    invoke-virtual {v13}, Lcom/google/zxing/pdf417/decoder/Codeword;->getWidth()I

    move-result v3

    move/from16 v0, p5

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result p5

    .line 120
    invoke-virtual {v13}, Lcom/google/zxing/pdf417/decoder/Codeword;->getWidth()I

    move-result v3

    move/from16 v0, p6

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result p6

    .line 106
    .end local v13    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 89
    .end local v6    # "leftToRight":Z
    .end local v7    # "startColumn":I
    .end local v8    # "imageRow":I
    .end local v11    # "barcodeColumn":I
    .end local v12    # "barcodeColumnCount":I
    .end local v15    # "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    .end local v19    # "previousStartColumn":I
    :cond_a
    const/4 v6, 0x0

    goto :goto_1

    .line 91
    .restart local v6    # "leftToRight":Z
    .restart local v12    # "barcodeColumnCount":I
    :cond_b
    sub-int v11, v18, v12

    goto :goto_3

    .line 98
    .restart local v11    # "barcodeColumn":I
    :cond_c
    const/4 v3, 0x0

    goto :goto_4

    .line 100
    :cond_d
    new-instance v15, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    invoke-direct {v15, v2}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V

    .restart local v15    # "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    goto :goto_5

    .line 90
    .end local v15    # "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    :cond_e
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 124
    .end local v11    # "barcodeColumn":I
    :cond_f
    invoke-static {v14}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->createDecoderResult(Lcom/google/zxing/pdf417/decoder/DetectionResult;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v3

    return-object v3
.end method

.method private static decodeCodewords([II[I)Lcom/google/zxing/common/DecoderResult;
    .locals 5
    .param p0, "codewords"    # [I
    .param p1, "ecLevel"    # I
    .param p2, "erasures"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 525
    array-length v3, p0

    if-nez v3, :cond_0

    .line 526
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 529
    :cond_0
    const/4 v3, 0x1

    add-int/lit8 v4, p1, 0x1

    shl-int v2, v3, v4

    .line 530
    .local v2, "numECCodewords":I
    invoke-static {p0, p2, v2}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->correctErrors([I[II)I

    move-result v0

    .line 531
    .local v0, "correctedErrorsCount":I
    invoke-static {p0, v2}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->verifyCodewordCount([II)V

    .line 534
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decode([ILjava/lang/String;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v1

    .line 535
    .local v1, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/zxing/common/DecoderResult;->setErrorsCorrected(Ljava/lang/Integer;)V

    .line 536
    array-length v3, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/zxing/common/DecoderResult;->setErasures(Ljava/lang/Integer;)V

    .line 537
    return-object v1
.end method

.method private static detectCodeword(Lcom/google/zxing/common/BitMatrix;IIZIIII)Lcom/google/zxing/pdf417/decoder/Codeword;
    .locals 11
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "minColumn"    # I
    .param p2, "maxColumn"    # I
    .param p3, "leftToRight"    # Z
    .param p4, "startColumn"    # I
    .param p5, "imageRow"    # I
    .param p6, "minCodewordWidth"    # I
    .param p7, "maxCodewordWidth"    # I

    .prologue
    .line 412
    invoke-static/range {p0 .. p5}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->adjustCodewordStartColumn(Lcom/google/zxing/common/BitMatrix;IIZII)I

    move-result p4

    .line 417
    invoke-static/range {p0 .. p5}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getModuleBitCount(Lcom/google/zxing/common/BitMatrix;IIZII)[I

    move-result-object v7

    .line 418
    .local v7, "moduleBitCount":[I
    if-nez v7, :cond_0

    .line 419
    const/4 v9, 0x0

    .line 459
    :goto_0
    return-object v9

    .line 422
    :cond_0
    invoke-static {v7}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v3

    .line 423
    .local v3, "codewordBitCount":I
    if-eqz p3, :cond_1

    .line 424
    add-int v5, p4, v3

    .line 448
    .local v5, "endColumn":I
    :goto_1
    move/from16 v0, p6

    move/from16 v1, p7

    invoke-static {v3, v0, v1}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->checkCodewordSkew(III)Z

    move-result v9

    if-nez v9, :cond_3

    .line 451
    const/4 v9, 0x0

    goto :goto_0

    .line 426
    .end local v5    # "endColumn":I
    :cond_1
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    array-length v9, v7

    div-int/lit8 v9, v9, 0x2

    if-ge v6, v9, :cond_2

    .line 427
    aget v8, v7, v6

    .line 428
    .local v8, "tmpCount":I
    array-length v9, v7

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v6

    aget v9, v7, v9

    aput v9, v7, v6

    .line 429
    array-length v9, v7

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v6

    aput v8, v7, v9

    .line 426
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 431
    .end local v8    # "tmpCount":I
    :cond_2
    move v5, p4

    .line 432
    .restart local v5    # "endColumn":I
    sub-int/2addr p4, v3

    goto :goto_1

    .line 454
    .end local v6    # "i":I
    :cond_3
    invoke-static {v7}, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->getDecodedValue([I)I

    move-result v4

    .line 455
    .local v4, "decodedValue":I
    invoke-static {v4}, Lcom/google/zxing/pdf417/PDF417Common;->getCodeword(I)I

    move-result v2

    .line 456
    .local v2, "codeword":I
    const/4 v9, -0x1

    if-ne v2, v9, :cond_4

    .line 457
    const/4 v9, 0x0

    goto :goto_0

    .line 459
    :cond_4
    new-instance v9, Lcom/google/zxing/pdf417/decoder/Codeword;

    invoke-static {v4}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getCodewordBucketNumber(I)I

    move-result v10

    invoke-direct {v9, p4, v5, v10, v2}, Lcom/google/zxing/pdf417/decoder/Codeword;-><init>(IIII)V

    goto :goto_0
.end method

.method private static getBarcodeMetadata(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    .locals 5
    .param p0, "leftRowIndicatorColumn"    # Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .param p1, "rightRowIndicatorColumn"    # Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    .prologue
    const/4 v2, 0x0

    .line 188
    if-eqz p0, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v0

    .local v0, "leftBarcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    if-nez v0, :cond_3

    .line 190
    .end local v0    # "leftBarcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    :cond_0
    if-nez p1, :cond_2

    move-object v0, v2

    .line 203
    :cond_1
    :goto_0
    return-object v0

    .line 190
    :cond_2
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v0

    goto :goto_0

    .line 193
    .restart local v0    # "leftBarcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    :cond_3
    if-eqz p1, :cond_1

    .line 194
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v1

    .local v1, "rightBarcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    if-eqz v1, :cond_1

    .line 198
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getColumnCount()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getColumnCount()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 199
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getErrorCorrectionLevel()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getErrorCorrectionLevel()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 200
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v4

    if-eq v3, v4, :cond_1

    move-object v0, v2

    .line 201
    goto :goto_0
.end method

.method private static getBitCountForCodeword(I)[I
    .locals 4
    .param p0, "codeword"    # I

    .prologue
    .line 587
    const/16 v3, 0x8

    new-array v2, v3, [I

    .line 588
    .local v2, "result":[I
    const/4 v1, 0x0

    .line 589
    .local v1, "previousValue":I
    const/4 v0, 0x7

    .line 591
    .local v0, "i":I
    :goto_0
    and-int/lit8 v3, p0, 0x1

    if-eq v3, v1, :cond_0

    .line 592
    and-int/lit8 v1, p0, 0x1

    .line 593
    add-int/lit8 v0, v0, -0x1

    .line 594
    if-ltz v0, :cond_1

    .line 598
    :cond_0
    aget v3, v2, v0

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v0

    .line 599
    shr-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 601
    :cond_1
    return-object v2
.end method

.method private static getCodewordBucketNumber(I)I
    .locals 1
    .param p0, "codeword"    # I

    .prologue
    .line 605
    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getBitCountForCodeword(I)[I

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getCodewordBucketNumber([I)I

    move-result v0

    return v0
.end method

.method private static getCodewordBucketNumber([I)I
    .locals 2
    .param p0, "moduleBitCount"    # [I

    .prologue
    .line 609
    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    aget v1, p0, v1

    add-int/2addr v0, v1

    const/4 v1, 0x6

    aget v1, p0, v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x9

    rem-int/lit8 v0, v0, 0x9

    return v0
.end method

.method private static getMax([I)I
    .locals 4
    .param p0, "values"    # [I

    .prologue
    .line 178
    const/4 v0, -0x1

    .line 179
    .local v0, "maxValue":I
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, p0, v2

    .line 180
    .local v1, "value":I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 179
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 182
    .end local v1    # "value":I
    :cond_0
    return v0
.end method

.method private static getModuleBitCount(Lcom/google/zxing/common/BitMatrix;IIZII)[I
    .locals 8
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "minColumn"    # I
    .param p2, "maxColumn"    # I
    .param p3, "leftToRight"    # Z
    .param p4, "startColumn"    # I
    .param p5, "imageRow"    # I

    .prologue
    const/4 v5, 0x1

    const/16 v7, 0x8

    .line 468
    move v0, p4

    .line 469
    .local v0, "imageColumn":I
    new-array v2, v7, [I

    .line 470
    .local v2, "moduleBitCount":[I
    const/4 v3, 0x0

    .line 471
    .local v3, "moduleNumber":I
    if-eqz p3, :cond_1

    move v1, v5

    .line 472
    .local v1, "increment":I
    :goto_0
    move v4, p3

    .line 473
    .local v4, "previousPixelValue":Z
    :goto_1
    if-eqz p3, :cond_2

    if-ge v0, p2, :cond_3

    :cond_0
    if-ge v3, v7, :cond_3

    .line 475
    invoke-virtual {p0, v0, p5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-ne v6, v4, :cond_5

    .line 476
    aget v6, v2, v3

    add-int/lit8 v6, v6, 0x1

    aput v6, v2, v3

    .line 477
    add-int/2addr v0, v1

    goto :goto_1

    .line 471
    .end local v1    # "increment":I
    .end local v4    # "previousPixelValue":Z
    :cond_1
    const/4 v1, -0x1

    goto :goto_0

    .line 473
    .restart local v1    # "increment":I
    .restart local v4    # "previousPixelValue":Z
    :cond_2
    if-ge v0, p1, :cond_0

    .line 483
    :cond_3
    if-eq v3, v7, :cond_4

    if-eqz p3, :cond_7

    .end local p2    # "maxColumn":I
    :goto_2
    if-ne v0, p2, :cond_8

    const/4 v5, 0x7

    if-ne v3, v5, :cond_8

    .line 488
    .end local v2    # "moduleBitCount":[I
    :cond_4
    :goto_3
    return-object v2

    .line 479
    .restart local v2    # "moduleBitCount":[I
    .restart local p2    # "maxColumn":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 480
    if-nez v4, :cond_6

    move v4, v5

    :goto_4
    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    goto :goto_4

    :cond_7
    move p2, p1

    .line 483
    goto :goto_2

    .line 488
    .end local p2    # "maxColumn":I
    :cond_8
    const/4 v2, 0x0

    goto :goto_3
.end method

.method private static getNumberOfECCodeWords(I)I
    .locals 1
    .param p0, "barcodeECLevel"    # I

    .prologue
    .line 492
    const/4 v0, 0x2

    shl-int/2addr v0, p0

    return v0
.end method

.method private static getRowIndicatorColumn(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/ResultPoint;ZII)Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .locals 12
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "boundingBox"    # Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .param p2, "startPoint"    # Lcom/google/zxing/ResultPoint;
    .param p3, "leftToRight"    # Z
    .param p4, "minCodewordWidth"    # I
    .param p5, "maxCodewordWidth"    # I

    .prologue
    .line 212
    new-instance v11, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    invoke-direct {v11, p1, p3}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;Z)V

    .line 214
    .local v11, "rowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    const/4 v0, 0x2

    if-ge v9, v0, :cond_4

    .line 215
    if-nez v9, :cond_1

    const/4 v10, 0x1

    .line 216
    .local v10, "increment":I
    :goto_1
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    float-to-int v4, v0

    .line 217
    .local v4, "startColumn":I
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    float-to-int v5, v0

    .local v5, "imageRow":I
    :goto_2
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v0

    if-gt v5, v0, :cond_3

    .line 218
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v0

    if-lt v5, v0, :cond_3

    .line 219
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    move-object v0, p0

    move v3, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-static/range {v0 .. v7}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->detectCodeword(Lcom/google/zxing/common/BitMatrix;IIZIIII)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v8

    .line 221
    .local v8, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-eqz v8, :cond_0

    .line 222
    invoke-virtual {v11, v5, v8}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->setCodeword(ILcom/google/zxing/pdf417/decoder/Codeword;)V

    .line 223
    if-eqz p3, :cond_2

    .line 224
    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v4

    .line 218
    :cond_0
    :goto_3
    add-int/2addr v5, v10

    goto :goto_2

    .line 215
    .end local v4    # "startColumn":I
    .end local v5    # "imageRow":I
    .end local v8    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v10    # "increment":I
    :cond_1
    const/4 v10, -0x1

    goto :goto_1

    .line 226
    .restart local v4    # "startColumn":I
    .restart local v5    # "imageRow":I
    .restart local v8    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .restart local v10    # "increment":I
    :cond_2
    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v4

    goto :goto_3

    .line 214
    .end local v8    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 231
    .end local v4    # "startColumn":I
    .end local v5    # "imageRow":I
    .end local v10    # "increment":I
    :cond_4
    return-object v11
.end method

.method private static getStartColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;IIZ)I
    .locals 8
    .param p0, "detectionResult"    # Lcom/google/zxing/pdf417/decoder/DetectionResult;
    .param p1, "barcodeColumn"    # I
    .param p2, "imageRow"    # I
    .param p3, "leftToRight"    # Z

    .prologue
    .line 369
    if-eqz p3, :cond_1

    const/4 v1, 0x1

    .line 370
    .local v1, "offset":I
    :goto_0
    const/4 v0, 0x0

    .line 371
    .local v0, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    sub-int v4, p1, v1

    invoke-static {p0, v4}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->isValidBarcodeColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 372
    sub-int v4, p1, v1

    invoke-virtual {p0, v4}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodeword(I)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v0

    .line 374
    :cond_0
    if-eqz v0, :cond_3

    .line 375
    if-eqz p3, :cond_2

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v4

    .line 401
    :goto_1
    return v4

    .line 369
    .end local v0    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v1    # "offset":I
    :cond_1
    const/4 v1, -0x1

    goto :goto_0

    .line 375
    .restart local v0    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .restart local v1    # "offset":I
    :cond_2
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v4

    goto :goto_1

    .line 377
    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewordNearby(I)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v0

    .line 378
    if-eqz v0, :cond_5

    .line 379
    if-eqz p3, :cond_4

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v4

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v4

    goto :goto_1

    .line 381
    :cond_5
    sub-int v4, p1, v1

    invoke-static {p0, v4}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->isValidBarcodeColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 382
    sub-int v4, p1, v1

    invoke-virtual {p0, v4}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewordNearby(I)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v0

    .line 384
    :cond_6
    if-eqz v0, :cond_8

    .line 385
    if-eqz p3, :cond_7

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v4

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v4

    goto :goto_1

    .line 387
    :cond_8
    const/4 v3, 0x0

    .line 389
    .local v3, "skippedColumns":I
    :goto_2
    sub-int v4, p1, v1

    invoke-static {p0, v4}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->isValidBarcodeColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 390
    sub-int/2addr p1, v1

    .line 391
    invoke-virtual {p0, p1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v6, :cond_b

    aget-object v2, v5, v4

    .line 392
    .local v2, "previousRowCodeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-eqz v2, :cond_a

    .line 393
    if-eqz p3, :cond_9

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v4

    :goto_4
    mul-int v5, v1, v3

    .line 396
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v6

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v7

    sub-int/2addr v6, v7

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 393
    goto :goto_1

    :cond_9
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v4

    goto :goto_4

    .line 391
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 399
    .end local v2    # "previousRowCodeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 401
    :cond_c
    if-eqz p3, :cond_d

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinX()I

    move-result v4

    goto/16 :goto_1

    :cond_d
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxX()I

    move-result v4

    goto/16 :goto_1
.end method

.method private static isValidBarcodeColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;I)Z
    .locals 1
    .param p0, "detectionResult"    # Lcom/google/zxing/pdf417/decoder/DetectionResult;
    .param p1, "barcodeColumn"    # I

    .prologue
    .line 362
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static merge(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/DetectionResult;
    .locals 4
    .param p0, "leftRowIndicatorColumn"    # Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .param p1, "rightRowIndicatorColumn"    # Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 130
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-object v2

    .line 133
    :cond_1
    invoke-static {p0, p1}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getBarcodeMetadata(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v0

    .line 134
    .local v0, "barcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    if-eqz v0, :cond_0

    .line 137
    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->adjustBoundingBox(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v2

    .line 138
    invoke-static {p1}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->adjustBoundingBox(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v3

    .line 137
    invoke-static {v2, v3}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->merge(Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/pdf417/decoder/BoundingBox;)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v1

    .line 139
    .local v1, "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    new-instance v2, Lcom/google/zxing/pdf417/decoder/DetectionResult;

    invoke-direct {v2, v0, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;-><init>(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;Lcom/google/zxing/pdf417/decoder/BoundingBox;)V

    goto :goto_0
.end method

.method public static toString([[Lcom/google/zxing/pdf417/decoder/BarcodeValue;)Ljava/lang/String;
    .locals 11
    .param p0, "barcodeMatrix"    # [[Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    .prologue
    const/4 v5, 0x0

    .line 613
    new-instance v2, Ljava/util/Formatter;

    invoke-direct {v2}, Ljava/util/Formatter;-><init>()V

    .line 614
    .local v2, "formatter":Ljava/util/Formatter;
    const/4 v3, 0x0

    .local v3, "row":I
    :goto_0
    :try_start_0
    array-length v4, p0

    if-ge v3, v4, :cond_2

    .line 615
    const-string v4, "Row %2d: "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v4, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 616
    const/4 v1, 0x0

    .local v1, "column":I
    :goto_1
    aget-object v4, p0, v3

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 617
    aget-object v4, p0, v3

    aget-object v0, v4, v1

    .line 618
    .local v0, "barcodeValue":Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_0

    .line 619
    const-string v4, "        "

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 616
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 621
    :cond_0
    const-string v4, "%4d(%2d)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v8

    const/4 v9, 0x0

    aget v8, v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 622
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v8

    const/4 v9, 0x0

    aget v8, v8, v9

    invoke-virtual {v0, v8}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getConfidence(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 621
    invoke-virtual {v2, v4, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_2

    .line 613
    .end local v0    # "barcodeValue":Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    .end local v1    # "column":I
    :catch_0
    move-exception v4

    :try_start_1
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 628
    :catchall_0
    move-exception v5

    move-object v10, v5

    move-object v5, v4

    move-object v4, v10

    :goto_3
    if-eqz v5, :cond_3

    :try_start_2
    invoke-virtual {v2}, Ljava/util/Formatter;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_4
    throw v4

    .line 625
    .restart local v1    # "column":I
    :cond_1
    :try_start_3
    const-string v4, "%n"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 614
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 627
    .end local v1    # "column":I
    :cond_2
    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v4

    .line 628
    invoke-virtual {v2}, Ljava/util/Formatter;->close()V

    .line 627
    return-object v4

    .line 628
    :catch_1
    move-exception v6

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_3
    invoke-virtual {v2}, Ljava/util/Formatter;->close()V

    goto :goto_4

    :catchall_1
    move-exception v4

    goto :goto_3
.end method

.method private static verifyCodewordCount([II)V
    .locals 4
    .param p0, "codewords"    # [I
    .param p1, "numECCodewords"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 564
    array-length v1, p0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 567
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 572
    :cond_0
    aget v0, p0, v3

    .line 573
    .local v0, "numberOfCodewords":I
    array-length v1, p0

    if-le v0, v1, :cond_1

    .line 574
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 576
    :cond_1
    if-nez v0, :cond_2

    .line 578
    array-length v1, p0

    if-ge p1, v1, :cond_3

    .line 579
    array-length v1, p0

    sub-int/2addr v1, p1

    aput v1, p0, v3

    .line 584
    :cond_2
    return-void

    .line 581
    :cond_3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1
.end method
