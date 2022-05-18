.class public Lcom/android/calculator2/UnifiedReal;
.super Ljava/lang/Object;
.source "UnifiedReal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calculator2/UnifiedReal$ZeroDivisionException;
    }
.end annotation


# static fields
.field private static final BIG_24:Ljava/math/BigInteger;

.field private static final BIG_TWO:Ljava/math/BigInteger;

.field private static final CR_E:Lcom/hp/creals/CR;

.field private static final CR_LN10:Lcom/hp/creals/CR;

.field private static final CR_LN2:Lcom/hp/creals/CR;

.field private static final CR_LN3:Lcom/hp/creals/CR;

.field private static final CR_LN5:Lcom/hp/creals/CR;

.field private static final CR_LN6:Lcom/hp/creals/CR;

.field private static final CR_LN7:Lcom/hp/creals/CR;

.field private static final CR_ONE:Lcom/hp/creals/CR;

.field private static final CR_PI:Lcom/hp/creals/CR;

.field private static final CR_SQRT2:Lcom/hp/creals/CR;

.field private static final CR_SQRT3:Lcom/hp/creals/CR;

.field private static final DEFAULT_COMPARE_TOLERANCE:I = -0x3e8

.field public static final E:Lcom/android/calculator2/UnifiedReal;

.field private static final EXTRA_PREC:I = 0xa

.field public static final HALF:Lcom/android/calculator2/UnifiedReal;

.field private static final HALF_SQRT2:Lcom/android/calculator2/UnifiedReal;

.field private static final HALF_SQRT3:Lcom/android/calculator2/UnifiedReal;

.field public static final MINUS_HALF:Lcom/android/calculator2/UnifiedReal;

.field public static final MINUS_ONE:Lcom/android/calculator2/UnifiedReal;

.field public static final MINUS_TWO:Lcom/android/calculator2/UnifiedReal;

.field public static final ONE:Lcom/android/calculator2/UnifiedReal;

.field public static final PI:Lcom/android/calculator2/UnifiedReal;

.field private static final PI_OVER_2:Lcom/android/calculator2/UnifiedReal;

.field private static final PI_OVER_3:Lcom/android/calculator2/UnifiedReal;

.field private static final PI_OVER_4:Lcom/android/calculator2/UnifiedReal;

.field private static final PI_OVER_6:Lcom/android/calculator2/UnifiedReal;

.field public static final RADIANS_PER_DEGREE:Lcom/android/calculator2/UnifiedReal;

.field private static final SIX:Lcom/android/calculator2/UnifiedReal;

.field private static final SQRT3:Lcom/android/calculator2/UnifiedReal;

.field public static final TEN:Lcom/android/calculator2/UnifiedReal;

.field private static final THIRD_SQRT3:Lcom/android/calculator2/UnifiedReal;

.field public static final TWO:Lcom/android/calculator2/UnifiedReal;

.field public static final ZERO:Lcom/android/calculator2/UnifiedReal;

.field public static enableChecks:Z = true

