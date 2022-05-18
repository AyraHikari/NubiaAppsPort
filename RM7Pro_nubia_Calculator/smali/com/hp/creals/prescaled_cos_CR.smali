.class Lcom/hp/creals/prescaled_cos_CR;
.super Lcom/hp/creals/slow_CR;
.source "CR.java"


# instance fields
.field op:Lcom/hp/creals/CR;


# direct methods
.method constructor <init>(Lcom/hp/creals/CR;)V
    .locals 0

    .line 1237
    invoke-direct {p0}, Lcom/hp/creals/slow_CR;-><init>()V

    .line 1238
    iput-object p1, p0, Lcom/hp/creals/prescaled_cos_CR;->op:Lcom/hp/creals/CR;

    return-void
.end method


# virtual methods
.method protected approximate(I)Ljava/math/BigInteger;
    .locals 9

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 1241
    sget-object p0, Lcom/hp/creals/prescaled_cos_CR;->big0:Ljava/math/BigInteger;

    return-object p0

    :cond_0
    neg-int v0, p1

    .line 1242
    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x2

    .line 1248
    invoke-static {v0}, Lcom/hp/creals/prescaled_cos_CR;->bound_log2(I)I

    move-result v0

    sub-int v0, p1, v0

    add-int/lit8 v0, v0, -0x4

    add-int/lit8 v1, p1, -0x2

    .line 1251
    iget-object p0, p0, Lcom/hp/creals/prescaled_cos_CR;->op:Lcom/hp/creals/CR;

    invoke-virtual {p0, v1}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object p0

    .line 1259
    sget-object v2, Lcom/hp/creals/prescaled_cos_CR;->big1:Ljava/math/BigInteger;

    add-int/lit8 v3, p1, -0x4

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    const/4 v3, 0x0

    .line 1262
    sget-object v4, Lcom/hp/creals/prescaled_cos_CR;->big1:Ljava/math/BigInteger;

    neg-int v5, v0

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v4

    move v5, v3

    move-object v3, v4

    .line 1264
    :goto_0
    invoke-virtual {v4}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    if-ltz v6, :cond_2

    .line 1265
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-nez v6, :cond_1

    sget-boolean v6, Lcom/hp/creals/prescaled_cos_CR;->please_stop:Z

    if-nez v6, :cond_1

    add-int/lit8 v5, v5, 0x2

    .line 1268
    invoke-virtual {v4, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/hp/creals/prescaled_cos_CR;->scale(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v4

    .line 1269
    invoke-virtual {v4, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/hp/creals/prescaled_cos_CR;->scale(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v4

    neg-int v6, v5

    int-to-long v6, v6

    .line 1270
    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    add-int/lit8 v7, v5, -0x1

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 1272
    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 1273
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_0

    .line 1265
    :cond_1
    new-instance p0, Lcom/hp/creals/CR$AbortedException;

    invoke-direct {p0}, Lcom/hp/creals/CR$AbortedException;-><init>()V

    throw p0

    :cond_2
    sub-int/2addr v0, p1

    .line 1275
    invoke-static {v3, v0}, Lcom/hp/creals/prescaled_cos_CR;->scale(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method
