.class public final Lcom/google/zxing/RGBLuminanceSource;
.super Lcom/google/zxing/LuminanceSource;
.source "RGBLuminanceSource.java"


# instance fields
.field private final dataHeight:I

.field private final dataWidth:I

.field private final left:I

.field private final luminances:[B

.field private final top:I


# direct methods
.method public constructor <init>(II[I)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "pixels"    # [I

    .prologue
    const/4 v6, 0x0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/LuminanceSource;-><init>(II)V

    .line 37
    iput p1, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    .line 38
    iput p2, p0, Lcom/google/zxing/RGBLuminanceSource;->dataHeight:I

    .line 39
    iput v6, p0, Lcom/google/zxing/RGBLuminanceSource;->left:I

    .line 40
    iput v6, p0, Lcom/google/zxing/RGBLuminanceSource;->top:I

    .line 46
    mul-int v5, p1, p2

    .line 47
    .local v5, "size":I
    new-array v6, v5, [B

    iput-object v6, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    .line 48
    const/4 v2, 0x0

    .local v2, "offset":I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 49
    aget v3, p3, v2

    .line 50
    .local v3, "pixel":I
    shr-int/lit8 v6, v3, 0x10

    and-int/lit16 v4, v6, 0xff

    .line 51
    .local v4, "r":I
    shr-int/lit8 v6, v3, 0x7

    and-int/lit16 v1, v6, 0x1fe

    .line 52
    .local v1, "g2":I
    and-int/lit16 v0, v3, 0xff

    .line 54
    .local v0, "b":I
    iget-object v6, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    add-int v7, v4, v1

    add-int/2addr v7, v0

    div-int/lit8 v7, v7, 0x4

    int-to-byte v7, v7

    aput-byte v7, v6, v2

    .line 48
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    .end local v0    # "b":I
    .end local v1    # "g2":I
    .end local v3    # "pixel":I
    .end local v4    # "r":I
    :cond_0
    return-void
.end method

.method private constructor <init>([BIIIIII)V
    .locals 2
    .param p1, "pixels"    # [B
    .param p2, "dataWidth"    # I
    .param p3, "dataHeight"    # I
    .param p4, "left"    # I
    .param p5, "top"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I

    .prologue
    .line 65
    invoke-direct {p0, p6, p7}, Lcom/google/zxing/LuminanceSource;-><init>(II)V

    .line 66
    add-int v0, p4, p6

    if-gt v0, p2, :cond_0

    add-int v0, p5, p7

    if-le v0, p3, :cond_1

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Crop rectangle does not fit within image data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    iput-object p1, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    .line 70
    iput p2, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    .line 71
    iput p3, p0, Lcom/google/zxing/RGBLuminanceSource;->dataHeight:I

    .line 72
    iput p4, p0, Lcom/google/zxing/RGBLuminanceSource;->left:I

    .line 73
    iput p5, p0, Lcom/google/zxing/RGBLuminanceSource;->top:I

    .line 74
    return-void
.end method


# virtual methods
.method public crop(IIII)Lcom/google/zxing/LuminanceSource;
    .locals 8
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 127
    new-instance v0, Lcom/google/zxing/RGBLuminanceSource;

    iget-object v1, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    iget v2, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    iget v3, p0, Lcom/google/zxing/RGBLuminanceSource;->dataHeight:I

    iget v4, p0, Lcom/google/zxing/RGBLuminanceSource;->left:I

    add-int/2addr v4, p1

    iget v5, p0, Lcom/google/zxing/RGBLuminanceSource;->top:I

    add-int/2addr v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/zxing/RGBLuminanceSource;-><init>([BIIIIII)V

    return-object v0
.end method

.method public getMatrix()[B
    .locals 9

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/google/zxing/RGBLuminanceSource;->getWidth()I

    move-result v5

    .line 93
    .local v5, "width":I
    invoke-virtual {p0}, Lcom/google/zxing/RGBLuminanceSource;->getHeight()I

    move-result v1

    .line 97
    .local v1, "height":I
    iget v7, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    if-ne v5, v7, :cond_1

    iget v7, p0, Lcom/google/zxing/RGBLuminanceSource;->dataHeight:I

    if-ne v1, v7, :cond_1

    .line 98
    iget-object v3, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    .line 117
    :cond_0
    :goto_0
    return-object v3

    .line 101
    :cond_1
    mul-int v0, v5, v1

    .line 102
    .local v0, "area":I
    new-array v3, v0, [B

    .line 103
    .local v3, "matrix":[B
    iget v7, p0, Lcom/google/zxing/RGBLuminanceSource;->top:I

    iget v8, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    mul-int/2addr v7, v8

    iget v8, p0, Lcom/google/zxing/RGBLuminanceSource;->left:I

    add-int v2, v7, v8

    .line 106
    .local v2, "inputOffset":I
    iget v7, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    if-ne v5, v7, :cond_2

    .line 107
    iget-object v7, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    const/4 v8, 0x0

    invoke-static {v7, v2, v3, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 112
    :cond_2
    const/4 v6, 0x0

    .local v6, "y":I
    :goto_1
    if-ge v6, v1, :cond_0

    .line 113
    mul-int v4, v6, v5

    .line 114
    .local v4, "outputOffset":I
    iget-object v7, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    invoke-static {v7, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    iget v7, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    add-int/2addr v2, v7

    .line 112
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public getRow(I[B)[B
    .locals 5
    .param p1, "y"    # I
    .param p2, "row"    # [B

    .prologue
    .line 78
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/zxing/RGBLuminanceSource;->getHeight()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 79
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Requested row is outside the image: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/google/zxing/RGBLuminanceSource;->getWidth()I

    move-result v1

    .line 82
    .local v1, "width":I
    if-eqz p2, :cond_2

    array-length v2, p2

    if-ge v2, v1, :cond_3

    .line 83
    :cond_2
    new-array p2, v1, [B

    .line 85
    :cond_3
    iget v2, p0, Lcom/google/zxing/RGBLuminanceSource;->top:I

    add-int/2addr v2, p1

    iget v3, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/google/zxing/RGBLuminanceSource;->left:I

    add-int v0, v2, v3

    .line 86
    .local v0, "offset":I
    iget-object v2, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    const/4 v3, 0x0

    invoke-static {v2, v0, p2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    return-object p2
.end method

.method public isCropSupported()Z
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x1

    return v0
.end method
