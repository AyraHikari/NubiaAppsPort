.class Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
.super Ljava/lang/Object;
.source "DetectionResultColumn.java"


# static fields
.field private static final MAX_NEARBY_DISTANCE:I = 0x5


# instance fields
.field private final boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;

.field private final codewords:[Lcom/google/zxing/pdf417/decoder/Codeword;


# direct methods
.method constructor <init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V
    .locals 2
    .param p1, "boundingBox"    # Lcom/google/zxing/pdf417/decoder/BoundingBox;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/google/zxing/pdf417/decoder/BoundingBox;

    invoke-direct {v0, p1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V

    iput-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;

    .line 33
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lcom/google/zxing/pdf417/decoder/Codeword;

    iput-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->codewords:[Lcom/google/zxing/pdf417/decoder/Codeword;

    .line 34
    return-void
.end method


# virtual methods
.method final getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;

    return-object v0
.end method

.method final getCodeword(I)Lcom/google/zxing/pdf417/decoder/Codeword;
    .locals 2
    .param p1, "imageRow"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->codewords:[Lcom/google/zxing/pdf417/decoder/Codeword;

    invoke-virtual {p0, p1}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->imageRowToCodewordIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method final getCodewordNearby(I)Lcom/google/zxing/pdf417/decoder/Codeword;
    .locals 4
    .param p1, "imageRow"    # I

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodeword(I)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v0

    .line 38
    .local v0, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-eqz v0, :cond_0

    move-object v3, v0

    .line 57
    :goto_0
    return-object v3

    .line 41
    :cond_0
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    const/4 v3, 0x5

    if-ge v1, v3, :cond_3

    .line 42
    invoke-virtual {p0, p1}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->imageRowToCodewordIndex(I)I

    move-result v3

    sub-int v2, v3, v1

    .line 43
    .local v2, "nearImageRow":I
    if-ltz v2, :cond_1

    .line 44
    iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->codewords:[Lcom/google/zxing/pdf417/decoder/Codeword;

    aget-object v0, v3, v2

    .line 45
    if-eqz v0, :cond_1

    move-object v3, v0

    .line 46
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->imageRowToCodewordIndex(I)I

    move-result v3

    add-int v2, v3, v1

    .line 50
    iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->codewords:[Lcom/google/zxing/pdf417/decoder/Codeword;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 51
    iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->codewords:[Lcom/google/zxing/pdf417/decoder/Codeword;

    aget-object v0, v3, v2

    .line 52
    if-eqz v0, :cond_2

    move-object v3, v0

    .line 53
    goto :goto_0

    .line 41
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 57
    .end local v2    # "nearImageRow":I
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method final getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->codewords:[Lcom/google/zxing/pdf417/decoder/Codeword;

    return-object v0
.end method

.method final imageRowToCodewordIndex(I)I
    .locals 1
    .param p1, "imageRow"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method final setCodeword(ILcom/google/zxing/pdf417/decoder/Codeword;)V
    .locals 2
    .param p1, "imageRow"    # I
    .param p2, "codeword"    # Lcom/google/zxing/pdf417/decoder/Codeword;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->codewords:[Lcom/google/zxing/pdf417/decoder/Codeword;

    invoke-virtual {p0, p1}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->imageRowToCodewordIndex(I)I

    move-result v1

    aput-object p2, v0, v1

    .line 66
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v4, 0x0

    .line 82
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1}, Ljava/util/Formatter;-><init>()V

    .local v1, "formatter":Ljava/util/Formatter;
    const/4 v5, 0x0

    .line 83
    const/4 v2, 0x0

    .line 84
    .local v2, "row":I
    :try_start_0
    iget-object v6, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->codewords:[Lcom/google/zxing/pdf417/decoder/Codeword;

    array-length v7, v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v3, v2

    .end local v2    # "row":I
    .local v3, "row":I
    :goto_0
    if-ge v4, v7, :cond_1

    :try_start_1
    aget-object v0, v6, v4

    .line 85
    .local v0, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-nez v0, :cond_0

    .line 86
    const-string v8, "%3d:    |   %n"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v10, 0x0

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "row":I
    .restart local v2    # "row":I
    :try_start_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v1, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 84
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2    # "row":I
    .restart local v3    # "row":I
    goto :goto_0

    .line 89
    :cond_0
    :try_start_3
    const-string v8, "%3d: %3d|%3d%n"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v10, 0x0

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "row":I
    .restart local v2    # "row":I
    :try_start_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->getValue()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v1, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 82
    .end local v0    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :catch_0
    move-exception v4

    :goto_2
    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 92
    :catchall_0
    move-exception v5

    move-object v12, v5

    move-object v5, v4

    move-object v4, v12

    .end local v2    # "row":I
    :goto_3
    if-eqz v5, :cond_2

    :try_start_6
    invoke-virtual {v1}, Ljava/util/Formatter;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    :goto_4
    throw v4

    .line 91
    .restart local v3    # "row":I
    :cond_1
    :try_start_7
    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v4

    .line 92
    invoke-virtual {v1}, Ljava/util/Formatter;->close()V

    .line 91
    return-object v4

    .line 92
    .end local v3    # "row":I
    :catch_1
    move-exception v6

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_2
    invoke-virtual {v1}, Ljava/util/Formatter;->close()V

    goto :goto_4

    :catchall_1
    move-exception v4

    goto :goto_3

    .line 82
    .restart local v3    # "row":I
    :catch_2
    move-exception v4

    move v2, v3

    .end local v3    # "row":I
    .restart local v2    # "row":I
    goto :goto_2
.end method
