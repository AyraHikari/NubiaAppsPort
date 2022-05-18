.class public final Lcom/qualcomm/qti/snpe/internal/TensorUtil;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertShape(Ljava/lang/String;[I[I)V
    .locals 6

    array-length v0, p1

    array-length v1, p2

    const-string v2, ", Actual: "

    const-string v3, "Tensor "

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget v1, p1, v0

    aget v4, p2, v0

    if-ne v1, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object v1

    sget-object v4, Lcom/qualcomm/qti/snpe/SnpeError$Error;->INVALID_TENSOR_DIMENSION:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " has unexpected dimension ("

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")! Expected: "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p0, p1, v0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p0, p2, v0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v4, p0}, Lcom/qualcomm/qti/snpe/SnpeError;->getInvalidInputError(Lcom/qualcomm/qti/snpe/SnpeError$Error;Ljava/lang/String;)Lcom/qualcomm/qti/snpe/SnpeError$InvalidInputException;

    move-result-object p0

    throw p0

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object v0

    sget-object v1, Lcom/qualcomm/qti/snpe/SnpeError$Error;->INVALID_TENSOR_SHAPE:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " has unexpected shape! Expected: "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p1

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p2

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/qualcomm/qti/snpe/SnpeError;->getInvalidInputError(Lcom/qualcomm/qti/snpe/SnpeError$Error;Ljava/lang/String;)Lcom/qualcomm/qti/snpe/SnpeError$InvalidInputException;

    move-result-object p0

    throw p0
.end method

.method public static position([I[I)I
    .locals 4

    array-length v0, p0

    new-array v0, v0, [I

    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_0

    aput v2, v0, v1

    aget v3, p0, v1

    mul-int/2addr v2, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    move v1, p0

    :goto_1
    array-length v2, p1

    if-ge p0, v2, :cond_1

    aget v2, p1, p0

    aget v3, v0, p0

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_1
    return v1
.end method

.method public static sizeOf([I)I
    .locals 4

    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p0, v2

    mul-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method
