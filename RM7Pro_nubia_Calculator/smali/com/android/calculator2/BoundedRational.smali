.class public Lcom/android/calculator2/BoundedRational;
.super Ljava/lang/Object;
.source "BoundedRational.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calculator2/BoundedRational$ZeroDivisionException;
    }
.end annotation


# static fields
.field private static final BIG_FIVE:Ljava/math/BigInteger;

.field private static final BIG_MINUS_ONE:Ljava/math/BigInteger;

.field private static final BIG_TWO:Ljava/math/BigInteger;

.field public static final FORTY_FIVE:Lcom/android/calculator2/BoundedRational;

.field public static final HALF:Lcom/android/calculator2/BoundedRational;

.field private static final MAX_SIZE:I = 0x2710

.field public static final MINUS_FORTY_FIVE:Lcom/android/calculator2/BoundedRational;

.field public static final MINUS_HALF:Lcom/android/calculator2/BoundedRational;

.field public static final MINUS_NINETY:Lcom/android/calculator2/BoundedRational;

.field public static final MINUS_ONE:Lcom/android/calculator2/BoundedRational;

.field public static final MINUS_THIRTY:Lcom/android/calculator2/BoundedRational;

.field public static final MINUS_TWO:Lcom/android/calculator2/BoundedRational;

.field public static final NINETY:Lcom/android/calculator2/BoundedRational;

.field public static final ONE:Lcom/android/calculator2/BoundedRational;

.field public static final QUARTER:Lcom/android/calculator2/BoundedRational;

.field public static final SIXTH:Lcom/android/calculator2/BoundedRational;

.field public static final TEN:Lcom/android/calculator2/BoundedRational;

.field public static final THIRD:Lcom/android/calculator2/BoundedRational;

.field public static final THIRTY:Lcom/android/calculator2/BoundedRational;

.field public static final TWELVE:Lcom/android/calculator2/BoundedRational;

.field public static final TWO:Lcom/android/calculator2/BoundedRational;

.field public static final ZERO:Lcom/android/calculator2/BoundedRational;

.field static sReduceRng:Ljava/util/Random;


# instance fields
.field private final mDen:Ljava/math/BigInteger;

