.class Lcom/hp/creals/prescaled_asin_CR;
.super Lcom/hp/creals/slow_CR;
.source "CR.java"


# instance fields
.field op:Lcom/hp/creals/CR;


# direct methods
.method constructor <init>(Lcom/hp/creals/CR;)V
    .locals 0

    .line 1373
    invoke-direct {p0}, Lcom/hp/creals/slow_CR;-><init>()V

    .line 1374
    iput-object p1, p0, Lcom/hp/creals/prescaled_asin_CR;->op:Lcom/hp/creals/CR;

    return-void
.end method


# virtual methods
.method protected approximate(I)Ljava/math/BigInteger;
    .locals 10

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    .line 1386
    sget-object p0, Lcom/hp/creals/prescaled_asin_CR;->big0:Ljava/math/BigInteger;

    return-object p0

    :cond_0
    mul-int/lit8 v1, p1, -0x3

    .line 1387
    div-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x4

    mul-int/2addr v1, v0

    .line 1397
    invoke-static {v1}, Lcom/hp/creals/prescaled_asin_CR;->bound_log2(I)I

    move-result v1

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, -0x4

    add-int/lit8 v2, p1, -0x3

    .line 1400
    iget-object p0, p0, Lcom/hp/creals/prescaled_asin_CR;->op:Lcom/hp/creals/CR;

    invoke-virtual {p0, v2}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object p0

    .line 1412
    sget-object v3, Lcom/hp/creals/prescaled_asin_CR;->big1:Ljava/math/BigInteger;

    add-int/lit8 v4, p1, -0x4

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    sub-int v4, v2, v1

    .line 1415
    invoke-virtual {p0, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v4

    const/4 v5, 0x1

    move-object v7, v4

    move v6, v5

    move-object v5, v7

    .line 1421
    :goto_0
    invoke-virtual {v4}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-ltz v4, :cond_2

    .line 1422
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_1

    sget-boolean v4, Lcom/hp/creals/prescaled_asin_CR;->please_stop:Z

    if-nez v4, :cond_1

    add-int/2addr v6, v0

    add-int/lit8 v4, v6, -0x2

    int-to-long v8, v4

    .line 1431
    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 1432
    invoke-virtual {v4, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    add-int/lit8 v7, v2, 0x2

    invoke-static {v4, v7}, Lcom/hp/creals/prescaled_asin_CR;->scale(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v4

    .line 1435
    invoke-virtual {v4, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    add-int/lit8 v7, v6, -0x1

    int-to-long v7, v7

    .line 1436
    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    .line 1437
    invoke-virtual {v4, v7}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    add-int/lit8 v7, v2, -0x2

    .line 1439
    invoke-static {v4, v7}, Lcom/hp/creals/prescaled_asin_CR;->scale(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v7

    int-to-long v8, v6

    .line 1443
    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 1446
    invoke-virtual {v5, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    goto :goto_0

    .line 1422
    :cond_1
    new-instance p0, Lcom/hp/creals/CR$AbortedException;

    invoke-direct {p0}, Lcom/hp/creals/CR$AbortedException;-><init>()V

    throw p0

    :cond_2
    sub-int/2addr v1, p1

    .line 1448
    invoke-static {v5, v1}, Lcom/hp/creals/prescaled_asin_CR;->scale(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method
