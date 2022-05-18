.class Lcom/hp/creals/inv_CR;
.super Lcom/hp/creals/CR;
.source "CR.java"


# instance fields
.field op:Lcom/hp/creals/CR;


# direct methods
.method constructor <init>(Lcom/hp/creals/CR;)V
    .locals 0

    .line 1153
    invoke-direct {p0}, Lcom/hp/creals/CR;-><init>()V

    iput-object p1, p0, Lcom/hp/creals/inv_CR;->op:Lcom/hp/creals/CR;

    return-void
.end method


# virtual methods
.method protected approximate(I)Ljava/math/BigInteger;
    .locals 3

    .line 1155
    iget-object v0, p0, Lcom/hp/creals/inv_CR;->op:Lcom/hp/creals/CR;

    invoke-virtual {v0}, Lcom/hp/creals/CR;->msd()I

    move-result v0

    const/4 v1, 0x1

    rsub-int/lit8 v2, v0, 0x1

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x3

    sub-int/2addr v0, v2

    neg-int p1, p1

    sub-int/2addr p1, v0

    if-gez p1, :cond_0

    .line 1173
    sget-object p0, Lcom/hp/creals/inv_CR;->big0:Ljava/math/BigInteger;

    return-object p0

    .line 1174
    :cond_0
    sget-object v2, Lcom/hp/creals/inv_CR;->big1:Ljava/math/BigInteger;

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p1

    .line 1175
    iget-object p0, p0, Lcom/hp/creals/inv_CR;->op:Lcom/hp/creals/CR;

    invoke-virtual {p0, v0}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object p0

    .line 1176
    invoke-virtual {p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    .line 1177
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 1180
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 1181
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result p0

    if-gez p0, :cond_1

    .line 1182
    invoke-virtual {p1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method