.field private static final sLogs:[Lcom/hp/creals/CR;

.field private static final sSqrts:[Lcom/hp/creals/CR;


# instance fields
.field private final mCrFactor:Lcom/hp/creals/CR;

.field private final mRatFactor:Lcom/android/calculator2/BoundedRational;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const-wide/16 v0, 0x18

    .line 88
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/calculator2/UnifiedReal;->BIG_24:Ljava/math/BigInteger;

    .line 92
    sget-object v0, Lcom/hp/creals/CR;->ONE:Lcom/hp/creals/CR;

    sput-object v0, Lcom/android/calculator2/UnifiedReal;->CR_ONE:Lcom/hp/creals/CR;

    .line 93
    sget-object v0, Lcom/hp/creals/CR;->PI:Lcom/hp/creals/CR;

    sput-object v0, Lcom/android/calculator2/UnifiedReal;->CR_PI:Lcom/hp/creals/CR;

    .line 94
    sget-object v0, Lcom/hp/creals/CR;->ONE:Lcom/hp/creals/CR;

    invoke-virtual {v0}, Lcom/hp/creals/CR;->exp()Lcom/hp/creals/CR;

    move-result-object v0

    sput-object v0, Lcom/android/calculator2/UnifiedReal;->CR_E:Lcom/hp/creals/CR;

    const/4 v0, 0x2

    .line 95
    invoke-static {v0}, Lcom/hp/creals/CR;->valueOf(I)Lcom/hp/creals/CR;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hp/creals/CR;->sqrt()Lcom/hp/creals/CR;

    move-result-object v1

    sput-object v1, Lcom/android/calculator2/UnifiedReal;->CR_SQRT2:Lcom/hp/creals/CR;

    const/4 v1, 0x3

    .line 96
    invoke-static {v1}, Lcom/hp/creals/CR;->valueOf(I)Lcom/hp/creals/CR;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hp/creals/CR;->sqrt()Lcom/hp/creals/CR;

    move-result-object v2

    sput-object v2, Lcom/android/calculator2/UnifiedReal;->CR_SQRT3:Lcom/hp/creals/CR;

    .line 97
    invoke-static {v0}, Lcom/hp/creals/CR;->valueOf(I)Lcom/hp/creals/CR;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hp/creals/CR;->ln()Lcom/hp/creals/CR;

    move-result-object v2

    sput-object v2, Lcom/android/calculator2/UnifiedReal;->CR_LN2:Lcom/hp/creals/CR;

    .line 98
    invoke-static {v1}, Lcom/hp/creals/CR;->valueOf(I)Lcom/hp/creals/CR;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hp/creals/CR;->ln()Lcom/hp/creals/CR;

    move-result-object v2

    sput-object v2, Lcom/android/calculator2/UnifiedReal;->CR_LN3:Lcom/hp/creals/CR;

    const/4 v2, 0x5

    .line 99
    invoke-static {v2}, Lcom/hp/creals/CR;->valueOf(I)Lcom/hp/creals/CR;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hp/creals/CR;->ln()Lcom/hp/creals/CR;

    move-result-object v3

    sput-object v3, Lcom/android/calculator2/UnifiedReal;->CR_LN5:Lcom/hp/creals/CR;

    const/4 v3, 0x6

    .line 100
    invoke-static {v3}, Lcom/hp/creals/CR;->valueOf(I)Lcom/hp/creals/CR;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hp/creals/CR;->ln()Lcom/hp/creals/CR;

    move-result-object v4

    sput-object v4, Lcom/android/calculator2/UnifiedReal;->CR_LN6:Lcom/hp/creals/CR;

    const/4 v4, 0x7

    .line 101
    invoke-static {v4}, Lcom/hp/creals/CR;->valueOf(I)Lcom/hp/creals/CR;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hp/creals/CR;->ln()Lcom/hp/creals/CR;

    move-result-object v5

    sput-object v5, Lcom/android/calculator2/UnifiedReal;->CR_LN7:Lcom/hp/creals/CR;

    const/16 v5, 0xa

    .line 102
    invoke-static {v5}, Lcom/hp/creals/CR;->valueOf(I)Lcom/hp/creals/CR;

    move-result-object v6

    invoke-virtual {v6}, Lcom/hp/creals/CR;->ln()Lcom/hp/creals/CR;

    move-result-object v6

    sput-object v6, Lcom/android/calculator2/UnifiedReal;->CR_LN10:Lcom/hp/creals/CR;

    const/16 v6, 0xb

    .line 108
    new-array v7, v6, [Lcom/hp/creals/CR;

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput-object v9, v7, v8

    sget-object v10, Lcom/hp/creals/CR;->ONE:Lcom/hp/creals/CR;

    const/4 v11, 0x1

    aput-object v10, v7, v11

    sget-object v10, Lcom/android/calculator2/UnifiedReal;->CR_SQRT2:Lcom/hp/creals/CR;

    aput-object v10, v7, v0

    sget-object v10, Lcom/android/calculator2/UnifiedReal;->CR_SQRT3:Lcom/hp/creals/CR;

    aput-object v10, v7, v1

    const/4 v10, 0x4

    aput-object v9, v7, v10

    .line 114
    invoke-static {v2}, Lcom/hp/creals/CR;->valueOf(I)Lcom/hp/creals/CR;

    move-result-object v12

    invoke-virtual {v12}, Lcom/hp/creals/CR;->sqrt()Lcom/hp/creals/CR;

    move-result-object v12

    aput-object v12, v7, v2

    .line 115
    invoke-static {v3}, Lcom/hp/creals/CR;->valueOf(I)Lcom/hp/creals/CR;

    move-result-object v12

    invoke-virtual {v12}, Lcom/hp/creals/CR;->sqrt()Lcom/hp/creals/CR;

    move-result-object v12

    aput-object v12, v7, v3

    .line 116
    invoke-static {v4}, Lcom/hp/creals/CR;->valueOf(I)Lcom/hp/creals/CR;

    move-result-object v12

    invoke-virtual {v12}, Lcom/hp/creals/CR;->sqrt()Lcom/hp/creals/CR;

    move-result-object v12

    aput-object v12, v7, v4

    const/16 v12, 0x8

    aput-object v9, v7, v12

    const/16 v13, 0x9

    aput-object v9, v7, v13

    .line 119
    invoke-static {v5}, Lcom/hp/creals/CR;->valueOf(I)Lcom/hp/creals/CR;

    move-result-object v14

    invoke-virtual {v14}, Lcom/hp/creals/CR;->sqrt()Lcom/hp/creals/CR;

    move-result-object v14

    aput-object v14, v7, v5

    sput-object v7, Lcom/android/calculator2/UnifiedReal;->sSqrts:[Lcom/hp/creals/CR;

    .line 122
    new-array v6, v6, [Lcom/hp/creals/CR;

    aput-object v9, v6, v8

    aput-object v9, v6, v11

    sget-object v7, Lcom/android/calculator2/UnifiedReal;->CR_LN2:Lcom/hp/creals/CR;

    aput-object v7, v6, v0

    sget-object v0, Lcom/android/calculator2/UnifiedReal;->CR_LN3:Lcom/hp/creals/CR;

    aput-object v0, v6, v1

    aput-object v9, v6, v10

    sget-object v0, Lcom/android/calculator2/UnifiedReal;->CR_LN5:Lcom/hp/creals/CR;

    aput-object v0, v6, v2

    sget-object v0, Lcom/android/calculator2/UnifiedReal;->CR_LN6:Lcom/hp/creals/CR;

    aput-object v0, v6, v3

    sget-object v0, Lcom/android/calculator2/UnifiedReal;->CR_LN7:Lcom/hp/creals/CR;

    aput-object v0, v6, v4

    aput-object v9, v6, v12

    aput-object v9, v6, v13

    sget-object v0, Lcom/android/calculator2/UnifiedReal;->CR_LN10:Lcom/hp/creals/CR;

    aput-object v0, v6, v5

    sput-object v6, Lcom/android/calculator2/UnifiedReal;->sLogs:[Lcom/hp/creals/CR;

    .line 137
    new-instance v0, Lcom/android/calculator2/UnifiedReal;

    sget-object v1, Lcom/android/calculator2/UnifiedReal;->CR_PI:Lcom/hp/creals/CR;

    invoke-direct {v0, v1}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/hp/creals/CR;)V

    sput-object v0, Lcom/android/calculator2/UnifiedReal;->PI:Lcom/android/calculator2/UnifiedReal;

    .line 138
    new-instance v0, Lcom/android/calculator2/UnifiedReal;

    sget-object v1, Lcom/android/calculator2/UnifiedReal;->CR_E:Lcom/hp/creals/CR;

    invoke-direct {v0, v1}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/hp/creals/CR;)V

    sput-object v0, Lcom/android/calculator2/UnifiedReal;->E:Lcom/android/calculator2/UnifiedReal;

    .line 139
    new-instance v0, Lcom/android/calculator2/UnifiedReal;

    sget-object v1, Lcom/android/calculator2/BoundedRational;->ZERO:Lcom/android/calculator2/BoundedRational;

    invoke-direct {v0, v1}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/android/calculator2/BoundedRational;)V

    sput-object v0, Lcom/android/calculator2/UnifiedReal;->ZERO:Lcom/android/calculator2/UnifiedReal;

    .line 140
    new-instance v0, Lcom/android/calculator2/UnifiedReal;

    sget-object v1, Lcom/android/calculator2/BoundedRational;->ONE:Lcom/android/calculator2/BoundedRational;

    invoke-direct {v0, v1}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/android/calculator2/BoundedRational;)V

    sput-object v0, Lcom/android/calculator2/UnifiedReal;->ONE:Lcom/android/calculator2/UnifiedReal;

    .line 141
    new-instance v0, Lcom/android/calculator2/UnifiedReal;

    sget-object v1, Lcom/android/calculator2/BoundedRational;->MINUS_ONE:Lcom/android/calculator2/BoundedRational;

    invoke-direct {v0, v1}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/android/calculator2/BoundedRational;)V

    sput-object v0, Lcom/android/calculator2/UnifiedReal;->MINUS_ONE:Lcom/android/calculator2/UnifiedReal;

    .line 142
    new-instance v0, Lcom/android/calculator2/UnifiedReal;

    sget-object v1, Lcom/android/calculator2/BoundedRational;->TWO:Lcom/android/calculator2/BoundedRational;

    invoke-direct {v0, v1}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/android/calculator2/BoundedRational;)V

    sput-object v0, Lcom/android/calculator2/UnifiedReal;->TWO:Lcom/android/calculator2/UnifiedReal;

    .line 143
    new-instance v0, Lcom/android/calculator2/UnifiedReal;

    sget-object v1, Lcom/android/calculator2/BoundedRational;->MINUS_TWO:Lcom/android/calculator2/BoundedRational;

    invoke-direct {v0, v1}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/android/calculator2/BoundedRational;)V

    sput-object v0, Lcom/android/calculator2/UnifiedReal;->MINUS_TWO:Lcom/android/calculator2/UnifiedReal;

    .line 144
    new-instance v0, Lcom/android/calculator2/UnifiedReal;

    sget-object v1, Lcom/android/calculator2/BoundedRational;->HALF:Lcom/android/calculator2/BoundedRational;

    invoke-direct {v0, v1}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/android/calculator2/BoundedRational;)V

    sput-object v0, Lcom/android/calculator2/UnifiedReal;->HALF:Lcom/android/calculator2/UnifiedReal;

    .line 145
    new-instance v0, Lcom/android/calculator2/UnifiedReal;

    sget-object v1, Lcom/android/calculator2/BoundedRational;->MINUS_HALF:Lcom/android/calculator2/BoundedRational;

    invoke-direct {v0, v1}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/android/calculator2/BoundedRational;)V

    sput-object v0, Lcom/android/calculator2/UnifiedReal;->MINUS_HALF:Lcom/android/calculator2/UnifiedReal;

    .line 146
    new-instance v0, Lcom/android/calculator2/UnifiedReal;

    sget-object v1, Lcom/android/calculator2/BoundedRational;->TEN:Lcom/android/calculator2/BoundedRational;

    invoke-direct {v0, v1}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/android/calculator2/BoundedRational;)V

    sput-object v0, Lcom/android/calculator2/UnifiedReal;->TEN:Lcom/android/calculator2/UnifiedReal;

    .line 147
    new-instance v0, Lcom/android/calculator2/UnifiedReal;

    new-instance v1, Lcom/android/calculator2/BoundedRational;

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0xb4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/calculator2/BoundedRational;-><init>(JJ)V

    sget-object v2, Lcom/android/calculator2/UnifiedReal;->CR_PI:Lcom/hp/creals/CR;

    invoke-direct {v0, v1, v2}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/android/calculator2/BoundedRational;Lcom/hp/creals/CR;)V

    sput-object v0, Lcom/android/calculator2/UnifiedReal;->RADIANS_PER_DEGREE:Lcom/android/calculator2/UnifiedReal;

    .line 149
    new-instance v0, Lcom/android/calculator2/UnifiedReal;

    const-wide/16 v1, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/calculator2/UnifiedReal;-><init>(J)V

    sput-object v0, Lcom/android/calculator2/UnifiedReal;->SIX:Lcom/android/calculator2/UnifiedReal;

    .line 150
    new-instance v0, Lcom/android/calculator2/UnifiedReal;

    sget-object v1, Lcom/android/calculator2/BoundedRational;->HALF:Lcom/android/calculator2/BoundedRational;

    sget-object v2, Lcom/android/calculator2/UnifiedReal;->CR_SQRT2:Lcom/hp/creals/CR;

    invoke-direct {v0, v1, v2}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/android/calculator2/BoundedRational;Lcom/hp/creals/CR;)V

    sput-object v0, Lcom/android/calculator2/UnifiedReal;->HALF_SQRT2:Lcom/android/calculator2/UnifiedReal;

    .line 151
    new-instance v0, Lcom/android/calculator2/UnifiedReal;

    sget-object v1, Lcom/android/calculator2/UnifiedReal;->CR_SQRT3:Lcom/hp/creals/CR;

    invoke-direct {v0, v1}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/hp/creals/CR;)V

    sput-object v0, Lcom/android/calculator2/UnifiedReal;->SQRT3:Lcom/android/calculator2/UnifiedReal;

    .line 152
    new-instance v0, Lcom/android/calculator2/UnifiedReal;

    sget-object v1, Lcom/android/calculator2/BoundedRational;->HALF:Lcom/android/calculator2/BoundedRational;

    sget-object v2, Lcom/android/calculator2/UnifiedReal;->CR_SQRT3:Lcom/hp/creals/CR;

    invoke-direct {v0, v1, v2}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/android/calculator2/BoundedRational;Lcom/hp/creals/CR;)V

    sput-object v0, Lcom/android/calculator2/UnifiedReal;->HALF_SQRT3:Lcom/android/calculator2/UnifiedReal;

    .line 153
    new-instance v0, Lcom/android/calculator2/UnifiedReal;

    sget-object v1, Lcom/android/calculator2/BoundedRational;->THIRD:Lcom/android/calculator2/BoundedRational;

    sget-object v2, Lcom/android/calculator2/UnifiedReal;->CR_SQRT3:Lcom/hp/creals/CR;

    invoke-direct {v0, v1, v2}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/android/calculator2/BoundedRational;Lcom/hp/creals/CR;)V

    sput-object v0, Lcom/android/calculator2/UnifiedReal;->THIRD_SQRT3:Lcom/android/calculator2/UnifiedReal;

    .line 154
    new-instance v0, Lcom/android/calculator2/UnifiedReal;

    sget-object v1, Lcom/android/calculator2/BoundedRational;->HALF:Lcom/android/calculator2/BoundedRational;

    sget-object v2, Lcom/android/calculator2/UnifiedReal;->CR_PI:Lcom/hp/creals/CR;

    invoke-direct {v0, v1, v2}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/android/calculator2/BoundedRational;Lcom/hp/creals/CR;)V

    sput-object v0, Lcom/android/calculator2/UnifiedReal;->PI_OVER_2:Lcom/android/calculator2/UnifiedReal;

    .line 155
    new-instance v0, Lcom/android/calculator2/UnifiedReal;

    sget-object v1, Lcom/android/calculator2/BoundedRational;->THIRD:Lcom/android/calculator2/BoundedRational;

    sget-object v2, Lcom/android/calculator2/UnifiedReal;->CR_PI:Lcom/hp/creals/CR;

    invoke-direct {v0, v1, v2}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/android/calculator2/BoundedRational;Lcom/hp/creals/CR;)V

    sput-object v0, Lcom/android/calculator2/UnifiedReal;->PI_OVER_3:Lcom/android/calculator2/UnifiedReal;

    .line 156
    new-instance v0, Lcom/android/calculator2/UnifiedReal;

    sget-object v1, Lcom/android/calculator2/BoundedRational;->QUARTER:Lcom/android/calculator2/BoundedRational;

    sget-object v2, Lcom/android/calculator2/UnifiedReal;->CR_PI:Lcom/hp/creals/CR;

    invoke-direct {v0, v1, v2}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/android/calculator2/BoundedRational;Lcom/hp/creals/CR;)V

    sput-object v0, Lcom/android/calculator2/UnifiedReal;->PI_OVER_4:Lcom/android/calculator2/UnifiedReal;

    .line 157
    new-instance v0, Lcom/android/calculator2/UnifiedReal;

    sget-object v1, Lcom/android/calculator2/BoundedRational;->SIXTH:Lcom/android/calculator2/BoundedRational;

    sget-object v2, Lcom/android/calculator2/UnifiedReal;->CR_PI:Lcom/hp/creals/CR;

    invoke-direct {v0, v1, v2}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/android/calculator2/BoundedRational;Lcom/hp/creals/CR;)V

    sput-object v0, Lcom/android/calculator2/UnifiedReal;->PI_OVER_6:Lcom/android/calculator2/UnifiedReal;

    const-wide/16 v0, 0x2

    .line 876
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/calculator2/UnifiedReal;->BIG_TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 84
    new-instance v0, Lcom/android/calculator2/BoundedRational;

    invoke-direct {v0, p1, p2}, Lcom/android/calculator2/BoundedRational;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/android/calculator2/BoundedRational;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/calculator2/BoundedRational;)V
    .locals 1

    .line 76
    sget-object v0, Lcom/android/calculator2/UnifiedReal;->CR_ONE:Lcom/hp/creals/CR;

    invoke-direct {p0, p1, v0}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/android/calculator2/BoundedRational;Lcom/hp/creals/CR;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/calculator2/BoundedRational;Lcom/hp/creals/CR;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 67
    iput-object p2, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    .line 68
    iput-object p1, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    return-void

    .line 64
    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "Building UnifiedReal from null"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lcom/hp/creals/CR;)V
    .locals 1

    .line 72
    sget-object v0, Lcom/android/calculator2/BoundedRational;->ONE:Lcom/android/calculator2/BoundedRational;

    invoke-direct {p0, v0, p1}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/android/calculator2/BoundedRational;Lcom/hp/creals/CR;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    .line 80
    new-instance v0, Lcom/android/calculator2/BoundedRational;

    invoke-direct {v0, p1}, Lcom/android/calculator2/BoundedRational;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {p0, v0}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/android/calculator2/BoundedRational;)V

    return-void
.end method

