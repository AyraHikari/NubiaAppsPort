.class public abstract Lcom/hp/creals/CR;
.super Ljava/lang/Number;
.source "CR.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hp/creals/CR$PrecisionOverflowException;,
        Lcom/hp/creals/CR$AbortedException;
    }
.end annotation


# static fields
.field public static ONE:Lcom/hp/creals/CR;

.field public static PI:Lcom/hp/creals/CR;

.field public static ZERO:Lcom/hp/creals/CR;

.field static final big0:Ljava/math/BigInteger;

.field static final big1:Ljava/math/BigInteger;

.field static final big10:Ljava/math/BigInteger;

.field static final big2:Ljava/math/BigInteger;

.field static final big3:Ljava/math/BigInteger;

.field static final big6:Ljava/math/BigInteger;

.field static final big750:Ljava/math/BigInteger;

.field static final big8:Ljava/math/BigInteger;

.field static final bigm1:Ljava/math/BigInteger;

.field static final bigm750:Ljava/math/BigInteger;

.field static doubleLog2:D

.field static eightyone_eightyeths:Lcom/hp/creals/CR;

.field static four:Lcom/hp/creals/CR;

.field static half_pi:Lcom/hp/creals/CR;

.field static final high_ln_limit:Ljava/math/BigInteger;

.field static ln2:Lcom/hp/creals/CR;

.field static ln2_1:Lcom/hp/creals/CR;

.field static ln2_2:Lcom/hp/creals/CR;

.field static ln2_3:Lcom/hp/creals/CR;

.field static final low_ln_limit:Ljava/math/BigInteger;

.field public static volatile please_stop:Z

.field static final scaled_4:Ljava/math/BigInteger;

.field static ten_ninths:Lcom/hp/creals/CR;

.field static twentyfive_twentyfourths:Lcom/hp/creals/CR;

.field static two:Lcom/hp/creals/CR;


# instance fields
.field transient appr_valid:Z

.field transient max_appr:Ljava/math/BigInteger;

