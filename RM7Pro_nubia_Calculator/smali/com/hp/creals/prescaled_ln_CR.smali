.class Lcom/hp/creals/prescaled_ln_CR;
.super Lcom/hp/creals/slow_CR;
.source "CR.java"


# instance fields
.field op:Lcom/hp/creals/CR;


# direct methods
.method constructor <init>(Lcom/hp/creals/CR;)V
    .locals 0

    .line 1327
    invoke-direct {p0}, Lcom/hp/creals/slow_CR;-><init>()V

    iput-object p1, p0, Lcom/hp/creals/prescaled_ln_CR;->op:Lcom/hp/creals/CR;

    return-void
.end method


# virtual methods
.method protected approximate(I)Ljava/math/BigInteger;
    .locals 11

    if-ltz p1, :cond_0

    .line 1337
    sget-object p0, Lcom/hp/creals/prescaled_ln_CR;->big0:Ljava/math/BigInteger;

    return-object p0

    :cond_0
    neg-int v0, p1

    mul-int/lit8 v0, v0, 0x2

    .line 1343
    invoke-static {v0}, Lcom/hp/creals/prescaled_ln_CR;->bound_log2(I)I

    move-result v0

    sub-int v0, p1, v0

    add-int/lit8 v0, v0, -0x4

    add-int/lit8 v1, p1, -0x3

    .line 1346
    iget-object p0, p0, Lcom/hp/creals/prescaled_ln_CR;->op:Lcom/hp/creals/CR;

    invoke-virtual {p0, v1}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object p0

    .line 1348
    sget-object v2, Lcom/hp/creals/prescaled_ln_CR;->big1:Ljava/math/BigInteger;

    neg-int v3, v0

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    sub-int v2, v1, v0

    .line 1349
    invoke-static {p0, v2}, Lcom/hp/creals/prescaled_ln_CR;->scale(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v2

    .line 1354
    sget-object v3, Lcom/hp/creals/prescaled_ln_CR;->big1:Ljava/math/BigInteger;

    add-int/lit8 v4, p1, -0x4

    sub-int/2addr v4, v0

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    const/4 v4, 0x1

    move-object v5, v2

    move-object v8, v5

    move v6, v4

    move v7, v6

    .line 1356
    :goto_0
    invoke-virtual {v2}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_2

    .line 1357
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/hp/creals/prescaled_ln_CR;->please_stop:Z

    if-nez v2, :cond_1

    add-int/2addr v6, v4

    neg-int v7, v7

    .line 1360
    invoke-virtual {v8, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/hp/creals/prescaled_ln_CR;->scale(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v8

    mul-int v2, v6, v7

    int-to-long v9, v2

    .line 1361
    invoke-static {v9, v10}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 1363
    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    goto :goto_0

    .line 1357
    :cond_1
    new-instance p0, Lcom/hp/creals/CR$AbortedException;

    invoke-direct {p0}, Lcom/hp/creals/CR$AbortedException;-><init>()V

    throw p0

    :cond_2
    sub-int/2addr v0, p1

    .line 1365
    invoke-static {v5, v0}, Lcom/hp/creals/prescaled_ln_CR;->scale(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method
