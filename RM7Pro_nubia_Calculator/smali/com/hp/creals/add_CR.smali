.class Lcom/hp/creals/add_CR;
.super Lcom/hp/creals/CR;
.source "CR.java"


# instance fields
.field op1:Lcom/hp/creals/CR;

.field op2:Lcom/hp/creals/CR;


# direct methods
.method constructor <init>(Lcom/hp/creals/CR;Lcom/hp/creals/CR;)V
    .locals 0

    .line 1030
    invoke-direct {p0}, Lcom/hp/creals/CR;-><init>()V

    .line 1031
    iput-object p1, p0, Lcom/hp/creals/add_CR;->op1:Lcom/hp/creals/CR;

    .line 1032
    iput-object p2, p0, Lcom/hp/creals/add_CR;->op2:Lcom/hp/creals/CR;

    return-void
.end method


# virtual methods
.method protected approximate(I)Ljava/math/BigInteger;
    .locals 1

    .line 1038
    iget-object v0, p0, Lcom/hp/creals/add_CR;->op1:Lcom/hp/creals/CR;

    add-int/lit8 p1, p1, -0x2

    invoke-virtual {v0, p1}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object v0

    iget-object p0, p0, Lcom/hp/creals/add_CR;->op2:Lcom/hp/creals/CR;

    invoke-virtual {p0, p1}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    const/4 p1, -0x2

    invoke-static {p0, p1}, Lcom/hp/creals/add_CR;->scale(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method
