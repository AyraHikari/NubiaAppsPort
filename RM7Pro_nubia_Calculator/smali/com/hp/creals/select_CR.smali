.class Lcom/hp/creals/select_CR;
.super Lcom/hp/creals/CR;
.source "CR.java"


# instance fields
.field op1:Lcom/hp/creals/CR;

.field op2:Lcom/hp/creals/CR;

.field selector:Lcom/hp/creals/CR;

.field selector_sign:I


# direct methods
.method constructor <init>(Lcom/hp/creals/CR;Lcom/hp/creals/CR;Lcom/hp/creals/CR;)V
    .locals 1

    .line 1075
    invoke-direct {p0}, Lcom/hp/creals/CR;-><init>()V

    .line 1076
    iput-object p1, p0, Lcom/hp/creals/select_CR;->selector:Lcom/hp/creals/CR;

    .line 1077
    iget-object p1, p0, Lcom/hp/creals/select_CR;->selector:Lcom/hp/creals/CR;

    const/16 v0, -0x14

    invoke-virtual {p1, v0}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    .line 1078
    iput-object p2, p0, Lcom/hp/creals/select_CR;->op1:Lcom/hp/creals/CR;

    .line 1079
    iput-object p3, p0, Lcom/hp/creals/select_CR;->op2:Lcom/hp/creals/CR;

    return-void
.end method


# virtual methods
.method protected approximate(I)Ljava/math/BigInteger;
    .locals 4

    .line 1082
    iget v0, p0, Lcom/hp/creals/select_CR;->selector_sign:I

    if-gez v0, :cond_0

    iget-object p0, p0, Lcom/hp/creals/select_CR;->op1:Lcom/hp/creals/CR;

    invoke-virtual {p0, p1}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 1083
    :cond_0
    iget v0, p0, Lcom/hp/creals/select_CR;->selector_sign:I

    if-lez v0, :cond_1

    iget-object p0, p0, Lcom/hp/creals/select_CR;->op2:Lcom/hp/creals/CR;

    invoke-virtual {p0, p1}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 1084
    :cond_1
    iget-object v0, p0, Lcom/hp/creals/select_CR;->op1:Lcom/hp/creals/CR;

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 1085
    iget-object v2, p0, Lcom/hp/creals/select_CR;->op2:Lcom/hp/creals/CR;

    invoke-virtual {v2, p1}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object p1

    .line 1086
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v2

    .line 1087
    sget-object v3, Lcom/hp/creals/select_CR;->big1:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    const/4 v3, -0x1

    if-gtz v2, :cond_2

    .line 1089
    invoke-static {v0, v3}, Lcom/hp/creals/select_CR;->scale(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 1093
    :cond_2
    iget-object v2, p0, Lcom/hp/creals/select_CR;->selector:Lcom/hp/creals/CR;

    invoke-virtual {v2}, Lcom/hp/creals/CR;->signum()I

    move-result v2

    if-gez v2, :cond_3

    .line 1094
    iput v3, p0, Lcom/hp/creals/select_CR;->selector_sign:I

    .line 1095
    invoke-static {v0, v3}, Lcom/hp/creals/select_CR;->scale(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 1097
    :cond_3
    iput v1, p0, Lcom/hp/creals/select_CR;->selector_sign:I

    .line 1098
    invoke-static {p1, v3}, Lcom/hp/creals/select_CR;->scale(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method
