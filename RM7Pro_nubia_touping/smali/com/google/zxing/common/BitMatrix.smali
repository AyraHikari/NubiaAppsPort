.class public final Lcom/google/zxing/common/BitMatrix;
.super Ljava/lang/Object;
.source "BitMatrix.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private final bits:[I

.field private final height:I

.field private final rowSize:I

.field private final width:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "dimension"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p1}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 50
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both dimensions must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1
    iput p1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 63
    iput p2, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 64
    add-int/lit8 v0, p1, 0x1f

    div-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    .line 65
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 66
    return-void
.end method

.method private constructor <init>(III[I)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "rowSize"    # I
    .param p4, "bits"    # [I

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput p1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 70
    iput p2, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 71
    iput p3, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    .line 72
    iput-object p4, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 73
    return-void
.end method

.method private buildToString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "setString"    # Ljava/lang/String;
    .param p2, "unsetString"    # Ljava/lang/String;
    .param p3, "lineSeparator"    # Ljava/lang/String;

    .prologue
    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    iget v4, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v3, v4

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 467
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "y":I
    :goto_0
    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-ge v2, v3, :cond_2

    .line 468
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_1
    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    if-ge v1, v3, :cond_1

    .line 469
    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, p1

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move-object v3, p2

    .line 469
    goto :goto_2

    .line 471
    :cond_1
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 473
    .end local v1    # "x":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/zxing/common/BitMatrix;
    .locals 11
    .param p0, "stringRepresentation"    # Ljava/lang/String;
    .param p1, "setString"    # Ljava/lang/String;
    .param p2, "unsetString"    # Ljava/lang/String;

    .prologue
    const/4 v10, -0x1

    .line 97
    if-nez p0, :cond_0

    .line 98
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v8

    .line 101
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    new-array v0, v8, [Z

    .line 102
    .local v0, "bits":[Z
    const/4 v1, 0x0

    .line 103
    .local v1, "bitsPos":I
    const/4 v7, 0x0

    .line 104
    .local v7, "rowStartPos":I
    const/4 v6, -0x1

    .line 105
    .local v6, "rowLength":I
    const/4 v4, 0x0

    .line 106
    .local v4, "nRows":I
    const/4 v5, 0x0

    .line 107
    .local v5, "pos":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v5, v8, :cond_8

    .line 108
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0xa

    if-eq v8, v9, :cond_1

    .line 109
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0xd

    if-ne v8, v9, :cond_5

    .line 110
    :cond_1
    if-le v1, v7, :cond_3

    .line 111
    if-ne v6, v10, :cond_4

    .line 112
    sub-int v6, v1, v7

    .line 116
    :cond_2
    move v7, v1

    .line 117
    add-int/lit8 v4, v4, 0x1

    .line 119
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 113
    :cond_4
    sub-int v8, v1, v7

    if-eq v8, v6, :cond_2

    .line 114
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "row lengths do not match"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 120
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {p0, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 121
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v5, v8

    .line 122
    const/4 v8, 0x1

    aput-boolean v8, v0, v1

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    :cond_6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {p0, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 125
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v5, v8

    .line 126
    const/4 v8, 0x0

    aput-boolean v8, v0, v1

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    :cond_7
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "illegal character encountered: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 135
    :cond_8
    if-le v1, v7, :cond_a

    .line 136
    if-ne v6, v10, :cond_c

    .line 137
    sub-int v6, v1, v7

    .line 141
    :cond_9
    add-int/lit8 v4, v4, 0x1

    .line 144
    :cond_a
    new-instance v3, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v3, v6, v4}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 145
    .local v3, "matrix":Lcom/google/zxing/common/BitMatrix;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_d

    .line 146
    aget-boolean v8, v0, v2

    if-eqz v8, :cond_b

    .line 147
    rem-int v8, v2, v6

    div-int v9, v2, v6

    invoke-virtual {v3, v8, v9}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 145
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 138
    .end local v2    # "i":I
    .end local v3    # "matrix":Lcom/google/zxing/common/BitMatrix;
    :cond_c
    sub-int v8, v1, v7

    if-eq v8, v6, :cond_9

    .line 139
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "row lengths do not match"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 150
    .restart local v2    # "i":I
    .restart local v3    # "matrix":Lcom/google/zxing/common/BitMatrix;
    :cond_d
    return-object v3
.end method

.method public static parse([[Z)Lcom/google/zxing/common/BitMatrix;
    .locals 7
    .param p0, "image"    # [[Z

    .prologue
    .line 82
    array-length v1, p0

    .line 83
    .local v1, "height":I
    const/4 v6, 0x0

    aget-object v6, p0, v6

    array-length v5, v6

    .line 84
    .local v5, "width":I
    new-instance v0, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v0, v5, v1}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 85
    .local v0, "bits":Lcom/google/zxing/common/BitMatrix;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 86
    aget-object v3, p0, v2

    .line 87
    .local v3, "imageI":[Z
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v5, :cond_1

    .line 88
    aget-boolean v6, v3, v4

    if-eqz v6, :cond_0

    .line 89
    invoke-virtual {v0, v4, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 87
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 85
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    .end local v3    # "imageI":[Z
    .end local v4    # "j":I
    :cond_2
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .line 217
    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v1, v2

    .line 218
    .local v1, "max":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 219
    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    :cond_0
    return-void
.end method

.method public clone()Lcom/google/zxing/common/BitMatrix;
    .locals 5

    .prologue
    .line 478
    new-instance v1, Lcom/google/zxing/common/BitMatrix;

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    iget v4, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    iget-object v0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/zxing/common/BitMatrix;-><init>(III[I)V

    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->clone()Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 418
    instance-of v2, p1, Lcom/google/zxing/common/BitMatrix;

    if-nez v2, :cond_1

    .line 423
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 421
    check-cast v0, Lcom/google/zxing/common/BitMatrix;

    .line 422
    .local v0, "other":Lcom/google/zxing/common/BitMatrix;
    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    iget v3, v0, Lcom/google/zxing/common/BitMatrix;->width:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    iget v3, v0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    iget v3, v0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    iget-object v3, v0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 423
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public flip(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 188
    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v1, p2

    div-int/lit8 v2, p1, 0x20

    add-int v0, v1, v2

    .line 189
    .local v0, "offset":I
    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v2, v1, v0

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    xor-int/2addr v2, v3

    aput v2, v1, v0

    .line 190
    return-void
.end method

.method public get(II)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 161
    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v1, p2

    div-int/lit8 v2, p1, 0x20

    add-int v0, v1, v2

    .line 162
    .local v0, "offset":I
    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v1, v1, v0

    and-int/lit8 v2, p1, 0x1f

    ushr-int/2addr v1, v2

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBottomRightOnBit()[I
    .locals 7

    .prologue
    .line 374
    iget-object v5, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v5, v5

    add-int/lit8 v1, v5, -0x1

    .line 375
    .local v1, "bitsOffset":I
    :goto_0
    if-ltz v1, :cond_0

    iget-object v5, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v5, v5, v1

    if-nez v5, :cond_0

    .line 376
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 378
    :cond_0
    if-gez v1, :cond_1

    .line 379
    const/4 v5, 0x0

    .line 392
    :goto_1
    return-object v5

    .line 382
    :cond_1
    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    div-int v4, v1, v5

    .line 383
    .local v4, "y":I
    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    rem-int v5, v1, v5

    shl-int/lit8 v3, v5, 0x5

    .line 385
    .local v3, "x":I
    iget-object v5, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v2, v5, v1

    .line 386
    .local v2, "theBits":I
    const/16 v0, 0x1f

    .line 387
    .local v0, "bit":I
    :goto_2
    ushr-int v5, v2, v0

    if-nez v5, :cond_2

    .line 388
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 390
    :cond_2
    add-int/2addr v3, v0

    .line 392
    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v3, v5, v6

    const/4 v6, 0x1

    aput v4, v5, v6

    goto :goto_1
.end method

.method public getEnclosingRectangle()[I
    .locals 11

    .prologue
    .line 304
    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 305
    .local v2, "left":I
    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 306
    .local v5, "top":I
    const/4 v3, -0x1

    .line 307
    .local v3, "right":I
    const/4 v1, -0x1

    .line 309
    .local v1, "bottom":I
    const/4 v7, 0x0

    .local v7, "y":I
    :goto_0
    iget v8, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-ge v7, v8, :cond_7

    .line 310
    const/4 v6, 0x0

    .local v6, "x32":I
    :goto_1
    iget v8, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    if-ge v6, v8, :cond_6

    .line 311
    iget-object v8, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    iget v9, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v9, v7

    add-int/2addr v9, v6

    aget v4, v8, v9

    .line 312
    .local v4, "theBits":I
    if-eqz v4, :cond_5

    .line 313
    if-ge v7, v5, :cond_0

    .line 314
    move v5, v7

    .line 316
    :cond_0
    if-le v7, v1, :cond_1

    .line 317
    move v1, v7

    .line 319
    :cond_1
    shl-int/lit8 v8, v6, 0x5

    if-ge v8, v2, :cond_3

    .line 320
    const/4 v0, 0x0

    .line 321
    .local v0, "bit":I
    :goto_2
    rsub-int/lit8 v8, v0, 0x1f

    shl-int v8, v4, v8

    if-nez v8, :cond_2

    .line 322
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 324
    :cond_2
    shl-int/lit8 v8, v6, 0x5

    add-int/2addr v8, v0

    if-ge v8, v2, :cond_3

    .line 325
    shl-int/lit8 v8, v6, 0x5

    add-int v2, v8, v0

    .line 328
    .end local v0    # "bit":I
    :cond_3
    shl-int/lit8 v8, v6, 0x5

    add-int/lit8 v8, v8, 0x1f

    if-le v8, v3, :cond_5

    .line 329
    const/16 v0, 0x1f

    .line 330
    .restart local v0    # "bit":I
    :goto_3
    ushr-int v8, v4, v0

    if-nez v8, :cond_4

    .line 331
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 333
    :cond_4
    shl-int/lit8 v8, v6, 0x5

    add-int/2addr v8, v0

    if-le v8, v3, :cond_5

    .line 334
    shl-int/lit8 v8, v6, 0x5

    add-int v3, v8, v0

    .line 310
    .end local v0    # "bit":I
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 309
    .end local v4    # "theBits":I
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 341
    .end local v6    # "x32":I
    :cond_7
    if-lt v3, v2, :cond_8

    if-ge v1, v5, :cond_9

    .line 342
    :cond_8
    const/4 v8, 0x0

    .line 345
    :goto_4
    return-object v8

    :cond_9
    const/4 v8, 0x4

    new-array v8, v8, [I

    const/4 v9, 0x0

    aput v2, v8, v9

    const/4 v9, 0x1

    aput v5, v8, v9

    const/4 v9, 0x2

    sub-int v10, v3, v2

    add-int/lit8 v10, v10, 0x1

    aput v10, v8, v9

    const/4 v9, 0x3

    sub-int v10, v1, v5

    add-int/lit8 v10, v10, 0x1

    aput v10, v8, v9

    goto :goto_4
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    return v0
.end method

.method public getRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
    .locals 5
    .param p1, "y"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;

    .prologue
    .line 260
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    if-ge v2, v3, :cond_1

    .line 261
    :cond_0
    new-instance p2, Lcom/google/zxing/common/BitArray;

    .end local p2    # "row":Lcom/google/zxing/common/BitArray;
    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    invoke-direct {p2, v2}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 265
    .restart local p2    # "row":Lcom/google/zxing/common/BitArray;
    :goto_0
    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int v0, p1, v2

    .line 266
    .local v0, "offset":I
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_1
    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    if-ge v1, v2, :cond_2

    .line 267
    shl-int/lit8 v2, v1, 0x5

    iget-object v3, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    add-int v4, v0, v1

    aget v3, v3, v4

    invoke-virtual {p2, v2, v3}, Lcom/google/zxing/common/BitArray;->setBulk(II)V

    .line 266
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 263
    .end local v0    # "offset":I
    .end local v1    # "x":I
    :cond_1
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->clear()V

    goto :goto_0

    .line 269
    .restart local v0    # "offset":I
    .restart local v1    # "x":I
    :cond_2
    return-object p2
.end method

.method public getRowSize()I
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    return v0
.end method

.method public getTopLeftOnBit()[I
    .locals 7

    .prologue
    .line 354
    const/4 v1, 0x0

    .line 355
    .local v1, "bitsOffset":I
    :goto_0
    iget-object v5, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v5, v5

    if-ge v1, v5, :cond_0

    iget-object v5, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v5, v5, v1

    if-nez v5, :cond_0

    .line 356
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 358
    :cond_0
    iget-object v5, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v5, v5

    if-ne v1, v5, :cond_1

    .line 359
    const/4 v5, 0x0

    .line 370
    :goto_1
    return-object v5

    .line 361
    :cond_1
    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    div-int v4, v1, v5

    .line 362
    .local v4, "y":I
    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    rem-int v5, v1, v5

    shl-int/lit8 v3, v5, 0x5

    .line 364
    .local v3, "x":I
    iget-object v5, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v2, v5, v1

    .line 365
    .local v2, "theBits":I
    const/4 v0, 0x0

    .line 366
    .local v0, "bit":I
    :goto_2
    rsub-int/lit8 v5, v0, 0x1f

    shl-int v5, v2, v5

    if-nez v5, :cond_2

    .line 367
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 369
    :cond_2
    add-int/2addr v3, v0

    .line 370
    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v3, v5, v6

    const/4 v6, 0x1

    aput v4, v5, v6

    goto :goto_1
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 399
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 428
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 429
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    add-int/2addr v0, v1

    .line 430
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    add-int/2addr v0, v1

    .line 431
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    add-int/2addr v0, v1

    .line 432
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    .line 433
    return v0
.end method

.method public rotate180()V
    .locals 6

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v4

    .line 285
    .local v4, "width":I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    .line 286
    .local v1, "height":I
    new-instance v3, Lcom/google/zxing/common/BitArray;

    invoke-direct {v3, v4}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 287
    .local v3, "topRow":Lcom/google/zxing/common/BitArray;
    new-instance v0, Lcom/google/zxing/common/BitArray;

    invoke-direct {v0, v4}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 288
    .local v0, "bottomRow":Lcom/google/zxing/common/BitArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    add-int/lit8 v5, v1, 0x1

    div-int/lit8 v5, v5, 0x2

    if-ge v2, v5, :cond_0

    .line 289
    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->getRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    move-result-object v3

    .line 290
    add-int/lit8 v5, v1, -0x1

    sub-int/2addr v5, v2

    invoke-virtual {p0, v5, v0}, Lcom/google/zxing/common/BitMatrix;->getRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    .line 291
    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 292
    invoke-virtual {v0}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 293
    invoke-virtual {p0, v2, v0}, Lcom/google/zxing/common/BitMatrix;->setRow(ILcom/google/zxing/common/BitArray;)V

    .line 294
    add-int/lit8 v5, v1, -0x1

    sub-int/2addr v5, v2

    invoke-virtual {p0, v5, v3}, Lcom/google/zxing/common/BitMatrix;->setRow(ILcom/google/zxing/common/BitArray;)V

    .line 288
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 296
    :cond_0
    return-void
.end method

.method public set(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 172
    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v1, p2

    div-int/lit8 v2, p1, 0x20

    add-int v0, v1, v2

    .line 173
    .local v0, "offset":I
    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v2, v1, v0

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v1, v0

    .line 174
    return-void
.end method

.method public setRegion(IIII)V
    .locals 10
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 232
    if-ltz p2, :cond_0

    if-gez p1, :cond_1

    .line 233
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Left and top must be nonnegative"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 235
    :cond_1
    if-lez p4, :cond_2

    if-gtz p3, :cond_3

    .line 236
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Height and width must be at least 1"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 238
    :cond_3
    add-int v2, p1, p3

    .line 239
    .local v2, "right":I
    add-int v0, p2, p4

    .line 240
    .local v0, "bottom":I
    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-gt v0, v5, :cond_4

    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    if-le v2, v5, :cond_5

    .line 241
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The region must fit inside the matrix"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 243
    :cond_5
    move v4, p2

    .local v4, "y":I
    :goto_0
    if-ge v4, v0, :cond_7

    .line 244
    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int v1, v4, v5

    .line 245
    .local v1, "offset":I
    move v3, p1

    .local v3, "x":I
    :goto_1
    if-ge v3, v2, :cond_6

    .line 246
    iget-object v5, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    div-int/lit8 v6, v3, 0x20

    add-int/2addr v6, v1

    aget v7, v5, v6

    const/4 v8, 0x1

    and-int/lit8 v9, v3, 0x1f

    shl-int/2addr v8, v9

    or-int/2addr v7, v8

    aput v7, v5, v6

    .line 245
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 243
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 249
    .end local v1    # "offset":I
    .end local v3    # "x":I
    :cond_7
    return-void
.end method

.method public setRow(ILcom/google/zxing/common/BitArray;)V
    .locals 5
    .param p1, "y"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;

    .prologue
    .line 277
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getBitArray()[I

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v3, p1

    iget v4, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 278
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 441
    const-string v0, "X "

    const-string v1, "  "

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/common/BitMatrix;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "setString"    # Ljava/lang/String;
    .param p2, "unsetString"    # Ljava/lang/String;

    .prologue
    .line 450
    const-string v0, "\n"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->buildToString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "setString"    # Ljava/lang/String;
    .param p2, "unsetString"    # Ljava/lang/String;
    .param p3, "lineSeparator"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 462
    invoke-direct {p0, p1, p2, p3}, Lcom/google/zxing/common/BitMatrix;->buildToString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unset(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 177
    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v1, p2

    div-int/lit8 v2, p1, 0x20

    add-int v0, v1, v2

    .line 178
    .local v0, "offset":I
    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v2, v1, v0

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    aput v2, v1, v0

    .line 179
    return-void
.end method

.method public xor(Lcom/google/zxing/common/BitMatrix;)V
    .locals 9
    .param p1, "mask"    # Lcom/google/zxing/common/BitMatrix;

    .prologue
    .line 199
    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v6

    if-ne v5, v6, :cond_0

    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v6

    if-ne v5, v6, :cond_0

    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    .line 200
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getRowSize()I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 201
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "input matrix dimensions do not match"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 203
    :cond_1
    new-instance v2, Lcom/google/zxing/common/BitArray;

    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    div-int/lit8 v5, v5, 0x20

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v2, v5}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 204
    .local v2, "rowArray":Lcom/google/zxing/common/BitArray;
    const/4 v4, 0x0

    .local v4, "y":I
    :goto_0
    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-ge v4, v5, :cond_3

    .line 205
    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int v0, v4, v5

    .line 206
    .local v0, "offset":I
    invoke-virtual {p1, v4, v2}, Lcom/google/zxing/common/BitMatrix;->getRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/common/BitArray;->getBitArray()[I

    move-result-object v1

    .line 207
    .local v1, "row":[I
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_1
    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    if-ge v3, v5, :cond_2

    .line 208
    iget-object v5, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    add-int v6, v0, v3

    aget v7, v5, v6

    aget v8, v1, v3

    xor-int/2addr v7, v8

    aput v7, v5, v6

    .line 207
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 204
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 211
    .end local v0    # "offset":I
    .end local v1    # "row":[I
    .end local v3    # "x":I
    :cond_3
    return-void
.end method