.field transient min_prec:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 196
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    sput-object v0, Lcom/hp/creals/CR;->big0:Ljava/math/BigInteger;

    .line 197
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    sput-object v0, Lcom/hp/creals/CR;->big1:Ljava/math/BigInteger;

    const-wide/16 v0, -0x1

    .line 198
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/hp/creals/CR;->bigm1:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    .line 199
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/hp/creals/CR;->big2:Ljava/math/BigInteger;

    const-wide/16 v0, 0x3

    .line 200
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/hp/creals/CR;->big3:Ljava/math/BigInteger;

    const-wide/16 v0, 0x6

    .line 201
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/hp/creals/CR;->big6:Ljava/math/BigInteger;

    const-wide/16 v0, 0x8

    .line 202
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/hp/creals/CR;->big8:Ljava/math/BigInteger;

    .line 203
    sget-object v0, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    sput-object v0, Lcom/hp/creals/CR;->big10:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2ee

    .line 204
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/hp/creals/CR;->big750:Ljava/math/BigInteger;

    const-wide/16 v0, -0x2ee

    .line 205
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/hp/creals/CR;->bigm750:Ljava/math/BigInteger;

    const/4 v0, 0x0

    .line 213
    sput-boolean v0, Lcom/hp/creals/CR;->please_stop:Z

    .line 315
    invoke-static {v0}, Lcom/hp/creals/CR;->valueOf(I)Lcom/hp/creals/CR;

    move-result-object v0

    sput-object v0, Lcom/hp/creals/CR;->ZERO:Lcom/hp/creals/CR;

    const/4 v0, 0x1

    .line 316
    invoke-static {v0}, Lcom/hp/creals/CR;->valueOf(I)Lcom/hp/creals/CR;

    move-result-object v1

    sput-object v1, Lcom/hp/creals/CR;->ONE:Lcom/hp/creals/CR;

    const/16 v1, 0xa

    .line 429
    invoke-static {v1}, Lcom/hp/creals/CR;->valueOf(I)Lcom/hp/creals/CR;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Lcom/hp/creals/CR;->valueOf(I)Lcom/hp/creals/CR;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hp/creals/CR;->divide(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object v1

    sput-object v1, Lcom/hp/creals/CR;->ten_ninths:Lcom/hp/creals/CR;

    const/16 v1, 0x19

    .line 430
    invoke-static {v1}, Lcom/hp/creals/CR;->valueOf(I)Lcom/hp/creals/CR;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v2}, Lcom/hp/creals/CR;->valueOf(I)Lcom/hp/creals/CR;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hp/creals/CR;->divide(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object v1

    sput-object v1, Lcom/hp/creals/CR;->twentyfive_twentyfourths:Lcom/hp/creals/CR;

    const/16 v1, 0x51

    .line 431
    invoke-static {v1}, Lcom/hp/creals/CR;->valueOf(I)Lcom/hp/creals/CR;

    move-result-object v1

    const/16 v2, 0x50

    invoke-static {v2}, Lcom/hp/creals/CR;->valueOf(I)Lcom/hp/creals/CR;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hp/creals/CR;->divide(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object v1

    sput-object v1, Lcom/hp/creals/CR;->eightyone_eightyeths:Lcom/hp/creals/CR;

    const/4 v1, 0x7

    .line 432
    invoke-static {v1}, Lcom/hp/creals/CR;->valueOf(I)Lcom/hp/creals/CR;

    move-result-object v1

    sget-object v2, Lcom/hp/creals/CR;->ten_ninths:Lcom/hp/creals/CR;

    invoke-virtual {v2}, Lcom/hp/creals/CR;->simple_ln()Lcom/hp/creals/CR;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hp/creals/CR;->multiply(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object v1

    sput-object v1, Lcom/hp/creals/CR;->ln2_1:Lcom/hp/creals/CR;

    const/4 v1, 0x2

    .line 433
    invoke-static {v1}, Lcom/hp/creals/CR;->valueOf(I)Lcom/hp/creals/CR;

    move-result-object v2

    sget-object v3, Lcom/hp/creals/CR;->twentyfive_twentyfourths:Lcom/hp/creals/CR;

    invoke-virtual {v3}, Lcom/hp/creals/CR;->simple_ln()Lcom/hp/creals/CR;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hp/creals/CR;->multiply(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object v2

    sput-object v2, Lcom/hp/creals/CR;->ln2_2:Lcom/hp/creals/CR;

    const/4 v2, 0x3

    .line 435
    invoke-static {v2}, Lcom/hp/creals/CR;->valueOf(I)Lcom/hp/creals/CR;

    move-result-object v2

    sget-object v3, Lcom/hp/creals/CR;->eightyone_eightyeths:Lcom/hp/creals/CR;

    invoke-virtual {v3}, Lcom/hp/creals/CR;->simple_ln()Lcom/hp/creals/CR;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hp/creals/CR;->multiply(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object v2

    sput-object v2, Lcom/hp/creals/CR;->ln2_3:Lcom/hp/creals/CR;

    .line 436
    sget-object v2, Lcom/hp/creals/CR;->ln2_1:Lcom/hp/creals/CR;

    sget-object v3, Lcom/hp/creals/CR;->ln2_2:Lcom/hp/creals/CR;

    invoke-virtual {v2, v3}, Lcom/hp/creals/CR;->subtract(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object v2

    sget-object v3, Lcom/hp/creals/CR;->ln2_3:Lcom/hp/creals/CR;

    invoke-virtual {v2, v3}, Lcom/hp/creals/CR;->add(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object v2

    sput-object v2, Lcom/hp/creals/CR;->ln2:Lcom/hp/creals/CR;

    const/4 v2, 0x4

    .line 444
    invoke-static {v2}, Lcom/hp/creals/CR;->valueOf(I)Lcom/hp/creals/CR;

    move-result-object v2

    sput-object v2, Lcom/hp/creals/CR;->four:Lcom/hp/creals/CR;

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 618
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    sput-wide v2, Lcom/hp/creals/CR;->doubleLog2:D

    .line 864
    invoke-static {v1}, Lcom/hp/creals/CR;->valueOf(I)Lcom/hp/creals/CR;

    move-result-object v1

    sput-object v1, Lcom/hp/creals/CR;->two:Lcom/hp/creals/CR;

    .line 869
    sget-object v1, Lcom/hp/creals/CR;->four:Lcom/hp/creals/CR;

    sget-object v2, Lcom/hp/creals/CR;->four:Lcom/hp/creals/CR;

    const/4 v3, 0x5

    invoke-static {v3}, Lcom/hp/creals/CR;->atan_reciprocal(I)Lcom/hp/creals/CR;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hp/creals/CR;->multiply(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object v2

    const/16 v3, 0xef

    invoke-static {v3}, Lcom/hp/creals/CR;->atan_reciprocal(I)Lcom/hp/creals/CR;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hp/creals/CR;->subtract(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hp/creals/CR;->multiply(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object v1

    sput-object v1, Lcom/hp/creals/CR;->PI:Lcom/hp/creals/CR;

    .line 872
    sget-object v1, Lcom/hp/creals/CR;->PI:Lcom/hp/creals/CR;

    invoke-virtual {v1, v0}, Lcom/hp/creals/CR;->shiftRight(I)Lcom/hp/creals/CR;

    move-result-object v0

    sput-object v0, Lcom/hp/creals/CR;->half_pi:Lcom/hp/creals/CR;

    .line 927
    sget-object v0, Lcom/hp/creals/CR;->big8:Ljava/math/BigInteger;

    sput-object v0, Lcom/hp/creals/CR;->low_ln_limit:Ljava/math/BigInteger;

    const-wide/16 v0, 0x18

    .line 928
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/hp/creals/CR;->high_ln_limit:Ljava/math/BigInteger;

    const-wide/16 v0, 0x40

    .line 930
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/hp/creals/CR;->scaled_4:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 164
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    const/4 v0, 0x0

    .line 234
    iput-boolean v0, p0, Lcom/hp/creals/CR;->appr_valid:Z

    return-void
.end method

.method static atan_reciprocal(I)Lcom/hp/creals/CR;
    .locals 1

    .line 441
    new-instance v0, Lcom/hp/creals/integral_atan_CR;

    invoke-direct {v0, p0}, Lcom/hp/creals/integral_atan_CR;-><init>(I)V

    return-object v0
.end method

.method static bound_log2(I)I
    .locals 4

    .line 239
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    int-to-double v0, p0

    .line 240
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method static check_prec(I)V
    .locals 1

    shr-int/lit8 v0, p0, 0x1c

    shr-int/lit8 p0, p0, 0x1d

    xor-int/2addr p0, v0

    if-nez p0, :cond_0

    return-void

    .line 255
    :cond_0
    new-instance p0, Lcom/hp/creals/CR$PrecisionOverflowException;

    invoke-direct {p0}, Lcom/hp/creals/CR$PrecisionOverflowException;-><init>()V

    throw p0
.end method

.method static scale(Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .locals 1

    if-ltz p1, :cond_0

    .line 328
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 330
    invoke-static {p0, p1}, Lcom/hp/creals/CR;->shift(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object p0

    sget-object p1, Lcom/hp/creals/CR;->big1:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 331
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method static shift(Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .locals 0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    if-gez p1, :cond_1

    neg-int p1, p1

    .line 321
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 322
    :cond_1
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(D)Lcom/hp/creals/CR;
    .locals 6

    .line 289
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_4

    .line 290
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_3

    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    const/4 v1, 0x1

    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 292
    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    const-wide v2, 0xfffffffffffffL

    and-long/2addr v2, p0

    const/16 v4, 0x34

    shr-long/2addr p0, v4

    long-to-int p0, p0

    add-int/lit16 p1, p0, -0x433

    if-eqz p0, :cond_1

    const-wide/high16 v4, 0x10000000000000L

    add-long/2addr v2, v4

    goto :goto_1

    :cond_1
    shl-long/2addr v2, v1

    .line 301
    :goto_1
    invoke-static {v2, v3}, Lcom/hp/creals/CR;->valueOf(J)Lcom/hp/creals/CR;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/hp/creals/CR;->shiftLeft(I)Lcom/hp/creals/CR;

    move-result-object p0

    if-eqz v0, :cond_2

    .line 302
    invoke-virtual {p0}, Lcom/hp/creals/CR;->negate()Lcom/hp/creals/CR;

    move-result-object p0

    :cond_2
    return-object p0

    .line 290
    :cond_3
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "Infinite argument"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 289
    :cond_4
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "Nan argument"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(F)Lcom/hp/creals/CR;
    .locals 2

    float-to-double v0, p0

    .line 312
    invoke-static {v0, v1}, Lcom/hp/creals/CR;->valueOf(D)Lcom/hp/creals/CR;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(I)Lcom/hp/creals/CR;
    .locals 2

    int-to-long v0, p0

    .line 272
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lcom/hp/creals/CR;->valueOf(Ljava/math/BigInteger;)Lcom/hp/creals/CR;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(J)Lcom/hp/creals/CR;
    .locals 0

    .line 280
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lcom/hp/creals/CR;->valueOf(Ljava/math/BigInteger;)Lcom/hp/creals/CR;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;I)Lcom/hp/creals/CR;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 545
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    .line 548
    :goto_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    add-int/lit8 v2, v0, -0x1

    .line 549
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    const/16 v2, 0x2e

    .line 550
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    const-string v2, "0"

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v2, 0x1

    .line 555
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move v4, v2

    move-object v2, v0

    move v0, v4

    .line 557
    :goto_2
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 558
    new-instance v0, Ljava/math/BigInteger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    int-to-long p0, p1

    .line 559
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object p0

    .line 560
    invoke-static {v0}, Lcom/hp/creals/CR;->valueOf(Ljava/math/BigInteger;)Lcom/hp/creals/CR;

    move-result-object p1

    invoke-static {p0}, Lcom/hp/creals/CR;->valueOf(Ljava/math/BigInteger;)Lcom/hp/creals/CR;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/hp/creals/CR;->divide(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/math/BigInteger;)Lcom/hp/creals/CR;
    .locals 1

    .line 264
    new-instance v0, Lcom/hp/creals/int_CR;

    invoke-direct {v0, p0}, Lcom/hp/creals/int_CR;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method private static zeroes(I)Ljava/lang/String;
    .locals 3

    .line 417
    new-array v0, p0, [C

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    const/16 v2, 0x30

    .line 419
    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 421
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method


# virtual methods
.method public BigIntegerValue()Ljava/math/BigInteger;
    .locals 1

    const/4 v0, 0x0

    .line 680
    invoke-virtual {p0, v0}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public abs()Lcom/hp/creals/CR;
    .locals 1

    .line 846
    invoke-virtual {p0}, Lcom/hp/creals/CR;->negate()Lcom/hp/creals/CR;

    move-result-object v0

    invoke-virtual {p0, v0, p0}, Lcom/hp/creals/CR;->select(Lcom/hp/creals/CR;Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object p0

    return-object p0
.end method

.method public acos()Lcom/hp/creals/CR;
    .locals 1

    .line 924
    sget-object v0, Lcom/hp/creals/CR;->half_pi:Lcom/hp/creals/CR;

    invoke-virtual {p0}, Lcom/hp/creals/CR;->asin()Lcom/hp/creals/CR;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/hp/creals/CR;->subtract(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object p0

    return-object p0
.end method

.method public add(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;
    .locals 1

    .line 750
    new-instance v0, Lcom/hp/creals/add_CR;

    invoke-direct {v0, p0, p1}, Lcom/hp/creals/add_CR;-><init>(Lcom/hp/creals/CR;Lcom/hp/creals/CR;)V

    return-object v0
.end method

.method protected abstract approximate(I)Ljava/math/BigInteger;
.end method

.method public asin()Lcom/hp/creals/CR;
    .locals 2

    const/16 v0, -0xa

    .line 909
    invoke-virtual {p0, v0}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 910
    sget-object v1, Lcom/hp/creals/CR;->big750:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-lez v1, :cond_0

    .line 911
    sget-object v0, Lcom/hp/creals/CR;->ONE:Lcom/hp/creals/CR;

    invoke-virtual {p0, p0}, Lcom/hp/creals/CR;->multiply(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/hp/creals/CR;->subtract(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hp/creals/CR;->sqrt()Lcom/hp/creals/CR;

    move-result-object p0

    .line 912
    invoke-virtual {p0}, Lcom/hp/creals/CR;->acos()Lcom/hp/creals/CR;

    move-result-object p0

    return-object p0

    .line 913
    :cond_0
    sget-object v1, Lcom/hp/creals/CR;->bigm750:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_1

    .line 914
    invoke-virtual {p0}, Lcom/hp/creals/CR;->negate()Lcom/hp/creals/CR;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hp/creals/CR;->asin()Lcom/hp/creals/CR;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hp/creals/CR;->negate()Lcom/hp/creals/CR;

    move-result-object p0

    return-object p0

    .line 916
    :cond_1
    new-instance v0, Lcom/hp/creals/prescaled_asin_CR;

    invoke-direct {v0, p0}, Lcom/hp/creals/prescaled_asin_CR;-><init>(Lcom/hp/creals/CR;)V

    return-object v0
.end method

.method public assumeInt()Lcom/hp/creals/CR;
    .locals 1

    .line 778
    new-instance v0, Lcom/hp/creals/assumed_int_CR;

    invoke-direct {v0, p0}, Lcom/hp/creals/assumed_int_CR;-><init>(Lcom/hp/creals/CR;)V

    return-object v0
.end method

.method public byteValue()B
    .locals 0

    .line 696
    invoke-virtual {p0}, Lcom/hp/creals/CR;->BigIntegerValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->byteValue()B

    move-result p0

    return p0
.end method

.method public compareTo(Lcom/hp/creals/CR;)I
    .locals 2

    const/16 v0, -0x14

    .line 500
    :goto_0
    invoke-static {v0}, Lcom/hp/creals/CR;->check_prec(I)V

    .line 501
    invoke-virtual {p0, p1, v0}, Lcom/hp/creals/CR;->compareTo(Lcom/hp/creals/CR;I)I

    move-result v1

    if-eqz v1, :cond_0

    return v1

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public compareTo(Lcom/hp/creals/CR;I)I
    .locals 1

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    .line 481
    invoke-virtual {p0, p2}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object p0

    .line 482
    invoke-virtual {p1, p2}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object p1

    .line 483
    sget-object p2, Lcom/hp/creals/CR;->big1:Ljava/math/BigInteger;

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p2

    if-lez p2, :cond_0

    return v0

    .line 485
    :cond_0
    sget-object p2, Lcom/hp/creals/CR;->big1:Ljava/math/BigInteger;

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public compareTo(Lcom/hp/creals/CR;II)I
    .locals 2

    .line 459
    invoke-virtual {p0, p3}, Lcom/hp/creals/CR;->iter_msd(I)I

    move-result v0

    if-le v0, p3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p3

    .line 460
    :goto_0
    invoke-virtual {p1, v1}, Lcom/hp/creals/CR;->iter_msd(I)I

    move-result v1

    if-le v1, v0, :cond_1

    move v0, v1

    :cond_1
    add-int/2addr p2, v0

    if-le p2, p3, :cond_2

    goto :goto_1

    :cond_2
    move p2, p3

    .line 466
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/hp/creals/CR;->compareTo(Lcom/hp/creals/CR;I)I

    move-result p0

    return p0
.end method

.method public cos()Lcom/hp/creals/CR;
    .locals 4

    .line 878
    sget-object v0, Lcom/hp/creals/CR;->PI:Lcom/hp/creals/CR;

    invoke-virtual {p0, v0}, Lcom/hp/creals/CR;->divide(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 879
    invoke-virtual {v0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v2

    .line 880
    sget-object v3, Lcom/hp/creals/CR;->big2:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 882
    invoke-static {v0, v1}, Lcom/hp/creals/CR;->scale(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v0

    .line 883
    sget-object v1, Lcom/hp/creals/CR;->PI:Lcom/hp/creals/CR;

    invoke-static {v0}, Lcom/hp/creals/CR;->valueOf(Ljava/math/BigInteger;)Lcom/hp/creals/CR;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hp/creals/CR;->multiply(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object v1

    .line 884
    sget-object v2, Lcom/hp/creals/CR;->big1:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eqz v0, :cond_0

    .line 885
    invoke-virtual {p0, v1}, Lcom/hp/creals/CR;->subtract(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hp/creals/CR;->cos()Lcom/hp/creals/CR;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hp/creals/CR;->negate()Lcom/hp/creals/CR;

    move-result-object p0

    return-object p0

    .line 887
    :cond_0
    invoke-virtual {p0, v1}, Lcom/hp/creals/CR;->subtract(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hp/creals/CR;->cos()Lcom/hp/creals/CR;

    move-result-object p0

    return-object p0

    .line 889
    :cond_1
    invoke-virtual {p0, v1}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lcom/hp/creals/CR;->big2:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    .line 891
    invoke-virtual {p0, v0}, Lcom/hp/creals/CR;->shiftRight(I)Lcom/hp/creals/CR;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hp/creals/CR;->cos()Lcom/hp/creals/CR;

    move-result-object p0

    .line 892
    invoke-virtual {p0, p0}, Lcom/hp/creals/CR;->multiply(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/hp/creals/CR;->shiftLeft(I)Lcom/hp/creals/CR;

    move-result-object p0

    sget-object v0, Lcom/hp/creals/CR;->ONE:Lcom/hp/creals/CR;

    invoke-virtual {p0, v0}, Lcom/hp/creals/CR;->subtract(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object p0

    return-object p0

    .line 894
    :cond_2
    new-instance v0, Lcom/hp/creals/prescaled_cos_CR;

    invoke-direct {v0, p0}, Lcom/hp/creals/prescaled_cos_CR;-><init>(Lcom/hp/creals/CR;)V

    return-object v0
.end method

.method public divide(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;
    .locals 1

    .line 814
    new-instance v0, Lcom/hp/creals/mult_CR;

    invoke-virtual {p1}, Lcom/hp/creals/CR;->inverse()Lcom/hp/creals/CR;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/hp/creals/mult_CR;-><init>(Lcom/hp/creals/CR;Lcom/hp/creals/CR;)V

    return-object v0
.end method

.method public doubleValue()D
    .locals 13

    const/16 v0, -0x438

    .line 712
    invoke-virtual {p0, v0}, Lcom/hp/creals/CR;->iter_msd(I)I

    move-result v0

    const-wide/16 v1, 0x0

    const/high16 v3, -0x80000000

    if-ne v3, v0, :cond_0

    return-wide v1

    :cond_0
    add-int/lit8 v0, v0, -0x3c

    .line 715
    invoke-virtual {p0, v0}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v3

    const/16 p0, -0x3e8

    if-ge v0, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 717
    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    if-eqz p0, :cond_2

    add-int/lit8 v0, v0, 0x60

    :cond_2
    int-to-long v7, v0

    const/16 v0, 0x34

    shr-long v9, v5, v0

    const-wide/16 v11, 0x7ff

    and-long/2addr v9, v11

    add-long/2addr v9, v7

    const-wide/16 v11, -0x800

    and-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_4

    cmpg-double p0, v3, v1

    if-gez p0, :cond_3

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide v0

    :cond_3
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0

    :cond_4
    shl-long v0, v7, v0

    add-long/2addr v5, v0

    .line 729
    invoke-static {v5, v6}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    if-eqz p0, :cond_5

    const-wide/high16 v2, 0x40f0000000000000L    # 65536.0

    div-double/2addr v0, v2

    div-double/2addr v0, v2

    return-wide v0

    :cond_5
    return-wide v0
.end method

.method public exp()Lcom/hp/creals/CR;
    .locals 2

    const/16 v0, -0xa

    .line 854
    invoke-virtual {p0, v0}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 855
    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-gez v1, :cond_0

    invoke-virtual {p0}, Lcom/hp/creals/CR;->negate()Lcom/hp/creals/CR;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hp/creals/CR;->exp()Lcom/hp/creals/CR;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hp/creals/CR;->inverse()Lcom/hp/creals/CR;

    move-result-object p0

    return-object p0

    .line 856
    :cond_0
    sget-object v1, Lcom/hp/creals/CR;->big2:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 857
    invoke-virtual {p0, v0}, Lcom/hp/creals/CR;->shiftRight(I)Lcom/hp/creals/CR;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hp/creals/CR;->exp()Lcom/hp/creals/CR;

    move-result-object p0

    .line 858
    invoke-virtual {p0, p0}, Lcom/hp/creals/CR;->multiply(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object p0

    return-object p0

    .line 860
    :cond_1
    new-instance v0, Lcom/hp/creals/prescaled_exp_CR;

    invoke-direct {v0, p0}, Lcom/hp/creals/prescaled_exp_CR;-><init>(Lcom/hp/creals/CR;)V

    return-object v0
.end method

.method public floatValue()F
    .locals 2

    .line 743
    invoke-virtual {p0}, Lcom/hp/creals/CR;->doubleValue()D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public declared-synchronized get_appr(I)Ljava/math/BigInteger;
    .locals 2

    monitor-enter p0

    .line 346
    :try_start_0
    invoke-static {p1}, Lcom/hp/creals/CR;->check_prec(I)V

    .line 347
    iget-boolean v0, p0, Lcom/hp/creals/CR;->appr_valid:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/hp/creals/CR;->min_prec:I

    if-lt p1, v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/hp/creals/CR;->max_appr:Ljava/math/BigInteger;

    iget v1, p0, Lcom/hp/creals/CR;->min_prec:I

    sub-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/hp/creals/CR;->scale(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 350
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/hp/creals/CR;->approximate(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 351
    iput p1, p0, Lcom/hp/creals/CR;->min_prec:I

    .line 352
    iput-object v0, p0, Lcom/hp/creals/CR;->max_appr:Ljava/math/BigInteger;

    const/4 p1, 0x1

    .line 353
    iput-boolean p1, p0, Lcom/hp/creals/CR;->appr_valid:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 345
    monitor-exit p0

    throw p1
.end method

.method public intValue()I
    .locals 0

    .line 688
    invoke-virtual {p0}, Lcom/hp/creals/CR;->BigIntegerValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    return p0
.end method

.method public inverse()Lcom/hp/creals/CR;
    .locals 1

    .line 807
    new-instance v0, Lcom/hp/creals/inv_CR;

    invoke-direct {v0, p0}, Lcom/hp/creals/inv_CR;-><init>(Lcom/hp/creals/CR;)V

    return-object v0
.end method

.method iter_msd(I)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, p1, 0x1e

    if-le v0, v1, :cond_2

    .line 399
    invoke-virtual {p0, v0}, Lcom/hp/creals/CR;->msd(I)I

    move-result v1

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    return v1

    .line 401
    :cond_0
    invoke-static {v0}, Lcom/hp/creals/CR;->check_prec(I)V

    .line 402
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/hp/creals/CR;->please_stop:Z

    if-nez v1, :cond_1

    mul-int/lit8 v0, v0, 0x3

    .line 398
    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x10

    goto :goto_0

    .line 402
    :cond_1
    new-instance p0, Lcom/hp/creals/CR$AbortedException;

    invoke-direct {p0}, Lcom/hp/creals/CR$AbortedException;-><init>()V

    throw p0

    .line 404
    :cond_2
    invoke-virtual {p0, p1}, Lcom/hp/creals/CR;->msd(I)I

    move-result p0

    return p0
.end method

.method known_msd()I
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/hp/creals/CR;->max_appr:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/hp/creals/CR;->max_appr:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    goto :goto_0

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/hp/creals/CR;->max_appr:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 372
    :goto_0
    iget p0, p0, Lcom/hp/creals/CR;->min_prec:I

    add-int/2addr p0, v0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public ln()Lcom/hp/creals/CR;
    .locals 2

    const/4 v0, -0x4

    .line 938
    invoke-virtual {p0, v0}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 939
    sget-object v1, Lcom/hp/creals/CR;->big0:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_3

    .line 942
    sget-object v1, Lcom/hp/creals/CR;->low_ln_limit:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 943
    invoke-virtual {p0}, Lcom/hp/creals/CR;->inverse()Lcom/hp/creals/CR;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hp/creals/CR;->ln()Lcom/hp/creals/CR;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hp/creals/CR;->negate()Lcom/hp/creals/CR;

    move-result-object p0

    return-object p0

    .line 945
    :cond_0
    sget-object v1, Lcom/hp/creals/CR;->high_ln_limit:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_2

    .line 946
    sget-object v1, Lcom/hp/creals/CR;->scaled_4:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gtz v1, :cond_1

    .line 947
    invoke-virtual {p0}, Lcom/hp/creals/CR;->sqrt()Lcom/hp/creals/CR;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hp/creals/CR;->sqrt()Lcom/hp/creals/CR;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hp/creals/CR;->ln()Lcom/hp/creals/CR;

    move-result-object p0

    const/4 v0, 0x2

    .line 948
    invoke-virtual {p0, v0}, Lcom/hp/creals/CR;->shiftLeft(I)Lcom/hp/creals/CR;

    move-result-object p0

    return-object p0

    .line 950
    :cond_1
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    .line 951
    invoke-virtual {p0, v0}, Lcom/hp/creals/CR;->shiftRight(I)Lcom/hp/creals/CR;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hp/creals/CR;->ln()Lcom/hp/creals/CR;

    move-result-object p0

    .line 952
    invoke-static {v0}, Lcom/hp/creals/CR;->valueOf(I)Lcom/hp/creals/CR;

    move-result-object v0

    sget-object v1, Lcom/hp/creals/CR;->ln2:Lcom/hp/creals/CR;

    invoke-virtual {v0, v1}, Lcom/hp/creals/CR;->multiply(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hp/creals/CR;->add(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object p0

    return-object p0

    .line 955
    :cond_2
    invoke-virtual {p0}, Lcom/hp/creals/CR;->simple_ln()Lcom/hp/creals/CR;

    move-result-object p0

    return-object p0

    .line 940
    :cond_3
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "ln(negative)"

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public longValue()J
    .locals 2

    .line 704
    invoke-virtual {p0}, Lcom/hp/creals/CR;->BigIntegerValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public max(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;
    .locals 1

    .line 831
    invoke-virtual {p0, p1}, Lcom/hp/creals/CR;->subtract(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/hp/creals/CR;->select(Lcom/hp/creals/CR;Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object p0

    return-object p0
.end method

.method public min(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;
    .locals 1

    .line 838
    invoke-virtual {p0, p1}, Lcom/hp/creals/CR;->subtract(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/hp/creals/CR;->select(Lcom/hp/creals/CR;Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object p0

    return-object p0
.end method

.method msd()I
    .locals 1

    const/high16 v0, -0x80000000

    .line 411
    invoke-virtual {p0, v0}, Lcom/hp/creals/CR;->iter_msd(I)I

    move-result p0

    return p0
.end method

.method msd(I)I
    .locals 2

    .line 379
    iget-boolean v0, p0, Lcom/hp/creals/CR;->appr_valid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hp/creals/CR;->max_appr:Ljava/math/BigInteger;

    sget-object v1, Lcom/hp/creals/CR;->big1:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/hp/creals/CR;->max_appr:Ljava/math/BigInteger;

    sget-object v1, Lcom/hp/creals/CR;->bigm1:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 382
    invoke-virtual {p0, p1}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    .line 383
    iget-object p1, p0, Lcom/hp/creals/CR;->max_appr:Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p1

    sget-object v0, Lcom/hp/creals/CR;->big1:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-gtz p1, :cond_1

    const/high16 p0, -0x80000000

    return p0

    .line 388
    :cond_1
    invoke-virtual {p0}, Lcom/hp/creals/CR;->known_msd()I

    move-result p0

    return p0
.end method

.method public multiply(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;
    .locals 1

    .line 799
    new-instance v0, Lcom/hp/creals/mult_CR;

    invoke-direct {v0, p0, p1}, Lcom/hp/creals/mult_CR;-><init>(Lcom/hp/creals/CR;Lcom/hp/creals/CR;)V

    return-object v0
.end method

.method public negate()Lcom/hp/creals/CR;
    .locals 1

    .line 785
    new-instance v0, Lcom/hp/creals/neg_CR;

    invoke-direct {v0, p0}, Lcom/hp/creals/neg_CR;-><init>(Lcom/hp/creals/CR;)V

    return-object v0
.end method

.method public select(Lcom/hp/creals/CR;Lcom/hp/creals/CR;)Lcom/hp/creals/CR;
    .locals 1

    .line 824
    new-instance v0, Lcom/hp/creals/select_CR;

    invoke-direct {v0, p0, p1, p2}, Lcom/hp/creals/select_CR;-><init>(Lcom/hp/creals/CR;Lcom/hp/creals/CR;Lcom/hp/creals/CR;)V

    return-object v0
.end method

.method public shiftLeft(I)Lcom/hp/creals/CR;
    .locals 1

    .line 758
    invoke-static {p1}, Lcom/hp/creals/CR;->check_prec(I)V

    .line 759
    new-instance v0, Lcom/hp/creals/shifted_CR;

    invoke-direct {v0, p0, p1}, Lcom/hp/creals/shifted_CR;-><init>(Lcom/hp/creals/CR;I)V

    return-object v0
.end method

.method public shiftRight(I)Lcom/hp/creals/CR;
    .locals 1

    .line 767
    invoke-static {p1}, Lcom/hp/creals/CR;->check_prec(I)V

    .line 768
    new-instance v0, Lcom/hp/creals/shifted_CR;

    neg-int p1, p1

    invoke-direct {v0, p0, p1}, Lcom/hp/creals/shifted_CR;-><init>(Lcom/hp/creals/CR;I)V

    return-object v0
.end method

.method public signum()I
    .locals 2

    const/16 v0, -0x14

    .line 529
    :goto_0
    invoke-static {v0}, Lcom/hp/creals/CR;->check_prec(I)V

    .line 530
    invoke-virtual {p0, v0}, Lcom/hp/creals/CR;->signum(I)I

    move-result v1

    if-eqz v1, :cond_0

    return v1

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public signum(I)I
    .locals 1

    .line 510
    iget-boolean v0, p0, Lcom/hp/creals/CR;->appr_valid:Z

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/hp/creals/CR;->max_appr:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 515
    invoke-virtual {p0, p1}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object p0

    .line 516
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result p0

    return p0
.end method

.method simple_ln()Lcom/hp/creals/CR;
    .locals 2

    .line 427
    new-instance v0, Lcom/hp/creals/prescaled_ln_CR;

    sget-object v1, Lcom/hp/creals/CR;->ONE:Lcom/hp/creals/CR;

    invoke-virtual {p0, v1}, Lcom/hp/creals/CR;->subtract(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/hp/creals/prescaled_ln_CR;-><init>(Lcom/hp/creals/CR;)V

    return-object v0
.end method

.method public sin()Lcom/hp/creals/CR;
    .locals 1

    .line 902
    sget-object v0, Lcom/hp/creals/CR;->half_pi:Lcom/hp/creals/CR;

    invoke-virtual {v0, p0}, Lcom/hp/creals/CR;->subtract(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hp/creals/CR;->cos()Lcom/hp/creals/CR;

    move-result-object p0

    return-object p0
.end method

.method public sqrt()Lcom/hp/creals/CR;
    .locals 1

    .line 962
    new-instance v0, Lcom/hp/creals/sqrt_CR;

    invoke-direct {v0, p0}, Lcom/hp/creals/sqrt_CR;-><init>(Lcom/hp/creals/CR;)V

    return-object v0
.end method

.method public subtract(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;
    .locals 1

    .line 792
    new-instance v0, Lcom/hp/creals/add_CR;

    invoke-virtual {p1}, Lcom/hp/creals/CR;->negate()Lcom/hp/creals/CR;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/hp/creals/add_CR;-><init>(Lcom/hp/creals/CR;Lcom/hp/creals/CR;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/16 v0, 0xa

    .line 615
    invoke-virtual {p0, v0}, Lcom/hp/creals/CR;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xa

    .line 608
    invoke-virtual {p0, p1, v0}, Lcom/hp/creals/CR;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(II)Ljava/lang/String;
    .locals 4

    const/16 v0, 0x10

    if-ne v0, p2, :cond_0

    mul-int/lit8 v0, p1, 0x4

    .line 573
    invoke-virtual {p0, v0}, Lcom/hp/creals/CR;->shiftLeft(I)Lcom/hp/creals/CR;

    move-result-object p0

    goto :goto_0

    :cond_0
    int-to-long v0, p2

    .line 575
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 576
    new-instance v1, Lcom/hp/creals/int_CR;

    invoke-direct {v1, v0}, Lcom/hp/creals/int_CR;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p0, v1}, Lcom/hp/creals/CR;->multiply(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object p0

    :goto_0
    const/4 v0, 0x0

    .line 578
    invoke-virtual {p0, v0}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object p0

    .line 579
    invoke-virtual {p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p1, :cond_1

    goto :goto_1

    .line 584
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, p1, :cond_2

    add-int/lit8 v2, p1, 0x1

    sub-int v1, v2, v1

    .line 587
    invoke-static {v1}, Lcom/hp/creals/CR;->zeroes(I)Ljava/lang/String;

    move-result-object v1

    .line 588
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move v1, v2

    :cond_2
    sub-int/2addr v1, p1

    .line 591
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 592
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 595
    :goto_1
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result p0

    if-gez p0, :cond_3

    .line 596
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "-"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_3
    return-object p2
.end method

.method public toStringFloatRep(III)Lcom/hp/creals/StringFloatRep;
    .locals 7

    if-lez p1, :cond_5

    int-to-double v0, p2

    .line 635
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sget-wide v2, Lcom/hp/creals/CR;->doubleLog2:D

    div-double/2addr v0, v2

    int-to-long v2, p2

    .line 636
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    int-to-double v3, p3

    mul-double/2addr v3, v0

    double-to-long v3, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long p3, v3, v5

    if-gtz p3, :cond_4

    const-wide/32 v5, -0x80000000

    cmp-long p3, v3, v5

    if-ltz p3, :cond_4

    long-to-int p3, v3

    .line 642
    invoke-static {p3}, Lcom/hp/creals/CR;->check_prec(I)V

    add-int/lit8 p3, p3, -0x2

    .line 643
    invoke-virtual {p0, p3}, Lcom/hp/creals/CR;->iter_msd(I)I

    move-result p3

    const/high16 v3, -0x80000000

    const/4 v4, 0x0

    if-ne p3, v3, :cond_0

    .line 645
    new-instance p0, Lcom/hp/creals/StringFloatRep;

    const-string p1, "0"

    invoke-direct {p0, v4, p1, p2, v4}, Lcom/hp/creals/StringFloatRep;-><init>(ILjava/lang/String;II)V

    return-object p0

    :cond_0
    int-to-double v5, p3

    div-double/2addr v5, v0

    .line 646
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p3, v0

    sub-int v0, p3, p1

    if-lez v0, :cond_1

    .line 651
    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/hp/creals/CR;->valueOf(Ljava/math/BigInteger;)Lcom/hp/creals/CR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/creals/CR;->inverse()Lcom/hp/creals/CR;

    move-result-object v0

    goto :goto_0

    :cond_1
    neg-int v0, v0

    .line 653
    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/hp/creals/CR;->valueOf(Ljava/math/BigInteger;)Lcom/hp/creals/CR;

    move-result-object v0

    .line 655
    :goto_0
    invoke-virtual {p0, v0}, Lcom/hp/creals/CR;->multiply(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object p0

    .line 656
    invoke-virtual {p0, v4}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 657
    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v1

    .line 658
    invoke-virtual {v0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 659
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, p1, :cond_2

    .line 661
    invoke-static {v2}, Lcom/hp/creals/CR;->valueOf(Ljava/math/BigInteger;)Lcom/hp/creals/CR;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hp/creals/CR;->multiply(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object p0

    add-int/lit8 p3, p3, -0x1

    .line 663
    invoke-virtual {p0, v4}, Lcom/hp/creals/CR;->get_appr(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 664
    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v1

    .line 665
    invoke-virtual {v0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 667
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    if-le p0, p1, :cond_3

    .line 669
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, p1

    add-int/2addr p3, p0

    .line 670
    invoke-virtual {v0, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 672
    :cond_3
    new-instance p0, Lcom/hp/creals/StringFloatRep;

    invoke-direct {p0, v1, v0, p2, p3}, Lcom/hp/creals/StringFloatRep;-><init>(ILjava/lang/String;II)V

    return-object p0

    .line 640
    :cond_4
    new-instance p0, Lcom/hp/creals/CR$PrecisionOverflowException;

    invoke-direct {p0}, Lcom/hp/creals/CR$PrecisionOverflowException;-><init>()V

    throw p0

    .line 634
    :cond_5
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "Bad precision argument"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
