.class Lorg/javia/arity/MoreMath;
.super Ljava/lang/Object;
.source "MoreMath.java"


# static fields
.field static final FACT:[D

.field static final GAMMA:[D

.field private static final LOG2E:D = 1.4426950408889634


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xe

    .line 54
    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lorg/javia/arity/MoreMath;->GAMMA:[D

    const/16 v0, 0x16

    .line 84
    new-array v0, v0, [D

    fill-array-data v0, :array_1

    sput-object v0, Lorg/javia/arity/MoreMath;->FACT:[D

    return-void

    nop

    :array_0
    .array-data 8
        0x404c93ff87c1acceL    # 57.15623566586292
        -0x3fb2337608fa76d0L    # -59.59796035547549
        0x402c45aea23d22a1L    # 14.136097974741746
        -0x4020847be9da401cL    # -0.4919138160976202
        0x3f01d2af4786183aL    # 3.399464998481189E-5
        0x3f08644bb7c5e3bdL    # 4.652362892704858E-5
        -0x40e63633621a8b49L    # -9.837447530487956E-5
        0x3f24b8939ed4e66dL    # 1.580887032249125E-4
        -0x40d470b232d541caL    # -2.1026444172410488E-4
        0x3f2c801018e9e826L    # 2.1743961811521265E-4
        -0x40da7666366ad9c0L    # -1.643181065367639E-4
        0x3f1621360b773d55L    # 8.441822398385275E-5
        -0x410489734a2e1dfaL    # -2.6190838401581408E-5
        0x3ecef40a04fc9810L    # 3.6899182659531625E-6
    .end array-data

    :array_1
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x40e3b00000000000L    # 40320.0
        0x42b3077775800000L    # 2.0922789888E13
        0x44e06c52687a7b9aL    # 6.204484017332394E23
        0x474956ad0aae33a4L    # 2.631308369336935E35
        0x49e1dd5d037098feL    # 8.159152832478977E47
        0x4c9ee69a78d72cb6L    # 1.2413915592536073E61
        0x4f792693359a4003L    # 7.109985878048635E74
        0x526fe478ee34844aL    # 1.2688693218588417E89
        0x557b5705796695b6L    # 6.1234458376886085E103
        0x589c619094edabffL    # 7.156945704626381E118
        0x5bd0550c4b30743eL    # 1.8548264225739844E134
        0x5f13638dd7bd6347L    # 9.916779348709496E149
        0x62665b0eb1760a70L    # 1.0299016745145628E166
        0x65c7cac197cfe503L    # 1.974506857221074E182
        0x69365f6380a9d916L    # 6.689502913449127E198
        0x6cb1e5dfc140e1e5L    # 3.856204823625804E215
        0x70379185413b0855L    # 3.659042881952549E232
        0x73c8ce85fadb707eL    # 5.5502938327393044E249
        0x776455903aefd5a3L    # 1.3113358856834524E267
        0x7b095d5f3d928edeL    # 4.7147236359920616E284
        0x7eb7932fa79d3a43L    # 2.5260757449731984E302
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final acosh(D)D
    .locals 6

    add-double v0, p0, p0

    mul-double v2, p0, p0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    .line 28
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    add-double/2addr v2, p0

    div-double/2addr v4, v2

    sub-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static final asinh(D)D
    .locals 6

    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    neg-double p0, p0

    .line 24
    invoke-static {p0, p1}, Lorg/javia/arity/MoreMath;->asinh(D)D

    move-result-wide p0

    neg-double p0, p0

    goto :goto_0

    :cond_0
    add-double v0, p0, p0

    mul-double v2, p0, p0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    add-double/2addr v2, p0

    div-double/2addr v4, v2

    add-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static final atanh(D)D
    .locals 6

    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    neg-double p0, p0

    .line 32
    invoke-static {p0, p1}, Lorg/javia/arity/MoreMath;->atanh(D)D

    move-result-wide p0

    neg-double p0, p0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double v2, p0, p0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double p0, v4, p0

    div-double/2addr v2, p0

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    mul-double/2addr p0, v0

    :goto_0
    return-wide p0
.end method

.method public static final combinations(DD)D
    .locals 6

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-ltz v2, :cond_5

    cmpg-double v2, p2, v0

    if-gez v2, :cond_0

    goto :goto_1

    :cond_0
    cmpg-double v2, p0, p2

    if-gez v2, :cond_1

    return-wide v0

    .line 135
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    cmpl-double v0, v0, p0

    if-nez v0, :cond_4

    invoke-static {p2, p3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    cmpl-double v0, v0, p2

    if-nez v0, :cond_4

    sub-double v0, p0, p2

    .line 136
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p2

    const-wide v0, 0x4065400000000000L    # 170.0

    cmpg-double v2, p0, v0

    if-gtz v2, :cond_2

    const-wide/high16 v2, 0x4028000000000000L    # 12.0

    cmpg-double v2, v2, p2

    if-gez v2, :cond_2

    cmpg-double v0, p2, v0

    if-gtz v0, :cond_2

    .line 138
    invoke-static {p0, p1}, Lorg/javia/arity/MoreMath;->factorial(D)D

    move-result-wide v0

    invoke-static {p2, p3}, Lorg/javia/arity/MoreMath;->factorial(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    sub-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/javia/arity/MoreMath;->factorial(D)D

    move-result-wide p0

    div-double/2addr v0, p0

    return-wide v0

    :cond_2
    sub-double/2addr p0, p2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    move-wide v2, v0

    :goto_0
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v4, p2, v4

    if-lez v4, :cond_3

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpg-double v4, v2, v4

    if-gez v4, :cond_3

    add-double v4, p0, p2

    div-double/2addr v4, p2

    mul-double/2addr v2, v4

    sub-double/2addr p2, v0

    goto :goto_0

    :cond_3
    return-wide v2

    .line 147
    :cond_4
    invoke-static {p0, p1}, Lorg/javia/arity/MoreMath;->lgamma(D)D

    move-result-wide v0

    invoke-static {p2, p3}, Lorg/javia/arity/MoreMath;->lgamma(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    sub-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/javia/arity/MoreMath;->lgamma(D)D

    move-result-wide p0

    sub-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    return-wide p0

    :cond_5
    :goto_1
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0
.end method

.method public static final cos(D)D
    .locals 2

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v0, p0, v0

    .line 184
    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->isPiMultiple(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static final factorial(D)D
    .locals 6

    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0

    :cond_0
    const-wide v0, 0x4065400000000000L    # 170.0

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_1

    .line 114
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    cmpl-double v0, v0, p0

    if-nez v0, :cond_1

    double-to-int v0, p0

    and-int/lit8 v1, v0, 0x7

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    packed-switch v1, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    sub-double v4, p0, v2

    mul-double/2addr p0, v4

    goto :goto_0

    :pswitch_1
    move-wide v4, p0

    :goto_0
    sub-double/2addr v4, v2

    mul-double/2addr p0, v4

    goto :goto_1

    :pswitch_2
    move-wide v4, p0

    :goto_1
    sub-double/2addr v4, v2

    mul-double/2addr p0, v4

    goto :goto_2

    :pswitch_3
    move-wide v4, p0

    :goto_2
    sub-double/2addr v4, v2

    mul-double/2addr p0, v4

    goto :goto_3

    :pswitch_4
    move-wide v4, p0

    :goto_3
    sub-double/2addr v4, v2

    mul-double/2addr p0, v4

    goto :goto_4

    :pswitch_5
    move-wide v4, p0

    :goto_4
    sub-double/2addr v4, v2

    mul-double/2addr p0, v4

    .line 124
    :pswitch_6
    sget-object v1, Lorg/javia/arity/MoreMath;->FACT:[D

    shr-int/lit8 v0, v0, 0x3

    aget-wide v0, v1, v0

    mul-double/2addr v0, p0

    return-wide v0

    .line 125
    :pswitch_7
    sget-object p0, Lorg/javia/arity/MoreMath;->FACT:[D

    shr-int/lit8 p1, v0, 0x3

    aget-wide p0, p0, p1

    return-wide p0

    .line 129
    :cond_1
    :goto_5
    invoke-static {p0, p1}, Lorg/javia/arity/MoreMath;->lgamma(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    return-wide p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final gcd(DD)D
    .locals 4

    .line 40
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 44
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    .line 45
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    :goto_0
    const-wide v0, 0x430c6bf526340000L    # 1.0E15

    mul-double/2addr v0, p2

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1

    rem-double/2addr p0, p2

    move-wide v2, p0

    move-wide p0, p2

    move-wide p2, v2

    goto :goto_0

    :cond_1
    return-wide p0

    :cond_2
    :goto_1
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0
.end method

.method public static final intExp10(I)D
    .locals 2

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "1E"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final intLog10(D)I
    .locals 0

    .line 193
    invoke-static {p0, p1}, Ljava/lang/Math;->log10(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method private static final isPiMultiple(D)Z
    .locals 2

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p0, v0

    .line 176
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    cmpl-double p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final lgamma(D)D
    .locals 9

    const-wide v0, 0x4014f80000000000L    # 5.2421875

    add-double/2addr v0, p0

    const-wide v2, 0x3fefffffffffffe6L    # 0.9999999999999971

    const/4 v4, 0x0

    .line 74
    :goto_0
    sget-object v5, Lorg/javia/arity/MoreMath;->GAMMA:[D

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 75
    sget-object v5, Lorg/javia/arity/MoreMath;->GAMMA:[D

    aget-wide v5, v5, v4

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    add-double/2addr p0, v7

    div-double/2addr v5, p0

    add-double/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide p0, 0x3fed67f1c864beb5L    # 0.9189385332046728

    .line 78
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    add-double/2addr v2, p0

    const-wide p0, 0x4012f80000000000L    # 4.7421875

    sub-double p0, v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    mul-double/2addr p0, v4

    add-double/2addr v2, p0

    sub-double/2addr v2, v0

    return-wide v2
.end method

.method public static final log2(D)D
    .locals 2

    .line 170
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    const-wide v0, 0x3ff71547652b82feL    # 1.4426950408889634

    mul-double/2addr p0, v0

    return-wide p0
.end method

.method public static final permutations(DD)D
    .locals 6

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-ltz v2, :cond_5

    cmpg-double v2, p2, v0

    if-gez v2, :cond_0

    goto :goto_1

    :cond_0
    cmpg-double v2, p0, p2

    if-gez v2, :cond_1

    return-wide v0

    .line 154
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    cmpl-double v0, v0, p0

    if-nez v0, :cond_4

    invoke-static {p2, p3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    cmpl-double v0, v0, p2

    if-nez v0, :cond_4

    const-wide v0, 0x4065400000000000L    # 170.0

    cmpg-double v2, p0, v0

    if-gtz v2, :cond_2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    cmpg-double v2, v2, p2

    if-gez v2, :cond_2

    cmpg-double v0, p2, v0

    if-gtz v0, :cond_2

    .line 156
    invoke-static {p0, p1}, Lorg/javia/arity/MoreMath;->factorial(D)D

    move-result-wide v0

    sub-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/javia/arity/MoreMath;->factorial(D)D

    move-result-wide p0

    div-double/2addr v0, p0

    return-wide v0

    :cond_2
    sub-double p2, p0, p2

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p2, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    move-wide v2, v0

    :goto_0
    cmpl-double v4, p0, p2

    if-lez v4, :cond_3

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpg-double v4, v2, v4

    if-gez v4, :cond_3

    mul-double/2addr v2, p0

    sub-double/2addr p0, v0

    goto :goto_0

    :cond_3
    return-wide v2

    .line 165
    :cond_4
    invoke-static {p0, p1}, Lorg/javia/arity/MoreMath;->lgamma(D)D

    move-result-wide v0

    sub-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/javia/arity/MoreMath;->lgamma(D)D

    move-result-wide p0

    sub-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    return-wide p0

    :cond_5
    :goto_1
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0
.end method

.method public static final sin(D)D
    .locals 1

    .line 180
    invoke-static {p0, p1}, Lorg/javia/arity/MoreMath;->isPiMultiple(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static final tan(D)D
    .locals 1

    .line 188
    invoke-static {p0, p1}, Lorg/javia/arity/MoreMath;->isPiMultiple(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->tan(D)D

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static final trunc(D)D
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_0

    .line 36
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    :goto_0
    return-wide p0
.end method
