.class abstract Lcom/hp/creals/slow_CR;
.super Lcom/hp/creals/CR;
.source "CR.java"


# static fields
.field static max_prec:I = -0x40

.field static prec_incr:I = 0x20


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 978
    invoke-direct {p0}, Lcom/hp/creals/CR;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized get_appr(I)Ljava/math/BigInteger;
    .locals 3

    monitor-enter p0

    .line 982
    :try_start_0
    invoke-static {p1}, Lcom/hp/creals/slow_CR;->check_prec(I)V

    .line 983
    iget-boolean v0, p0, Lcom/hp/creals/slow_CR;->appr_valid:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/hp/creals/slow_CR;->min_prec:I

    if-lt p1, v0, :cond_0

    .line 984
    iget-object v0, p0, Lcom/hp/creals/slow_CR;->max_appr:Ljava/math/BigInteger;

    iget v1, p0, Lcom/hp/creals/slow_CR;->min_prec:I

    sub-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/hp/creals/slow_CR;->scale(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 986
    :cond_0
    :try_start_1
    sget v0, Lcom/hp/creals/slow_CR;->max_prec:I

    const/4 v1, 0x1

    if-lt p1, v0, :cond_1

    sget v0, Lcom/hp/creals/slow_CR;->max_prec:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/hp/creals/slow_CR;->prec_incr:I

    sub-int v0, p1, v0

    add-int/2addr v0, v1

    sget v2, Lcom/hp/creals/slow_CR;->prec_incr:I

    sub-int/2addr v2, v1

    not-int v2, v2

    and-int/2addr v0, v2

    .line 988
    :goto_0
    invoke-virtual {p0, v0}, Lcom/hp/creals/slow_CR;->approximate(I)Ljava/math/BigInteger;

    move-result-object v2

    .line 989
    iput v0, p0, Lcom/hp/creals/slow_CR;->min_prec:I

    .line 990
    iput-object v2, p0, Lcom/hp/creals/slow_CR;->max_appr:Ljava/math/BigInteger;

    .line 991
    iput-boolean v1, p0, Lcom/hp/creals/slow_CR;->appr_valid:Z

    sub-int/2addr v0, p1

    .line 992
    invoke-static {v2, v0}, Lcom/hp/creals/slow_CR;->scale(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 981
    monitor-exit p0

    throw p1
.end method
