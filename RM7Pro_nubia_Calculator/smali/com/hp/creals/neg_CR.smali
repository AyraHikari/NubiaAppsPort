.class Lcom/hp/creals/neg_CR;
.super Lcom/hp/creals/CR;
.source "CR.java"


# instance fields
.field op:Lcom/hp/creals/CR;


# direct methods
.method constructor <init>(Lcom/hp/creals/CR;)V
    .locals 0

    .line 1058
    invoke-direct {p0}, Lcom/hp/creals/CR;-><init>()V

    .line 1059
    iput-object p1, p0, Lcom/hp/creals/neg_CR;->op:Lcom/hp/creals/CR;

    return-void
.end method


# virtual methods
.method protected approximate(I)Ljava/math/BigInteger;
    .locals 0

    .line 1062
    iget-object p0, p0, Lcom/hp/creals/neg_CR;->op:Lcom/hp/creals/CR;

    invoke-virtual {p0, p1}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method