.method public static asinHalves(I)Lcom/android/calculator2/UnifiedReal;
    .locals 2

    if-gez p0, :cond_0

    neg-int p0, p0

    .line 805
    invoke-static {p0}, Lcom/android/calculator2/UnifiedReal;->asinHalves(I)Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->negate()Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    return-object p0

    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 815
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "asinHalves: Bad argument"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 813
    :pswitch_0
    new-instance p0, Lcom/android/calculator2/UnifiedReal;

    sget-object v0, Lcom/android/calculator2/BoundedRational;->HALF:Lcom/android/calculator2/BoundedRational;

    sget-object v1, Lcom/hp/creals/CR;->PI:Lcom/hp/creals/CR;

    invoke-direct {p0, v0, v1}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/android/calculator2/BoundedRational;Lcom/hp/creals/CR;)V

    return-object p0

    .line 811
    :pswitch_1
    new-instance p0, Lcom/android/calculator2/UnifiedReal;

    sget-object v0, Lcom/android/calculator2/BoundedRational;->SIXTH:Lcom/android/calculator2/BoundedRational;

    sget-object v1, Lcom/hp/creals/CR;->PI:Lcom/hp/creals/CR;

    invoke-direct {p0, v0, v1}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/android/calculator2/BoundedRational;Lcom/hp/creals/CR;)V

    return-object p0

    .line 809
    :pswitch_2
    sget-object p0, Lcom/android/calculator2/UnifiedReal;->ZERO:Lcom/android/calculator2/UnifiedReal;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static check(Z)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    .line 58
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method private checkAsinDomain()V
    .locals 1

    .line 795
    sget-object v0, Lcom/android/calculator2/UnifiedReal;->ONE:Lcom/android/calculator2/UnifiedReal;

    invoke-virtual {p0, v0}, Lcom/android/calculator2/UnifiedReal;->isComparable(Lcom/android/calculator2/UnifiedReal;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/calculator2/UnifiedReal;->ONE:Lcom/android/calculator2/UnifiedReal;

    invoke-virtual {p0, v0}, Lcom/android/calculator2/UnifiedReal;->compareTo(Lcom/android/calculator2/UnifiedReal;)I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Lcom/android/calculator2/UnifiedReal;->MINUS_ONE:Lcom/android/calculator2/UnifiedReal;

    invoke-virtual {p0, v0}, Lcom/android/calculator2/UnifiedReal;->compareTo(Lcom/android/calculator2/UnifiedReal;)I

    move-result p0

    if-ltz p0, :cond_0

    goto :goto_0

    .line 796
    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "inverse trig argument out of range"

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private static cosPiTwelfths(I)Lcom/android/calculator2/UnifiedReal;
    .locals 1

    add-int/lit8 p0, p0, 0x6

    const/16 v0, 0x18

    if-lt p0, v0, :cond_0

    add-int/lit8 p0, p0, -0x18

    .line 763
    :cond_0
    invoke-static {p0}, Lcom/android/calculator2/UnifiedReal;->sinPiTwelfths(I)Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    return-object p0
.end method

.method private static crName(Lcom/hp/creals/CR;)Ljava/lang/String;
    .locals 3

    .line 199
    sget-object v0, Lcom/android/calculator2/UnifiedReal;->CR_ONE:Lcom/hp/creals/CR;

    if-ne p0, v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 202
    :cond_0
    sget-object v0, Lcom/android/calculator2/UnifiedReal;->CR_PI:Lcom/hp/creals/CR;

    if-ne p0, v0, :cond_1

    const-string p0, "\u03c0"

    return-object p0

    .line 205
    :cond_1
    sget-object v0, Lcom/android/calculator2/UnifiedReal;->CR_E:Lcom/hp/creals/CR;

    if-ne p0, v0, :cond_2

    const-string p0, "e"

    return-object p0

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    .line 208
    :goto_0
    sget-object v2, Lcom/android/calculator2/UnifiedReal;->sSqrts:[Lcom/hp/creals/CR;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 209
    sget-object v2, Lcom/android/calculator2/UnifiedReal;->sSqrts:[Lcom/hp/creals/CR;

    aget-object v2, v2, v1

    if-ne p0, v2, :cond_3

    .line 210
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u221a"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    :cond_4
    :goto_1
    sget-object v1, Lcom/android/calculator2/UnifiedReal;->sLogs:[Lcom/hp/creals/CR;

    array-length v1, v1

    if-ge v0, v1, :cond_6

    .line 214
    sget-object v1, Lcom/android/calculator2/UnifiedReal;->sLogs:[Lcom/hp/creals/CR;

    aget-object v1, v1, v0

    if-ne p0, v1, :cond_5

    .line 215
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ln("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method private static definitelyAlgebraic(Lcom/hp/creals/CR;)Z
    .locals 1

    .line 247
    sget-object v0, Lcom/android/calculator2/UnifiedReal;->CR_ONE:Lcom/hp/creals/CR;

    if-eq p0, v0, :cond_1

    invoke-static {p0}, Lcom/android/calculator2/UnifiedReal;->getSquare(Lcom/hp/creals/CR;)Lcom/android/calculator2/BoundedRational;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static definitelyIndependent(Lcom/hp/creals/CR;Lcom/hp/creals/CR;)Z
    .locals 2

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    .line 312
    :cond_0
    sget-object v1, Lcom/android/calculator2/UnifiedReal;->CR_E:Lcom/hp/creals/CR;

    if-eq p0, v1, :cond_5

    sget-object v1, Lcom/android/calculator2/UnifiedReal;->CR_PI:Lcom/hp/creals/CR;

    if-ne p0, v1, :cond_1

    goto :goto_1

    .line 315
    :cond_1
    sget-object v1, Lcom/android/calculator2/UnifiedReal;->CR_E:Lcom/hp/creals/CR;

    if-eq p1, v1, :cond_4

    sget-object v1, Lcom/android/calculator2/UnifiedReal;->CR_PI:Lcom/hp/creals/CR;

    if-ne p1, v1, :cond_2

    goto :goto_0

    .line 318
    :cond_2
    invoke-static {p0}, Lcom/android/calculator2/UnifiedReal;->isNamed(Lcom/hp/creals/CR;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {p1}, Lcom/android/calculator2/UnifiedReal;->isNamed(Lcom/hp/creals/CR;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0

    .line 316
    :cond_4
    :goto_0
    invoke-static {p0}, Lcom/android/calculator2/UnifiedReal;->definitelyAlgebraic(Lcom/hp/creals/CR;)Z

    move-result p0

    return p0

    .line 313
    :cond_5
    :goto_1
    invoke-static {p1}, Lcom/android/calculator2/UnifiedReal;->definitelyAlgebraic(Lcom/hp/creals/CR;)Z

    move-result p0

    return p0
.end method

.method private static genFactorial(JJ)Ljava/math/BigInteger;
    .locals 4

    const-wide/16 v0, 0x4

    mul-long/2addr v0, p2

    cmp-long v0, p0, v0

    if-lez v0, :cond_2

    const-wide/16 v0, 0x2

    mul-long/2addr v0, p2

    .line 1113
    invoke-static {p0, p1, v0, v1}, Lcom/android/calculator2/UnifiedReal;->genFactorial(JJ)Ljava/math/BigInteger;

    move-result-object v2

    .line 1114
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-nez v3, :cond_1

    sub-long/2addr p0, p2

    .line 1117
    invoke-static {p0, p1, v0, v1}, Lcom/android/calculator2/UnifiedReal;->genFactorial(JJ)Ljava/math/BigInteger;

    move-result-object p0

    .line 1118
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1121
    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 1119
    :cond_0
    new-instance p0, Lcom/hp/creals/CR$AbortedException;

    invoke-direct {p0}, Lcom/hp/creals/CR$AbortedException;-><init>()V

    throw p0

    .line 1115
    :cond_1
    new-instance p0, Lcom/hp/creals/CR$AbortedException;

    invoke-direct {p0}, Lcom/hp/creals/CR$AbortedException;-><init>()V

    throw p0

    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_3

    .line 1124
    sget-object p0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    return-object p0

    .line 1126
    :cond_3
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    :goto_0
    sub-long/2addr p0, p2

    const-wide/16 v1, 0x1

    cmp-long v1, p0, v1

    if-lez v1, :cond_4

    .line 1128
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private getExp(Lcom/hp/creals/CR;)Lcom/android/calculator2/BoundedRational;
    .locals 2

    const/4 p0, 0x0

    .line 182
    :goto_0
    sget-object v0, Lcom/android/calculator2/UnifiedReal;->sLogs:[Lcom/hp/creals/CR;

    array-length v0, v0

    if-ge p0, v0, :cond_1

    .line 183
    sget-object v0, Lcom/android/calculator2/UnifiedReal;->sLogs:[Lcom/hp/creals/CR;

    aget-object v0, v0, p0

    if-ne v0, p1, :cond_0

    .line 184
    new-instance p1, Lcom/android/calculator2/BoundedRational;

    int-to-long v0, p0

    invoke-direct {p1, v0, v1}, Lcom/android/calculator2/BoundedRational;-><init>(J)V

    return-object p1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getIntLog(Ljava/math/BigInteger;I)J
    .locals 8

    .line 991
    invoke-virtual {p0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    .line 992
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    int-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    .line 995
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    const-wide/16 v4, 0x0

    if-nez v0, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    sub-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    return-wide v4

    :cond_0
    int-to-long v0, p1

    .line 1000
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x0

    move-object v3, v1

    move-wide v1, v4

    .line 1002
    :cond_1
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->signum()I

    move-result v6

    if-nez v6, :cond_4

    .line 1003
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1006
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    const-wide/16 v6, 0x1

    add-long/2addr v1, v6

    if-nez v3, :cond_2

    .line 1010
    invoke-static {p1}, Lcom/android/calculator2/UnifiedReal;->pow16(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    .line 1012
    :cond_2
    :goto_0
    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->signum()I

    move-result v6

    if-nez v6, :cond_1

    .line 1013
    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    const-wide/16 v6, 0x10

    add-long/2addr v1, v6

    goto :goto_0

    .line 1004
    :cond_3
    new-instance p0, Lcom/hp/creals/CR$AbortedException;

    invoke-direct {p0}, Lcom/hp/creals/CR$AbortedException;-><init>()V

    throw p0

    .line 1017
    :cond_4
    sget-object p1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    return-wide v1

    :cond_5
    return-wide v4
.end method

.method private getPiTwelfths()Ljava/math/BigInteger;
    .locals 3

    .line 704
    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->definitelyZero()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object p0

    .line 705
    :cond_0
    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    sget-object v1, Lcom/android/calculator2/UnifiedReal;->CR_PI:Lcom/hp/creals/CR;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 706
    iget-object p0, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    sget-object v0, Lcom/android/calculator2/BoundedRational;->TWELVE:Lcom/android/calculator2/BoundedRational;

    .line 707
    invoke-static {p0, v0}, Lcom/android/calculator2/BoundedRational;->multiply(Lcom/android/calculator2/BoundedRational;Lcom/android/calculator2/BoundedRational;)Lcom/android/calculator2/BoundedRational;

    move-result-object p0

    .line 706
    invoke-static {p0}, Lcom/android/calculator2/BoundedRational;->asBigInteger(Lcom/android/calculator2/BoundedRational;)Ljava/math/BigInteger;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v2

    .line 711
    :cond_1
    sget-object v0, Lcom/android/calculator2/UnifiedReal;->BIG_24:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v2
.end method

.method private static getSquare(Lcom/hp/creals/CR;)Lcom/android/calculator2/BoundedRational;
    .locals 2

    const/4 v0, 0x0

    .line 167
    :goto_0
    sget-object v1, Lcom/android/calculator2/UnifiedReal;->sSqrts:[Lcom/hp/creals/CR;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 168
    sget-object v1, Lcom/android/calculator2/UnifiedReal;->sSqrts:[Lcom/hp/creals/CR;

    aget-object v1, v1, v0

    if-ne v1, p0, :cond_0

    .line 169
    new-instance p0, Lcom/android/calculator2/BoundedRational;

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/android/calculator2/BoundedRational;-><init>(J)V

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static isNamed(Lcom/hp/creals/CR;)Z
    .locals 6

    .line 225
    sget-object v0, Lcom/android/calculator2/UnifiedReal;->CR_ONE:Lcom/hp/creals/CR;

    const/4 v1, 0x1

    if-eq p0, v0, :cond_5

    sget-object v0, Lcom/android/calculator2/UnifiedReal;->CR_PI:Lcom/hp/creals/CR;

    if-eq p0, v0, :cond_5

    sget-object v0, Lcom/android/calculator2/UnifiedReal;->CR_E:Lcom/hp/creals/CR;

    if-ne p0, v0, :cond_0

    goto :goto_2

    .line 228
    :cond_0
    sget-object v0, Lcom/android/calculator2/UnifiedReal;->sSqrts:[Lcom/hp/creals/CR;

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    if-ne p0, v5, :cond_1

    return v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 233
    :cond_2
    sget-object v0, Lcom/android/calculator2/UnifiedReal;->sLogs:[Lcom/hp/creals/CR;

    array-length v2, v0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_4

    aget-object v5, v0, v4

    if-ne p0, v5, :cond_3

    return v1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    return v3

    :cond_5
    :goto_2
    return v1
.end method

.method private pow(Ljava/math/BigInteger;)Lcom/android/calculator2/UnifiedReal;
    .locals 4

    .line 902
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_0

    .line 903
    invoke-virtual {p1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/calculator2/UnifiedReal;->pow(Ljava/math/BigInteger;)Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->inverse()Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    return-object p0

    .line 905
    :cond_0
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 908
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_2

    .line 911
    sget-object p0, Lcom/android/calculator2/UnifiedReal;->ONE:Lcom/android/calculator2/UnifiedReal;

    return-object p0

    .line 913
    :cond_2
    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    sget-object v1, Lcom/android/calculator2/UnifiedReal;->CR_ONE:Lcom/hp/creals/CR;

    if-ne v0, v1, :cond_3

    .line 914
    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    invoke-virtual {v0, p1}, Lcom/android/calculator2/BoundedRational;->pow(Ljava/math/BigInteger;)Lcom/android/calculator2/BoundedRational;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 916
    new-instance v0, Lcom/android/calculator2/UnifiedReal;

    iget-object p0, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    invoke-virtual {p0, p1}, Lcom/android/calculator2/BoundedRational;->pow(Ljava/math/BigInteger;)Lcom/android/calculator2/BoundedRational;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/android/calculator2/BoundedRational;)V

    return-object v0

    .line 919
    :cond_3
    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    invoke-static {v0}, Lcom/android/calculator2/UnifiedReal;->getSquare(Lcom/hp/creals/CR;)Lcom/android/calculator2/BoundedRational;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 921
    iget-object v1, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    .line 922
    invoke-virtual {v1, p1}, Lcom/android/calculator2/BoundedRational;->pow(Ljava/math/BigInteger;)Lcom/android/calculator2/BoundedRational;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/calculator2/BoundedRational;->pow(Ljava/math/BigInteger;)Lcom/android/calculator2/BoundedRational;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/calculator2/BoundedRational;->multiply(Lcom/android/calculator2/BoundedRational;Lcom/android/calculator2/BoundedRational;)Lcom/android/calculator2/BoundedRational;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 924
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 926
    new-instance p1, Lcom/android/calculator2/UnifiedReal;

    iget-object p0, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    invoke-direct {p1, v0, p0}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/android/calculator2/BoundedRational;Lcom/hp/creals/CR;)V

    return-object p1

    .line 928
    :cond_4
    new-instance p0, Lcom/android/calculator2/UnifiedReal;

    invoke-direct {p0, v0}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/android/calculator2/BoundedRational;)V

    return-object p0

    :cond_5
    const/16 v0, -0x3e8

    .line 932
    invoke-virtual {p0, v0}, Lcom/android/calculator2/UnifiedReal;->signum(I)I

    move-result v0

    if-lez v0, :cond_6

    .line 935
    new-instance v0, Lcom/android/calculator2/UnifiedReal;

    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->crValue()Lcom/hp/creals/CR;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hp/creals/CR;->ln()Lcom/hp/creals/CR;

    move-result-object p0

    invoke-static {p1}, Lcom/hp/creals/CR;->valueOf(Ljava/math/BigInteger;)Lcom/hp/creals/CR;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hp/creals/CR;->multiply(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hp/creals/CR;->exp()Lcom/hp/creals/CR;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/hp/creals/CR;)V

    return-object v0

    .line 941
    :cond_6
    new-instance v0, Lcom/android/calculator2/UnifiedReal;

    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->crValue()Lcom/hp/creals/CR;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/calculator2/UnifiedReal;->recursivePow(Lcom/hp/creals/CR;Ljava/math/BigInteger;)Lcom/hp/creals/CR;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/hp/creals/CR;)V

    return-object v0
.end method

.method private static pow16(I)J
    .locals 2

    const/16 v0, 0xa

    if-gt p0, v0, :cond_0

    int-to-long v0, p0

    mul-long/2addr v0, v0

    mul-long/2addr v0, v0

    mul-long/2addr v0, v0

    mul-long/2addr v0, v0

    return-wide v0

    .line 976
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Unexpexted pow16 argument"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method private static recursivePow(Lcom/hp/creals/CR;Ljava/math/BigInteger;)Lcom/hp/creals/CR;
    .locals 2

    .line 883
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 886
    :cond_0
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 887
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/calculator2/UnifiedReal;->recursivePow(Lcom/hp/creals/CR;Ljava/math/BigInteger;)Lcom/hp/creals/CR;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hp/creals/CR;->multiply(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object p0

    return-object p0

    .line 889
    :cond_1
    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/calculator2/UnifiedReal;->recursivePow(Lcom/hp/creals/CR;Ljava/math/BigInteger;)Lcom/hp/creals/CR;

    move-result-object p0

    .line 890
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result p1

    if-nez p1, :cond_2

    .line 893
    invoke-virtual {p0, p0}, Lcom/hp/creals/CR;->multiply(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object p0

    return-object p0

    .line 891
    :cond_2
    new-instance p0, Lcom/hp/creals/CR$AbortedException;

    invoke-direct {p0}, Lcom/hp/creals/CR$AbortedException;-><init>()V

    throw p0
.end method

.method private static sinPiTwelfths(I)Lcom/android/calculator2/UnifiedReal;
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xc

    if-lt p0, v1, :cond_1

    sub-int/2addr p0, v1

    .line 722
    invoke-static {p0}, Lcom/android/calculator2/UnifiedReal;->sinPiTwelfths(I)Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 723
    :cond_0
    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->negate()Lcom/android/calculator2/UnifiedReal;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    return-object v0

    .line 741
    :pswitch_1
    sget-object p0, Lcom/android/calculator2/UnifiedReal;->HALF:Lcom/android/calculator2/UnifiedReal;

    return-object p0

    .line 739
    :pswitch_2
    sget-object p0, Lcom/android/calculator2/UnifiedReal;->HALF_SQRT2:Lcom/android/calculator2/UnifiedReal;

    return-object p0

    .line 737
    :pswitch_3
    sget-object p0, Lcom/android/calculator2/UnifiedReal;->HALF_SQRT3:Lcom/android/calculator2/UnifiedReal;

    return-object p0

    .line 735
    :pswitch_4
    sget-object p0, Lcom/android/calculator2/UnifiedReal;->ONE:Lcom/android/calculator2/UnifiedReal;

    return-object p0

    .line 733
    :pswitch_5
    sget-object p0, Lcom/android/calculator2/UnifiedReal;->HALF_SQRT3:Lcom/android/calculator2/UnifiedReal;

    return-object p0

    .line 731
    :pswitch_6
    sget-object p0, Lcom/android/calculator2/UnifiedReal;->HALF_SQRT2:Lcom/android/calculator2/UnifiedReal;

    return-object p0

    .line 729
    :pswitch_7
    sget-object p0, Lcom/android/calculator2/UnifiedReal;->HALF:Lcom/android/calculator2/UnifiedReal;

    return-object p0

    .line 727
    :pswitch_8
    sget-object p0, Lcom/android/calculator2/UnifiedReal;->ZERO:Lcom/android/calculator2/UnifiedReal;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public acos()Lcom/android/calculator2/UnifiedReal;
    .locals 1

    .line 847
    sget-object v0, Lcom/android/calculator2/UnifiedReal;->PI_OVER_2:Lcom/android/calculator2/UnifiedReal;

    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->asin()Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/calculator2/UnifiedReal;->subtract(Lcom/android/calculator2/UnifiedReal;)Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    return-object p0
.end method

.method public add(Lcom/android/calculator2/UnifiedReal;)Lcom/android/calculator2/UnifiedReal;
    .locals 2

    .line 585
    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    iget-object v1, p1, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    if-ne v0, v1, :cond_0

    .line 586
    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    iget-object v1, p1, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    invoke-static {v0, v1}, Lcom/android/calculator2/BoundedRational;->add(Lcom/android/calculator2/BoundedRational;Lcom/android/calculator2/BoundedRational;)Lcom/android/calculator2/BoundedRational;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 588
    new-instance p1, Lcom/android/calculator2/UnifiedReal;

    iget-object p0, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    invoke-direct {p1, v0, p0}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/android/calculator2/BoundedRational;Lcom/hp/creals/CR;)V

    return-object p1

    .line 591
    :cond_0
    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->definitelyZero()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 595
    :cond_1
    invoke-virtual {p1}, Lcom/android/calculator2/UnifiedReal;->definitelyZero()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    .line 598
    :cond_2
    new-instance v0, Lcom/android/calculator2/UnifiedReal;

    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->crValue()Lcom/hp/creals/CR;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/calculator2/UnifiedReal;->crValue()Lcom/hp/creals/CR;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hp/creals/CR;->add(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/hp/creals/CR;)V

    return-object v0
.end method

.method public approxEquals(Lcom/android/calculator2/UnifiedReal;I)Z
    .locals 3

    .line 505
    invoke-virtual {p0, p1}, Lcom/android/calculator2/UnifiedReal;->isComparable(Lcom/android/calculator2/UnifiedReal;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 506
    iget-object p2, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    iget-object v0, p1, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    invoke-static {p2, v0}, Lcom/android/calculator2/UnifiedReal;->definitelyIndependent(Lcom/hp/creals/CR;Lcom/hp/creals/CR;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    .line 507
    invoke-virtual {p2}, Lcom/android/calculator2/BoundedRational;->signum()I

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p1, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    invoke-virtual {p2}, Lcom/android/calculator2/BoundedRational;->signum()I

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    return v2

    .line 511
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/calculator2/UnifiedReal;->compareTo(Lcom/android/calculator2/UnifiedReal;)I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1

    .line 514
    :cond_3
    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->crValue()Lcom/hp/creals/CR;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/calculator2/UnifiedReal;->crValue()Lcom/hp/creals/CR;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/hp/creals/CR;->compareTo(Lcom/hp/creals/CR;I)I

    move-result p0

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    return v1
.end method

.method public approxWholeNumberBitsGreaterThan(I)Z
    .locals 3

    .line 1202
    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    invoke-static {v0}, Lcom/android/calculator2/UnifiedReal;->isNamed(Lcom/hp/creals/CR;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1203
    iget-object p0, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    invoke-virtual {p0}, Lcom/android/calculator2/BoundedRational;->wholeNumberBits()I

    move-result p0

    if-le p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 1206
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->crValue()Lcom/hp/creals/CR;

    move-result-object p0

    const/4 v0, 0x2

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    if-le p0, v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    :catch_0
    move-exception p0

    .line 1208
    invoke-virtual {p0}, Ljava/lang/StackOverflowError;->printStackTrace()V

    return v2
.end method

.method public asin()Lcom/android/calculator2/UnifiedReal;
    .locals 2

    .line 835
    invoke-direct {p0}, Lcom/android/calculator2/UnifiedReal;->checkAsinDomain()V

    .line 836
    sget-object v0, Lcom/android/calculator2/UnifiedReal;->TWO:Lcom/android/calculator2/UnifiedReal;

    invoke-virtual {p0, v0}, Lcom/android/calculator2/UnifiedReal;->multiply(Lcom/android/calculator2/UnifiedReal;)Lcom/android/calculator2/UnifiedReal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calculator2/UnifiedReal;->bigIntegerValue()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 838
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/calculator2/UnifiedReal;->asinHalves(I)Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    return-object p0

    .line 840
    :cond_0
    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    sget-object v1, Lcom/hp/creals/CR;->ONE:Lcom/hp/creals/CR;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    sget-object v1, Lcom/android/calculator2/UnifiedReal;->CR_SQRT2:Lcom/hp/creals/CR;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    sget-object v1, Lcom/android/calculator2/UnifiedReal;->CR_SQRT3:Lcom/hp/creals/CR;

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 843
    :cond_1
    new-instance v0, Lcom/android/calculator2/UnifiedReal;

    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->crValue()Lcom/hp/creals/CR;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hp/creals/CR;->asin()Lcom/hp/creals/CR;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/hp/creals/CR;)V

    return-object v0

    .line 841
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->asinNonHalves()Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    return-object p0
.end method

.method public asinNonHalves()Lcom/android/calculator2/UnifiedReal;
    .locals 2

    .line 822
    sget-object v0, Lcom/android/calculator2/UnifiedReal;->ZERO:Lcom/android/calculator2/UnifiedReal;

    const/16 v1, -0xa

    invoke-virtual {p0, v0, v1}, Lcom/android/calculator2/UnifiedReal;->compareTo(Lcom/android/calculator2/UnifiedReal;I)I

    move-result v0

    if-gez v0, :cond_0

    .line 823
    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->negate()Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->asinNonHalves()Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->negate()Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    return-object p0

    .line 825
    :cond_0
    sget-object v0, Lcom/android/calculator2/UnifiedReal;->HALF_SQRT2:Lcom/android/calculator2/UnifiedReal;

    invoke-virtual {p0, v0}, Lcom/android/calculator2/UnifiedReal;->definitelyEquals(Lcom/android/calculator2/UnifiedReal;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 826
    new-instance p0, Lcom/android/calculator2/UnifiedReal;

    sget-object v0, Lcom/android/calculator2/BoundedRational;->QUARTER:Lcom/android/calculator2/BoundedRational;

    sget-object v1, Lcom/android/calculator2/UnifiedReal;->CR_PI:Lcom/hp/creals/CR;

    invoke-direct {p0, v0, v1}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/android/calculator2/BoundedRational;Lcom/hp/creals/CR;)V

    return-object p0

    .line 828
    :cond_1
    sget-object v0, Lcom/android/calculator2/UnifiedReal;->HALF_SQRT3:Lcom/android/calculator2/UnifiedReal;

    invoke-virtual {p0, v0}, Lcom/android/calculator2/UnifiedReal;->definitelyEquals(Lcom/android/calculator2/UnifiedReal;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 829
    new-instance p0, Lcom/android/calculator2/UnifiedReal;

    sget-object v0, Lcom/android/calculator2/BoundedRational;->THIRD:Lcom/android/calculator2/BoundedRational;

    sget-object v1, Lcom/android/calculator2/UnifiedReal;->CR_PI:Lcom/hp/creals/CR;

    invoke-direct {p0, v0, v1}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/android/calculator2/BoundedRational;Lcom/hp/creals/CR;)V

    return-object p0

    .line 831
    :cond_2
    new-instance v0, Lcom/android/calculator2/UnifiedReal;

    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->crValue()Lcom/hp/creals/CR;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hp/creals/CR;->asin()Lcom/hp/creals/CR;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/hp/creals/CR;)V

    return-object v0
.end method

.method public atan()Lcom/android/calculator2/UnifiedReal;
    .locals 2

    .line 851
    sget-object v0, Lcom/android/calculator2/UnifiedReal;->ZERO:Lcom/android/calculator2/UnifiedReal;

    const/16 v1, -0xa

    invoke-virtual {p0, v0, v1}, Lcom/android/calculator2/UnifiedReal;->compareTo(Lcom/android/calculator2/UnifiedReal;I)I

    move-result v0

    if-gez v0, :cond_0

    .line 852
    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->negate()Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->atan()Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->negate()Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    return-object p0

    .line 854
    :cond_0
    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->bigIntegerValue()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 855
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gtz v1, :cond_1

    .line 856
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    .line 864
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Impossible r_int"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 862
    :pswitch_0
    sget-object p0, Lcom/android/calculator2/UnifiedReal;->PI_OVER_4:Lcom/android/calculator2/UnifiedReal;

    return-object p0

    .line 860
    :pswitch_1
    sget-object p0, Lcom/android/calculator2/UnifiedReal;->ZERO:Lcom/android/calculator2/UnifiedReal;

    return-object p0

    .line 867
    :cond_1
    sget-object v0, Lcom/android/calculator2/UnifiedReal;->THIRD_SQRT3:Lcom/android/calculator2/UnifiedReal;

    invoke-virtual {p0, v0}, Lcom/android/calculator2/UnifiedReal;->definitelyEquals(Lcom/android/calculator2/UnifiedReal;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 868
    sget-object p0, Lcom/android/calculator2/UnifiedReal;->PI_OVER_6:Lcom/android/calculator2/UnifiedReal;

    return-object p0

    .line 870
    :cond_2
    sget-object v0, Lcom/android/calculator2/UnifiedReal;->SQRT3:Lcom/android/calculator2/UnifiedReal;

    invoke-virtual {p0, v0}, Lcom/android/calculator2/UnifiedReal;->definitelyEquals(Lcom/android/calculator2/UnifiedReal;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 871
    sget-object p0, Lcom/android/calculator2/UnifiedReal;->PI_OVER_3:Lcom/android/calculator2/UnifiedReal;

    return-object p0

    .line 873
    :cond_3
    new-instance v0, Lcom/android/calculator2/UnifiedReal;

    sget-object v1, Lcom/hp/creals/UnaryCRFunction;->atanFunction:Lcom/hp/creals/UnaryCRFunction;

    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->crValue()Lcom/hp/creals/CR;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/hp/creals/UnaryCRFunction;->execute(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/hp/creals/CR;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bigIntegerValue()Ljava/math/BigInteger;
    .locals 0

    .line 580
    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->boundedRationalValue()Lcom/android/calculator2/BoundedRational;

    move-result-object p0

    .line 581
    invoke-static {p0}, Lcom/android/calculator2/BoundedRational;->asBigInteger(Lcom/android/calculator2/BoundedRational;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public boundedRationalValue()Lcom/android/calculator2/BoundedRational;
    .locals 2

    .line 570
    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    sget-object v1, Lcom/android/calculator2/UnifiedReal;->CR_ONE:Lcom/hp/creals/CR;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    invoke-virtual {v0}, Lcom/android/calculator2/BoundedRational;->signum()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 571
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    return-object p0
.end method

.method public compareTo(Lcom/android/calculator2/UnifiedReal;)I
    .locals 2

    .line 465
    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->definitelyZero()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/calculator2/UnifiedReal;->definitelyZero()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    iget-object v1, p1, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    if-ne v0, v1, :cond_1

    .line 467
    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    invoke-virtual {v0}, Lcom/hp/creals/CR;->signum()I

    move-result v0

    .line 468
    iget-object p0, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    iget-object p1, p1, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    invoke-virtual {p0, p1}, Lcom/android/calculator2/BoundedRational;->compareTo(Lcom/android/calculator2/BoundedRational;)I

    move-result p0

    mul-int/2addr v0, p0

    return v0

    .line 470
    :cond_1
    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->crValue()Lcom/hp/creals/CR;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/calculator2/UnifiedReal;->crValue()Lcom/hp/creals/CR;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hp/creals/CR;->compareTo(Lcom/hp/creals/CR;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lcom/android/calculator2/UnifiedReal;I)I
    .locals 1

    .line 478
    invoke-virtual {p0, p1}, Lcom/android/calculator2/UnifiedReal;->isComparable(Lcom/android/calculator2/UnifiedReal;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {p0, p1}, Lcom/android/calculator2/UnifiedReal;->compareTo(Lcom/android/calculator2/UnifiedReal;)I

    move-result p0

    return p0

    .line 481
    :cond_0
    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->crValue()Lcom/hp/creals/CR;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/calculator2/UnifiedReal;->crValue()Lcom/hp/creals/CR;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/hp/creals/CR;->compareTo(Lcom/hp/creals/CR;I)I

    move-result p0

    return p0
.end method

.method public cos()Lcom/android/calculator2/UnifiedReal;
    .locals 1

    .line 767
    invoke-direct {p0}, Lcom/android/calculator2/UnifiedReal;->getPiTwelfths()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 769
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/calculator2/UnifiedReal;->cosPiTwelfths(I)Lcom/android/calculator2/UnifiedReal;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 774
    :cond_0
    new-instance v0, Lcom/android/calculator2/UnifiedReal;

    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->crValue()Lcom/hp/creals/CR;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hp/creals/CR;->cos()Lcom/hp/creals/CR;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/hp/creals/CR;)V

    return-object v0
.end method

.method public crValue()Lcom/hp/creals/CR;
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    invoke-virtual {v0}, Lcom/android/calculator2/BoundedRational;->crValue()Lcom/hp/creals/CR;

    move-result-object v0

    iget-object p0, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    invoke-virtual {v0, p0}, Lcom/hp/creals/CR;->multiply(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object p0

    return-object p0
.end method

.method public definitelyAlgebraic()Z
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    invoke-static {v0}, Lcom/android/calculator2/UnifiedReal;->definitelyAlgebraic(Lcom/hp/creals/CR;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    invoke-virtual {p0}, Lcom/android/calculator2/BoundedRational;->signum()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public definitelyEquals(Lcom/android/calculator2/UnifiedReal;)Z
    .locals 1

    .line 521
    invoke-virtual {p0, p1}, Lcom/android/calculator2/UnifiedReal;->isComparable(Lcom/android/calculator2/UnifiedReal;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/calculator2/UnifiedReal;->compareTo(Lcom/android/calculator2/UnifiedReal;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public definitelyIrrational()Z
    .locals 1

    .line 263
    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->definitelyRational()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    invoke-static {p0}, Lcom/android/calculator2/UnifiedReal;->isNamed(Lcom/hp/creals/CR;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public definitelyNonZero()Z
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    invoke-static {v0}, Lcom/android/calculator2/UnifiedReal;->isNamed(Lcom/hp/creals/CR;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    invoke-virtual {p0}, Lcom/android/calculator2/BoundedRational;->signum()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public definitelyNotEquals(Lcom/android/calculator2/UnifiedReal;)Z
    .locals 5

    .line 529
    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    invoke-static {v0}, Lcom/android/calculator2/UnifiedReal;->isNamed(Lcom/hp/creals/CR;)Z

    move-result v0

    .line 530
    iget-object v1, p1, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    invoke-static {v1}, Lcom/android/calculator2/UnifiedReal;->isNamed(Lcom/hp/creals/CR;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 532
    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    iget-object v1, p1, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    invoke-static {v0, v1}, Lcom/android/calculator2/UnifiedReal;->definitelyIndependent(Lcom/hp/creals/CR;Lcom/hp/creals/CR;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 533
    iget-object p0, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    invoke-virtual {p0}, Lcom/android/calculator2/BoundedRational;->signum()I

    move-result p0

    if-nez p0, :cond_0

    iget-object p0, p1, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    invoke-virtual {p0}, Lcom/android/calculator2/BoundedRational;->signum()I

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    move v2, v3

    :cond_1
    return v2

    .line 534
    :cond_2
    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    iget-object v1, p1, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    if-ne v0, v1, :cond_3

    .line 535
    iget-object p0, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    iget-object p1, p1, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    invoke-virtual {p0, p1}, Lcom/android/calculator2/BoundedRational;->equals(Lcom/android/calculator2/BoundedRational;)Z

    move-result p0

    xor-int/2addr p0, v3

    return p0

    .line 537
    :cond_3
    iget-object p0, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    iget-object p1, p1, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    invoke-virtual {p0, p1}, Lcom/android/calculator2/BoundedRational;->equals(Lcom/android/calculator2/BoundedRational;)Z

    move-result p0

    xor-int/2addr p0, v3

    return p0

    .line 539
    :cond_4
    iget-object v4, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    invoke-virtual {v4}, Lcom/android/calculator2/BoundedRational;->signum()I

    move-result v4

    if-nez v4, :cond_6

    if-eqz v1, :cond_5

    .line 540
    iget-object p0, p1, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    invoke-virtual {p0}, Lcom/android/calculator2/BoundedRational;->signum()I

    move-result p0

    if-eqz p0, :cond_5

    move v2, v3

    :cond_5
    return v2

    .line 542
    :cond_6
    iget-object p1, p1, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    invoke-virtual {p1}, Lcom/android/calculator2/BoundedRational;->signum()I

    move-result p1

    if-nez p1, :cond_8

    if-eqz v0, :cond_7

    .line 543
    iget-object p0, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    invoke-virtual {p0}, Lcom/android/calculator2/BoundedRational;->signum()I

    move-result p0

    if-eqz p0, :cond_7

    move v2, v3

    :cond_7
    return v2

    :cond_8
    return v2
.end method

.method public definitelyOne()Z
    .locals 2

    .line 563
    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    sget-object v1, Lcom/android/calculator2/UnifiedReal;->CR_ONE:Lcom/hp/creals/CR;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    sget-object v0, Lcom/android/calculator2/BoundedRational;->ONE:Lcom/android/calculator2/BoundedRational;

    invoke-virtual {p0, v0}, Lcom/android/calculator2/BoundedRational;->equals(Lcom/android/calculator2/BoundedRational;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public definitelyRational()Z
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    sget-object v1, Lcom/android/calculator2/UnifiedReal;->CR_ONE:Lcom/hp/creals/CR;

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    invoke-virtual {p0}, Lcom/android/calculator2/BoundedRational;->signum()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public definitelyTranscendental()Z
    .locals 1

    .line 277
    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->definitelyAlgebraic()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    invoke-static {p0}, Lcom/android/calculator2/UnifiedReal;->isNamed(Lcom/hp/creals/CR;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public definitelyZero()Z
    .locals 0

    .line 551
    iget-object p0, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    invoke-virtual {p0}, Lcom/android/calculator2/BoundedRational;->signum()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public digitsRequired()I
    .locals 2

    .line 1167
    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    sget-object v1, Lcom/android/calculator2/UnifiedReal;->CR_ONE:Lcom/hp/creals/CR;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    invoke-virtual {v0}, Lcom/android/calculator2/BoundedRational;->signum()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const p0, 0x7fffffff

    return p0

    .line 1168
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    invoke-static {p0}, Lcom/android/calculator2/BoundedRational;->digitsRequired(Lcom/android/calculator2/BoundedRational;)I

    move-result p0

    return p0
.end method

.method public divide(Lcom/android/calculator2/UnifiedReal;)Lcom/android/calculator2/UnifiedReal;
    .locals 2

    .line 670
    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    iget-object v1, p1, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    if-ne v0, v1, :cond_1

    .line 671
    invoke-virtual {p1}, Lcom/android/calculator2/UnifiedReal;->definitelyZero()Z

    move-result v0

    if-nez v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    iget-object v1, p1, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    invoke-static {v0, v1}, Lcom/android/calculator2/BoundedRational;->divide(Lcom/android/calculator2/BoundedRational;Lcom/android/calculator2/BoundedRational;)Lcom/android/calculator2/BoundedRational;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 676
    new-instance p0, Lcom/android/calculator2/UnifiedReal;

    sget-object p1, Lcom/android/calculator2/UnifiedReal;->CR_ONE:Lcom/hp/creals/CR;

    invoke-direct {p0, v0, p1}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/android/calculator2/BoundedRational;Lcom/hp/creals/CR;)V

    return-object p0

    .line 672
    :cond_0
    new-instance p0, Lcom/android/calculator2/UnifiedReal$ZeroDivisionException;

    invoke-direct {p0}, Lcom/android/calculator2/UnifiedReal$ZeroDivisionException;-><init>()V

    throw p0

    .line 679
    :cond_1
    invoke-virtual {p1}, Lcom/android/calculator2/UnifiedReal;->inverse()Lcom/android/calculator2/UnifiedReal;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/calculator2/UnifiedReal;->multiply(Lcom/android/calculator2/UnifiedReal;)Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    return-object p0
.end method

.method public doubleValue()D
    .locals 2

    .line 435
    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    sget-object v1, Lcom/android/calculator2/UnifiedReal;->CR_ONE:Lcom/hp/creals/CR;

    if-ne v0, v1, :cond_0

    .line 436
    iget-object p0, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    invoke-virtual {p0}, Lcom/android/calculator2/BoundedRational;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 438
    :cond_0
    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->crValue()Lcom/hp/creals/CR;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hp/creals/CR;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public exactlyDisplayable()Z
    .locals 0

    .line 358
    iget-object p0, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    invoke-static {p0}, Lcom/android/calculator2/UnifiedReal;->crName(Lcom/hp/creals/CR;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public exactlyTruncatable()Z
    .locals 2

    .line 427
    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    sget-object v1, Lcom/android/calculator2/UnifiedReal;->CR_ONE:Lcom/hp/creals/CR;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    sget-object v1, Lcom/android/calculator2/BoundedRational;->ZERO:Lcom/android/calculator2/BoundedRational;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->definitelyIrrational()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public exp()Lcom/android/calculator2/UnifiedReal;
    .locals 4

    .line 1073
    sget-object v0, Lcom/android/calculator2/UnifiedReal;->ZERO:Lcom/android/calculator2/UnifiedReal;

    invoke-virtual {p0, v0}, Lcom/android/calculator2/UnifiedReal;->definitelyEquals(Lcom/android/calculator2/UnifiedReal;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1074
    sget-object p0, Lcom/android/calculator2/UnifiedReal;->ONE:Lcom/android/calculator2/UnifiedReal;

    return-object p0

    .line 1076
    :cond_0
    sget-object v0, Lcom/android/calculator2/UnifiedReal;->ONE:Lcom/android/calculator2/UnifiedReal;

    invoke-virtual {p0, v0}, Lcom/android/calculator2/UnifiedReal;->definitelyEquals(Lcom/android/calculator2/UnifiedReal;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1078
    sget-object p0, Lcom/android/calculator2/UnifiedReal;->E:Lcom/android/calculator2/UnifiedReal;

    return-object p0

    .line 1080
    :cond_1
    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    invoke-direct {p0, v0}, Lcom/android/calculator2/UnifiedReal;->getExp(Lcom/hp/creals/CR;)Lcom/android/calculator2/BoundedRational;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1082
    iget-object v1, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    invoke-virtual {v1}, Lcom/android/calculator2/BoundedRational;->signum()I

    move-result v1

    if-gez v1, :cond_2

    .line 1083
    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->negate()Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->exp()Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->inverse()Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v1, 0x0

    .line 1086
    iget-object v2, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    .line 1087
    invoke-static {v2}, Lcom/android/calculator2/BoundedRational;->asBigInteger(Lcom/android/calculator2/BoundedRational;)Ljava/math/BigInteger;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 v1, 0x1

    .line 1091
    sget-object v3, Lcom/android/calculator2/BoundedRational;->TWO:Lcom/android/calculator2/BoundedRational;

    invoke-static {v2, v3}, Lcom/android/calculator2/BoundedRational;->multiply(Lcom/android/calculator2/BoundedRational;Lcom/android/calculator2/BoundedRational;)Lcom/android/calculator2/BoundedRational;

    move-result-object v2

    .line 1093
    :cond_3
    invoke-static {v0, v2}, Lcom/android/calculator2/BoundedRational;->pow(Lcom/android/calculator2/BoundedRational;Lcom/android/calculator2/BoundedRational;)Lcom/android/calculator2/BoundedRational;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1095
    new-instance p0, Lcom/android/calculator2/UnifiedReal;

    invoke-direct {p0, v0}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/android/calculator2/BoundedRational;)V

    if-eqz v1, :cond_4

    .line 1097
    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->sqrt()Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    :cond_4
    return-object p0

    .line 1102
    :cond_5
    new-instance v0, Lcom/android/calculator2/UnifiedReal;

    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->crValue()Lcom/hp/creals/CR;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hp/creals/CR;->exp()Lcom/hp/creals/CR;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/hp/creals/CR;)V

    return-object v0
.end method

.method public fact()Lcom/android/calculator2/UnifiedReal;
    .locals 4

    .line 1141
    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->bigIntegerValue()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1143
    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->crValue()Lcom/hp/creals/CR;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 1144
    new-instance v1, Lcom/android/calculator2/UnifiedReal;

    invoke-direct {v1, v0}, Lcom/android/calculator2/UnifiedReal;-><init>(Ljava/math/BigInteger;)V

    const/16 v2, -0x3e8

    invoke-virtual {p0, v1, v2}, Lcom/android/calculator2/UnifiedReal;->approxEquals(Lcom/android/calculator2/UnifiedReal;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 1145
    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "Non-integral factorial argument"

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1148
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result p0

    if-ltz p0, :cond_3

    .line 1151
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    const/16 v1, 0x14

    if-gt p0, v1, :cond_2

    .line 1155
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/calculator2/UnifiedReal;->genFactorial(JJ)Ljava/math/BigInteger;

    move-result-object p0

    .line 1156
    new-instance v0, Lcom/android/calculator2/BoundedRational;

    invoke-direct {v0, p0}, Lcom/android/calculator2/BoundedRational;-><init>(Ljava/math/BigInteger;)V

    .line 1157
    new-instance p0, Lcom/android/calculator2/UnifiedReal;

    invoke-direct {p0, v0}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/android/calculator2/BoundedRational;)V

    return-object p0

    .line 1153
    :cond_2
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "Factorial argument too big"

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1149
    :cond_3
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "Negative factorial argument"

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public inverse()Lcom/android/calculator2/UnifiedReal;
    .locals 2

    .line 654
    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->definitelyZero()Z

    move-result v0

    if-nez v0, :cond_1

    .line 657
    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    invoke-static {v0}, Lcom/android/calculator2/UnifiedReal;->getSquare(Lcom/hp/creals/CR;)Lcom/android/calculator2/BoundedRational;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 660
    iget-object v1, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    .line 661
    invoke-static {v1, v0}, Lcom/android/calculator2/BoundedRational;->multiply(Lcom/android/calculator2/BoundedRational;Lcom/android/calculator2/BoundedRational;)Lcom/android/calculator2/BoundedRational;

    move-result-object v0

    .line 660
    invoke-static {v0}, Lcom/android/calculator2/BoundedRational;->inverse(Lcom/android/calculator2/BoundedRational;)Lcom/android/calculator2/BoundedRational;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 663
    new-instance v1, Lcom/android/calculator2/UnifiedReal;

    iget-object p0, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    invoke-direct {v1, v0, p0}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/android/calculator2/BoundedRational;Lcom/hp/creals/CR;)V

    return-object v1

    .line 666
    :cond_0
    new-instance v0, Lcom/android/calculator2/UnifiedReal;

    iget-object v1, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    invoke-static {v1}, Lcom/android/calculator2/BoundedRational;->inverse(Lcom/android/calculator2/BoundedRational;)Lcom/android/calculator2/BoundedRational;

    move-result-object v1

    iget-object p0, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    invoke-virtual {p0}, Lcom/hp/creals/CR;->inverse()Lcom/hp/creals/CR;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/android/calculator2/BoundedRational;Lcom/hp/creals/CR;)V

    return-object v0

    .line 655
    :cond_1
    new-instance p0, Lcom/android/calculator2/UnifiedReal$ZeroDivisionException;

    invoke-direct {p0}, Lcom/android/calculator2/UnifiedReal$ZeroDivisionException;-><init>()V

    throw p0
.end method

.method public isComparable(Lcom/android/calculator2/UnifiedReal;)Z
    .locals 3

    .line 452
    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    iget-object v1, p1, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    const/16 v2, -0x3e8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    .line 453
    invoke-static {v0}, Lcom/android/calculator2/UnifiedReal;->isNamed(Lcom/hp/creals/CR;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    invoke-virtual {v0, v2}, Lcom/hp/creals/CR;->signum(I)I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    .line 454
    invoke-virtual {v0}, Lcom/android/calculator2/BoundedRational;->signum()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    invoke-virtual {v0}, Lcom/android/calculator2/BoundedRational;->signum()I

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    iget-object v1, p1, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    .line 455
    invoke-static {v0, v1}, Lcom/android/calculator2/UnifiedReal;->definitelyIndependent(Lcom/hp/creals/CR;Lcom/hp/creals/CR;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 456
    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->crValue()Lcom/hp/creals/CR;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/calculator2/UnifiedReal;->crValue()Lcom/hp/creals/CR;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/hp/creals/CR;->compareTo(Lcom/hp/creals/CR;I)I

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public leadingBinaryZeroes()I
    .locals 2

    .line 1181
    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    invoke-static {v0}, Lcom/android/calculator2/UnifiedReal;->isNamed(Lcom/hp/creals/CR;)Z

    move-result v0

    const v1, 0x7fffffff

    if-eqz v0, :cond_2

    .line 1184
    iget-object p0, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    invoke-virtual {p0}, Lcom/android/calculator2/BoundedRational;->wholeNumberBits()I

    move-result p0

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x3

    if-lt p0, v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    neg-int p0, p0

    add-int/2addr p0, v0

    return p0

    :cond_2
    return v1
.end method

.method public ln()Lcom/android/calculator2/UnifiedReal;
    .locals 7

    .line 1024
    sget-object v0, Lcom/android/calculator2/UnifiedReal;->ZERO:Lcom/android/calculator2/UnifiedReal;

    invoke-virtual {p0, v0}, Lcom/android/calculator2/UnifiedReal;->isComparable(Lcom/android/calculator2/UnifiedReal;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1025
    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->signum()I

    move-result v0

    if-lez v0, :cond_4

    .line 1028
    sget-object v0, Lcom/android/calculator2/UnifiedReal;->ONE:Lcom/android/calculator2/UnifiedReal;

    const/16 v1, -0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/android/calculator2/UnifiedReal;->compareTo(Lcom/android/calculator2/UnifiedReal;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 1030
    sget-object v0, Lcom/android/calculator2/UnifiedReal;->ONE:Lcom/android/calculator2/UnifiedReal;

    invoke-virtual {p0, v0}, Lcom/android/calculator2/UnifiedReal;->definitelyEquals(Lcom/android/calculator2/UnifiedReal;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1031
    sget-object p0, Lcom/android/calculator2/UnifiedReal;->ZERO:Lcom/android/calculator2/UnifiedReal;

    return-object p0

    :cond_0
    if-gez v0, :cond_1

    .line 1034
    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->inverse()Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->ln()Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->negate()Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    return-object p0

    .line 1036
    :cond_1
    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    invoke-static {v0}, Lcom/android/calculator2/BoundedRational;->asBigInteger(Lcom/android/calculator2/BoundedRational;)Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1038
    iget-object v1, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    sget-object v2, Lcom/android/calculator2/UnifiedReal;->CR_ONE:Lcom/hp/creals/CR;

    const-wide/16 v3, 0x0

    if-ne v1, v2, :cond_3

    const/4 v1, 0x0

    .line 1041
    :goto_0
    sget-object v2, Lcom/android/calculator2/UnifiedReal;->sLogs:[Lcom/hp/creals/CR;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 1042
    sget-object v2, Lcom/android/calculator2/UnifiedReal;->sLogs:[Lcom/hp/creals/CR;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    .line 1043
    invoke-static {v0, v1}, Lcom/android/calculator2/UnifiedReal;->getIntLog(Ljava/math/BigInteger;I)J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-eqz v2, :cond_2

    .line 1045
    new-instance p0, Lcom/android/calculator2/UnifiedReal;

    new-instance v0, Lcom/android/calculator2/BoundedRational;

    invoke-direct {v0, v5, v6}, Lcom/android/calculator2/BoundedRational;-><init>(J)V

    sget-object v2, Lcom/android/calculator2/UnifiedReal;->sLogs:[Lcom/hp/creals/CR;

    aget-object v1, v2, v1

    invoke-direct {p0, v0, v1}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/android/calculator2/BoundedRational;Lcom/hp/creals/CR;)V

    return-object p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1051
    :cond_3
    iget-object v1, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    invoke-static {v1}, Lcom/android/calculator2/UnifiedReal;->getSquare(Lcom/hp/creals/CR;)Lcom/android/calculator2/BoundedRational;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1053
    invoke-virtual {v1}, Lcom/android/calculator2/BoundedRational;->intValue()I

    move-result v1

    .line 1054
    sget-object v2, Lcom/android/calculator2/UnifiedReal;->sLogs:[Lcom/hp/creals/CR;

    aget-object v2, v2, v1

    if-eqz v2, :cond_5

    .line 1055
    invoke-static {v0, v1}, Lcom/android/calculator2/UnifiedReal;->getIntLog(Ljava/math/BigInteger;I)J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-eqz v0, :cond_5

    .line 1057
    new-instance v0, Lcom/android/calculator2/BoundedRational;

    invoke-direct {v0, v5, v6}, Lcom/android/calculator2/BoundedRational;-><init>(J)V

    sget-object v2, Lcom/android/calculator2/BoundedRational;->HALF:Lcom/android/calculator2/BoundedRational;

    .line 1058
    invoke-static {v0, v2}, Lcom/android/calculator2/BoundedRational;->add(Lcom/android/calculator2/BoundedRational;Lcom/android/calculator2/BoundedRational;)Lcom/android/calculator2/BoundedRational;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1061
    new-instance p0, Lcom/android/calculator2/UnifiedReal;

    sget-object v2, Lcom/android/calculator2/UnifiedReal;->sLogs:[Lcom/hp/creals/CR;

    aget-object v1, v2, v1

    invoke-direct {p0, v0, v1}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/android/calculator2/BoundedRational;Lcom/hp/creals/CR;)V

    return-object p0

    .line 1026
    :cond_4
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "log(non-positive)"

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1069
    :cond_5
    new-instance v0, Lcom/android/calculator2/UnifiedReal;

    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->crValue()Lcom/hp/creals/CR;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hp/creals/CR;->ln()Lcom/hp/creals/CR;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/hp/creals/CR;)V

    return-object v0
.end method

.method public multiply(Lcom/android/calculator2/UnifiedReal;)Lcom/android/calculator2/UnifiedReal;
    .locals 2

    .line 611
    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    sget-object v1, Lcom/android/calculator2/UnifiedReal;->CR_ONE:Lcom/hp/creals/CR;

    if-ne v0, v1, :cond_0

    .line 612
    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    iget-object v1, p1, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    invoke-static {v0, v1}, Lcom/android/calculator2/BoundedRational;->multiply(Lcom/android/calculator2/BoundedRational;Lcom/android/calculator2/BoundedRational;)Lcom/android/calculator2/BoundedRational;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 614
    new-instance p0, Lcom/android/calculator2/UnifiedReal;

    iget-object p1, p1, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    invoke-direct {p0, v0, p1}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/android/calculator2/BoundedRational;Lcom/hp/creals/CR;)V

    return-object p0

    .line 617
    :cond_0
    iget-object v0, p1, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    sget-object v1, Lcom/android/calculator2/UnifiedReal;->CR_ONE:Lcom/hp/creals/CR;

    if-ne v0, v1, :cond_1

    .line 618
    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    iget-object v1, p1, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    invoke-static {v0, v1}, Lcom/android/calculator2/BoundedRational;->multiply(Lcom/android/calculator2/BoundedRational;Lcom/android/calculator2/BoundedRational;)Lcom/android/calculator2/BoundedRational;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 620
    new-instance p1, Lcom/android/calculator2/UnifiedReal;

    iget-object p0, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    invoke-direct {p1, v0, p0}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/android/calculator2/BoundedRational;Lcom/hp/creals/CR;)V

    return-object p1

    .line 623
    :cond_1
    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->definitelyZero()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/android/calculator2/UnifiedReal;->definitelyZero()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 626
    :cond_2
    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    iget-object v1, p1, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    if-ne v0, v1, :cond_3

    .line 627
    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    invoke-static {v0}, Lcom/android/calculator2/UnifiedReal;->getSquare(Lcom/hp/creals/CR;)Lcom/android/calculator2/BoundedRational;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 629
    iget-object v1, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    .line 630
    invoke-static {v0, v1}, Lcom/android/calculator2/BoundedRational;->multiply(Lcom/android/calculator2/BoundedRational;Lcom/android/calculator2/BoundedRational;)Lcom/android/calculator2/BoundedRational;

    move-result-object v0

    iget-object v1, p1, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    .line 629
    invoke-static {v0, v1}, Lcom/android/calculator2/BoundedRational;->multiply(Lcom/android/calculator2/BoundedRational;Lcom/android/calculator2/BoundedRational;)Lcom/android/calculator2/BoundedRational;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 632
    new-instance p0, Lcom/android/calculator2/UnifiedReal;

    invoke-direct {p0, v0}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/android/calculator2/BoundedRational;)V

    return-object p0

    .line 637
    :cond_3
    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    iget-object v1, p1, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    invoke-static {v0, v1}, Lcom/android/calculator2/BoundedRational;->multiply(Lcom/android/calculator2/BoundedRational;Lcom/android/calculator2/BoundedRational;)Lcom/android/calculator2/BoundedRational;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 639
    new-instance v1, Lcom/android/calculator2/UnifiedReal;

    iget-object p0, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    iget-object p1, p1, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    invoke-virtual {p0, p1}, Lcom/hp/creals/CR;->multiply(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/android/calculator2/BoundedRational;Lcom/hp/creals/CR;)V

    return-object v1

    .line 641
    :cond_4
    new-instance v0, Lcom/android/calculator2/UnifiedReal;

    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->crValue()Lcom/hp/creals/CR;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/calculator2/UnifiedReal;->crValue()Lcom/hp/creals/CR;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hp/creals/CR;->multiply(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/hp/creals/CR;)V

    return-object v0

    .line 624
    :cond_5
    :goto_0
    sget-object p0, Lcom/android/calculator2/UnifiedReal;->ZERO:Lcom/android/calculator2/UnifiedReal;

    return-object p0
.end method

.method public negate()Lcom/android/calculator2/UnifiedReal;
    .locals 2

    .line 602
    new-instance v0, Lcom/android/calculator2/UnifiedReal;

    iget-object v1, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    invoke-static {v1}, Lcom/android/calculator2/BoundedRational;->negate(Lcom/android/calculator2/BoundedRational;)Lcom/android/calculator2/BoundedRational;

    move-result-object v1

    iget-object p0, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    invoke-direct {v0, v1, p0}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/android/calculator2/BoundedRational;Lcom/hp/creals/CR;)V

    return-object v0
.end method

.method public pow(Lcom/android/calculator2/UnifiedReal;)Lcom/android/calculator2/UnifiedReal;
    .locals 2

    .line 946
    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    sget-object v1, Lcom/android/calculator2/UnifiedReal;->CR_E:Lcom/hp/creals/CR;

    if-ne v0, v1, :cond_1

    .line 947
    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    sget-object v1, Lcom/android/calculator2/BoundedRational;->ONE:Lcom/android/calculator2/BoundedRational;

    invoke-virtual {v0, v1}, Lcom/android/calculator2/BoundedRational;->equals(Lcom/android/calculator2/BoundedRational;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 948
    invoke-virtual {p1}, Lcom/android/calculator2/UnifiedReal;->exp()Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    return-object p0

    .line 950
    :cond_0
    new-instance v0, Lcom/android/calculator2/UnifiedReal;

    iget-object p0, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    invoke-direct {v0, p0}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/android/calculator2/BoundedRational;)V

    invoke-virtual {v0, p1}, Lcom/android/calculator2/UnifiedReal;->pow(Lcom/android/calculator2/UnifiedReal;)Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    .line 951
    invoke-virtual {p1}, Lcom/android/calculator2/UnifiedReal;->exp()Lcom/android/calculator2/UnifiedReal;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/calculator2/UnifiedReal;->multiply(Lcom/android/calculator2/UnifiedReal;)Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    return-object p0

    .line 954
    :cond_1
    invoke-virtual {p1}, Lcom/android/calculator2/UnifiedReal;->boundedRationalValue()Lcom/android/calculator2/BoundedRational;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 956
    invoke-static {v0}, Lcom/android/calculator2/BoundedRational;->asBigInteger(Lcom/android/calculator2/BoundedRational;)Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 958
    invoke-direct {p0, v1}, Lcom/android/calculator2/UnifiedReal;->pow(Ljava/math/BigInteger;)Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    return-object p0

    .line 961
    :cond_2
    sget-object v1, Lcom/android/calculator2/BoundedRational;->TWO:Lcom/android/calculator2/BoundedRational;

    .line 962
    invoke-static {v1, v0}, Lcom/android/calculator2/BoundedRational;->multiply(Lcom/android/calculator2/BoundedRational;Lcom/android/calculator2/BoundedRational;)Lcom/android/calculator2/BoundedRational;

    move-result-object v0

    .line 961
    invoke-static {v0}, Lcom/android/calculator2/BoundedRational;->asBigInteger(Lcom/android/calculator2/BoundedRational;)Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 964
    invoke-direct {p0, v0}, Lcom/android/calculator2/UnifiedReal;->pow(Ljava/math/BigInteger;)Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->sqrt()Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    return-object p0

    .line 968
    :cond_3
    new-instance v0, Lcom/android/calculator2/UnifiedReal;

    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->crValue()Lcom/hp/creals/CR;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hp/creals/CR;->ln()Lcom/hp/creals/CR;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/calculator2/UnifiedReal;->crValue()Lcom/hp/creals/CR;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hp/creals/CR;->multiply(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hp/creals/CR;->exp()Lcom/hp/creals/CR;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/hp/creals/CR;)V

    return-object v0
.end method

.method public signum()I
    .locals 1

    .line 497
    sget-object v0, Lcom/android/calculator2/UnifiedReal;->ZERO:Lcom/android/calculator2/UnifiedReal;

    invoke-virtual {p0, v0}, Lcom/android/calculator2/UnifiedReal;->compareTo(Lcom/android/calculator2/UnifiedReal;)I

    move-result p0

    return p0
.end method

.method public signum(I)I
    .locals 1

    .line 489
    sget-object v0, Lcom/android/calculator2/UnifiedReal;->ZERO:Lcom/android/calculator2/UnifiedReal;

    invoke-virtual {p0, v0, p1}, Lcom/android/calculator2/UnifiedReal;->compareTo(Lcom/android/calculator2/UnifiedReal;I)I

    move-result p0

    return p0
.end method

.method public sin()Lcom/android/calculator2/UnifiedReal;
    .locals 1

    .line 748
    invoke-direct {p0}, Lcom/android/calculator2/UnifiedReal;->getPiTwelfths()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 750
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/calculator2/UnifiedReal;->sinPiTwelfths(I)Lcom/android/calculator2/UnifiedReal;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 755
    :cond_0
    new-instance v0, Lcom/android/calculator2/UnifiedReal;

    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->crValue()Lcom/hp/creals/CR;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hp/creals/CR;->sin()Lcom/hp/creals/CR;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/hp/creals/CR;)V

    return-object v0
.end method

.method public sqrt()Lcom/android/calculator2/UnifiedReal;
    .locals 5

    .line 683
    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    sget-object v1, Lcom/android/calculator2/UnifiedReal;->CR_ONE:Lcom/hp/creals/CR;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 687
    :goto_0
    sget-object v1, Lcom/android/calculator2/UnifiedReal;->sSqrts:[Lcom/hp/creals/CR;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 688
    sget-object v1, Lcom/android/calculator2/UnifiedReal;->sSqrts:[Lcom/hp/creals/CR;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 689
    iget-object v1, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    new-instance v2, Lcom/android/calculator2/BoundedRational;

    int-to-long v3, v0

    invoke-direct {v2, v3, v4}, Lcom/android/calculator2/BoundedRational;-><init>(J)V

    .line 690
    invoke-static {v1, v2}, Lcom/android/calculator2/BoundedRational;->divide(Lcom/android/calculator2/BoundedRational;Lcom/android/calculator2/BoundedRational;)Lcom/android/calculator2/BoundedRational;

    move-result-object v1

    .line 689
    invoke-static {v1}, Lcom/android/calculator2/BoundedRational;->sqrt(Lcom/android/calculator2/BoundedRational;)Lcom/android/calculator2/BoundedRational;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 692
    new-instance p0, Lcom/android/calculator2/UnifiedReal;

    sget-object v2, Lcom/android/calculator2/UnifiedReal;->sSqrts:[Lcom/hp/creals/CR;

    aget-object v0, v2, v0

    invoke-direct {p0, v1, v0}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/android/calculator2/BoundedRational;Lcom/hp/creals/CR;)V

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 697
    :cond_1
    new-instance v0, Lcom/android/calculator2/UnifiedReal;

    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->crValue()Lcom/hp/creals/CR;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hp/creals/CR;->sqrt()Lcom/hp/creals/CR;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/calculator2/UnifiedReal;-><init>(Lcom/hp/creals/CR;)V

    return-object v0
.end method

.method public subtract(Lcom/android/calculator2/UnifiedReal;)Lcom/android/calculator2/UnifiedReal;
    .locals 0

    .line 606
    invoke-virtual {p1}, Lcom/android/calculator2/UnifiedReal;->negate()Lcom/android/calculator2/UnifiedReal;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/calculator2/UnifiedReal;->add(Lcom/android/calculator2/UnifiedReal;)Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    return-object p0
.end method

.method public tan()Lcom/android/calculator2/UnifiedReal;
    .locals 2

    .line 778
    invoke-direct {p0}, Lcom/android/calculator2/UnifiedReal;->getPiTwelfths()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 780
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    .line 784
    invoke-static {v0}, Lcom/android/calculator2/UnifiedReal;->sinPiTwelfths(I)Lcom/android/calculator2/UnifiedReal;

    move-result-object v1

    .line 785
    invoke-static {v0}, Lcom/android/calculator2/UnifiedReal;->cosPiTwelfths(I)Lcom/android/calculator2/UnifiedReal;

    move-result-object v0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 787
    invoke-virtual {v1, v0}, Lcom/android/calculator2/UnifiedReal;->divide(Lcom/android/calculator2/UnifiedReal;)Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    return-object p0

    .line 782
    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "Tangent undefined"

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 790
    :cond_1
    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->sin()Lcom/android/calculator2/UnifiedReal;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->cos()Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/calculator2/UnifiedReal;->divide(Lcom/android/calculator2/UnifiedReal;)Lcom/android/calculator2/UnifiedReal;

    move-result-object p0

    return-object p0
.end method

.method public toNiceString()Ljava/lang/String;
    .locals 3

    .line 334
    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    sget-object v1, Lcom/android/calculator2/UnifiedReal;->CR_ONE:Lcom/hp/creals/CR;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    invoke-virtual {v0}, Lcom/android/calculator2/BoundedRational;->signum()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    invoke-static {v0}, Lcom/android/calculator2/UnifiedReal;->crName(Lcom/hp/creals/CR;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 339
    iget-object v1, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    invoke-static {v1}, Lcom/android/calculator2/BoundedRational;->asBigInteger(Lcom/android/calculator2/BoundedRational;)Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 341
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 344
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    invoke-virtual {p0}, Lcom/android/calculator2/BoundedRational;->toNiceString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 346
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    invoke-virtual {p0}, Lcom/android/calculator2/BoundedRational;->toNiceString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 348
    :cond_3
    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    sget-object v1, Lcom/android/calculator2/BoundedRational;->ONE:Lcom/android/calculator2/BoundedRational;

    invoke-virtual {v0, v1}, Lcom/android/calculator2/BoundedRational;->equals(Lcom/android/calculator2/BoundedRational;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 349
    iget-object p0, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    invoke-virtual {p0}, Lcom/hp/creals/CR;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 351
    :cond_4
    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->crValue()Lcom/hp/creals/CR;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hp/creals/CR;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 335
    :cond_5
    :goto_0
    iget-object p0, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    invoke-virtual {p0}, Lcom/android/calculator2/BoundedRational;->toNiceString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    invoke-virtual {v1}, Lcom/android/calculator2/BoundedRational;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    invoke-virtual {p0}, Lcom/hp/creals/CR;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringTruncated(I)Ljava/lang/String;
    .locals 6

    .line 374
    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mCrFactor:Lcom/hp/creals/CR;

    sget-object v1, Lcom/android/calculator2/UnifiedReal;->CR_ONE:Lcom/hp/creals/CR;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    sget-object v1, Lcom/android/calculator2/BoundedRational;->ZERO:Lcom/android/calculator2/BoundedRational;

    if-ne v0, v1, :cond_0

    goto/16 :goto_5

    .line 377
    :cond_0
    sget-object v0, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/hp/creals/CR;->valueOf(Ljava/math/BigInteger;)Lcom/hp/creals/CR;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->crValue()Lcom/hp/creals/CR;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hp/creals/CR;->multiply(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object v0

    .line 380
    invoke-virtual {p0}, Lcom/android/calculator2/UnifiedReal;->exactlyTruncatable()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 382
    :try_start_0
    invoke-virtual {v0, v3}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    invoke-virtual {v1}, Ljava/math/BigInteger;->signum()I

    move-result p0

    if-gez p0, :cond_1

    .line 389
    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    move p0, v2

    goto :goto_0

    :cond_1
    move p0, v3

    .line 391
    :goto_0
    invoke-static {v1}, Lcom/hp/creals/CR;->valueOf(Ljava/math/BigInteger;)Lcom/hp/creals/CR;

    move-result-object v4

    invoke-virtual {v0}, Lcom/hp/creals/CR;->abs()Lcom/hp/creals/CR;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/hp/creals/CR;->compareTo(Lcom/hp/creals/CR;)I

    move-result v4

    if-lez v4, :cond_2

    .line 392
    sget-object v4, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 394
    :cond_2
    invoke-static {v1}, Lcom/hp/creals/CR;->valueOf(Ljava/math/BigInteger;)Lcom/hp/creals/CR;

    move-result-object v4

    invoke-virtual {v0}, Lcom/hp/creals/CR;->abs()Lcom/hp/creals/CR;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/hp/creals/CR;->compareTo(Lcom/hp/creals/CR;)I

    move-result v0

    if-gez v0, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    invoke-static {v2}, Lcom/android/calculator2/UnifiedReal;->check(Z)V

    goto :goto_3

    :catch_0
    move-exception v0

    .line 384
    invoke-virtual {v0}, Ljava/lang/StackOverflowError;->printStackTrace()V

    .line 385
    iget-object p0, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    invoke-virtual {p0, p1}, Lcom/android/calculator2/BoundedRational;->toStringTruncated(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const/16 v1, -0xa

    .line 398
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/StackOverflowError; {:try_start_1 .. :try_end_1} :catch_1

    .line 403
    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result p0

    if-gez p0, :cond_5

    .line 405
    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    move p0, v2

    goto :goto_2

    :cond_5
    move p0, v3

    :goto_2
    const/16 v1, 0xa

    .line 407
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 409
    :goto_3
    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    .line 410
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, p1, 0x1

    if-ge v1, v2, :cond_6

    .line 412
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x30

    sub-int v1, v2, v1

    invoke-static {v5, v1}, Lcom/android/calculator2/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v2

    .line 415
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_7

    const-string p0, "-"

    goto :goto_4

    :cond_7
    const-string p0, ""

    :goto_4
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v1, p1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception v0

    .line 400
    invoke-virtual {v0}, Ljava/lang/StackOverflowError;->printStackTrace()V

    .line 401
    iget-object p0, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    invoke-virtual {p0, p1}, Lcom/android/calculator2/BoundedRational;->toStringTruncated(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 375
    :cond_8
    :goto_5
    iget-object p0, p0, Lcom/android/calculator2/UnifiedReal;->mRatFactor:Lcom/android/calculator2/BoundedRational;

    invoke-virtual {p0, p1}, Lcom/android/calculator2/BoundedRational;->toStringTruncated(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
