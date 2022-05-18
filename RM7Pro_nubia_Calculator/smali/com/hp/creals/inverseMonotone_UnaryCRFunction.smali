.class Lcom/hp/creals/inverseMonotone_UnaryCRFunction;
.super Lcom/hp/creals/UnaryCRFunction;
.source "UnaryCRFunction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hp/creals/inverseMonotone_UnaryCRFunction$inverseIncreasingCR;
    }
.end annotation


# static fields
.field static final BIG1023:Ljava/math/BigInteger;

.field static final ENABLE_TRACE:Z = false


# instance fields
.field final deriv_msd:[I

.field final f:[Lcom/hp/creals/UnaryCRFunction;

.field final f_high:[Lcom/hp/creals/CR;

.field final f_low:[Lcom/hp/creals/CR;

.field final f_negated:[Z

.field final high:[Lcom/hp/creals/CR;

.field final low:[Lcom/hp/creals/CR;

.field final max_arg_prec:[I

.field final max_msd:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x3ff

    .line 296
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->BIG1023:Ljava/math/BigInteger;

    return-void
.end method

.method constructor <init>(Lcom/hp/creals/UnaryCRFunction;Lcom/hp/creals/CR;Lcom/hp/creals/CR;)V
    .locals 4

    .line 304
    invoke-direct {p0}, Lcom/hp/creals/UnaryCRFunction;-><init>()V

    const/4 v0, 0x1

    .line 279
    new-array v1, v0, [Lcom/hp/creals/UnaryCRFunction;

    iput-object v1, p0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->f:[Lcom/hp/creals/UnaryCRFunction;

    .line 283
    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->f_negated:[Z

    .line 284
    new-array v1, v0, [Lcom/hp/creals/CR;

    iput-object v1, p0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->low:[Lcom/hp/creals/CR;

    .line 285
    new-array v1, v0, [Lcom/hp/creals/CR;

    iput-object v1, p0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->high:[Lcom/hp/creals/CR;

    .line 286
    new-array v1, v0, [Lcom/hp/creals/CR;

    iput-object v1, p0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->f_low:[Lcom/hp/creals/CR;

    .line 287
    new-array v1, v0, [Lcom/hp/creals/CR;

    iput-object v1, p0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->f_high:[Lcom/hp/creals/CR;

    .line 288
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->max_msd:[I

    .line 290
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->max_arg_prec:[I

    .line 293
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->deriv_msd:[I

    .line 305
    iget-object v1, p0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->low:[Lcom/hp/creals/CR;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    iget-object v1, p0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->high:[Lcom/hp/creals/CR;

    aput-object p3, v1, v2

    .line 306
    invoke-virtual {p1, p2}, Lcom/hp/creals/UnaryCRFunction;->execute(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object p2

    .line 307
    invoke-virtual {p1, p3}, Lcom/hp/creals/UnaryCRFunction;->execute(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object p3

    .line 310
    invoke-virtual {p2, p3}, Lcom/hp/creals/CR;->compareTo(Lcom/hp/creals/CR;)I

    move-result v1

    if-lez v1, :cond_0

    .line 311
    iget-object v1, p0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->f:[Lcom/hp/creals/UnaryCRFunction;

    sget-object v3, Lcom/hp/creals/UnaryCRFunction;->negateFunction:Lcom/hp/creals/UnaryCRFunction;

    invoke-virtual {v3, p1}, Lcom/hp/creals/UnaryCRFunction;->compose(Lcom/hp/creals/UnaryCRFunction;)Lcom/hp/creals/UnaryCRFunction;

    move-result-object p1

    aput-object p1, v1, v2

    .line 312
    iget-object p1, p0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->f_negated:[Z

    aput-boolean v0, p1, v2

    .line 313
    iget-object p1, p0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->f_low:[Lcom/hp/creals/CR;

    invoke-virtual {p2}, Lcom/hp/creals/CR;->negate()Lcom/hp/creals/CR;

    move-result-object p2

    aput-object p2, p1, v2

    .line 314
    iget-object p1, p0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->f_high:[Lcom/hp/creals/CR;

    invoke-virtual {p3}, Lcom/hp/creals/CR;->negate()Lcom/hp/creals/CR;

    move-result-object p2

    aput-object p2, p1, v2

    goto :goto_0

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->f:[Lcom/hp/creals/UnaryCRFunction;

    aput-object p1, v0, v2

    .line 317
    iget-object p1, p0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->f_negated:[Z

    aput-boolean v2, p1, v2

    .line 318
    iget-object p1, p0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->f_low:[Lcom/hp/creals/CR;

    aput-object p2, p1, v2

    .line 319
    iget-object p1, p0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->f_high:[Lcom/hp/creals/CR;

    aput-object p3, p1, v2

    .line 321
    :goto_0
    iget-object p1, p0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->max_msd:[I

    iget-object p2, p0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->low:[Lcom/hp/creals/CR;

    aget-object p2, p2, v2

    invoke-virtual {p2}, Lcom/hp/creals/CR;->abs()Lcom/hp/creals/CR;

    move-result-object p2

    iget-object p3, p0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->high:[Lcom/hp/creals/CR;

    aget-object p3, p3, v2

    invoke-virtual {p3}, Lcom/hp/creals/CR;->abs()Lcom/hp/creals/CR;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/hp/creals/CR;->max(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hp/creals/CR;->msd()I

    move-result p2

    aput p2, p1, v2

    .line 322
    iget-object p1, p0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->max_arg_prec:[I

    iget-object p2, p0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->high:[Lcom/hp/creals/CR;

    aget-object p2, p2, v2

    iget-object p3, p0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->low:[Lcom/hp/creals/CR;

    aget-object p3, p3, v2

    invoke-virtual {p2, p3}, Lcom/hp/creals/CR;->subtract(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hp/creals/CR;->msd()I

    move-result p2

    add-int/lit8 p2, p2, -0x4

    aput p2, p1, v2

    .line 323
    iget-object p1, p0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->deriv_msd:[I

    iget-object p2, p0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->f_high:[Lcom/hp/creals/CR;

    aget-object p2, p2, v2

    iget-object p3, p0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->f_low:[Lcom/hp/creals/CR;

    aget-object p3, p3, v2

    invoke-virtual {p2, p3}, Lcom/hp/creals/CR;->subtract(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object p2

    iget-object p3, p0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->high:[Lcom/hp/creals/CR;

    aget-object p3, p3, v2

    iget-object p0, p0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction;->low:[Lcom/hp/creals/CR;

    aget-object p0, p0, v2

    invoke-virtual {p3, p0}, Lcom/hp/creals/CR;->subtract(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/hp/creals/CR;->divide(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hp/creals/CR;->msd()I

    move-result p0

    aput p0, p1, v2

    return-void
.end method

.method static trace(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public execute(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;
    .locals 1

    .line 568
    new-instance v0, Lcom/hp/creals/inverseMonotone_UnaryCRFunction$inverseIncreasingCR;

    invoke-direct {v0, p0, p1}, Lcom/hp/creals/inverseMonotone_UnaryCRFunction$inverseIncreasingCR;-><init>(Lcom/hp/creals/inverseMonotone_UnaryCRFunction;Lcom/hp/creals/CR;)V

    return-object v0
.end method
