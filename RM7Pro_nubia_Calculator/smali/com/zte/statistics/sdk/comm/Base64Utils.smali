.class public Lcom/zte/statistics/sdk/comm/Base64Utils;
.super Ljava/lang/Object;
.source "Base64Utils.java"


# static fields
.field public static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF-8"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final _decode([B)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p0, :cond_c

    .line 131
    array-length v0, p0

    new-array v0, v0, [B

    .line 139
    array-length v1, p0

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lez v2, :cond_0

    aget-byte v3, p0, v2

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    mul-int/lit8 v3, v1, 0x3

    .line 152
    div-int/lit8 v3, v3, 0x4

    new-array v3, v3, [B

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    const/16 v6, 0x3f

    if-ge v5, v1, :cond_7

    .line 163
    aget-byte v7, p0, v5

    const/16 v8, 0x2b

    if-ne v7, v8, :cond_2

    const/16 v6, 0x3e

    .line 164
    aput-byte v6, v0, v5

    goto :goto_2

    .line 165
    :cond_2
    aget-byte v7, p0, v5

    const/16 v8, 0x2f

    if-ne v7, v8, :cond_3

    .line 166
    aput-byte v6, v0, v5

    goto :goto_2

    .line 167
    :cond_3
    aget-byte v6, p0, v5

    const/16 v7, 0x3a

    if-ge v6, v7, :cond_4

    .line 168
    aget-byte v6, p0, v5

    add-int/lit8 v6, v6, 0x34

    add-int/lit8 v6, v6, -0x30

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    goto :goto_2

    .line 169
    :cond_4
    aget-byte v6, p0, v5

    const/16 v7, 0x5b

    if-ge v6, v7, :cond_5

    .line 170
    aget-byte v6, p0, v5

    add-int/lit8 v6, v6, -0x41

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    goto :goto_2

    .line 171
    :cond_5
    aget-byte v6, p0, v5

    const/16 v7, 0x7b

    if-ge v6, v7, :cond_6

    .line 172
    aget-byte v6, p0, v5

    add-int/lit8 v6, v6, 0x1a

    add-int/lit8 v6, v6, -0x61

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    :cond_6
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    move p0, v4

    :goto_3
    if-ge v4, v1, :cond_8

    .line 187
    array-length v5, v3

    div-int/lit8 v5, v5, 0x3

    mul-int/lit8 v5, v5, 0x3

    if-ge p0, v5, :cond_8

    add-int/lit8 v5, p0, 0x1

    .line 188
    aget-byte v7, v0, v4

    shl-int/lit8 v7, v7, 0x2

    and-int/lit16 v7, v7, 0xfc

    add-int/lit8 v8, v4, 0x1

    aget-byte v9, v0, v8

    ushr-int/lit8 v9, v9, 0x4

    and-int/lit8 v9, v9, 0x3

    or-int/2addr v7, v9

    int-to-byte v7, v7

    aput-byte v7, v3, p0

    add-int/lit8 p0, v5, 0x1

    .line 189
    aget-byte v7, v0, v8

    shl-int/lit8 v7, v7, 0x4

    and-int/lit16 v7, v7, 0xf0

    add-int/lit8 v8, v4, 0x2

    aget-byte v9, v0, v8

    ushr-int/lit8 v9, v9, 0x2

    and-int/lit8 v9, v9, 0xf

    or-int/2addr v7, v9

    int-to-byte v7, v7

    aput-byte v7, v3, v5

    add-int/lit8 v5, p0, 0x1

    .line 190
    aget-byte v7, v0, v8

    shl-int/lit8 v7, v7, 0x6

    and-int/lit16 v7, v7, 0xc0

    add-int/lit8 v8, v4, 0x3

    aget-byte v8, v0, v8

    and-int/2addr v8, v6

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v3, p0

    add-int/lit8 v4, v4, 0x4

    move p0, v5

    goto :goto_3

    :cond_8
    if-ge v4, v1, :cond_b

    add-int/lit8 v1, v1, -0x2

    if-ge v4, v1, :cond_9

    add-int/lit8 v1, p0, 0x1

    .line 201
    aget-byte v2, v0, v4

    shl-int/lit8 v2, v2, 0x2

    and-int/lit16 v2, v2, 0xfc

    add-int/lit8 v5, v4, 0x1

    aget-byte v6, v0, v5

    ushr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0x3

    or-int/2addr v2, v6

    int-to-byte v2, v2

    aput-byte v2, v3, p0

    .line 202
    aget-byte p0, v0, v5

    shl-int/lit8 p0, p0, 0x4

    and-int/lit16 p0, p0, 0xf0

    add-int/lit8 v4, v4, 0x2

    aget-byte v0, v0, v4

    ushr-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, 0xf

    or-int/2addr p0, v0

    int-to-byte p0, p0

    aput-byte p0, v3, v1

    goto :goto_4

    :cond_9
    if-ge v4, v2, :cond_a

    .line 205
    aget-byte v1, v0, v4

    shl-int/lit8 v1, v1, 0x2

    and-int/lit16 v1, v1, 0xfc

    add-int/lit8 v4, v4, 0x1

    aget-byte v0, v0, v4

    ushr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x3

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    goto :goto_4

    .line 213
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Warning: 1 input bytes left to process. This was not Base64 input"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    :goto_4
    return-object v3

    .line 120
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "byteData cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final _encode([B)[B
    .locals 9

    if-eqz p0, :cond_9

    .line 47
    array-length v0, p0

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 56
    :goto_0
    array-length v4, p0

    add-int/lit8 v4, v4, -0x2

    const/16 v5, 0x3f

    if-ge v2, v4, :cond_0

    add-int/lit8 v4, v3, 0x1

    .line 57
    aget-byte v6, p0, v2

    ushr-int/lit8 v6, v6, 0x2

    and-int/2addr v6, v5

    int-to-byte v6, v6

    aput-byte v6, v0, v3

    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v6, v2, 0x1

    .line 58
    aget-byte v7, p0, v6

    ushr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-byte v8, p0, v2

    shl-int/lit8 v8, v8, 0x4

    and-int/2addr v8, v5

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v0, v4

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v7, v2, 0x2

    .line 59
    aget-byte v8, p0, v7

    ushr-int/lit8 v8, v8, 0x6

    and-int/lit8 v8, v8, 0x3

    aget-byte v6, p0, v6

    shl-int/lit8 v6, v6, 0x2

    and-int/2addr v6, v5

    or-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, v0, v3

    add-int/lit8 v3, v4, 0x1

    .line 60
    aget-byte v6, p0, v7

    and-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    .line 67
    :cond_0
    array-length v4, p0

    if-ge v2, v4, :cond_2

    add-int/lit8 v4, v3, 0x1

    .line 68
    aget-byte v6, p0, v2

    ushr-int/lit8 v6, v6, 0x2

    and-int/2addr v6, v5

    int-to-byte v6, v6

    aput-byte v6, v0, v3

    .line 69
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v6, v2, 0x1

    .line 70
    aget-byte v7, p0, v6

    ushr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x4

    and-int/2addr v2, v5

    or-int/2addr v2, v7

    int-to-byte v2, v2

    aput-byte v2, v0, v4

    add-int/lit8 v2, v3, 0x1

    .line 71
    aget-byte p0, p0, v6

    shl-int/lit8 p0, p0, 0x2

    and-int/2addr p0, v5

    int-to-byte p0, p0

    aput-byte p0, v0, v3

    move v3, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v4, 0x1

    .line 73
    aget-byte p0, p0, v2

    shl-int/lit8 p0, p0, 0x4

    and-int/2addr p0, v5

    int-to-byte p0, p0

    aput-byte p0, v0, v4

    :cond_2
    :goto_1
    if-ge v1, v3, :cond_7

    .line 81
    aget-byte p0, v0, v1

    const/16 v2, 0x1a

    if-ge p0, v2, :cond_3

    .line 82
    aget-byte p0, v0, v1

    add-int/lit8 p0, p0, 0x41

    int-to-byte p0, p0

    aput-byte p0, v0, v1

    goto :goto_2

    .line 83
    :cond_3
    aget-byte p0, v0, v1

    const/16 v4, 0x34

    if-ge p0, v4, :cond_4

    .line 84
    aget-byte p0, v0, v1

    add-int/lit8 p0, p0, 0x61

    sub-int/2addr p0, v2

    int-to-byte p0, p0

    aput-byte p0, v0, v1

    goto :goto_2

    .line 85
    :cond_4
    aget-byte p0, v0, v1

    const/16 v2, 0x3e

    if-ge p0, v2, :cond_5

    .line 86
    aget-byte p0, v0, v1

    add-int/lit8 p0, p0, 0x30

    sub-int/2addr p0, v4

    int-to-byte p0, p0

    aput-byte p0, v0, v1

    goto :goto_2

    .line 87
    :cond_5
    aget-byte p0, v0, v1

    if-ge p0, v5, :cond_6

    const/16 p0, 0x2b

    .line 88
    aput-byte p0, v0, v1

    goto :goto_2

    :cond_6
    const/16 p0, 0x2f

    .line 90
    aput-byte p0, v0, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 94
    :cond_7
    :goto_3
    array-length p0, v0

    if-ge v1, p0, :cond_8

    const/16 p0, 0x3d

    .line 95
    aput-byte p0, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    return-object v0

    .line 35
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "byteData cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decode([B)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 101
    invoke-static {p0, v0}, Lcom/zte/statistics/sdk/comm/Base64Utils;->decode([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decode([BLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/zte/statistics/sdk/comm/Base64Utils;->_decode([B)[B

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0

    .line 105
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "encoded cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final decode(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 110
    invoke-static {p0, v0}, Lcom/zte/statistics/sdk/comm/Base64Utils;->decode(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static final decode(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 115
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/zte/statistics/sdk/comm/Base64Utils;->_decode([B)[B

    move-result-object p0

    return-object p0

    .line 114
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "encoded cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 17
    invoke-static {p0, v0}, Lcom/zte/statistics/sdk/comm/Base64Utils;->encode([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encode([BLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 21
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/zte/statistics/sdk/comm/Base64Utils;->_encode([B)[B

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "byteData cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static encode(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 25
    invoke-static {p0, v0}, Lcom/zte/statistics/sdk/comm/Base64Utils;->encode(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static encode(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 30
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/zte/statistics/sdk/comm/Base64Utils;->_encode([B)[B

    move-result-object p0

    return-object p0

    .line 29
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "string cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
