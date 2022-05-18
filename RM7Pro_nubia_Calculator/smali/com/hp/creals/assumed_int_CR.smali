.class Lcom/hp/creals/assumed_int_CR;
.super Lcom/hp/creals/CR;
.source "CR.java"


# instance fields
.field value:Lcom/hp/creals/CR;


# direct methods
.method constructor <init>(Lcom/hp/creals/CR;)V
    .locals 0

    .line 1014
    invoke-direct {p0}, Lcom/hp/creals/CR;-><init>()V

    .line 1015
    iput-object p1, p0, Lcom/hp/creals/assumed_int_CR;->value:Lcom/hp/creals/CR;

    return-void
.end method


# virtual methods
.method protected approximate(I)Ljava/math/BigInteger;
    .locals 1

    if-ltz p1, :cond_0

    .line 1019
    iget-object p0, p0, Lcom/hp/creals/assumed_int_CR;->value:Lcom/hp/creals/CR;

    invoke-virtual {p0, p1}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 1021
    :cond_0
    iget-object p0, p0, Lcom/hp/creals/assumed_int_CR;->value:Lcom/hp/creals/CR;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object p0

    neg-int p1, p1

    invoke-static {p0, p1}, Lcom/hp/creals/assumed_int_CR;->scale(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method
