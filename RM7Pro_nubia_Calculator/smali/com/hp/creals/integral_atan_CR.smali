.class Lcom/hp/creals/integral_atan_CR;
.super Lcom/hp/creals/slow_CR;
.source "CR.java"


# instance fields
.field op:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1284
    invoke-direct {p0}, Lcom/hp/creals/slow_CR;-><init>()V

    iput p1, p0, Lcom/hp/creals/integral_atan_CR;->op:I

    return-void
.end method


# virtual methods
.method protected approximate(I)Ljava/math/BigInteger;
    .locals 9

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 1286
    sget-object p0, Lcom/hp/creals/integral_atan_CR;->big0:Ljava/math/BigInteger;

    return-object p0

    :cond_0
    neg-int v1, p1

    .line 1287
    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x2

    .line 1293
    invoke-static {v1}, Lcom/hp/creals/integral_atan_CR;->bound_log2(I)I

    move-result v1

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, -0x2

    .line 1300
    sget-object v2, Lcom/hp/creals/integral_atan_CR;->big1:Ljava/math/BigInteger;

    neg-int v3, v1

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    .line 1301
    iget v3, p0, Lcom/hp/creals/integral_atan_CR;->op:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    .line 1302
    iget v4, p0, Lcom/hp/creals/integral_atan_CR;->op:I

    iget p0, p0, Lcom/hp/creals/integral_atan_CR;->op:I

    mul-int/2addr v4, p0

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    .line 1303
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 1309
    sget-object v3, Lcom/hp/creals/integral_atan_CR;->big1:Ljava/math/BigInteger;

    add-int/lit8 v4, p1, -0x2

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    move v4, v0

    move v6, v4

    move-object v0, v2

    move-object v5, v0

    .line 1311
    :goto_0
    invoke-virtual {v2}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_2

    .line 1312
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/hp/creals/integral_atan_CR;->please_stop:Z

    if-nez v2, :cond_1

    add-int/lit8 v4, v4, 0x2

    .line 1314
    invoke-virtual {v5, p0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    neg-int v6, v6

    mul-int v2, v6, v4

    int-to-long v7, v2

    .line 1316
    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 1318
    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    .line 1312
    :cond_1
    new-instance p0, Lcom/hp/creals/CR$AbortedException;

    invoke-direct {p0}, Lcom/hp/creals/CR$AbortedException;-><init>()V

    throw p0

    :cond_2
    sub-int/2addr v1, p1

    .line 1320
    invoke-static {v0, v1}, Lcom/hp/creals/integral_atan_CR;->scale(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method
