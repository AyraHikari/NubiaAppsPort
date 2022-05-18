.class final Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
.super Ljava/lang/Object;
.source "ModulusPoly.java"


# instance fields
.field private final coefficients:[I

.field private final field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;


# direct methods
.method constructor <init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V
    .locals 5
    .param p1, "field"    # Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;
    .param p2, "coefficients"    # [I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    array-length v2, p2

    if-nez v2, :cond_0

    .line 30
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 32
    :cond_0
    iput-object p1, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    .line 33
    array-length v0, p2

    .line 34
    .local v0, "coefficientsLength":I
    if-le v0, v3, :cond_3

    aget v2, p2, v4

    if-nez v2, :cond_3

    .line 36
    const/4 v1, 0x1

    .line 37
    .local v1, "firstNonZero":I
    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p2, v1

    if-nez v2, :cond_1

    .line 38
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 40
    :cond_1
    if-ne v1, v0, :cond_2

    .line 41
    new-array v2, v3, [I

    aput v4, v2, v4

    iput-object v2, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    .line 53
    .end local v1    # "firstNonZero":I
    :goto_1
    return-void

    .line 43
    .restart local v1    # "firstNonZero":I
    :cond_2
    sub-int v2, v0, v1

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    .line 44
    iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    array-length v3, v3

    invoke-static {p2, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 51
    .end local v1    # "firstNonZero":I
    :cond_3
    iput-object p2, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    goto :goto_1
.end method


# virtual methods
.method add(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .locals 9
    .param p1, "other"    # Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    .prologue
    const/4 v8, 0x0

    .line 105
    iget-object v6, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    iget-object v7, p1, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 106
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "ModulusPolys do not have same ModulusGF field"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->isZero()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 131
    .end local p1    # "other":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    :goto_0
    return-object p1

    .line 111
    .restart local p1    # "other":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    :cond_1
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->isZero()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object p1, p0

    .line 112
    goto :goto_0

    .line 115
    :cond_2
    iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    .line 116
    .local v3, "smallerCoefficients":[I
    iget-object v1, p1, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    .line 117
    .local v1, "largerCoefficients":[I
    array-length v6, v3

    array-length v7, v1

    if-le v6, v7, :cond_3

    .line 118
    move-object v5, v3

    .line 119
    .local v5, "temp":[I
    move-object v3, v1

    .line 120
    move-object v1, v5

    .line 122
    .end local v5    # "temp":[I
    :cond_3
    array-length v6, v1

    new-array v4, v6, [I

    .line 123
    .local v4, "sumDiff":[I
    array-length v6, v1

    array-length v7, v3

    sub-int v2, v6, v7

    .line 125
    .local v2, "lengthDiff":I
    invoke-static {v1, v8, v4, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    move v0, v2

    .local v0, "i":I
    :goto_1
    array-length v6, v1

    if-ge v0, v6, :cond_4

    .line 128
    iget-object v6, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    sub-int v7, v0, v2

    aget v7, v3, v7

    aget v8, v1, v0

    invoke-virtual {v6, v7, v8}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->add(II)I

    move-result v6

    aput v6, v4, v0

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 131
    :cond_4
    new-instance p1, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    .end local p1    # "other":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    iget-object v6, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-direct {p1, v6, v4}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    goto :goto_0
.end method

.method evaluateAt(I)I
    .locals 8
    .param p1, "a"    # I

    .prologue
    const/4 v4, 0x0

    .line 84
    if-nez p1, :cond_1

    .line 86
    invoke-virtual {p0, v4}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getCoefficient(I)I

    move-result v2

    .line 101
    :cond_0
    return v2

    .line 88
    :cond_1
    const/4 v5, 0x1

    if-ne p1, v5, :cond_2

    .line 90
    const/4 v2, 0x0

    .line 91
    .local v2, "result":I
    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget v0, v5, v4

    .line 92
    .local v0, "coefficient":I
    iget-object v7, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v7, v2, v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->add(II)I

    move-result v2

    .line 91
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 96
    .end local v0    # "coefficient":I
    .end local v2    # "result":I
    :cond_2
    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    aget v2, v5, v4

    .line 97
    .restart local v2    # "result":I
    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    array-length v3, v4

    .line 98
    .local v3, "size":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 99
    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v5, p1, v2}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->multiply(II)I

    move-result v5

    iget-object v6, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    aget v6, v6, v1

    invoke-virtual {v4, v5, v6}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->add(II)I

    move-result v2

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method getCoefficient(I)I
    .locals 2
    .param p1, "degree"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    aget v0, v0, v1

    return v0
.end method

.method getCoefficients()[I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    return-object v0
.end method

.method getDegree()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method isZero()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 70
    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    aget v1, v1, v0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method multiply(I)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .locals 5
    .param p1, "scalar"    # I

    .prologue
    .line 175
    if-nez p1, :cond_1

    .line 176
    iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->getZero()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object p0

    .line 186
    .end local p0    # "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    :cond_0
    :goto_0
    return-object p0

    .line 178
    .restart local p0    # "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    :cond_1
    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    .line 181
    iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    array-length v2, v3

    .line 182
    .local v2, "size":I
    new-array v1, v2, [I

    .line 183
    .local v1, "product":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 184
    iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4, p1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->multiply(II)I

    move-result v3

    aput v3, v1, v0

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 186
    :cond_2
    new-instance v3, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-direct {v3, v4, v1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    move-object p0, v3

    goto :goto_0
.end method

.method multiply(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .locals 13
    .param p1, "other"    # Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    .prologue
    .line 145
    iget-object v8, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    iget-object v9, p1, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 146
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "ModulusPolys do not have same ModulusGF field"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->isZero()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->isZero()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 149
    :cond_1
    iget-object v8, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->getZero()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v8

    .line 162
    :goto_0
    return-object v8

    .line 151
    :cond_2
    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    .line 152
    .local v1, "aCoefficients":[I
    array-length v2, v1

    .line 153
    .local v2, "aLength":I
    iget-object v3, p1, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    .line 154
    .local v3, "bCoefficients":[I
    array-length v4, v3

    .line 155
    .local v4, "bLength":I
    add-int v8, v2, v4

    add-int/lit8 v8, v8, -0x1

    new-array v7, v8, [I

    .line 156
    .local v7, "product":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v2, :cond_4

    .line 157
    aget v0, v1, v5

    .line 158
    .local v0, "aCoeff":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    if-ge v6, v4, :cond_3

    .line 159
    add-int v8, v5, v6

    iget-object v9, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    add-int v10, v5, v6

    aget v10, v7, v10

    iget-object v11, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    aget v12, v3, v6

    invoke-virtual {v11, v0, v12}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->multiply(II)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->add(II)I

    move-result v9

    aput v9, v7, v8

    .line 158
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 156
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 162
    .end local v0    # "aCoeff":I
    .end local v6    # "j":I
    :cond_4
    new-instance v8, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    iget-object v9, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-direct {v8, v9, v7}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    goto :goto_0
.end method

.method multiplyByMonomial(II)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .locals 5
    .param p1, "degree"    # I
    .param p2, "coefficient"    # I

    .prologue
    .line 190
    if-gez p1, :cond_0

    .line 191
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 193
    :cond_0
    if-nez p2, :cond_1

    .line 194
    iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->getZero()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v3

    .line 201
    :goto_0
    return-object v3

    .line 196
    :cond_1
    iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    array-length v2, v3

    .line 197
    .local v2, "size":I
    add-int v3, v2, p1

    new-array v1, v3, [I

    .line 198
    .local v1, "product":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 199
    iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4, p2}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->multiply(II)I

    move-result v3

    aput v3, v1, v0

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 201
    :cond_2
    new-instance v3, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-direct {v3, v4, v1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    goto :goto_0
.end method

.method negative()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .locals 6

    .prologue
    .line 166
    iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    array-length v2, v3

    .line 167
    .local v2, "size":I
    new-array v1, v2, [I

    .line 168
    .local v1, "negativeCoefficients":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 169
    iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    aget v5, v5, v0

    invoke-virtual {v3, v4, v5}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->subtract(II)I

    move-result v3

    aput v3, v1, v0

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_0
    new-instance v3, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-direct {v3, v4, v1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    return-object v3
.end method

.method subtract(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .locals 2
    .param p1, "other"    # Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    iget-object v1, p1, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ModulusPolys do not have same ModulusGF field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    .end local p0    # "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    :cond_1
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->negative()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->add(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object p0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v3

    mul-int/lit8 v3, v3, 0x8

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 235
    .local v2, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v1

    .local v1, "degree":I
    :goto_0
    if-ltz v1, :cond_6

    .line 236
    invoke-virtual {p0, v1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getCoefficient(I)I

    move-result v0

    .line 237
    .local v0, "coefficient":I
    if-eqz v0, :cond_3

    .line 238
    if-gez v0, :cond_4

    .line 239
    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    neg-int v0, v0

    .line 246
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    if-eq v0, v4, :cond_2

    .line 247
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 249
    :cond_2
    if-eqz v1, :cond_3

    .line 250
    if-ne v1, v4, :cond_5

    .line 251
    const/16 v3, 0x78

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 235
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 242
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 243
    const-string v3, " + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 253
    :cond_5
    const-string v3, "x^"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 259
    .end local v0    # "coefficient":I
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
