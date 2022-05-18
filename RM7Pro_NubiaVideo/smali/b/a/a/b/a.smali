.class public Lb/a/a/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lb/a/a/b/b;

.field private b:Lb/a/a/b/b;

.field private c:[B

.field private d:I

.field private e:[B

.field private f:I

.field private g:[B

.field private h:I

.field private i:[B

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b([BLjava/util/concurrent/BlockingQueue;IIZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/concurrent/BlockingQueue<",
            "[B>;IIZ)V"
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    div-int/2addr p4, p3

    const/4 p3, 0x0

    if-eqz p5, :cond_1

    .line 3
    iget-object v1, p0, Lb/a/a/b/a;->c:[B

    if-eqz v1, :cond_0

    .line 4
    iget v2, p0, Lb/a/a/b/a;->d:I

    add-int/lit8 v3, p4, 0x1

    mul-int/2addr v3, v0

    add-int/2addr v3, v2

    .line 5
    new-array v3, v3, [B

    .line 6
    invoke-static {v1, p3, v3, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, p4, 0x1

    mul-int/2addr v1, v0

    .line 7
    new-array v3, v1, [B

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, p0, Lb/a/a/b/a;->e:[B

    if-eqz v1, :cond_2

    .line 9
    iget v2, p0, Lb/a/a/b/a;->f:I

    add-int/lit8 v3, p4, 0x1

    mul-int/2addr v3, v0

    add-int/2addr v3, v2

    .line 10
    new-array v3, v3, [B

    .line 11
    invoke-static {v1, p3, v3, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_2
    add-int/lit8 v1, p4, 0x1

    mul-int/2addr v1, v0

    .line 12
    new-array v3, v1, [B

    :goto_0
    move v2, p3

    :goto_1
    move v1, p3

    :goto_2
    if-ge v1, v0, :cond_4

    .line 13
    invoke-direct {p0, p1, v1}, Lb/a/a/b/a;->h([BI)S

    move-result v4

    and-int/lit16 v5, v4, 0xff

    int-to-byte v5, v5

    .line 14
    aput-byte v5, v3, v2

    add-int/lit8 v5, v2, 0x1

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 15
    aput-byte v4, v3, v5

    add-int/lit8 v2, v2, 0x2

    const/4 v4, 0x2

    move v5, v4

    :goto_3
    mul-int/lit8 v6, p4, 0x2

    if-ge v5, v6, :cond_3

    sub-int v6, v2, v5

    .line 16
    aget-byte v7, v3, v6

    aput-byte v7, v3, v2

    add-int/lit8 v7, v2, 0x1

    add-int/lit8 v6, v6, 0x1

    .line 17
    aget-byte v6, v3, v6

    aput-byte v6, v3, v7

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v5, v5, 0x2

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    :cond_4
    move p1, p3

    .line 18
    :goto_4
    div-int/lit16 p4, v2, 0x1000

    const/16 v0, 0x1000

    if-ge p1, p4, :cond_5

    new-array p4, v0, [B

    mul-int/lit16 v1, p1, 0x1000

    .line 19
    invoke-static {v3, v1, p4, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    invoke-interface {p2, p4}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_5
    if-eqz p5, :cond_6

    mul-int/2addr p4, v0

    sub-int/2addr v2, p4

    .line 21
    iput v2, p0, Lb/a/a/b/a;->d:I

    .line 22
    new-array p1, v2, [B

    iput-object p1, p0, Lb/a/a/b/a;->c:[B

    .line 23
    invoke-static {v3, p4, p1, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    :cond_6
    mul-int/2addr p4, v0

    sub-int/2addr v2, p4

    .line 24
    iput v2, p0, Lb/a/a/b/a;->f:I

    .line 25
    new-array p1, v2, [B

    iput-object p1, p0, Lb/a/a/b/a;->e:[B

    .line 26
    invoke-static {v3, p4, p1, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_5
    return-void
.end method

.method private c([BLjava/util/concurrent/BlockingQueue;IIZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/concurrent/BlockingQueue<",
            "[B>;IIZ)V"
        }
    .end annotation

    .line 1
    array-length v0, p1

    sub-int p3, p4, p3

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz p5, :cond_2

    .line 2
    iget-object v2, p0, Lb/a/a/b/a;->c:[B

    if-eqz v2, :cond_1

    .line 3
    iget v3, p0, Lb/a/a/b/a;->d:I

    add-int v4, v0, v3

    .line 4
    new-array v4, v4, [B

    .line 5
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 6
    :cond_1
    new-array v4, v0, [B

    goto :goto_0

    .line 7
    :cond_2
    iget-object v2, p0, Lb/a/a/b/a;->e:[B

    if-eqz v2, :cond_3

    .line 8
    iget v3, p0, Lb/a/a/b/a;->f:I

    add-int v4, v0, v3

    .line 9
    new-array v4, v4, [B

    .line 10
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 11
    :cond_3
    new-array v4, v0, [B

    :goto_0
    move v3, v1

    :goto_1
    move v2, v1

    move v5, v2

    :goto_2
    if-ge v2, v0, :cond_7

    move v6, v1

    :goto_3
    if-ge v6, p3, :cond_5

    .line 12
    div-int/lit8 v7, v2, 0x4

    sub-int v8, p4, v6

    rem-int/2addr v7, v8

    if-nez v7, :cond_4

    const/4 v5, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    if-eqz v5, :cond_6

    move v5, v1

    goto :goto_5

    .line 13
    :cond_6
    invoke-direct {p0, p1, v2}, Lb/a/a/b/a;->h([BI)S

    move-result v6

    and-int/lit16 v7, v6, 0xff

    int-to-byte v7, v7

    .line 14
    aput-byte v7, v4, v3

    add-int/lit8 v7, v3, 0x1

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    .line 15
    aput-byte v6, v4, v7

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v6, v2, 0x2

    .line 16
    invoke-direct {p0, p1, v6}, Lb/a/a/b/a;->h([BI)S

    move-result v6

    and-int/lit16 v7, v6, 0xff

    int-to-byte v7, v7

    .line 17
    aput-byte v7, v4, v3

    add-int/lit8 v7, v3, 0x1

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    .line 18
    aput-byte v6, v4, v7

    add-int/lit8 v3, v3, 0x2

    :goto_5
    add-int/lit8 v2, v2, 0x4

    goto :goto_2

    :cond_7
    move p1, v1

    .line 19
    :goto_6
    div-int/lit16 p3, v3, 0x1000

    const/16 p4, 0x1000

    if-ge p1, p3, :cond_8

    new-array p3, p4, [B

    mul-int/lit16 v0, p1, 0x1000

    .line 20
    invoke-static {v4, v0, p3, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    invoke-interface {p2, p3}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_8
    if-eqz p5, :cond_9

    mul-int/2addr p3, p4

    sub-int/2addr v3, p3

    .line 22
    iput v3, p0, Lb/a/a/b/a;->d:I

    .line 23
    new-array p1, v3, [B

    iput-object p1, p0, Lb/a/a/b/a;->c:[B

    .line 24
    invoke-static {v4, p3, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7

    :cond_9
    mul-int/2addr p3, p4

    sub-int/2addr v3, p3

    .line 25
    iput v3, p0, Lb/a/a/b/a;->f:I

    .line 26
    new-array p1, v3, [B

    iput-object p1, p0, Lb/a/a/b/a;->e:[B

    .line 27
    invoke-static {v4, p3, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_7
    return-void
.end method

.method private f(II)I
    .locals 1

    :goto_0
    move v0, p2

    move p2, p1

    move p1, v0

    if-eqz p1, :cond_0

    .line 1
    rem-int/2addr p2, p1

    goto :goto_0

    :cond_0
    return p2
.end method

.method private g([BI)S
    .locals 1

    .line 1
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p2, p2, 0x1

    aget-byte p1, p1, p2

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v0

    int-to-short p1, p1

    return p1
.end method

.method private h([BI)S
    .locals 1

    .line 1
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p2, p2, 0x1

    aget-byte p1, p1, p2

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v0

    int-to-short p1, p1

    const/16 p2, 0x7fff

    const/16 v0, -0x8000

    if-ge p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    if-le p1, p2, :cond_1

    move p1, p2

    :cond_1
    :goto_0
    return p1
.end method

.method private i([B[BI)S
    .locals 8

    .line 1
    invoke-direct {p0, p1, p3}, Lb/a/a/b/a;->g([BI)S

    move-result p1

    .line 2
    invoke-direct {p0, p2, p3}, Lb/a/a/b/a;->g([BI)S

    move-result p2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    if-gez p1, :cond_0

    if-gez p2, :cond_0

    add-int p3, p1, p2

    int-to-double v6, p3

    mul-int/2addr p1, p2

    int-to-double p1, p1

    .line 3
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double/2addr v2, v0

    neg-double v0, v2

    div-double/2addr p1, v0

    goto :goto_0

    :cond_0
    add-int p3, p1, p2

    int-to-double v6, p3

    mul-int/2addr p1, p2

    int-to-double p1, p1

    .line 4
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double/2addr v2, v0

    div-double/2addr p1, v2

    :goto_0
    sub-double/2addr v6, p1

    double-to-int p1, v6

    int-to-short p1, p1

    const/16 p2, 0x7fff

    const/16 p3, -0x8000

    if-gt p1, p3, :cond_1

    move p1, p3

    goto :goto_1

    :cond_1
    if-lt p1, p2, :cond_2

    move p1, p2

    :cond_2
    :goto_1
    return p1
.end method


# virtual methods
.method public a([BF)[B
    .locals 7

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    array-length v0, p1

    .line 2
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_7

    .line 3
    invoke-direct {p0, p1, v2}, Lb/a/a/b/a;->g([BI)S

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, p2, v4

    const/16 v5, 0x58ef

    const/16 v6, -0x58f0

    if-ltz v4, :cond_2

    if-lez v3, :cond_1

    int-to-float v4, v5

    div-float/2addr v4, p2

    float-to-int v4, v4

    int-to-short v4, v4

    if-le v4, v3, :cond_6

    goto :goto_1

    :cond_1
    int-to-float v4, v6

    div-float/2addr v4, p2

    float-to-int v4, v4

    int-to-short v4, v4

    if-ge v4, v3, :cond_3

    :goto_1
    int-to-float v3, v3

    mul-float/2addr v3, p2

    float-to-int v3, v3

    int-to-short v5, v3

    goto :goto_2

    :cond_2
    int-to-float v3, v3

    mul-float/2addr v3, p2

    float-to-int v3, v3

    int-to-short v3, v3

    if-ge v3, v6, :cond_4

    :cond_3
    move v5, v6

    goto :goto_2

    :cond_4
    if-le v3, v5, :cond_5

    goto :goto_2

    :cond_5
    move v5, v3

    :cond_6
    :goto_2
    and-int/lit16 v3, v5, 0xff

    int-to-byte v3, v3

    .line 4
    aput-byte v3, v1, v2

    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v4, v5, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 5
    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_7
    return-object v1
.end method

.method public d([B)[B
    .locals 4

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v2, 0x0

    .line 2
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    mul-int/lit8 v3, v2, 0x2

    .line 3
    invoke-static {p1, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v1

    .line 4
    invoke-static {p1, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public e([BLjava/util/concurrent/BlockingQueue;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/concurrent/BlockingQueue<",
            "[B>;Z)V"
        }
    .end annotation

    const v0, 0x472c4400    # 44100.0f

    const/high16 v1, 0x41200000    # 10.0f

    if-eqz p3, :cond_0

    .line 1
    iget-object v2, p0, Lb/a/a/b/a;->a:Lb/a/a/b/b;

    invoke-virtual {v2}, Lb/a/a/b/b;->d()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    div-float/2addr v2, v0

    float-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v2, p0, Lb/a/a/b/a;->b:Lb/a/a/b/b;

    invoke-virtual {v2}, Lb/a/a/b/b;->d()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    div-float/2addr v2, v0

    float-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    :goto_0
    double-to-int v0, v0

    const/16 v1, 0xa

    .line 3
    invoke-direct {p0, v0, v1}, Lb/a/a/b/a;->f(II)I

    move-result v2

    .line 4
    div-int v6, v1, v2

    div-int v7, v0, v2

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v8, p3

    invoke-direct/range {v3 .. v8}, Lb/a/a/b/a;->c([BLjava/util/concurrent/BlockingQueue;IIZ)V

    return-void
.end method

.method public j([B[B)[B
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    .line 1
    :cond_0
    array-length v1, p1

    :goto_0
    if-nez p2, :cond_1

    move v2, v0

    goto :goto_1

    .line 2
    :cond_1
    array-length v2, p2

    :goto_1
    if-le v1, v2, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v2

    .line 3
    :goto_2
    new-array v4, v3, [B

    :goto_3
    if-ge v0, v3, :cond_5

    if-ge v0, v1, :cond_3

    if-ge v0, v2, :cond_3

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lb/a/a/b/a;->i([B[BI)S

    move-result v5

    and-int/lit16 v6, v5, 0xff

    int-to-byte v6, v6

    .line 5
    aput-byte v6, v4, v0

    add-int/lit8 v6, v0, 0x1

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 6
    aput-byte v5, v4, v6

    goto :goto_4

    :cond_3
    if-lt v0, v1, :cond_4

    .line 7
    aget-byte v5, p2, v0

    aput-byte v5, v4, v0

    add-int/lit8 v5, v0, 0x1

    .line 8
    aget-byte v6, p2, v5

    aput-byte v6, v4, v5

    goto :goto_4

    :cond_4
    if-lt v0, v2, :cond_5

    .line 9
    aget-byte v5, p1, v0

    aput-byte v5, v4, v0

    add-int/lit8 v5, v0, 0x1

    .line 10
    aget-byte v6, p1, v5

    aput-byte v6, v4, v5

    :goto_4
    add-int/lit8 v0, v0, 0x2

    goto :goto_3

    :cond_5
    return-object v4
.end method

.method public k(Lb/a/a/b/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/b/a;->b:Lb/a/a/b/b;

    return-void
.end method

.method public l(Lb/a/a/b/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/b/a;->a:Lb/a/a/b/b;

    return-void
.end method

.method public m([BZ)[B
    .locals 6

    const/16 v0, 0x1000

    new-array v1, v0, [B

    const/4 v2, 0x0

    if-nez p2, :cond_0

    .line 1
    iget-object v3, p0, Lb/a/a/b/a;->g:[B

    if-eqz v3, :cond_0

    .line 2
    array-length v4, p1

    iget v5, p0, Lb/a/a/b/a;->h:I

    add-int/2addr v4, v5

    new-array v4, v4, [B

    .line 3
    invoke-static {v3, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget v3, p0, Lb/a/a/b/a;->h:I

    array-length v5, p1

    invoke-static {p1, v2, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 5
    iget-object v3, p0, Lb/a/a/b/a;->i:[B

    if-eqz v3, :cond_1

    .line 6
    array-length v4, p1

    iget v5, p0, Lb/a/a/b/a;->j:I

    add-int/2addr v4, v5

    new-array v4, v4, [B

    .line 7
    invoke-static {v3, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v3, p0, Lb/a/a/b/a;->j:I

    array-length v5, p1

    invoke-static {p1, v2, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 9
    :cond_1
    array-length v3, p1

    new-array v4, v3, [B

    .line 10
    array-length v3, p1

    invoke-static {p1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    const/4 p1, 0x0

    if-eqz p2, :cond_3

    .line 11
    array-length p2, v4

    if-ge p2, v0, :cond_2

    .line 12
    iput-object v4, p0, Lb/a/a/b/a;->i:[B

    .line 13
    array-length p2, v4

    iput p2, p0, Lb/a/a/b/a;->j:I

    return-object p1

    .line 14
    :cond_2
    invoke-static {v4, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    array-length p1, v4

    sub-int/2addr p1, v0

    iput p1, p0, Lb/a/a/b/a;->j:I

    .line 16
    new-array p2, p1, [B

    iput-object p2, p0, Lb/a/a/b/a;->i:[B

    .line 17
    invoke-static {v4, v0, p2, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    .line 18
    :cond_3
    array-length p2, v4

    if-ge p2, v0, :cond_4

    .line 19
    iput-object v4, p0, Lb/a/a/b/a;->g:[B

    .line 20
    array-length p2, v4

    iput p2, p0, Lb/a/a/b/a;->h:I

    return-object p1

    .line 21
    :cond_4
    invoke-static {v4, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    array-length p1, v4

    sub-int/2addr p1, v0

    iput p1, p0, Lb/a/a/b/a;->h:I

    .line 23
    new-array p2, p1, [B

    iput-object p2, p0, Lb/a/a/b/a;->g:[B

    .line 24
    invoke-static {v4, v0, p2, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public n([BLjava/util/concurrent/BlockingQueue;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/concurrent/BlockingQueue<",
            "[B>;Z)V"
        }
    .end annotation

    const/high16 v0, 0x41200000    # 10.0f

    const v1, 0x472c4400    # 44100.0f

    if-eqz p3, :cond_0

    .line 1
    iget-object v2, p0, Lb/a/a/b/a;->a:Lb/a/a/b/b;

    invoke-virtual {v2}, Lb/a/a/b/b;->d()I

    move-result v2

    goto :goto_0

    .line 2
    :cond_0
    iget-object v2, p0, Lb/a/a/b/a;->b:Lb/a/a/b/b;

    invoke-virtual {v2}, Lb/a/a/b/b;->d()I

    move-result v2

    :goto_0
    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v1, v0

    float-to-int v0, v1

    const/16 v1, 0xa

    .line 3
    invoke-direct {p0, v0, v1}, Lb/a/a/b/a;->f(II)I

    move-result v2

    .line 4
    div-int v6, v1, v2

    div-int v7, v0, v2

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v8, p3

    invoke-direct/range {v3 .. v8}, Lb/a/a/b/a;->b([BLjava/util/concurrent/BlockingQueue;IIZ)V

    return-void
.end method