.field private final mNum:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 170
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/calculator2/BoundedRational;->sReduceRng:Ljava/util/Random;

    .line 317
    new-instance v0, Lcom/android/calculator2/BoundedRational;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/calculator2/BoundedRational;-><init>(J)V

    sput-object v0, Lcom/android/calculator2/BoundedRational;->ZERO:Lcom/android/calculator2/BoundedRational;

    .line 318
    new-instance v0, Lcom/android/calculator2/BoundedRational;

    const-wide/16 v1, 0x2

    const-wide/16 v3, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/calculator2/BoundedRational;-><init>(JJ)V

    sput-object v0, Lcom/android/calculator2/BoundedRational;->HALF:Lcom/android/calculator2/BoundedRational;

    .line 319
    new-instance v0, Lcom/android/calculator2/BoundedRational;

    const-wide/16 v5, -0x1

    invoke-direct {v0, v5, v6, v1, v2}, Lcom/android/calculator2/BoundedRational;-><init>(JJ)V

    sput-object v0, Lcom/android/calculator2/BoundedRational;->MINUS_HALF:Lcom/android/calculator2/BoundedRational;

    .line 320
    new-instance v0, Lcom/android/calculator2/BoundedRational;

    const-wide/16 v7, 0x3

    invoke-direct {v0, v3, v4, v7, v8}, Lcom/android/calculator2/BoundedRational;-><init>(JJ)V

    sput-object v0, Lcom/android/calculator2/BoundedRational;->THIRD:Lcom/android/calculator2/BoundedRational;

    .line 321
    new-instance v0, Lcom/android/calculator2/BoundedRational;

    const-wide/16 v7, 0x4

    invoke-direct {v0, v3, v4, v7, v8}, Lcom/android/calculator2/BoundedRational;-><init>(JJ)V

    sput-object v0, Lcom/android/calculator2/BoundedRational;->QUARTER:Lcom/android/calculator2/BoundedRational;

    .line 322
    new-instance v0, Lcom/android/calculator2/BoundedRational;

    const-wide/16 v7, 0x6

    invoke-direct {v0, v3, v4, v7, v8}, Lcom/android/calculator2/BoundedRational;-><init>(JJ)V

    sput-object v0, Lcom/android/calculator2/BoundedRational;->SIXTH:Lcom/android/calculator2/BoundedRational;

    .line 323
    new-instance v0, Lcom/android/calculator2/BoundedRational;

    invoke-direct {v0, v3, v4}, Lcom/android/calculator2/BoundedRational;-><init>(J)V

    sput-object v0, Lcom/android/calculator2/BoundedRational;->ONE:Lcom/android/calculator2/BoundedRational;

    .line 324
    new-instance v0, Lcom/android/calculator2/BoundedRational;

    invoke-direct {v0, v5, v6}, Lcom/android/calculator2/BoundedRational;-><init>(J)V

    sput-object v0, Lcom/android/calculator2/BoundedRational;->MINUS_ONE:Lcom/android/calculator2/BoundedRational;

    .line 325
    new-instance v0, Lcom/android/calculator2/BoundedRational;

    invoke-direct {v0, v1, v2}, Lcom/android/calculator2/BoundedRational;-><init>(J)V

    sput-object v0, Lcom/android/calculator2/BoundedRational;->TWO:Lcom/android/calculator2/BoundedRational;

    .line 326
    new-instance v0, Lcom/android/calculator2/BoundedRational;

    const-wide/16 v3, -0x2

    invoke-direct {v0, v3, v4}, Lcom/android/calculator2/BoundedRational;-><init>(J)V

    sput-object v0, Lcom/android/calculator2/BoundedRational;->MINUS_TWO:Lcom/android/calculator2/BoundedRational;

    .line 327
    new-instance v0, Lcom/android/calculator2/BoundedRational;

    const-wide/16 v3, 0xa

    invoke-direct {v0, v3, v4}, Lcom/android/calculator2/BoundedRational;-><init>(J)V

    sput-object v0, Lcom/android/calculator2/BoundedRational;->TEN:Lcom/android/calculator2/BoundedRational;

    .line 328
    new-instance v0, Lcom/android/calculator2/BoundedRational;

    const-wide/16 v3, 0xc

    invoke-direct {v0, v3, v4}, Lcom/android/calculator2/BoundedRational;-><init>(J)V

    sput-object v0, Lcom/android/calculator2/BoundedRational;->TWELVE:Lcom/android/calculator2/BoundedRational;

    .line 329
    new-instance v0, Lcom/android/calculator2/BoundedRational;

    const-wide/16 v3, 0x1e

    invoke-direct {v0, v3, v4}, Lcom/android/calculator2/BoundedRational;-><init>(J)V

    sput-object v0, Lcom/android/calculator2/BoundedRational;->THIRTY:Lcom/android/calculator2/BoundedRational;

    .line 330
    new-instance v0, Lcom/android/calculator2/BoundedRational;

    const-wide/16 v3, -0x1e

    invoke-direct {v0, v3, v4}, Lcom/android/calculator2/BoundedRational;-><init>(J)V

    sput-object v0, Lcom/android/calculator2/BoundedRational;->MINUS_THIRTY:Lcom/android/calculator2/BoundedRational;

    .line 331
    new-instance v0, Lcom/android/calculator2/BoundedRational;

    const-wide/16 v3, 0x2d

    invoke-direct {v0, v3, v4}, Lcom/android/calculator2/BoundedRational;-><init>(J)V

    sput-object v0, Lcom/android/calculator2/BoundedRational;->FORTY_FIVE:Lcom/android/calculator2/BoundedRational;

    .line 332
    new-instance v0, Lcom/android/calculator2/BoundedRational;

    const-wide/16 v3, -0x2d

    invoke-direct {v0, v3, v4}, Lcom/android/calculator2/BoundedRational;-><init>(J)V

    sput-object v0, Lcom/android/calculator2/BoundedRational;->MINUS_FORTY_FIVE:Lcom/android/calculator2/BoundedRational;

    .line 333
    new-instance v0, Lcom/android/calculator2/BoundedRational;

    const-wide/16 v3, 0x5a

    invoke-direct {v0, v3, v4}, Lcom/android/calculator2/BoundedRational;-><init>(J)V

    sput-object v0, Lcom/android/calculator2/BoundedRational;->NINETY:Lcom/android/calculator2/BoundedRational;

    .line 334
    new-instance v0, Lcom/android/calculator2/BoundedRational;

    const-wide/16 v3, -0x5a

    invoke-direct {v0, v3, v4}, Lcom/android/calculator2/BoundedRational;-><init>(J)V

    sput-object v0, Lcom/android/calculator2/BoundedRational;->MINUS_NINETY:Lcom/android/calculator2/BoundedRational;

    .line 336
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/calculator2/BoundedRational;->BIG_TWO:Ljava/math/BigInteger;

    const-wide/16 v0, 0x5

    .line 392
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/calculator2/BoundedRational;->BIG_FIVE:Ljava/math/BigInteger;

    .line 393
    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/calculator2/BoundedRational;->BIG_MINUS_ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/calculator2/BoundedRational;->mNum:Ljava/math/BigInteger;

    const-wide/16 p1, 0x1

    .line 61
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/calculator2/BoundedRational;->mDen:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/calculator2/BoundedRational;->mNum:Ljava/math/BigInteger;

    .line 56
    invoke-static {p3, p4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/calculator2/BoundedRational;->mDen:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/calculator2/BoundedRational;->mNum:Ljava/math/BigInteger;

    .line 51
    sget-object p1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object p1, p0, Lcom/android/calculator2/BoundedRational;->mDen:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/calculator2/BoundedRational;->mNum:Ljava/math/BigInteger;

    .line 46
    iput-object p2, p0, Lcom/android/calculator2/BoundedRational;->mDen:Ljava/math/BigInteger;

    return-void
.end method

.method public static add(Lcom/android/calculator2/BoundedRational;Lcom/android/calculator2/BoundedRational;)Lcom/android/calculator2/BoundedRational;
    .locals 3

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/calculator2/BoundedRational;->mDen:Ljava/math/BigInteger;

    iget-object v1, p1, Lcom/android/calculator2/BoundedRational;->mDen:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 230
    iget-object v1, p0, Lcom/android/calculator2/BoundedRational;->mNum:Ljava/math/BigInteger;

    iget-object v2, p1, Lcom/android/calculator2/BoundedRational;->mDen:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object p1, p1, Lcom/android/calculator2/BoundedRational;->mNum:Ljava/math/BigInteger;

    iget-object p0, p0, Lcom/android/calculator2/BoundedRational;->mDen:Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 231
    new-instance p1, Lcom/android/calculator2/BoundedRational;

    invoke-direct {p1, p0, v0}, Lcom/android/calculator2/BoundedRational;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {p1}, Lcom/android/calculator2/BoundedRational;->maybeReduce(Lcom/android/calculator2/BoundedRational;)Lcom/android/calculator2/BoundedRational;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static asBigInteger(Lcom/android/calculator2/BoundedRational;)Ljava/math/BigInteger;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/android/calculator2/BoundedRational;->mNum:Ljava/math/BigInteger;

    iget-object p0, p0, Lcom/android/calculator2/BoundedRational;->mDen:Ljava/math/BigInteger;

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object p0

    const/4 v1, 0x1

    .line 219
    aget-object v1, p0, v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 220
    aget-object p0, p0, v0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static digitsRequired(Lcom/android/calculator2/BoundedRational;)I
    .locals 4

    const v0, 0x7fffffff

    if-nez p0, :cond_0

    return v0

    .line 408
    :cond_0
    iget-object v1, p0, Lcom/android/calculator2/BoundedRational;->mDen:Ljava/math/BigInteger;

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    .line 411
    :cond_1
    invoke-direct {p0}, Lcom/android/calculator2/BoundedRational;->reduce()Lcom/android/calculator2/BoundedRational;

    move-result-object p0

    .line 412
    iget-object p0, p0, Lcom/android/calculator2/BoundedRational;->mDen:Ljava/math/BigInteger;

    .line 413
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v3, 0x2710

    if-le v1, v3, :cond_2

    return v0

    :cond_2
    move v1, v2

    .line 416
    :goto_0
    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v3

    if-nez v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x1

    .line 418
    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    .line 420
    :cond_3
    :goto_1
    sget-object v3, Lcom/android/calculator2/BoundedRational;->BIG_FIVE:Ljava/math/BigInteger;

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-nez v3, :cond_4

    add-int/lit8 v2, v2, 0x1

    .line 422
    sget-object v3, Lcom/android/calculator2/BoundedRational;->BIG_FIVE:Ljava/math/BigInteger;

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_1

    .line 429
    :cond_4
    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Lcom/android/calculator2/BoundedRational;->BIG_MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v0

    .line 432
    :cond_5
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static divide(Lcom/android/calculator2/BoundedRational;Lcom/android/calculator2/BoundedRational;)Lcom/android/calculator2/BoundedRational;
    .locals 0

    .line 294
    invoke-static {p1}, Lcom/android/calculator2/BoundedRational;->inverse(Lcom/android/calculator2/BoundedRational;)Lcom/android/calculator2/BoundedRational;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/calculator2/BoundedRational;->multiply(Lcom/android/calculator2/BoundedRational;Lcom/android/calculator2/BoundedRational;)Lcom/android/calculator2/BoundedRational;

    move-result-object p0

    return-object p0
.end method

.method public static inverse(Lcom/android/calculator2/BoundedRational;)Lcom/android/calculator2/BoundedRational;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/android/calculator2/BoundedRational;->mNum:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    new-instance v0, Lcom/android/calculator2/BoundedRational;

    iget-object v1, p0, Lcom/android/calculator2/BoundedRational;->mDen:Ljava/math/BigInteger;

    iget-object p0, p0, Lcom/android/calculator2/BoundedRational;->mNum:Ljava/math/BigInteger;

    invoke-direct {v0, v1, p0}, Lcom/android/calculator2/BoundedRational;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    .line 288
    :cond_1
    new-instance p0, Lcom/android/calculator2/BoundedRational$ZeroDivisionException;

    invoke-direct {p0}, Lcom/android/calculator2/BoundedRational$ZeroDivisionException;-><init>()V

    throw p0
.end method

.method private static maybeReduce(Lcom/android/calculator2/BoundedRational;)Lcom/android/calculator2/BoundedRational;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 181
    :cond_0
    invoke-direct {p0}, Lcom/android/calculator2/BoundedRational;->tooBig()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/calculator2/BoundedRational;->sReduceRng:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    and-int/lit8 v1, v1, 0xf

    if-eqz v1, :cond_1

    return-object p0

    .line 184
    :cond_1
    invoke-direct {p0}, Lcom/android/calculator2/BoundedRational;->positiveDen()Lcom/android/calculator2/BoundedRational;

    move-result-object p0

    .line 185
    invoke-direct {p0}, Lcom/android/calculator2/BoundedRational;->reduce()Lcom/android/calculator2/BoundedRational;

    move-result-object p0

    .line 186
    invoke-direct {p0}, Lcom/android/calculator2/BoundedRational;->tooBig()Z

    move-result v1

    if-nez v1, :cond_2

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static multiply(Lcom/android/calculator2/BoundedRational;Lcom/android/calculator2/BoundedRational;)Lcom/android/calculator2/BoundedRational;
    .locals 0

    .line 271
    invoke-static {p0, p1}, Lcom/android/calculator2/BoundedRational;->rawMultiply(Lcom/android/calculator2/BoundedRational;Lcom/android/calculator2/BoundedRational;)Lcom/android/calculator2/BoundedRational;

    move-result-object p0

    invoke-static {p0}, Lcom/android/calculator2/BoundedRational;->maybeReduce(Lcom/android/calculator2/BoundedRational;)Lcom/android/calculator2/BoundedRational;

    move-result-object p0

    return-object p0
.end method

.method public static negate(Lcom/android/calculator2/BoundedRational;)Lcom/android/calculator2/BoundedRational;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 242
    :cond_0
    new-instance v0, Lcom/android/calculator2/BoundedRational;

    iget-object v1, p0, Lcom/android/calculator2/BoundedRational;->mNum:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    iget-object p0, p0, Lcom/android/calculator2/BoundedRational;->mDen:Ljava/math/BigInteger;

    invoke-direct {v0, v1, p0}, Lcom/android/calculator2/BoundedRational;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method private positiveDen()Lcom/android/calculator2/BoundedRational;
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/android/calculator2/BoundedRational;->mDen:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-lez v0, :cond_0

    return-object p0

    .line 155
    :cond_0
    new-instance v0, Lcom/android/calculator2/BoundedRational;

    iget-object v1, p0, Lcom/android/calculator2/BoundedRational;->mNum:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    iget-object p0, p0, Lcom/android/calculator2/BoundedRational;->mDen:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/calculator2/BoundedRational;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public static pow(Lcom/android/calculator2/BoundedRational;Lcom/android/calculator2/BoundedRational;)Lcom/android/calculator2/BoundedRational;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 376
    :cond_0
    iget-object v1, p1, Lcom/android/calculator2/BoundedRational;->mNum:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-nez v1, :cond_1

    .line 379
    new-instance p0, Lcom/android/calculator2/BoundedRational;

    const-wide/16 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/calculator2/BoundedRational;-><init>(J)V

    return-object p0

    :cond_1
    if-nez p0, :cond_2

    return-object v0

    .line 384
    :cond_2
    invoke-direct {p1}, Lcom/android/calculator2/BoundedRational;->reduce()Lcom/android/calculator2/BoundedRational;

    move-result-object p1

    invoke-direct {p1}, Lcom/android/calculator2/BoundedRational;->positiveDen()Lcom/android/calculator2/BoundedRational;

    move-result-object p1

    .line 385
    iget-object v1, p1, Lcom/android/calculator2/BoundedRational;->mDen:Ljava/math/BigInteger;

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return-object v0

    .line 388
    :cond_3
    iget-object p1, p1, Lcom/android/calculator2/BoundedRational;->mNum:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Lcom/android/calculator2/BoundedRational;->pow(Ljava/math/BigInteger;)Lcom/android/calculator2/BoundedRational;

    move-result-object p0

    return-object p0
.end method

.method private static rawMultiply(Lcom/android/calculator2/BoundedRational;Lcom/android/calculator2/BoundedRational;)Lcom/android/calculator2/BoundedRational;
    .locals 2

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    sget-object v0, Lcom/android/calculator2/BoundedRational;->ONE:Lcom/android/calculator2/BoundedRational;

    if-ne p0, v0, :cond_1

    return-object p1

    .line 262
    :cond_1
    sget-object v0, Lcom/android/calculator2/BoundedRational;->ONE:Lcom/android/calculator2/BoundedRational;

    if-ne p1, v0, :cond_2

    return-object p0

    .line 265
    :cond_2
    iget-object v0, p0, Lcom/android/calculator2/BoundedRational;->mNum:Ljava/math/BigInteger;

    iget-object v1, p1, Lcom/android/calculator2/BoundedRational;->mNum:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 266
    iget-object p0, p0, Lcom/android/calculator2/BoundedRational;->mDen:Ljava/math/BigInteger;

    iget-object p1, p1, Lcom/android/calculator2/BoundedRational;->mDen:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 267
    new-instance p1, Lcom/android/calculator2/BoundedRational;

    invoke-direct {p1, v0, p0}, Lcom/android/calculator2/BoundedRational;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p1

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private rawPow(Ljava/math/BigInteger;)Lcom/android/calculator2/BoundedRational;
    .locals 2

    .line 342
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 345
    :cond_0
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 346
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/calculator2/BoundedRational;->rawPow(Ljava/math/BigInteger;)Lcom/android/calculator2/BoundedRational;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/android/calculator2/BoundedRational;->rawMultiply(Lcom/android/calculator2/BoundedRational;Lcom/android/calculator2/BoundedRational;)Lcom/android/calculator2/BoundedRational;

    move-result-object p0

    return-object p0

    .line 348
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_2

    .line 349
    sget-object p0, Lcom/android/calculator2/BoundedRational;->ONE:Lcom/android/calculator2/BoundedRational;

    return-object p0

    .line 351
    :cond_2
    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/calculator2/BoundedRational;->rawPow(Ljava/math/BigInteger;)Lcom/android/calculator2/BoundedRational;

    move-result-object p0

    .line 352
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result p1

    if-nez p1, :cond_3

    .line 355
    invoke-static {p0, p0}, Lcom/android/calculator2/BoundedRational;->rawMultiply(Lcom/android/calculator2/BoundedRational;Lcom/android/calculator2/BoundedRational;)Lcom/android/calculator2/BoundedRational;

    move-result-object p0

    return-object p0

    .line 353
    :cond_3
    new-instance p0, Lcom/hp/creals/CR$AbortedException;

    invoke-direct {p0}, Lcom/hp/creals/CR$AbortedException;-><init>()V

    throw p0
.end method

.method private reduce()Lcom/android/calculator2/BoundedRational;
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/android/calculator2/BoundedRational;->mDen:Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/calculator2/BoundedRational;->mNum:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/android/calculator2/BoundedRational;->mDen:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 167
    new-instance v1, Lcom/android/calculator2/BoundedRational;

    iget-object v2, p0, Lcom/android/calculator2/BoundedRational;->mNum:Ljava/math/BigInteger;

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget-object p0, p0, Lcom/android/calculator2/BoundedRational;->mDen:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lcom/android/calculator2/BoundedRational;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v1
.end method

.method public static sqrt(Lcom/android/calculator2/BoundedRational;)Lcom/android/calculator2/BoundedRational;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 302
    :cond_0
    invoke-direct {p0}, Lcom/android/calculator2/BoundedRational;->positiveDen()Lcom/android/calculator2/BoundedRational;

    move-result-object p0

    invoke-direct {p0}, Lcom/android/calculator2/BoundedRational;->reduce()Lcom/android/calculator2/BoundedRational;

    move-result-object p0

    .line 303
    iget-object v1, p0, Lcom/android/calculator2/BoundedRational;->mNum:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-ltz v1, :cond_3

    .line 306
    iget-object v1, p0, Lcom/android/calculator2/BoundedRational;->mNum:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 307
    invoke-virtual {v1, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calculator2/BoundedRational;->mNum:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    .line 310
    :cond_1
    iget-object v2, p0, Lcom/android/calculator2/BoundedRational;->mDen:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    .line 311
    invoke-virtual {v2, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    iget-object p0, p0, Lcom/android/calculator2/BoundedRational;->mDen:Ljava/math/BigInteger;

    invoke-virtual {v3, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return-object v0

    .line 314
    :cond_2
    new-instance p0, Lcom/android/calculator2/BoundedRational;

    invoke-direct {p0, v1, v2}, Lcom/android/calculator2/BoundedRational;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p0

    .line 304
    :cond_3
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "sqrt(negative)"

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static subtract(Lcom/android/calculator2/BoundedRational;Lcom/android/calculator2/BoundedRational;)Lcom/android/calculator2/BoundedRational;
    .locals 0

    .line 246
    invoke-static {p1}, Lcom/android/calculator2/BoundedRational;->negate(Lcom/android/calculator2/BoundedRational;)Lcom/android/calculator2/BoundedRational;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/calculator2/BoundedRational;->add(Lcom/android/calculator2/BoundedRational;Lcom/android/calculator2/BoundedRational;)Lcom/android/calculator2/BoundedRational;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Lcom/android/calculator2/BoundedRational;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "not a small rational"

    return-object p0

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/android/calculator2/BoundedRational;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private tooBig()Z
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/android/calculator2/BoundedRational;->mDen:Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/calculator2/BoundedRational;->mNum:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iget-object p0, p0, Lcom/android/calculator2/BoundedRational;->mDen:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    add-int/2addr v0, p0

    const/16 p0, 0x2710

    if-le v0, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public compareTo(Lcom/android/calculator2/BoundedRational;)I
    .locals 3

    .line 195
    iget-object v0, p0, Lcom/android/calculator2/BoundedRational;->mNum:Ljava/math/BigInteger;

    iget-object v1, p1, Lcom/android/calculator2/BoundedRational;->mDen:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p1, Lcom/android/calculator2/BoundedRational;->mNum:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/android/calculator2/BoundedRational;->mDen:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    iget-object p0, p0, Lcom/android/calculator2/BoundedRational;->mDen:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result p0

    mul-int/2addr v0, p0

    iget-object p0, p1, Lcom/android/calculator2/BoundedRational;->mDen:Ljava/math/BigInteger;

    .line 196
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result p0

    mul-int/2addr v0, p0

    return v0
.end method

.method public crValue()Lcom/hp/creals/CR;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/android/calculator2/BoundedRational;->mNum:Ljava/math/BigInteger;

    invoke-static {v0}, Lcom/hp/creals/CR;->valueOf(Ljava/math/BigInteger;)Lcom/hp/creals/CR;

    move-result-object v0

    iget-object p0, p0, Lcom/android/calculator2/BoundedRational;->mDen:Ljava/math/BigInteger;

    invoke-static {p0}, Lcom/hp/creals/CR;->valueOf(Ljava/math/BigInteger;)Lcom/hp/creals/CR;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/hp/creals/CR;->divide(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object p0

    return-object p0
.end method

.method public doubleValue()D
    .locals 4

    .line 116
    iget-object v0, p0, Lcom/android/calculator2/BoundedRational;->mNum:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    iget-object p0, p0, Lcom/android/calculator2/BoundedRational;->mDen:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public equals(Lcom/android/calculator2/BoundedRational;)Z
    .locals 0

    .line 204
    invoke-virtual {p0, p1}, Lcom/android/calculator2/BoundedRational;->compareTo(Lcom/android/calculator2/BoundedRational;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public intValue()I
    .locals 2

    .line 124
    invoke-direct {p0}, Lcom/android/calculator2/BoundedRational;->reduce()Lcom/android/calculator2/BoundedRational;

    move-result-object p0

    .line 125
    iget-object v0, p0, Lcom/android/calculator2/BoundedRational;->mDen:Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object p0, p0, Lcom/android/calculator2/BoundedRational;->mNum:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    return p0

    .line 126
    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "intValue of non-int"

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public pow(Ljava/math/BigInteger;)Lcom/android/calculator2/BoundedRational;
    .locals 1

    .line 362
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_0

    .line 363
    invoke-virtual {p1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/calculator2/BoundedRational;->pow(Ljava/math/BigInteger;)Lcom/android/calculator2/BoundedRational;

    move-result-object p0

    invoke-static {p0}, Lcom/android/calculator2/BoundedRational;->inverse(Lcom/android/calculator2/BoundedRational;)Lcom/android/calculator2/BoundedRational;

    move-result-object p0

    return-object p0

    .line 365
    :cond_0
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 369
    :cond_1
    invoke-direct {p0}, Lcom/android/calculator2/BoundedRational;->reduce()Lcom/android/calculator2/BoundedRational;

    move-result-object p0

    invoke-direct {p0, p1}, Lcom/android/calculator2/BoundedRational;->rawPow(Ljava/math/BigInteger;)Lcom/android/calculator2/BoundedRational;

    move-result-object p0

    return-object p0
.end method

.method public signum()I
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/android/calculator2/BoundedRational;->mNum:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    iget-object p0, p0, Lcom/android/calculator2/BoundedRational;->mDen:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result p0

    mul-int/2addr v0, p0

    return v0
.end method

.method public toNiceString()Ljava/lang/String;
    .locals 3

    .line 78
    invoke-direct {p0}, Lcom/android/calculator2/BoundedRational;->reduce()Lcom/android/calculator2/BoundedRational;

    move-result-object p0

    invoke-direct {p0}, Lcom/android/calculator2/BoundedRational;->positiveDen()Lcom/android/calculator2/BoundedRational;

    move-result-object p0

    .line 79
    iget-object v0, p0, Lcom/android/calculator2/BoundedRational;->mNum:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/android/calculator2/BoundedRational;->mDen:Ljava/math/BigInteger;

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/calculator2/BoundedRational;->mDen:Ljava/math/BigInteger;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/calculator2/BoundedRational;->mNum:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/calculator2/BoundedRational;->mDen:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringTruncated(I)Ljava/lang/String;
    .locals 5

    .line 99
    iget-object v0, p0, Lcom/android/calculator2/BoundedRational;->mNum:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calculator2/BoundedRational;->mDen:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, p1, 0x1

    if-ge v1, v2, :cond_0

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x30

    sub-int v1, v2, v1

    invoke-static {v4, v1}, Lcom/android/calculator2/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v2

    .line 105
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/calculator2/BoundedRational;->signum()I

    move-result p0

    if-gez p0, :cond_1

    const-string p0, "-"

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_0
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    sub-int/2addr v1, p1

    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public wholeNumberBits()I
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/android/calculator2/BoundedRational;->mNum:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_0

    const/high16 p0, -0x80000000

    return p0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/calculator2/BoundedRational;->mNum:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iget-object p0, p0, Lcom/android/calculator2/BoundedRational;->mDen:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method
