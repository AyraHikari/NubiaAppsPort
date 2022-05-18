.class Lcom/hp/creals/sqrt_CR;
.super Lcom/hp/creals/CR;
.source "CR.java"


# instance fields
.field final fp_op_prec:I

.field final fp_prec:I

.field op:Lcom/hp/creals/CR;


# direct methods
.method constructor <init>(Lcom/hp/creals/CR;)V
    .locals 1

    .line 1455
    invoke-direct {p0}, Lcom/hp/creals/CR;-><init>()V

    const/16 v0, 0x32

    .line 1456
    iput v0, p0, Lcom/hp/creals/sqrt_CR;->fp_prec:I

    const/16 v0, 0x3c

    .line 1459
    iput v0, p0, Lcom/hp/creals/sqrt_CR;->fp_op_prec:I

    .line 1455
    iput-object p1, p0, Lcom/hp/creals/sqrt_CR;->op:Lcom/hp/creals/CR;

    return-void
.end method


# virtual methods
.method protected approximate(I)Ljava/math/BigInteger;
    .locals 5

    mul-int/lit8 v0, p1, 0x2

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 1462
    iget-object v2, p0, Lcom/hp/creals/sqrt_CR;->op:Lcom/hp/creals/CR;

    invoke-virtual {v2, v0}, Lcom/hp/creals/CR;->msd(I)I

    move-result v2

    if-gt v2, v0, :cond_0

    .line 1463
    sget-object p0, Lcom/hp/creals/sqrt_CR;->big0:Ljava/math/BigInteger;

    return-object p0

    .line 1464
    :cond_0
    div-int/lit8 v0, v2, 0x2

    sub-int v3, v0, p1

    const/16 v4, 0x32

    if-le v3, v4, :cond_1

    .line 1468
    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x6

    sub-int/2addr v0, v3

    .line 1471
    invoke-virtual {p0, v0}, Lcom/hp/creals/sqrt_CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x2

    .line 1473
    iget-object p0, p0, Lcom/hp/creals/sqrt_CR;->op:Lcom/hp/creals/CR;

    invoke-virtual {p0, v3}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object p0

    .line 1477
    invoke-virtual {v2, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    sub-int/2addr v0, p1

    .line 1479
    invoke-static {p0, v0}, Lcom/hp/creals/sqrt_CR;->scale(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object p0

    .line 1481
    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 1482
    sget-object p1, Lcom/hp/creals/sqrt_CR;->big1:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v0, 0x3c

    sub-int/2addr v2, v0

    and-int/lit8 v1, v2, -0x2

    add-int/lit8 v2, v1, -0x3c

    .line 1488
    iget-object p0, p0, Lcom/hp/creals/sqrt_CR;->op:Lcom/hp/creals/CR;

    invoke-virtual {p0, v1}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p0

    .line 1490
    invoke-virtual {p0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmpg-double p0, v0, v3

    if-ltz p0, :cond_2

    .line 1493
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-long v0, v0

    .line 1494
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    .line 1495
    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, p1

    .line 1496
    invoke-static {p0, v2}, Lcom/hp/creals/sqrt_CR;->shift(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 1492
    :cond_2
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "sqrt(negative)"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
