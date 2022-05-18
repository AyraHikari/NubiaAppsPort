.class Lcom/hp/creals/prescaled_exp_CR;
.super Lcom/hp/creals/CR;
.source "CR.java"


# instance fields
.field op:Lcom/hp/creals/CR;


# direct methods
.method constructor <init>(Lcom/hp/creals/CR;)V
    .locals 0

    .line 1197
    invoke-direct {p0}, Lcom/hp/creals/CR;-><init>()V

    iput-object p1, p0, Lcom/hp/creals/prescaled_exp_CR;->op:Lcom/hp/creals/CR;

    return-void
.end method


# virtual methods
.method protected approximate(I)Ljava/math/BigInteger;
    .locals 9

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 1199
    sget-object p0, Lcom/hp/creals/prescaled_exp_CR;->big0:Ljava/math/BigInteger;

    return-object p0

    :cond_0
    neg-int v1, p1

    .line 1200
    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x2

    .line 1206
    invoke-static {v1}, Lcom/hp/creals/prescaled_exp_CR;->bound_log2(I)I

    move-result v1

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, -0x4

    add-int/lit8 v2, p1, -0x3

    .line 1209
    iget-object p0, p0, Lcom/hp/creals/prescaled_exp_CR;->op:Lcom/hp/creals/CR;

    invoke-virtual {p0, v2}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object p0

    .line 1215
    sget-object v3, Lcom/hp/creals/prescaled_exp_CR;->big1:Ljava/math/BigInteger;

    neg-int v4, v1

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    const/4 v4, 0x0

    .line 1219
    sget-object v5, Lcom/hp/creals/prescaled_exp_CR;->big1:Ljava/math/BigInteger;

    add-int/lit8 v6, p1, -0x4

    sub-int/2addr v6, v1

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v5

    move v6, v4

    move-object v4, v3

    .line 1221
    :goto_0
    invoke-virtual {v3}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    if-ltz v7, :cond_2

    .line 1222
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v7

    if-nez v7, :cond_1

    sget-boolean v7, Lcom/hp/creals/prescaled_exp_CR;->please_stop:Z

    if-nez v7, :cond_1

    add-int/2addr v6, v0

    .line 1225
    invoke-virtual {v3, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/hp/creals/prescaled_exp_CR;->scale(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v3

    int-to-long v7, v6

    .line 1226
    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 1227
    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    goto :goto_0

    .line 1222
    :cond_1
    new-instance p0, Lcom/hp/creals/CR$AbortedException;

    invoke-direct {p0}, Lcom/hp/creals/CR$AbortedException;-><init>()V

    throw p0

    :cond_2
    sub-int/2addr v1, p1

    .line 1229
    invoke-static {v4, v1}, Lcom/hp/creals/prescaled_exp_CR;->scale(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method
