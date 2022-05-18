.class Lcom/hp/creals/monotoneDerivative_UnaryCRFunction$monotoneDerivativeCR;
.super Lcom/hp/creals/CR;
.source "UnaryCRFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hp/creals/monotoneDerivative_UnaryCRFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "monotoneDerivativeCR"
.end annotation


# instance fields
.field arg:Lcom/hp/creals/CR;

.field f_arg:Lcom/hp/creals/CR;

.field max_delta_msd:I

.field final synthetic this$0:Lcom/hp/creals/monotoneDerivative_UnaryCRFunction;


# direct methods
.method constructor <init>(Lcom/hp/creals/monotoneDerivative_UnaryCRFunction;Lcom/hp/creals/CR;)V
    .locals 2

    .line 617
    iput-object p1, p0, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction$monotoneDerivativeCR;->this$0:Lcom/hp/creals/monotoneDerivative_UnaryCRFunction;

    invoke-direct {p0}, Lcom/hp/creals/CR;-><init>()V

    .line 618
    iput-object p2, p0, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction$monotoneDerivativeCR;->arg:Lcom/hp/creals/CR;

    .line 619
    iget-object v0, p1, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction;->f:[Lcom/hp/creals/UnaryCRFunction;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Lcom/hp/creals/UnaryCRFunction;->execute(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object p2

    iput-object p2, p0, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction$monotoneDerivativeCR;->f_arg:Lcom/hp/creals/CR;

    .line 622
    iget-object p2, p0, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction$monotoneDerivativeCR;->arg:Lcom/hp/creals/CR;

    iget-object v0, p1, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction;->low:[Lcom/hp/creals/CR;

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Lcom/hp/creals/CR;->subtract(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object p2

    .line 623
    invoke-virtual {p2}, Lcom/hp/creals/CR;->msd()I

    move-result v0

    .line 624
    iget-object p1, p1, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction;->high:[Lcom/hp/creals/CR;

    aget-object p1, p1, v1

    iget-object v1, p0, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction$monotoneDerivativeCR;->arg:Lcom/hp/creals/CR;

    invoke-virtual {p1, v1}, Lcom/hp/creals/CR;->subtract(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object p1

    .line 625
    invoke-virtual {p1}, Lcom/hp/creals/CR;->msd()I

    move-result v1

    .line 626
    invoke-virtual {p2}, Lcom/hp/creals/CR;->signum()I

    move-result p2

    if-ltz p2, :cond_1

    invoke-virtual {p1}, Lcom/hp/creals/CR;->signum()I

    move-result p1

    if-ltz p1, :cond_1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 629
    :goto_0
    iput v0, p0, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction$monotoneDerivativeCR;->max_delta_msd:I

    return-void

    .line 627
    :cond_1
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "fn not monotone"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected approximate(I)Ljava/math/BigInteger;
    .locals 7

    .line 635
    iget-object v0, p0, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction$monotoneDerivativeCR;->this$0:Lcom/hp/creals/monotoneDerivative_UnaryCRFunction;

    iget-object v0, v0, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction;->deriv2_msd:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    sub-int v0, p1, v0

    .line 637
    iget v2, p0, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction$monotoneDerivativeCR;->max_delta_msd:I

    if-le v0, v2, :cond_0

    iget v0, p0, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction$monotoneDerivativeCR;->max_delta_msd:I

    :cond_0
    const/4 v2, -0x4

    add-int/2addr v0, v2

    .line 639
    sget-object v3, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction$monotoneDerivativeCR;->ONE:Lcom/hp/creals/CR;

    invoke-virtual {v3, v0}, Lcom/hp/creals/CR;->shiftLeft(I)Lcom/hp/creals/CR;

    move-result-object v3

    .line 641
    iget-object v4, p0, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction$monotoneDerivativeCR;->arg:Lcom/hp/creals/CR;

    invoke-virtual {v4, v3}, Lcom/hp/creals/CR;->subtract(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object v4

    .line 642
    iget-object v5, p0, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction$monotoneDerivativeCR;->arg:Lcom/hp/creals/CR;

    invoke-virtual {v5, v3}, Lcom/hp/creals/CR;->add(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object v3

    .line 643
    iget-object v5, p0, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction$monotoneDerivativeCR;->this$0:Lcom/hp/creals/monotoneDerivative_UnaryCRFunction;

    iget-object v5, v5, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction;->f:[Lcom/hp/creals/UnaryCRFunction;

    aget-object v5, v5, v1

    invoke-virtual {v5, v4}, Lcom/hp/creals/UnaryCRFunction;->execute(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object v4

    .line 644
    iget-object v5, p0, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction$monotoneDerivativeCR;->this$0:Lcom/hp/creals/monotoneDerivative_UnaryCRFunction;

    iget-object v5, v5, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction;->f:[Lcom/hp/creals/UnaryCRFunction;

    aget-object v5, v5, v1

    invoke-virtual {v5, v3}, Lcom/hp/creals/UnaryCRFunction;->execute(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object v3

    .line 645
    iget-object v5, p0, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction$monotoneDerivativeCR;->f_arg:Lcom/hp/creals/CR;

    invoke-virtual {v5, v4}, Lcom/hp/creals/CR;->subtract(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/hp/creals/CR;->shiftRight(I)Lcom/hp/creals/CR;

    move-result-object v4

    .line 646
    iget-object v5, p0, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction$monotoneDerivativeCR;->f_arg:Lcom/hp/creals/CR;

    invoke-virtual {v3, v5}, Lcom/hp/creals/CR;->subtract(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/hp/creals/CR;->shiftRight(I)Lcom/hp/creals/CR;

    move-result-object v3

    add-int/lit8 v5, p1, -0x4

    .line 648
    invoke-virtual {v4, v5}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object v4

    .line 649
    invoke-virtual {v3, v5}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 650
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v3

    .line 652
    sget-object v6, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction$monotoneDerivativeCR;->big8:Ljava/math/BigInteger;

    invoke-virtual {v3, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    if-gez v6, :cond_1

    .line 653
    invoke-static {v4, v2}, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction$monotoneDerivativeCR;->scale(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 655
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction$monotoneDerivativeCR;->please_stop:Z

    if-nez v2, :cond_2

    .line 657
    iget-object v2, p0, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction$monotoneDerivativeCR;->this$0:Lcom/hp/creals/monotoneDerivative_UnaryCRFunction;

    iget-object v2, v2, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction;->deriv2_msd:[I

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x4

    aput v5, v2, v1

    .line 659
    iget-object v2, p0, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction$monotoneDerivativeCR;->this$0:Lcom/hp/creals/monotoneDerivative_UnaryCRFunction;

    iget-object v2, v2, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction;->deriv2_msd:[I

    aget v3, v2, v1

    sub-int/2addr v3, v0

    aput v3, v2, v1

    .line 660
    invoke-virtual {p0, p1}, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction$monotoneDerivativeCR;->approximate(I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 656
    :cond_2
    new-instance p0, Lcom/hp/creals/CR$AbortedException;

    invoke-direct {p0}, Lcom/hp/creals/CR$AbortedException;-><init>()V

    throw p0
.end method
