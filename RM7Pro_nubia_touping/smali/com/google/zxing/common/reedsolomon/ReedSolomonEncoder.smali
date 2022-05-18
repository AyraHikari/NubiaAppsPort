.class public final Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;
.super Ljava/lang/Object;
.source "ReedSolomonEncoder.java"


# instance fields
.field private final cachedGenerators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/common/reedsolomon/GenericGFPoly;",
            ">;"
        }
    .end annotation
.end field

.field private final field:Lcom/google/zxing/common/reedsolomon/GenericGF;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V
    .locals 5
    .param p1, "field"    # Lcom/google/zxing/common/reedsolomon/GenericGF;

    .prologue
    const/4 v4, 0x1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/List;

    .line 36
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/List;

    new-instance v1, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    new-array v2, v4, [I

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-direct {v1, p1, v2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    return-void
.end method

.method private buildGenerator(I)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .locals 10
    .param p1, "degree"    # I

    .prologue
    const/4 v9, 0x1

    .line 40
    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt p1, v3, :cond_0

    .line 41
    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/List;

    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 42
    .local v1, "lastGenerator":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "d":I
    :goto_0
    if-gt v0, p1, :cond_0

    .line 43
    new-instance v3, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v9, v5, v6

    iget-object v6, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    add-int/lit8 v7, v0, -0x1

    iget-object v8, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 44
    invoke-virtual {v8}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getGeneratorBase()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/google/zxing/common/reedsolomon/GenericGF;->exp(I)I

    move-result v6

    aput v6, v5, v9

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    .line 43
    invoke-virtual {v1, v3}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->multiply(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v2

    .line 45
    .local v2, "nextGenerator":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    move-object v1, v2

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    .end local v0    # "d":I
    .end local v1    # "lastGenerator":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .end local v2    # "nextGenerator":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    :cond_0
    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    return-object v3
.end method


# virtual methods
.method public encode([II)V
    .locals 10
    .param p1, "toEncode"    # [I
    .param p2, "ecBytes"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 53
    if-nez p2, :cond_0

    .line 54
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "No error correction bytes"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 56
    :cond_0
    array-length v6, p1

    sub-int v1, v6, p2

    .line 57
    .local v1, "dataBytes":I
    if-gtz v1, :cond_1

    .line 58
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "No data bytes provided"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 60
    :cond_1
    invoke-direct {p0, p2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->buildGenerator(I)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v2

    .line 61
    .local v2, "generator":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    new-array v4, v1, [I

    .line 62
    .local v4, "infoCoefficients":[I
    invoke-static {p1, v8, v4, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    new-instance v6, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    iget-object v7, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v6, v7, v4}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    .line 64
    invoke-virtual {v6, p2, v9}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->multiplyByMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v6

    .line 65
    invoke-virtual {v6, v2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->divide(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)[Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v6

    aget-object v6, v6, v9

    .line 66
    invoke-virtual {v6}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficients()[I

    move-result-object v0

    .line 67
    .local v0, "coefficients":[I
    array-length v6, v0

    sub-int v5, p2, v6

    .line 68
    .local v5, "numZeroCoefficients":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 69
    add-int v6, v1, v3

    aput v8, p1, v6

    .line 68
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 71
    :cond_2
    add-int v6, v1, v5

    array-length v7, v0

    invoke-static {v0, v8, p1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    return-void
.end method
