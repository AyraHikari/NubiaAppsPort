.class Lcom/hp/creals/int_CR;
.super Lcom/hp/creals/CR;
.source "CR.java"


# instance fields
.field value:Ljava/math/BigInteger;


# direct methods
.method constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    .line 1001
    invoke-direct {p0}, Lcom/hp/creals/CR;-><init>()V

    .line 1002
    iput-object p1, p0, Lcom/hp/creals/int_CR;->value:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method protected approximate(I)Ljava/math/BigInteger;
    .locals 0

    .line 1005
    iget-object p0, p0, Lcom/hp/creals/int_CR;->value:Ljava/math/BigInteger;

    neg-int p1, p1

    invoke-static {p0, p1}, Lcom/hp/creals/int_CR;->scale(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method
