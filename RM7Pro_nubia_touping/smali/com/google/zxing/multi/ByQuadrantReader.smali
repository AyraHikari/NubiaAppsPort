.class public final Lcom/google/zxing/multi/ByQuadrantReader;
.super Ljava/lang/Object;
.source "ByQuadrantReader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# instance fields
.field private final delegate:Lcom/google/zxing/Reader;


# direct methods
.method public constructor <init>(Lcom/google/zxing/Reader;)V
    .locals 0
    .param p1, "delegate"    # Lcom/google/zxing/Reader;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/zxing/multi/ByQuadrantReader;->delegate:Lcom/google/zxing/Reader;

    .line 45
    return-void
.end method

.method private static makeAbsolute([Lcom/google/zxing/ResultPoint;II)V
    .locals 6
    .param p0, "points"    # [Lcom/google/zxing/ResultPoint;
    .param p1, "leftOffset"    # I
    .param p2, "topOffset"    # I

    .prologue
    .line 107
    if-eqz p0, :cond_0

    .line 108
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 109
    aget-object v1, p0, v0

    .line 110
    .local v1, "relative":Lcom/google/zxing/ResultPoint;
    new-instance v2, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    int-to-float v4, p1

    add-float/2addr v3, v4

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    int-to-float v5, p2

    add-float/2addr v4, v5

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v2, p0, v0

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    .end local v0    # "i":I
    .end local v1    # "relative":Lcom/google/zxing/ResultPoint;
    :cond_0
    return-void
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
    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/multi/ByQuadrantReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 11
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
    .line 57
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->getWidth()I

    move-result v7

    .line 58
    .local v7, "width":I
    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->getHeight()I

    move-result v3

    .line 59
    .local v3, "height":I
    div-int/lit8 v2, v7, 0x2

    .line 60
    .local v2, "halfWidth":I
    div-int/lit8 v1, v3, 0x2

    .line 64
    .local v1, "halfHeight":I
    :try_start_0
    iget-object v8, p0, Lcom/google/zxing/multi/ByQuadrantReader;->delegate:Lcom/google/zxing/Reader;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10, v2, v1}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v9

    invoke-interface {v8, v9, p2}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 98
    :goto_0
    return-object v6

    :catch_0
    move-exception v8

    .line 70
    :try_start_1
    iget-object v8, p0, Lcom/google/zxing/multi/ByQuadrantReader;->delegate:Lcom/google/zxing/Reader;

    const/4 v9, 0x0

    invoke-virtual {p1, v2, v9, v2, v1}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v9

    invoke-interface {v8, v9, p2}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v6

    .line 71
    .local v6, "result":Lcom/google/zxing/Result;
    invoke-virtual {v6}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v2, v9}, Lcom/google/zxing/multi/ByQuadrantReader;->makeAbsolute([Lcom/google/zxing/ResultPoint;II)V
    :try_end_1
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .end local v6    # "result":Lcom/google/zxing/Result;
    :catch_1
    move-exception v8

    .line 78
    :try_start_2
    iget-object v8, p0, Lcom/google/zxing/multi/ByQuadrantReader;->delegate:Lcom/google/zxing/Reader;

    const/4 v9, 0x0

    invoke-virtual {p1, v9, v1, v2, v1}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v9

    invoke-interface {v8, v9, p2}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v6

    .line 79
    .restart local v6    # "result":Lcom/google/zxing/Result;
    invoke-virtual {v6}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9, v1}, Lcom/google/zxing/multi/ByQuadrantReader;->makeAbsolute([Lcom/google/zxing/ResultPoint;II)V
    :try_end_2
    .catch Lcom/google/zxing/NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .end local v6    # "result":Lcom/google/zxing/Result;
    :catch_2
    move-exception v8

    .line 86
    :try_start_3
    iget-object v8, p0, Lcom/google/zxing/multi/ByQuadrantReader;->delegate:Lcom/google/zxing/Reader;

    invoke-virtual {p1, v2, v1, v2, v1}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v9

    invoke-interface {v8, v9, p2}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v6

    .line 87
    .restart local v6    # "result":Lcom/google/zxing/Result;
    invoke-virtual {v6}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v8

    invoke-static {v8, v2, v1}, Lcom/google/zxing/multi/ByQuadrantReader;->makeAbsolute([Lcom/google/zxing/ResultPoint;II)V
    :try_end_3
    .catch Lcom/google/zxing/NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 93
    .end local v6    # "result":Lcom/google/zxing/Result;
    :catch_3
    move-exception v8

    div-int/lit8 v5, v2, 0x2

    .line 94
    .local v5, "quarterWidth":I
    div-int/lit8 v4, v1, 0x2

    .line 95
    .local v4, "quarterHeight":I
    invoke-virtual {p1, v5, v4, v2, v1}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v0

    .line 96
    .local v0, "center":Lcom/google/zxing/BinaryBitmap;
    iget-object v8, p0, Lcom/google/zxing/multi/ByQuadrantReader;->delegate:Lcom/google/zxing/Reader;

    invoke-interface {v8, v0, p2}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v6

    .line 97
    .restart local v6    # "result":Lcom/google/zxing/Result;
    invoke-virtual {v6}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v8

    invoke-static {v8, v5, v4}, Lcom/google/zxing/multi/ByQuadrantReader;->makeAbsolute([Lcom/google/zxing/ResultPoint;II)V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/zxing/multi/ByQuadrantReader;->delegate:Lcom/google/zxing/Reader;

    invoke-interface {v0}, Lcom/google/zxing/Reader;->reset()V

    .line 104
    return-void
.end method
