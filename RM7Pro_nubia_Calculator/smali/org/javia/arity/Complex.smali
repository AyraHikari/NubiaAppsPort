.class public Lorg/javia/arity/Complex;
.super Ljava/lang/Object;
.source "Complex.java"


# instance fields
.field public im:D

.field public re:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    return-void
.end method

.method public constructor <init>(Lorg/javia/arity/Complex;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p0, p1}, Lorg/javia/arity/Complex;->set(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    return-void
.end method

.method private final normalizeInfinity()Lorg/javia/arity/Complex;
    .locals 5

    .line 560
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 561
    iput-wide v1, p0, Lorg/javia/arity/Complex;->im:D

    goto :goto_0

    .line 562
    :cond_0
    iget-wide v3, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v3, v4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    .line 563
    iput-wide v1, p0, Lorg/javia/arity/Complex;->re:D

    :cond_1
    :goto_0
    return-object p0
.end method

.method private final sqrt1z()Lorg/javia/arity/Complex;
    .locals 6

    .line 570
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v4, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v0, v4

    add-double/2addr v2, v0

    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    const-wide/high16 v4, -0x4000000000000000L    # -2.0

    mul-double/2addr v0, v4

    iget-wide v4, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v0, v4

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    invoke-virtual {p0}, Lorg/javia/arity/Complex;->sqrt()Lorg/javia/arity/Complex;

    move-result-object p0

    return-object p0
.end method

.method private final swap()Lorg/javia/arity/Complex;
    .locals 4

    .line 551
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final abs()D
    .locals 6

    .line 118
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 119
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double p0, v0, v4

    if-eqz p0, :cond_4

    cmpl-double p0, v2, v4

    if-nez p0, :cond_0

    goto :goto_3

    :cond_0
    cmpl-double p0, v0, v2

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    div-double v4, v2, v0

    goto :goto_1

    :cond_2
    div-double v4, v0, v2

    :goto_1
    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move-wide v0, v2

    :goto_2
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v4, v4

    add-double/2addr v4, v2

    .line 125
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0

    :cond_4
    :goto_3
    add-double/2addr v0, v2

    return-wide v0
.end method

.method public final abs2()D
    .locals 6

    .line 132
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v4, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public final acos()Lorg/javia/arity/Complex;
    .locals 7

    .line 460
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_0

    .line 461
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    return-object p0

    .line 463
    :cond_0
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    .line 464
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    .line 465
    invoke-direct {p0}, Lorg/javia/arity/Complex;->sqrt1z()Lorg/javia/arity/Complex;

    move-result-object v4

    iget-wide v5, p0, Lorg/javia/arity/Complex;->im:D

    sub-double/2addr v0, v5

    iget-wide v5, p0, Lorg/javia/arity/Complex;->re:D

    add-double/2addr v2, v5

    invoke-virtual {v4, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->log()Lorg/javia/arity/Complex;

    move-result-object v0

    iget-wide v1, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v3, p0, Lorg/javia/arity/Complex;->re:D

    neg-double v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    return-object p0
.end method

.method public final acosh()Lorg/javia/arity/Complex;
    .locals 12

    .line 491
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    cmpl-double v0, v0, v4

    if-ltz v0, :cond_0

    .line 492
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->acosh(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    return-object p0

    .line 494
    :cond_0
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    .line 495
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    .line 496
    iget-wide v6, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v8, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v6, v8

    iget-wide v8, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v10, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    sub-double/2addr v6, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    iget-wide v8, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v8, v4

    iget-wide v4, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v8, v4

    invoke-virtual {p0, v6, v7, v8, v9}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v4

    invoke-virtual {v4}, Lorg/javia/arity/Complex;->sqrt()Lorg/javia/arity/Complex;

    move-result-object v4

    iget-wide v5, p0, Lorg/javia/arity/Complex;->re:D

    add-double/2addr v5, v0

    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    add-double/2addr v0, v2

    invoke-virtual {v4, v5, v6, v0, v1}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    invoke-virtual {p0}, Lorg/javia/arity/Complex;->log()Lorg/javia/arity/Complex;

    move-result-object p0

    return-object p0
.end method

.method public final add(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;
    .locals 6

    .line 139
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v0

    .line 140
    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v4, p1, Lorg/javia/arity/Complex;->re:D

    add-double/2addr v2, v4

    iput-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    .line 141
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v4, p1, Lorg/javia/arity/Complex;->im:D

    add-double/2addr v2, v4

    iput-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    .line 143
    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    mul-double/2addr v0, v4

    cmpg-double p1, v2, v0

    if-gez p1, :cond_0

    const-wide/16 v0, 0x0

    .line 144
    iput-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    :cond_0
    return-object p0
.end method

.method public final arg()D
    .locals 4

    .line 112
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public asReal()D
    .locals 4

    .line 69
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    :goto_0
    return-wide v0
.end method

.method public final asin()Lorg/javia/arity/Complex;
    .locals 7

    .line 450
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_0

    .line 451
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    return-object p0

    .line 453
    :cond_0
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    .line 454
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    .line 455
    invoke-direct {p0}, Lorg/javia/arity/Complex;->sqrt1z()Lorg/javia/arity/Complex;

    move-result-object v4

    iget-wide v5, p0, Lorg/javia/arity/Complex;->re:D

    sub-double/2addr v5, v2

    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    add-double/2addr v2, v0

    invoke-virtual {v4, v5, v6, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->log()Lorg/javia/arity/Complex;

    move-result-object v0

    iget-wide v1, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v3, p0, Lorg/javia/arity/Complex;->re:D

    neg-double v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    return-object p0
.end method

.method public final asinh()Lorg/javia/arity/Complex;
    .locals 10

    .line 481
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 482
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->asinh(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    return-object p0

    .line 484
    :cond_0
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    .line 485
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    .line 486
    iget-wide v4, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v6, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v8, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    iget-wide v8, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v8, v6

    iget-wide v6, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v8, v6

    invoke-virtual {p0, v4, v5, v8, v9}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v4

    invoke-virtual {v4}, Lorg/javia/arity/Complex;->sqrt()Lorg/javia/arity/Complex;

    move-result-object v4

    iget-wide v5, p0, Lorg/javia/arity/Complex;->re:D

    add-double/2addr v5, v0

    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    add-double/2addr v0, v2

    invoke-virtual {v4, v5, v6, v0, v1}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    invoke-virtual {p0}, Lorg/javia/arity/Complex;->log()Lorg/javia/arity/Complex;

    move-result-object p0

    return-object p0
.end method

.method public final atan()Lorg/javia/arity/Complex;
    .locals 8

    .line 470
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 471
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    return-object p0

    .line 473
    :cond_0
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v0, v2

    .line 474
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v4, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 475
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    sub-double v2, v0, v2

    iget-wide v4, p0, Lorg/javia/arity/Complex;->im:D

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    sub-double/2addr v0, v4

    neg-double v0, v0

    div-double/2addr v0, v2

    .line 476
    iget-wide v4, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v6, p0, Lorg/javia/arity/Complex;->re:D

    add-double/2addr v4, v6

    neg-double v4, v4

    div-double/2addr v4, v2

    invoke-virtual {p0, v0, v1, v4, v5}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->log()Lorg/javia/arity/Complex;

    move-result-object v0

    iget-wide v1, p0, Lorg/javia/arity/Complex;->im:D

    neg-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    iget-wide v5, p0, Lorg/javia/arity/Complex;->re:D

    div-double/2addr v5, v3

    invoke-virtual {v0, v1, v2, v5, v6}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    return-object p0
.end method

.method public final atanh()Lorg/javia/arity/Complex;
    .locals 10

    .line 501
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 502
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->atanh(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    return-object p0

    .line 504
    :cond_0
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v0, v2

    .line 505
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v4, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double v6, v0, v4

    .line 506
    iget-wide v8, p0, Lorg/javia/arity/Complex;->re:D

    sub-double/2addr v6, v8

    iget-wide v8, p0, Lorg/javia/arity/Complex;->re:D

    sub-double/2addr v6, v8

    sub-double/2addr v4, v0

    sub-double/2addr v4, v2

    div-double/2addr v4, v6

    .line 507
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    add-double/2addr v0, v2

    div-double/2addr v0, v6

    invoke-virtual {p0, v4, v5, v0, v1}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->log()Lorg/javia/arity/Complex;

    move-result-object v0

    iget-wide v1, p0, Lorg/javia/arity/Complex;->re:D

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    iget-wide v5, p0, Lorg/javia/arity/Complex;->im:D

    div-double/2addr v5, v3

    invoke-virtual {v0, v1, v2, v5, v6}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    return-object p0
.end method

.method public final combinations(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;
    .locals 14

    .line 512
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p1, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 513
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v4, p1, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1, v4, v5}, Lorg/javia/arity/MoreMath;->combinations(DD)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    return-object p0

    .line 516
    :cond_0
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    .line 517
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    .line 519
    invoke-virtual {p0}, Lorg/javia/arity/Complex;->lgamma()Lorg/javia/arity/Complex;

    .line 520
    iget-wide v4, p0, Lorg/javia/arity/Complex;->re:D

    .line 521
    iget-wide v6, p0, Lorg/javia/arity/Complex;->im:D

    .line 523
    invoke-virtual {p0, p1}, Lorg/javia/arity/Complex;->set(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    move-result-object v8

    invoke-virtual {v8}, Lorg/javia/arity/Complex;->lgamma()Lorg/javia/arity/Complex;

    .line 524
    iget-wide v8, p0, Lorg/javia/arity/Complex;->re:D

    .line 525
    iget-wide v10, p0, Lorg/javia/arity/Complex;->im:D

    .line 527
    iget-wide v12, p1, Lorg/javia/arity/Complex;->re:D

    sub-double/2addr v0, v12

    iget-wide v12, p1, Lorg/javia/arity/Complex;->im:D

    sub-double/2addr v2, v12

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p1

    invoke-virtual {p1}, Lorg/javia/arity/Complex;->lgamma()Lorg/javia/arity/Complex;

    sub-double/2addr v4, v8

    .line 528
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    sub-double/2addr v4, v0

    sub-double/2addr v6, v10

    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    sub-double/2addr v6, v0

    invoke-virtual {p0, v4, v5, v6, v7}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    invoke-virtual {p0}, Lorg/javia/arity/Complex;->exp()Lorg/javia/arity/Complex;

    move-result-object p0

    return-object p0
.end method

.method public final conjugate()Lorg/javia/arity/Complex;
    .locals 4

    .line 76
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    neg-double v2, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    return-object p0
.end method

.method public final cos()Lorg/javia/arity/Complex;
    .locals 6

    .line 422
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->cos(D)D

    move-result-wide v0

    :goto_0
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    goto :goto_1

    :cond_0
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->cos(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    invoke-static {v2, v3}, Ljava/lang/Math;->cosh(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v2, v3}, Lorg/javia/arity/MoreMath;->sin(D)D

    move-result-wide v2

    neg-double v2, v2

    iget-wide v4, p0, Lorg/javia/arity/Complex;->im:D

    invoke-static {v4, v5}, Ljava/lang/Math;->sinh(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    goto :goto_0

    :goto_1
    return-object p0
.end method

.method public final cosh()Lorg/javia/arity/Complex;
    .locals 4

    .line 429
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Ljava/lang/Math;->cosh(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/javia/arity/Complex;->swap()Lorg/javia/arity/Complex;

    move-result-object p0

    invoke-virtual {p0}, Lorg/javia/arity/Complex;->cos()Lorg/javia/arity/Complex;

    move-result-object p0

    invoke-virtual {p0}, Lorg/javia/arity/Complex;->conjugate()Lorg/javia/arity/Complex;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final div(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;
    .locals 10

    .line 227
    iget-wide v0, p1, Lorg/javia/arity/Complex;->re:D

    .line 228
    iget-wide v2, p1, Lorg/javia/arity/Complex;->im:D

    .line 229
    iget-wide v4, p0, Lorg/javia/arity/Complex;->im:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    cmpl-double v4, v2, v6

    if-nez v4, :cond_0

    .line 230
    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    div-double/2addr v2, v0

    invoke-virtual {p0, v2, v3, v6, v7}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    return-object p0

    .line 232
    :cond_0
    invoke-virtual {p1}, Lorg/javia/arity/Complex;->isInfinite()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/javia/arity/Complex;->isFinite()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 233
    invoke-virtual {p0, v6, v7, v6, v7}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    return-object p0

    :cond_1
    cmpl-double p1, v2, v6

    if-nez p1, :cond_3

    .line 236
    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    cmpl-double p1, v2, v6

    if-nez p1, :cond_2

    .line 237
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    div-double/2addr v2, v0

    invoke-virtual {p0, v6, v7, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    return-object p0

    .line 239
    :cond_2
    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    div-double/2addr v2, v0

    iget-wide v4, p0, Lorg/javia/arity/Complex;->im:D

    div-double/2addr v4, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    return-object p0

    :cond_3
    cmpl-double p1, v0, v6

    if-nez p1, :cond_4

    .line 242
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    div-double/2addr v0, v2

    iget-wide v4, p0, Lorg/javia/arity/Complex;->re:D

    neg-double v4, v4

    div-double/2addr v4, v2

    invoke-virtual {p0, v0, v1, v4, v5}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    return-object p0

    .line 244
    :cond_4
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double p1, v4, v6

    if-lez p1, :cond_5

    div-double v4, v2, v0

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 247
    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v6, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v6, v4

    add-double/2addr v2, v6

    div-double/2addr v2, v0

    iget-wide v6, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v8, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v8, v4

    sub-double/2addr v6, v8

    div-double/2addr v6, v0

    invoke-virtual {p0, v2, v3, v6, v7}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    return-object p0

    :cond_5
    div-double v4, v0, v2

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    .line 251
    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v2, v4

    iget-wide v6, p0, Lorg/javia/arity/Complex;->im:D

    add-double/2addr v2, v6

    div-double/2addr v2, v0

    iget-wide v6, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v6, v4

    iget-wide v4, p0, Lorg/javia/arity/Complex;->re:D

    sub-double/2addr v6, v4

    div-double/2addr v6, v0

    invoke-virtual {p0, v2, v3, v6, v7}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Lorg/javia/arity/Complex;)Z
    .locals 4

    .line 105
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v2, p1, Lorg/javia/arity/Complex;->re:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p1, Lorg/javia/arity/Complex;->re:D

    iget-wide v2, p1, Lorg/javia/arity/Complex;->re:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v2, p1, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    cmpl-double p0, v0, v2

    if-eqz p0, :cond_1

    iget-wide v0, p1, Lorg/javia/arity/Complex;->im:D

    iget-wide p0, p1, Lorg/javia/arity/Complex;->im:D

    cmpl-double p0, v0, p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final exp()Lorg/javia/arity/Complex;
    .locals 6

    .line 326
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    .line 327
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    .line 328
    invoke-virtual {p0, v0, v1, v4, v5}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    return-object p0

    .line 330
    :cond_0
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    invoke-static {v2, v3}, Lorg/javia/arity/MoreMath;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v0

    iget-wide v4, p0, Lorg/javia/arity/Complex;->im:D

    invoke-static {v4, v5}, Lorg/javia/arity/MoreMath;->sin(D)D

    move-result-wide v4

    mul-double/2addr v0, v4

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    return-object p0
.end method

.method public final factorial()Lorg/javia/arity/Complex;
    .locals 4

    .line 405
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->factorial(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/javia/arity/Complex;->lgamma()Lorg/javia/arity/Complex;

    move-result-object p0

    invoke-virtual {p0}, Lorg/javia/arity/Complex;->exp()Lorg/javia/arity/Complex;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final gcd(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;
    .locals 12

    .line 289
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p1, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 290
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v4, p1, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1, v4, v5}, Lorg/javia/arity/MoreMath;->gcd(DD)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    return-object p0

    .line 292
    :cond_0
    new-instance v0, Lorg/javia/arity/Complex;

    invoke-direct {v0, p1}, Lorg/javia/arity/Complex;-><init>(Lorg/javia/arity/Complex;)V

    .line 293
    invoke-virtual {p0}, Lorg/javia/arity/Complex;->abs2()D

    move-result-wide v4

    .line 294
    invoke-virtual {v0}, Lorg/javia/arity/Complex;->abs2()D

    move-result-wide v6

    :goto_0
    const-wide v8, 0x46293e5939a08ceaL    # 1.0E30

    mul-double/2addr v8, v6

    cmpg-double p1, v4, v8

    if-gez p1, :cond_1

    .line 296
    iget-wide v4, v0, Lorg/javia/arity/Complex;->re:D

    .line 297
    iget-wide v8, v0, Lorg/javia/arity/Complex;->im:D

    .line 298
    invoke-virtual {p0, v0}, Lorg/javia/arity/Complex;->mod(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/javia/arity/Complex;->set(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    .line 299
    invoke-virtual {p0, v4, v5, v8, v9}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    .line 301
    invoke-virtual {v0}, Lorg/javia/arity/Complex;->abs2()D

    move-result-wide v4

    move-wide v10, v4

    move-wide v4, v6

    move-wide v6, v10

    goto :goto_0

    .line 304
    :cond_1
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v4, p0, Lorg/javia/arity/Complex;->im:D

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double p1, v0, v4

    if-gez p1, :cond_2

    .line 305
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    neg-double v0, v0

    iget-wide v4, p0, Lorg/javia/arity/Complex;->re:D

    invoke-virtual {p0, v0, v1, v4, v5}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    .line 307
    :cond_2
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    cmpg-double p1, v0, v2

    if-gez p1, :cond_3

    .line 308
    invoke-virtual {p0}, Lorg/javia/arity/Complex;->negate()Lorg/javia/arity/Complex;

    :cond_3
    return-object p0
.end method

.method public final isFinite()Z
    .locals 1

    .line 95
    invoke-virtual {p0}, Lorg/javia/arity/Complex;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/javia/arity/Complex;->isNaN()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isInfinite()Z
    .locals 2

    .line 88
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/javia/arity/Complex;->isNaN()Z

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

.method public final isNaN()Z
    .locals 2

    .line 101
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

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

.method public final lgamma()Lorg/javia/arity/Complex;
    .locals 15

    .line 375
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v4, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 376
    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    .line 377
    sget-object v4, Lorg/javia/arity/MoreMath;->GAMMA:[D

    const-wide v5, 0x3fefffffffffffe6L    # 0.9999999999999971

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    .line 378
    :goto_0
    array-length v10, v4

    if-ge v9, v10, :cond_0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v10

    add-double v12, v2, v2

    sub-double/2addr v12, v10

    add-double/2addr v0, v12

    .line 381
    aget-wide v10, v4, v9

    mul-double v12, v10, v2

    div-double/2addr v12, v0

    add-double/2addr v5, v12

    .line 383
    iget-wide v12, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v10, v12

    div-double/2addr v10, v0

    sub-double/2addr v7, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 386
    :cond_0
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    .line 387
    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    const-wide v9, 0x4014f80000000000L    # 5.2421875

    add-double/2addr v2, v9

    .line 388
    iget-wide v9, p0, Lorg/javia/arity/Complex;->im:D

    .line 390
    iput-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    .line 392
    invoke-virtual {p0}, Lorg/javia/arity/Complex;->log()Lorg/javia/arity/Complex;

    .line 393
    iget-wide v11, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v11, v0

    iget-wide v13, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v13, v9

    sub-double/2addr v11, v13

    const-wide v13, 0x3fed67f1c864beb5L    # 0.9189385332046728

    add-double/2addr v11, v13

    sub-double/2addr v11, v2

    .line 394
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v2, v9

    add-double/2addr v0, v2

    sub-double/2addr v0, v9

    .line 396
    invoke-virtual {p0, v5, v6, v7, v8}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v2

    invoke-virtual {v2}, Lorg/javia/arity/Complex;->log()Lorg/javia/arity/Complex;

    .line 397
    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    add-double/2addr v2, v11

    iput-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    .line 398
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    add-double/2addr v2, v0

    iput-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    return-object p0
.end method

.method public final log()Lorg/javia/arity/Complex;
    .locals 4

    .line 316
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 317
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    return-object p0

    .line 319
    :cond_0
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 320
    invoke-virtual {p0}, Lorg/javia/arity/Complex;->abs()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    return-object p0
.end method

.method public final mod(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;
    .locals 9

    .line 278
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    .line 279
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-nez v6, :cond_0

    .line 280
    iget-wide v6, p1, Lorg/javia/arity/Complex;->im:D

    cmpl-double v6, v6, v4

    if-nez v6, :cond_0

    .line 281
    iget-wide v2, p1, Lorg/javia/arity/Complex;->re:D

    rem-double/2addr v0, v2

    invoke-virtual {p0, v0, v1, v4, v5}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    return-object p0

    .line 283
    :cond_0
    invoke-virtual {p0, p1}, Lorg/javia/arity/Complex;->div(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    move-result-object v4

    iget-wide v5, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v5, v6}, Ljava/lang/Math;->rint(D)D

    move-result-wide v5

    iget-wide v7, p0, Lorg/javia/arity/Complex;->im:D

    invoke-static {v7, v8}, Ljava/lang/Math;->rint(D)D

    move-result-wide v7

    invoke-virtual {v4, v5, v6, v7, v8}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/javia/arity/Complex;->mul(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    move-result-object p1

    iget-wide v4, p0, Lorg/javia/arity/Complex;->re:D

    sub-double/2addr v0, v4

    iget-wide v4, p0, Lorg/javia/arity/Complex;->im:D

    sub-double/2addr v2, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    return-object p0
.end method

.method mul(D)Lorg/javia/arity/Complex;
    .locals 2

    .line 163
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    .line 164
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    return-object p0
.end method

.method public final mul(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 171
    iget-wide v2, v0, Lorg/javia/arity/Complex;->re:D

    iget-wide v4, v0, Lorg/javia/arity/Complex;->im:D

    iget-wide v6, v1, Lorg/javia/arity/Complex;->re:D

    iget-wide v8, v1, Lorg/javia/arity/Complex;->im:D

    const-wide/16 v10, 0x0

    cmpl-double v12, v4, v10

    if-nez v12, :cond_0

    cmpl-double v12, v8, v10

    if-nez v12, :cond_0

    mul-double/2addr v2, v6

    .line 173
    invoke-virtual {v0, v2, v3, v10, v11}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    return-object v0

    :cond_0
    mul-double v12, v2, v6

    mul-double v14, v4, v8

    sub-double/2addr v12, v14

    mul-double v14, v2, v8

    mul-double v16, v4, v6

    add-double v14, v14, v16

    .line 179
    invoke-virtual {v0, v12, v13, v14, v15}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/javia/arity/Complex;->isNaN()Z

    move-result v16

    if-nez v16, :cond_1

    return-object v0

    .line 183
    :cond_1
    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/javia/arity/Complex;->isInfinite()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 184
    invoke-direct/range {p0 .. p0}, Lorg/javia/arity/Complex;->normalizeInfinity()Lorg/javia/arity/Complex;

    .line 185
    iget-wide v2, v0, Lorg/javia/arity/Complex;->re:D

    .line 186
    iget-wide v4, v0, Lorg/javia/arity/Complex;->im:D

    .line 189
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/javia/arity/Complex;->isInfinite()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 190
    invoke-virtual {v0, v6, v7, v8, v9}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v1

    invoke-direct {v1}, Lorg/javia/arity/Complex;->normalizeInfinity()Lorg/javia/arity/Complex;

    .line 191
    iget-wide v6, v0, Lorg/javia/arity/Complex;->re:D

    .line 192
    iget-wide v8, v0, Lorg/javia/arity/Complex;->im:D

    :cond_3
    cmpl-double v1, v4, v10

    if-nez v1, :cond_6

    cmpl-double v1, v8, v10

    if-nez v1, :cond_4

    mul-double/2addr v2, v6

    .line 197
    invoke-virtual {v0, v2, v3, v10, v11}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    return-object v0

    :cond_4
    cmpl-double v1, v6, v10

    if-nez v1, :cond_5

    mul-double/2addr v2, v8

    .line 200
    invoke-virtual {v0, v10, v11, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    return-object v0

    :cond_5
    mul-double/2addr v6, v2

    mul-double/2addr v2, v8

    .line 202
    invoke-virtual {v0, v6, v7, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    return-object v0

    :cond_6
    cmpl-double v1, v2, v10

    if-nez v1, :cond_9

    cmpl-double v1, v6, v10

    if-nez v1, :cond_7

    neg-double v1, v4

    mul-double/2addr v1, v8

    .line 207
    invoke-virtual {v0, v1, v2, v10, v11}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    return-object v0

    :cond_7
    cmpl-double v1, v8, v10

    if-nez v1, :cond_8

    mul-double/2addr v4, v6

    .line 210
    invoke-virtual {v0, v10, v11, v4, v5}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    return-object v0

    :cond_8
    neg-double v1, v4

    mul-double/2addr v1, v8

    mul-double/2addr v4, v6

    .line 212
    invoke-virtual {v0, v1, v2, v4, v5}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    return-object v0

    :cond_9
    cmpl-double v1, v8, v10

    if-nez v1, :cond_a

    mul-double/2addr v2, v6

    mul-double/2addr v4, v6

    .line 216
    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    return-object v0

    :cond_a
    cmpl-double v1, v6, v10

    if-nez v1, :cond_b

    neg-double v4, v4

    mul-double/2addr v4, v8

    mul-double/2addr v2, v8

    .line 219
    invoke-virtual {v0, v4, v5, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    return-object v0

    .line 221
    :cond_b
    invoke-virtual {v0, v12, v13, v14, v15}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    return-object v0
.end method

.method public final negate()Lorg/javia/arity/Complex;
    .locals 4

    .line 82
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    neg-double v0, v0

    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    neg-double v2, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    return-object p0
.end method

.method public final permutations(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;
    .locals 10

    .line 533
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p1, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 534
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v4, p1, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1, v4, v5}, Lorg/javia/arity/MoreMath;->permutations(DD)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    return-object p0

    .line 537
    :cond_0
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    .line 538
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    .line 540
    invoke-virtual {p0}, Lorg/javia/arity/Complex;->lgamma()Lorg/javia/arity/Complex;

    .line 541
    iget-wide v4, p0, Lorg/javia/arity/Complex;->re:D

    .line 542
    iget-wide v6, p0, Lorg/javia/arity/Complex;->im:D

    .line 544
    iget-wide v8, p1, Lorg/javia/arity/Complex;->re:D

    sub-double/2addr v0, v8

    iget-wide v8, p1, Lorg/javia/arity/Complex;->im:D

    sub-double/2addr v2, v8

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p1

    invoke-virtual {p1}, Lorg/javia/arity/Complex;->lgamma()Lorg/javia/arity/Complex;

    .line 545
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    sub-double/2addr v4, v0

    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    sub-double/2addr v6, v0

    invoke-virtual {p0, v4, v5, v6, v7}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    invoke-virtual {p0}, Lorg/javia/arity/Complex;->exp()Lorg/javia/arity/Complex;

    move-result-object p0

    return-object p0
.end method

.method public final pow(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;
    .locals 8

    .line 343
    iget-wide v0, p1, Lorg/javia/arity/Complex;->im:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_4

    .line 344
    iget-wide v0, p1, Lorg/javia/arity/Complex;->re:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 346
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    return-object p0

    .line 348
    :cond_0
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 349
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v4, p1, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    cmpl-double v4, v0, v0

    if-nez v4, :cond_1

    .line 351
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    return-object p0

    .line 354
    :cond_1
    iget-wide v0, p1, Lorg/javia/arity/Complex;->re:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2

    .line 355
    invoke-virtual {p0}, Lorg/javia/arity/Complex;->square()Lorg/javia/arity/Complex;

    move-result-object p0

    return-object p0

    .line 357
    :cond_2
    iget-wide v0, p1, Lorg/javia/arity/Complex;->re:D

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v0, v4

    if-nez v0, :cond_3

    .line 358
    invoke-virtual {p0}, Lorg/javia/arity/Complex;->sqrt()Lorg/javia/arity/Complex;

    move-result-object p0

    return-object p0

    .line 360
    :cond_3
    invoke-virtual {p0}, Lorg/javia/arity/Complex;->abs2()D

    move-result-wide v0

    iget-wide v4, p1, Lorg/javia/arity/Complex;->re:D

    div-double/2addr v4, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 361
    invoke-virtual {p0}, Lorg/javia/arity/Complex;->arg()D

    move-result-wide v2

    iget-wide v4, p1, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v2, v4

    .line 362
    invoke-static {v2, v3}, Lorg/javia/arity/MoreMath;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v0

    invoke-static {v2, v3}, Lorg/javia/arity/MoreMath;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-virtual {p0, v4, v5, v0, v1}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    return-object p0

    .line 364
    :cond_4
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_5

    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_5

    .line 365
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v4, p1, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 366
    iget-wide v4, p1, Lorg/javia/arity/Complex;->im:D

    iget-wide v6, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p1

    invoke-virtual {p1}, Lorg/javia/arity/Complex;->exp()Lorg/javia/arity/Complex;

    move-result-object p1

    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v2, v0

    iget-wide v4, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v0, v4

    invoke-virtual {p1, v2, v3, v0, v1}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    return-object p0

    .line 368
    :cond_5
    invoke-virtual {p0}, Lorg/javia/arity/Complex;->log()Lorg/javia/arity/Complex;

    move-result-object v0

    iget-wide v1, p1, Lorg/javia/arity/Complex;->re:D

    iget-wide v3, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v1, v3

    iget-wide v3, p1, Lorg/javia/arity/Complex;->im:D

    iget-wide v5, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    iget-wide v3, p1, Lorg/javia/arity/Complex;->re:D

    iget-wide v5, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v3, v5

    iget-wide v5, p1, Lorg/javia/arity/Complex;->im:D

    iget-wide p0, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v5, p0

    add-double/2addr v3, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    invoke-virtual {p0}, Lorg/javia/arity/Complex;->exp()Lorg/javia/arity/Complex;

    move-result-object p0

    return-object p0
.end method

.method public set(DD)Lorg/javia/arity/Complex;
    .locals 0

    .line 49
    iput-wide p1, p0, Lorg/javia/arity/Complex;->re:D

    .line 50
    iput-wide p3, p0, Lorg/javia/arity/Complex;->im:D

    return-object p0
.end method

.method public set(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;
    .locals 2

    .line 56
    iget-wide v0, p1, Lorg/javia/arity/Complex;->re:D

    iput-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    .line 57
    iget-wide v0, p1, Lorg/javia/arity/Complex;->im:D

    iput-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    return-object p0
.end method

.method public final sin()Lorg/javia/arity/Complex;
    .locals 6

    .line 410
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->sin(D)D

    move-result-wide v0

    :goto_0
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    goto :goto_1

    :cond_0
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->sin(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    invoke-static {v2, v3}, Ljava/lang/Math;->cosh(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v2, v3}, Lorg/javia/arity/MoreMath;->cos(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/javia/arity/Complex;->im:D

    invoke-static {v4, v5}, Ljava/lang/Math;->sinh(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    goto :goto_0

    :goto_1
    return-object p0
.end method

.method public final sinh()Lorg/javia/arity/Complex;
    .locals 4

    .line 417
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sinh(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/javia/arity/Complex;->swap()Lorg/javia/arity/Complex;

    move-result-object p0

    invoke-virtual {p0}, Lorg/javia/arity/Complex;->sin()Lorg/javia/arity/Complex;

    move-result-object p0

    invoke-direct {p0}, Lorg/javia/arity/Complex;->swap()Lorg/javia/arity/Complex;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final sqrt()Lorg/javia/arity/Complex;
    .locals 8

    .line 258
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 259
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 260
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    goto :goto_1

    .line 262
    :cond_0
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    neg-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    goto :goto_1

    .line 265
    :cond_1
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/javia/arity/Complex;->abs()D

    move-result-wide v4

    add-double/2addr v0, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 266
    iget-wide v4, p0, Lorg/javia/arity/Complex;->re:D

    cmpl-double v4, v4, v2

    if-ltz v4, :cond_2

    .line 267
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    add-double v4, v0, v0

    div-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    goto :goto_1

    .line 269
    :cond_2
    iget-wide v4, p0, Lorg/javia/arity/Complex;->im:D

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    add-double v6, v0, v0

    div-double/2addr v4, v6

    iget-wide v6, p0, Lorg/javia/arity/Complex;->im:D

    cmpl-double v2, v6, v2

    if-ltz v2, :cond_3

    goto :goto_0

    :cond_3
    neg-double v0, v0

    :goto_0
    invoke-virtual {p0, v4, v5, v0, v1}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    :goto_1
    return-object p0
.end method

.method public final square()Lorg/javia/arity/Complex;
    .locals 6

    .line 337
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v4, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    return-object p0
.end method

.method public final sub(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;
    .locals 6

    .line 152
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v0

    .line 153
    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v4, p1, Lorg/javia/arity/Complex;->re:D

    sub-double/2addr v2, v4

    iput-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    .line 154
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v4, p1, Lorg/javia/arity/Complex;->im:D

    sub-double/2addr v2, v4

    iput-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    .line 156
    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    mul-double/2addr v0, v4

    cmpg-double p1, v2, v0

    if-gez p1, :cond_0

    const-wide/16 v0, 0x0

    .line 157
    iput-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    :cond_0
    return-object p0
.end method

.method public final tan()Lorg/javia/arity/Complex;
    .locals 8

    .line 434
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 435
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->tan(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    return-object p0

    .line 437
    :cond_0
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    add-double/2addr v0, v2

    .line 438
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v4, p0, Lorg/javia/arity/Complex;->im:D

    add-double/2addr v2, v4

    .line 439
    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->cos(D)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cosh(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    .line 440
    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->sin(D)D

    move-result-wide v0

    div-double/2addr v0, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sinh(D)D

    move-result-wide v2

    div-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    return-object p0
.end method

.method public final tanh()Lorg/javia/arity/Complex;
    .locals 4

    .line 445
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Ljava/lang/Math;->tanh(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/javia/arity/Complex;->swap()Lorg/javia/arity/Complex;

    move-result-object p0

    invoke-virtual {p0}, Lorg/javia/arity/Complex;->tan()Lorg/javia/arity/Complex;

    move-result-object p0

    invoke-direct {p0}, Lorg/javia/arity/Complex;->swap()Lorg/javia/arity/Complex;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 63
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/javia/arity/Complex;->re:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/javia/arity/Complex;->re:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/javia/arity/Complex;->im:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :goto_1
    return-object p0
.end method
