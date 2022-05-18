.class public final Lcom/google/zxing/common/DefaultGridSampler;
.super Lcom/google/zxing/common/GridSampler;
.source "DefaultGridSampler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/zxing/common/GridSampler;-><init>()V

    return-void
.end method


# virtual methods
.method public sampleGrid(Lcom/google/zxing/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;
    .locals 2
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p2, "dimensionX"    # I
    .param p3, "dimensionY"    # I
    .param p4, "p1ToX"    # F
    .param p5, "p1ToY"    # F
    .param p6, "p2ToX"    # F
    .param p7, "p2ToY"    # F
    .param p8, "p3ToX"    # F
    .param p9, "p3ToY"    # F
    .param p10, "p4ToX"    # F
    .param p11, "p4ToY"    # F
    .param p12, "p1FromX"    # F
    .param p13, "p1FromY"    # F
    .param p14, "p2FromX"    # F
    .param p15, "p2FromY"    # F
    .param p16, "p3FromX"    # F
    .param p17, "p3FromY"    # F
    .param p18, "p4FromX"    # F
    .param p19, "p4FromY"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-static/range {p4 .. p19}, Lcom/google/zxing/common/PerspectiveTransform;->quadrilateralToQuadrilateral(FFFFFFFFFFFFFFFF)Lcom/google/zxing/common/PerspectiveTransform;

    move-result-object v0

    .line 43
    .local v0, "transform":Lcom/google/zxing/common/PerspectiveTransform;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/zxing/common/DefaultGridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;IILcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    return-object v1
.end method

.method public sampleGrid(Lcom/google/zxing/common/BitMatrix;IILcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/BitMatrix;
    .locals 9
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p2, "dimensionX"    # I
    .param p3, "dimensionY"    # I
    .param p4, "transform"    # Lcom/google/zxing/common/PerspectiveTransform;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/high16 v8, 0x3f000000    # 0.5f

    .line 51
    if-lez p2, :cond_0

    if-gtz p3, :cond_1

    .line 52
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6

    .line 54
    :cond_1
    new-instance v0, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v0, p2, p3}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 55
    .local v0, "bits":Lcom/google/zxing/common/BitMatrix;
    mul-int/lit8 v6, p2, 0x2

    new-array v3, v6, [F

    .line 56
    .local v3, "points":[F
    const/4 v5, 0x0

    .local v5, "y":I
    :goto_0
    if-ge v5, p3, :cond_5

    .line 57
    array-length v2, v3

    .line 58
    .local v2, "max":I
    int-to-float v6, v5

    add-float v1, v6, v8

    .line 59
    .local v1, "iValue":F
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_1
    if-ge v4, v2, :cond_2

    .line 60
    div-int/lit8 v6, v4, 0x2

    int-to-float v6, v6

    add-float/2addr v6, v8

    aput v6, v3, v4

    .line 61
    add-int/lit8 v6, v4, 0x1

    aput v1, v3, v6

    .line 59
    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    .line 63
    :cond_2
    invoke-virtual {p4, v3}, Lcom/google/zxing/common/PerspectiveTransform;->transformPoints([F)V

    .line 66
    invoke-static {p1, v3}, Lcom/google/zxing/common/DefaultGridSampler;->checkAndNudgePoints(Lcom/google/zxing/common/BitMatrix;[F)V

    .line 68
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_4

    .line 69
    :try_start_0
    aget v6, v3, v4

    float-to-int v6, v6

    add-int/lit8 v7, v4, 0x1

    aget v7, v3, v7

    float-to-int v7, v7

    invoke-virtual {p1, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 71
    div-int/lit8 v6, v4, 0x2

    invoke-virtual {v0, v6, v5}, Lcom/google/zxing/common/BitMatrix;->set(II)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_3
    add-int/lit8 v4, v4, 0x2

    goto :goto_2

    .line 82
    :catch_0
    move-exception v6

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6

    .line 56
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 85
    .end local v1    # "iValue":F
    .end local v2    # "max":I
    .end local v4    # "x":I
    :cond_5
    return-object v0
.end method
