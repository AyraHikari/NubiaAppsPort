.class Lcom/hp/creals/shifted_CR;
.super Lcom/hp/creals/CR;
.source "CR.java"


# instance fields
.field count:I

.field op:Lcom/hp/creals/CR;


# direct methods
.method constructor <init>(Lcom/hp/creals/CR;I)V
    .locals 0

    .line 1046
    invoke-direct {p0}, Lcom/hp/creals/CR;-><init>()V

    .line 1047
    iput-object p1, p0, Lcom/hp/creals/shifted_CR;->op:Lcom/hp/creals/CR;

    .line 1048
    iput p2, p0, Lcom/hp/creals/shifted_CR;->count:I

    return-void
.end method


# virtual methods
.method protected approximate(I)Ljava/math/BigInteger;
    .locals 1

    .line 1051
    iget-object v0, p0, Lcom/hp/creals/shifted_CR;->op:Lcom/hp/creals/CR;

    iget p0, p0, Lcom/hp/creals/shifted_CR;->count:I

    sub-int/2addr p1, p0

    invoke-virtual {v0, p1}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method
