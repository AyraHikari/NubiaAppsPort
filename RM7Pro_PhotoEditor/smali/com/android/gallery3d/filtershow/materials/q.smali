.class public Lcom/android/gallery3d/filtershow/materials/q;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:[I

.field private b:[I

.field private c:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/materials/q;->a:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/q;->b:[I

    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/q;->c:[I

    return-void

    :array_0
    .array-data 4
        0x67452301
        -0x10325477
        -0x67452302
        0x10325476
        -0x3c2d1e10
    .end array-data
.end method

.method private a([B)[B
    .locals 14

    array-length v0, p1

    rem-int/lit8 v1, v0, 0x40

    const/16 v2, 0x38

    if-ge v1, v2, :cond_0

    rsub-int/lit8 v3, v1, 0x37

    sub-int v1, v0, v1

    add-int/lit8 v1, v1, 0x40

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_1

    add-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x40

    const/16 v3, 0x3f

    goto :goto_0

    :cond_1
    rsub-int/lit8 v3, v1, 0x3f

    add-int/2addr v3, v2

    add-int/lit8 v4, v0, 0x40

    sub-int/2addr v4, v1

    add-int/lit8 v1, v4, 0x40

    :goto_0
    new-array v1, v1, [B

    const/4 v4, 0x0

    invoke-static {p1, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p1, v0, 0x1

    const/16 v5, -0x80

    aput-byte v5, v1, v0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_2

    add-int/lit8 v6, p1, 0x1

    aput-byte v4, v1, p1

    add-int/lit8 v5, v5, 0x1

    move p1, v6

    goto :goto_1

    :cond_2
    int-to-long v3, v0

    const-wide/16 v5, 0x8

    mul-long/2addr v3, v5

    const-wide/16 v5, 0xff

    and-long v7, v3, v5

    long-to-int v0, v7

    int-to-byte v0, v0

    const/16 v7, 0x8

    shr-long v7, v3, v7

    and-long/2addr v7, v5

    long-to-int v7, v7

    int-to-byte v7, v7

    const/16 v8, 0x10

    shr-long v8, v3, v8

    and-long/2addr v8, v5

    long-to-int v8, v8

    int-to-byte v8, v8

    const/16 v9, 0x18

    shr-long v9, v3, v9

    and-long/2addr v9, v5

    long-to-int v9, v9

    int-to-byte v9, v9

    const/16 v10, 0x20

    shr-long v10, v3, v10

    and-long/2addr v10, v5

    long-to-int v10, v10

    int-to-byte v10, v10

    const/16 v11, 0x28

    shr-long v11, v3, v11

    and-long/2addr v11, v5

    long-to-int v11, v11

    int-to-byte v11, v11

    const/16 v12, 0x30

    shr-long v12, v3, v12

    and-long/2addr v5, v12

    long-to-int v5, v5

    int-to-byte v5, v5

    shr-long v2, v3, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    add-int/lit8 v3, p1, 0x1

    aput-byte v2, v1, p1

    add-int/lit8 p1, v3, 0x1

    aput-byte v5, v1, v3

    add-int/lit8 v2, p1, 0x1

    aput-byte v11, v1, p1

    add-int/lit8 p1, v2, 0x1

    aput-byte v10, v1, v2

    add-int/lit8 v2, p1, 0x1

    aput-byte v9, v1, p1

    add-int/lit8 p1, v2, 0x1

    aput-byte v8, v1, v2

    add-int/lit8 v2, p1, 0x1

    aput-byte v7, v1, p1

    aput-byte v0, v1, v2

    return-object v1
.end method

.method private b([B)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v0, p1, v1

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/materials/q;->d(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private c([BI)I
    .locals 2

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    return p1
.end method

.method private d(B)Ljava/lang/String;
    .locals 4

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    const/4 v1, 0x2

    new-array v1, v1, [C

    ushr-int/lit8 v2, p1, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v0, v2

    const/4 v3, 0x0

    aput-char v2, v1, v3

    and-int/lit8 p1, p1, 0xf

    aget-char p1, v0, p1

    const/4 v0, 0x1

    aput-char p1, v1, v0

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([C)V

    return-object p1

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private e()V
    .locals 14

    const/16 v0, 0x10

    :goto_0
    const/16 v1, 0x4f

    const/4 v2, 0x1

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/q;->c:[I

    add-int/lit8 v3, v0, -0x3

    aget v3, v1, v3

    add-int/lit8 v4, v0, -0x8

    aget v4, v1, v4

    xor-int/2addr v3, v4

    add-int/lit8 v4, v0, -0xe

    aget v4, v1, v4

    xor-int/2addr v3, v4

    add-int/lit8 v4, v0, -0x10

    aget v4, v1, v4

    xor-int/2addr v3, v4

    invoke-direct {p0, v3, v2}, Lcom/android/gallery3d/filtershow/materials/q;->i(II)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    new-array v3, v0, [I

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v0, :cond_1

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/materials/q;->b:[I

    aget v6, v6, v5

    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_2
    const/16 v6, 0x13

    const/16 v7, 0x1e

    const/4 v8, 0x4

    const/4 v9, 0x2

    const/4 v10, 0x3

    if-gt v5, v6, :cond_2

    aget v6, v3, v4

    invoke-direct {p0, v6, v0}, Lcom/android/gallery3d/filtershow/materials/q;->i(II)I

    move-result v6

    aget v11, v3, v2

    aget v12, v3, v9

    aget v13, v3, v10

    invoke-direct {p0, v11, v12, v13}, Lcom/android/gallery3d/filtershow/materials/q;->f(III)I

    move-result v11

    add-int/2addr v6, v11

    aget v11, v3, v8

    add-int/2addr v6, v11

    iget-object v11, p0, Lcom/android/gallery3d/filtershow/materials/q;->c:[I

    aget v11, v11, v5

    add-int/2addr v6, v11

    const v11, 0x5a827999

    add-int/2addr v6, v11

    aget v11, v3, v10

    aput v11, v3, v8

    aget v8, v3, v9

    aput v8, v3, v10

    aget v8, v3, v2

    invoke-direct {p0, v8, v7}, Lcom/android/gallery3d/filtershow/materials/q;->i(II)I

    move-result v7

    aput v7, v3, v9

    aget v7, v3, v4

    aput v7, v3, v2

    aput v6, v3, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    const/16 v5, 0x14

    :goto_3
    const/16 v6, 0x27

    if-gt v5, v6, :cond_3

    aget v6, v3, v4

    invoke-direct {p0, v6, v0}, Lcom/android/gallery3d/filtershow/materials/q;->i(II)I

    move-result v6

    aget v11, v3, v2

    aget v12, v3, v9

    aget v13, v3, v10

    invoke-direct {p0, v11, v12, v13}, Lcom/android/gallery3d/filtershow/materials/q;->g(III)I

    move-result v11

    add-int/2addr v6, v11

    aget v11, v3, v8

    add-int/2addr v6, v11

    iget-object v11, p0, Lcom/android/gallery3d/filtershow/materials/q;->c:[I

    aget v11, v11, v5

    add-int/2addr v6, v11

    const v11, 0x6ed9eba1

    add-int/2addr v6, v11

    aget v11, v3, v10

    aput v11, v3, v8

    aget v11, v3, v9

    aput v11, v3, v10

    aget v11, v3, v2

    invoke-direct {p0, v11, v7}, Lcom/android/gallery3d/filtershow/materials/q;->i(II)I

    move-result v11

    aput v11, v3, v9

    aget v11, v3, v4

    aput v11, v3, v2

    aput v6, v3, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    const/16 v5, 0x28

    :goto_4
    const/16 v6, 0x3b

    if-gt v5, v6, :cond_4

    aget v6, v3, v4

    invoke-direct {p0, v6, v0}, Lcom/android/gallery3d/filtershow/materials/q;->i(II)I

    move-result v6

    aget v11, v3, v2

    aget v12, v3, v9

    aget v13, v3, v10

    invoke-direct {p0, v11, v12, v13}, Lcom/android/gallery3d/filtershow/materials/q;->h(III)I

    move-result v11

    add-int/2addr v6, v11

    aget v11, v3, v8

    add-int/2addr v6, v11

    iget-object v11, p0, Lcom/android/gallery3d/filtershow/materials/q;->c:[I

    aget v11, v11, v5

    add-int/2addr v6, v11

    const v11, -0x70e44324

    add-int/2addr v6, v11

    aget v11, v3, v10

    aput v11, v3, v8

    aget v11, v3, v9

    aput v11, v3, v10

    aget v11, v3, v2

    invoke-direct {p0, v11, v7}, Lcom/android/gallery3d/filtershow/materials/q;->i(II)I

    move-result v11

    aput v11, v3, v9

    aget v11, v3, v4

    aput v11, v3, v2

    aput v6, v3, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    const/16 v5, 0x3c

    :goto_5
    if-gt v5, v1, :cond_5

    aget v6, v3, v4

    invoke-direct {p0, v6, v0}, Lcom/android/gallery3d/filtershow/materials/q;->i(II)I

    move-result v6

    aget v11, v3, v2

    aget v12, v3, v9

    aget v13, v3, v10

    invoke-direct {p0, v11, v12, v13}, Lcom/android/gallery3d/filtershow/materials/q;->g(III)I

    move-result v11

    add-int/2addr v6, v11

    aget v11, v3, v8

    add-int/2addr v6, v11

    iget-object v11, p0, Lcom/android/gallery3d/filtershow/materials/q;->c:[I

    aget v11, v11, v5

    add-int/2addr v6, v11

    const v11, -0x359d3e2a    # -3715189.5f

    add-int/2addr v6, v11

    aget v11, v3, v10

    aput v11, v3, v8

    aget v11, v3, v9

    aput v11, v3, v10

    aget v11, v3, v2

    invoke-direct {p0, v11, v7}, Lcom/android/gallery3d/filtershow/materials/q;->i(II)I

    move-result v11

    aput v11, v3, v9

    aget v11, v3, v4

    aput v11, v3, v2

    aput v6, v3, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_5
    move v1, v4

    :goto_6
    if-ge v1, v0, :cond_6

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/materials/q;->b:[I

    aget v5, v2, v1

    aget v6, v3, v1

    add-int/2addr v5, v6

    aput v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_6
    move v0, v4

    :goto_7
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/q;->c:[I

    array-length v2, v1

    if-ge v0, v2, :cond_7

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_7
    return-void
.end method

.method private f(III)I
    .locals 0

    and-int/2addr p2, p1

    not-int p1, p1

    and-int/2addr p1, p3

    or-int/2addr p1, p2

    return p1
.end method

.method private g(III)I
    .locals 0

    xor-int/2addr p1, p2

    xor-int/2addr p1, p3

    return p1
.end method

.method private h(III)I
    .locals 1

    and-int v0, p1, p2

    and-int/2addr p1, p3

    or-int/2addr p1, v0

    and-int/2addr p2, p3

    or-int/2addr p1, p2

    return p1
.end method

.method private i(II)I
    .locals 1

    shl-int v0, p1, p2

    rsub-int/lit8 p2, p2, 0x20

    ushr-int/2addr p1, p2

    or-int/2addr p1, v0

    return p1
.end method

.method private l(I[BI)V
    .locals 2

    ushr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 p3, p3, 0x3

    int-to-byte p1, p1

    aput-byte p1, p2, p3

    return-void
.end method

.method private m([B)I
    .locals 7

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/q;->a:[I

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/q;->b:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/materials/q;->a([B)[B

    move-result-object p1

    array-length v0, p1

    div-int/lit8 v0, v0, 0x40

    move v1, v3

    :goto_0
    if-ge v1, v0, :cond_1

    move v2, v3

    :goto_1
    const/16 v4, 0x10

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/materials/q;->c:[I

    mul-int/lit8 v5, v1, 0x40

    mul-int/lit8 v6, v2, 0x4

    add-int/2addr v5, v6

    invoke-direct {p0, p1, v5}, Lcom/android/gallery3d/filtershow/materials/q;->c([BI)I

    move-result v5

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/materials/q;->e()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x14

    return p1
.end method


# virtual methods
.method public j([B)[B
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/materials/q;->m([B)I

    const/16 p1, 0x14

    new-array p1, p1, [B

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/q;->b:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget v1, v1, v0

    mul-int/lit8 v2, v0, 0x4

    invoke-direct {p0, v1, p1, v2}, Lcom/android/gallery3d/filtershow/materials/q;->l(I[BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public k([B)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/materials/q;->j([B)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/materials/q;->b([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
