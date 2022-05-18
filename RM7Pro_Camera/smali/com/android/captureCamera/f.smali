.class public Lcom/android/captureCamera/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([B)I
    .locals 11

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    move v1, v0

    :goto_0
    add-int/lit8 v2, v1, 0x3

    .line 24
    array-length v3, p0

    const/4 v4, 0x4

    const-string v5, "CaptureCameraExif"

    const/4 v6, 0x1

    const/16 v7, 0x8

    const/4 v8, 0x2

    if-ge v2, v3, :cond_9

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p0, v1

    const/16 v3, 0xff

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_8

    .line 25
    aget-byte v1, p0, v2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0xd8

    if-eq v1, v3, :cond_7

    if-ne v1, v6, :cond_2

    goto :goto_2

    :cond_2
    const/16 v3, 0xd9

    if-eq v1, v3, :cond_8

    const/16 v3, 0xda

    if-ne v1, v3, :cond_3

    goto :goto_3

    .line 43
    :cond_3
    invoke-static {p0, v2, v8, v0}, Lcom/android/captureCamera/f;->a([BIIZ)I

    move-result v3

    if-lt v3, v8, :cond_6

    add-int v9, v2, v3

    .line 44
    array-length v10, p0

    if-le v9, v10, :cond_4

    goto :goto_1

    :cond_4
    const/16 v10, 0xe1

    if-ne v1, v10, :cond_5

    if-lt v3, v7, :cond_5

    add-int/lit8 v1, v2, 0x2

    .line 51
    invoke-static {p0, v1, v4, v0}, Lcom/android/captureCamera/f;->a([BIIZ)I

    move-result v1

    const v10, 0x45786966

    if-ne v1, v10, :cond_5

    add-int/lit8 v1, v2, 0x6

    .line 52
    invoke-static {p0, v1, v8, v0}, Lcom/android/captureCamera/f;->a([BIIZ)I

    move-result v1

    if-nez v1, :cond_5

    add-int/lit8 v1, v2, 0x8

    add-int/lit8 v3, v3, -0x8

    goto :goto_4

    :cond_5
    move v1, v9

    goto :goto_0

    :cond_6
    :goto_1
    const-string p0, "Invalid length"

    .line 45
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_7
    :goto_2
    move v1, v2

    goto :goto_0

    :cond_8
    :goto_3
    move v3, v0

    move v1, v2

    goto :goto_4

    :cond_9
    move v3, v0

    :goto_4
    if-le v3, v7, :cond_13

    .line 66
    invoke-static {p0, v1, v4, v0}, Lcom/android/captureCamera/f;->a([BIIZ)I

    move-result v2

    const v9, 0x49492a00    # 823968.0f

    if-eq v2, v9, :cond_a

    const v10, 0x4d4d002a    # 2.14958752E8f

    if-eq v2, v10, :cond_a

    const-string p0, "Invalid byte order"

    .line 68
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_a
    if-ne v2, v9, :cond_b

    move v2, v6

    goto :goto_5

    :cond_b
    move v2, v0

    :goto_5
    add-int/lit8 v9, v1, 0x4

    .line 74
    invoke-static {p0, v9, v4, v2}, Lcom/android/captureCamera/f;->a([BIIZ)I

    move-result v4

    add-int/2addr v4, v8

    const/16 v9, 0xa

    if-lt v4, v9, :cond_12

    if-le v4, v3, :cond_c

    goto :goto_7

    :cond_c
    add-int/2addr v1, v4

    sub-int/2addr v3, v4

    add-int/lit8 v4, v1, -0x2

    .line 83
    invoke-static {p0, v4, v8, v2}, Lcom/android/captureCamera/f;->a([BIIZ)I

    move-result v4

    :goto_6
    add-int/lit8 v9, v4, -0x1

    if-lez v4, :cond_13

    const/16 v4, 0xc

    if-lt v3, v4, :cond_13

    .line 86
    invoke-static {p0, v1, v8, v2}, Lcom/android/captureCamera/f;->a([BIIZ)I

    move-result v4

    const/16 v10, 0x112

    if-ne v4, v10, :cond_11

    add-int/2addr v1, v7

    .line 89
    invoke-static {p0, v1, v8, v2}, Lcom/android/captureCamera/f;->a([BIIZ)I

    move-result p0

    if-eq p0, v6, :cond_10

    const/4 v1, 0x3

    if-eq p0, v1, :cond_f

    const/4 v1, 0x6

    if-eq p0, v1, :cond_e

    if-eq p0, v7, :cond_d

    const-string p0, "Unsupported orientation"

    .line 100
    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_d
    const/16 p0, 0x10e

    return p0

    :cond_e
    const/16 p0, 0x5a

    return p0

    :cond_f
    const/16 p0, 0xb4

    return p0

    :cond_10
    return v0

    :cond_11
    add-int/lit8 v1, v1, 0xc

    add-int/lit8 v3, v3, -0xc

    move v4, v9

    goto :goto_6

    :cond_12
    :goto_7
    const-string p0, "Invalid offset"

    .line 76
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_13
    const-string p0, "Orientation not found"

    .line 108
    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static a([BIIZ)I
    .locals 2

    if-eqz p3, :cond_0

    add-int/lit8 p3, p2, -0x1

    add-int/2addr p1, p3

    const/4 p3, -0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    :goto_0
    const/4 v0, 0x0

    :goto_1
    add-int/lit8 v1, p2, -0x1

    if-lez p2, :cond_1

    shl-int/lit8 p2, v0, 0x8

    .line 122
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, p2

    add-int/2addr p1, p3

    move p2, v1

    goto :goto_1

    :cond_1
    return v0
.end method
