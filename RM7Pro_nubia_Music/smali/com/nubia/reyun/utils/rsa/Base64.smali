.class public final Lcom/nubia/reyun/utils/rsa/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final BASELENGTH:I = 0x80

.field private static final EIGHTBIT:I = 0x8

.field private static final FOURBYTE:I = 0x4

.field private static final LOOKUPLENGTH:I = 0x40

.field private static final PAD:C = '='

.field private static final SIGN:I = -0x80

.field private static final SIXTEENBIT:I = 0x10

.field private static final TWENTYFOURBITGROUP:I = 0x18

.field private static final base64Alphabet:[B

.field private static final fDebug:Z

.field private static final lookUpBase64Alphabet:[C


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x3f

    const/16 v7, 0x3e

    const/16 v6, 0x2f

    const/16 v5, 0x2b

    const/4 v0, 0x0

    .line 14
    const/16 v1, 0x80

    new-array v1, v1, [B

    sput-object v1, Lcom/nubia/reyun/utils/rsa/Base64;->base64Alphabet:[B

    .line 15
    const/16 v1, 0x40

    new-array v1, v1, [C

    sput-object v1, Lcom/nubia/reyun/utils/rsa/Base64;->lookUpBase64Alphabet:[C

    move v1, v0

    .line 18
    :goto_0
    const/16 v2, 0x80

    if-lt v1, v2, :cond_0

    .line 21
    const/16 v1, 0x5a

    :goto_1
    const/16 v2, 0x41

    if-ge v1, v2, :cond_1

    .line 24
    const/16 v1, 0x7a

    :goto_2
    const/16 v2, 0x61

    if-ge v1, v2, :cond_2

    .line 28
    const/16 v1, 0x39

    :goto_3
    const/16 v2, 0x30

    if-ge v1, v2, :cond_3

    .line 32
    sget-object v1, Lcom/nubia/reyun/utils/rsa/Base64;->base64Alphabet:[B

    aput-byte v7, v1, v5

    .line 33
    sget-object v1, Lcom/nubia/reyun/utils/rsa/Base64;->base64Alphabet:[B

    aput-byte v8, v1, v6

    move v1, v0

    .line 35
    :goto_4
    const/16 v2, 0x19

    if-le v1, v2, :cond_4

    .line 39
    const/16 v1, 0x1a

    move v2, v1

    move v1, v0

    :goto_5
    const/16 v3, 0x33

    if-le v2, v3, :cond_5

    .line 43
    const/16 v1, 0x34

    :goto_6
    const/16 v2, 0x3d

    if-le v1, v2, :cond_6

    .line 46
    sget-object v0, Lcom/nubia/reyun/utils/rsa/Base64;->lookUpBase64Alphabet:[C

    aput-char v5, v0, v7

    .line 47
    sget-object v0, Lcom/nubia/reyun/utils/rsa/Base64;->lookUpBase64Alphabet:[C

    aput-char v6, v0, v8

    .line 49
    return-void

    .line 19
    :cond_0
    sget-object v2, Lcom/nubia/reyun/utils/rsa/Base64;->base64Alphabet:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    .line 18
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 22
    :cond_1
    sget-object v2, Lcom/nubia/reyun/utils/rsa/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v1, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 21
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 25
    :cond_2
    sget-object v2, Lcom/nubia/reyun/utils/rsa/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v1, -0x61

    add-int/lit8 v3, v3, 0x1a

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 24
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 29
    :cond_3
    sget-object v2, Lcom/nubia/reyun/utils/rsa/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v1, -0x30

    add-int/lit8 v3, v3, 0x34

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 28
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 36
    :cond_4
    sget-object v2, Lcom/nubia/reyun/utils/rsa/Base64;->lookUpBase64Alphabet:[C

    add-int/lit8 v3, v1, 0x41

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 40
    :cond_5
    sget-object v3, Lcom/nubia/reyun/utils/rsa/Base64;->lookUpBase64Alphabet:[C

    add-int/lit8 v4, v1, 0x61

    int-to-char v4, v4

    aput-char v4, v3, v2

    .line 39
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 44
    :cond_6
    sget-object v2, Lcom/nubia/reyun/utils/rsa/Base64;->lookUpBase64Alphabet:[C

    add-int/lit8 v3, v0, 0x30

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 43
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 14

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 162
    if-nez p0, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-object v0

    .line 166
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 168
    invoke-static {v6}, Lcom/nubia/reyun/utils/rsa/Base64;->removeWhiteSpace([C)I

    move-result v1

    .line 170
    rem-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_0

    .line 174
    div-int/lit8 v7, v1, 0x4

    .line 176
    if-nez v7, :cond_2

    .line 177
    new-array v0, v3, [B

    goto :goto_0

    .line 187
    :cond_2
    mul-int/lit8 v1, v7, 0x3

    new-array v1, v1, [B

    move v2, v3

    move v4, v3

    move v5, v3

    .line 189
    :goto_1
    add-int/lit8 v8, v7, -0x1

    if-lt v5, v8, :cond_4

    .line 207
    add-int/lit8 v7, v2, 0x1

    aget-char v2, v6, v2

    invoke-static {v2}, Lcom/nubia/reyun/utils/rsa/Base64;->isData(C)Z

    move-result v8

    if-eqz v8, :cond_0

    add-int/lit8 v8, v7, 0x1

    aget-char v7, v6, v7

    invoke-static {v7}, Lcom/nubia/reyun/utils/rsa/Base64;->isData(C)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 211
    sget-object v9, Lcom/nubia/reyun/utils/rsa/Base64;->base64Alphabet:[B

    aget-byte v2, v9, v2

    .line 212
    sget-object v9, Lcom/nubia/reyun/utils/rsa/Base64;->base64Alphabet:[B

    aget-byte v7, v9, v7

    .line 214
    add-int/lit8 v9, v8, 0x1

    aget-char v8, v6, v8

    .line 215
    add-int/lit8 v10, v9, 0x1

    aget-char v6, v6, v9

    .line 216
    invoke-static {v8}, Lcom/nubia/reyun/utils/rsa/Base64;->isData(C)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v6}, Lcom/nubia/reyun/utils/rsa/Base64;->isData(C)Z

    move-result v9

    if-nez v9, :cond_6

    .line 217
    :cond_3
    invoke-static {v8}, Lcom/nubia/reyun/utils/rsa/Base64;->isPad(C)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {v6}, Lcom/nubia/reyun/utils/rsa/Base64;->isPad(C)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 218
    and-int/lit8 v6, v7, 0xf

    if-nez v6, :cond_0

    .line 222
    mul-int/lit8 v0, v5, 0x3

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    .line 223
    mul-int/lit8 v5, v5, 0x3

    invoke-static {v1, v3, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    shl-int/lit8 v1, v2, 0x2

    shr-int/lit8 v2, v7, 0x4

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    goto :goto_0

    .line 191
    :cond_4
    add-int/lit8 v8, v2, 0x1

    aget-char v9, v6, v2

    invoke-static {v9}, Lcom/nubia/reyun/utils/rsa/Base64;->isData(C)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v8, 0x1

    aget-char v8, v6, v8

    invoke-static {v8}, Lcom/nubia/reyun/utils/rsa/Base64;->isData(C)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 192
    add-int/lit8 v10, v2, 0x1

    aget-char v11, v6, v2

    invoke-static {v11}, Lcom/nubia/reyun/utils/rsa/Base64;->isData(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    add-int/lit8 v2, v10, 0x1

    aget-char v10, v6, v10

    invoke-static {v10}, Lcom/nubia/reyun/utils/rsa/Base64;->isData(C)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 197
    sget-object v12, Lcom/nubia/reyun/utils/rsa/Base64;->base64Alphabet:[B

    aget-byte v9, v12, v9

    .line 198
    sget-object v12, Lcom/nubia/reyun/utils/rsa/Base64;->base64Alphabet:[B

    aget-byte v8, v12, v8

    .line 199
    sget-object v12, Lcom/nubia/reyun/utils/rsa/Base64;->base64Alphabet:[B

    aget-byte v11, v12, v11

    .line 200
    sget-object v12, Lcom/nubia/reyun/utils/rsa/Base64;->base64Alphabet:[B

    aget-byte v10, v12, v10

    .line 202
    add-int/lit8 v12, v4, 0x1

    shl-int/lit8 v9, v9, 0x2

    shr-int/lit8 v13, v8, 0x4

    or-int/2addr v9, v13

    int-to-byte v9, v9

    aput-byte v9, v1, v4

    .line 203
    add-int/lit8 v9, v12, 0x1

    and-int/lit8 v4, v8, 0xf

    shl-int/lit8 v4, v4, 0x4

    shr-int/lit8 v8, v11, 0x2

    and-int/lit8 v8, v8, 0xf

    or-int/2addr v4, v8

    int-to-byte v4, v4

    aput-byte v4, v1, v12

    .line 204
    add-int/lit8 v4, v9, 0x1

    shl-int/lit8 v8, v11, 0x6

    or-int/2addr v8, v10

    int-to-byte v8, v8

    aput-byte v8, v1, v9

    .line 189
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 226
    :cond_5
    invoke-static {v8}, Lcom/nubia/reyun/utils/rsa/Base64;->isPad(C)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {v6}, Lcom/nubia/reyun/utils/rsa/Base64;->isPad(C)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 227
    sget-object v6, Lcom/nubia/reyun/utils/rsa/Base64;->base64Alphabet:[B

    aget-byte v6, v6, v8

    .line 228
    and-int/lit8 v8, v6, 0x3

    if-nez v8, :cond_0

    .line 232
    mul-int/lit8 v0, v5, 0x3

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 233
    mul-int/lit8 v5, v5, 0x3

    invoke-static {v1, v3, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 234
    add-int/lit8 v1, v4, 0x1

    shl-int/lit8 v2, v2, 0x2

    shr-int/lit8 v3, v7, 0x4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v4

    .line 235
    and-int/lit8 v2, v7, 0xf

    shl-int/lit8 v2, v2, 0x4

    shr-int/lit8 v3, v6, 0x2

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_0

    .line 241
    :cond_6
    sget-object v0, Lcom/nubia/reyun/utils/rsa/Base64;->base64Alphabet:[B

    aget-byte v0, v0, v8

    .line 242
    sget-object v3, Lcom/nubia/reyun/utils/rsa/Base64;->base64Alphabet:[B

    aget-byte v3, v3, v6

    .line 243
    add-int/lit8 v5, v4, 0x1

    shl-int/lit8 v2, v2, 0x2

    shr-int/lit8 v6, v7, 0x4

    or-int/2addr v2, v6

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 244
    add-int/lit8 v2, v5, 0x1

    and-int/lit8 v4, v7, 0xf

    shl-int/lit8 v4, v4, 0x4

    shr-int/lit8 v6, v0, 0x2

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v1, v5

    .line 245
    add-int/lit8 v4, v2, 0x1

    shl-int/lit8 v0, v0, 0x6

    or-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    move-object v0, v1

    .line 249
    goto/16 :goto_0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 15

    .prologue
    const/16 v14, 0x3d

    const/4 v2, 0x0

    .line 71
    if-nez p0, :cond_0

    .line 72
    const/4 v0, 0x0

    .line 151
    :goto_0
    return-object v0

    .line 75
    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    .line 76
    if-nez v0, :cond_1

    .line 77
    const-string v0, ""

    goto :goto_0

    .line 80
    :cond_1
    rem-int/lit8 v7, v0, 0x18

    .line 81
    div-int/lit8 v1, v0, 0x18

    .line 82
    if-eqz v7, :cond_3

    add-int/lit8 v0, v1, 0x1

    .line 85
    :goto_1
    mul-int/lit8 v0, v0, 0x4

    new-array v8, v0, [C

    move v4, v2

    move v6, v2

    .line 95
    :goto_2
    if-lt v4, v1, :cond_4

    .line 124
    const/16 v0, 0x8

    if-ne v7, v0, :cond_9

    .line 125
    aget-byte v0, p0, v2

    .line 126
    and-int/lit8 v1, v0, 0x3

    int-to-byte v1, v1

    .line 131
    and-int/lit8 v2, v0, -0x80

    if-nez v2, :cond_8

    shr-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    .line 132
    :goto_3
    add-int/lit8 v2, v6, 0x1

    sget-object v3, Lcom/nubia/reyun/utils/rsa/Base64;->lookUpBase64Alphabet:[C

    aget-char v0, v3, v0

    aput-char v0, v8, v6

    .line 133
    add-int/lit8 v0, v2, 0x1

    sget-object v3, Lcom/nubia/reyun/utils/rsa/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v1, v1, 0x4

    aget-char v1, v3, v1

    aput-char v1, v8, v2

    .line 134
    add-int/lit8 v1, v0, 0x1

    aput-char v14, v8, v0

    .line 135
    add-int/lit8 v0, v1, 0x1

    aput-char v14, v8, v1

    .line 151
    :cond_2
    :goto_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 82
    goto :goto_1

    .line 96
    :cond_4
    add-int/lit8 v0, v2, 0x1

    aget-byte v2, p0, v2

    .line 97
    add-int/lit8 v3, v0, 0x1

    aget-byte v9, p0, v0

    .line 98
    add-int/lit8 v5, v3, 0x1

    aget-byte v10, p0, v3

    .line 104
    and-int/lit8 v0, v9, 0xf

    int-to-byte v11, v0

    .line 105
    and-int/lit8 v0, v2, 0x3

    int-to-byte v12, v0

    .line 107
    and-int/lit8 v0, v2, -0x80

    if-nez v0, :cond_5

    shr-int/lit8 v0, v2, 0x2

    int-to-byte v0, v0

    move v3, v0

    .line 108
    :goto_5
    and-int/lit8 v0, v9, -0x80

    if-nez v0, :cond_6

    shr-int/lit8 v0, v9, 0x4

    int-to-byte v0, v0

    move v2, v0

    .line 109
    :goto_6
    and-int/lit8 v0, v10, -0x80

    if-nez v0, :cond_7

    shr-int/lit8 v0, v10, 0x6

    int-to-byte v0, v0

    .line 117
    :goto_7
    add-int/lit8 v9, v6, 0x1

    sget-object v13, Lcom/nubia/reyun/utils/rsa/Base64;->lookUpBase64Alphabet:[C

    aget-char v3, v13, v3

    aput-char v3, v8, v6

    .line 118
    add-int/lit8 v3, v9, 0x1

    sget-object v6, Lcom/nubia/reyun/utils/rsa/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v12, v12, 0x4

    or-int/2addr v2, v12

    aget-char v2, v6, v2

    aput-char v2, v8, v9

    .line 119
    add-int/lit8 v6, v3, 0x1

    sget-object v2, Lcom/nubia/reyun/utils/rsa/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v9, v11, 0x2

    or-int/2addr v0, v9

    aget-char v0, v2, v0

    aput-char v0, v8, v3

    .line 120
    add-int/lit8 v2, v6, 0x1

    sget-object v0, Lcom/nubia/reyun/utils/rsa/Base64;->lookUpBase64Alphabet:[C

    and-int/lit8 v3, v10, 0x3f

    aget-char v0, v0, v3

    aput-char v0, v8, v6

    .line 95
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v6, v2

    move v2, v5

    goto/16 :goto_2

    .line 107
    :cond_5
    shr-int/lit8 v0, v2, 0x2

    xor-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    move v3, v0

    goto :goto_5

    .line 108
    :cond_6
    shr-int/lit8 v0, v9, 0x4

    xor-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    move v2, v0

    goto :goto_6

    .line 109
    :cond_7
    shr-int/lit8 v0, v10, 0x6

    xor-int/lit16 v0, v0, 0xfc

    int-to-byte v0, v0

    goto :goto_7

    .line 131
    :cond_8
    shr-int/lit8 v0, v0, 0x2

    xor-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    goto/16 :goto_3

    .line 136
    :cond_9
    const/16 v0, 0x10

    if-ne v7, v0, :cond_2

    .line 137
    aget-byte v0, p0, v2

    .line 138
    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p0, v1

    .line 139
    and-int/lit8 v1, v2, 0xf

    int-to-byte v3, v1

    .line 140
    and-int/lit8 v1, v0, 0x3

    int-to-byte v4, v1

    .line 142
    and-int/lit8 v1, v0, -0x80

    if-nez v1, :cond_a

    shr-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    move v1, v0

    .line 143
    :goto_8
    and-int/lit8 v0, v2, -0x80

    if-nez v0, :cond_b

    shr-int/lit8 v0, v2, 0x4

    int-to-byte v0, v0

    .line 145
    :goto_9
    add-int/lit8 v2, v6, 0x1

    sget-object v5, Lcom/nubia/reyun/utils/rsa/Base64;->lookUpBase64Alphabet:[C

    aget-char v1, v5, v1

    aput-char v1, v8, v6

    .line 146
    add-int/lit8 v1, v2, 0x1

    sget-object v5, Lcom/nubia/reyun/utils/rsa/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v0, v4

    aget-char v0, v5, v0

    aput-char v0, v8, v2

    .line 147
    add-int/lit8 v0, v1, 0x1

    sget-object v2, Lcom/nubia/reyun/utils/rsa/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v3, v3, 0x2

    aget-char v2, v2, v3

    aput-char v2, v8, v1

    .line 148
    add-int/lit8 v1, v0, 0x1

    aput-char v14, v8, v0

    goto/16 :goto_4

    .line 142
    :cond_a
    shr-int/lit8 v0, v0, 0x2

    xor-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    move v1, v0

    goto :goto_8

    .line 143
    :cond_b
    shr-int/lit8 v0, v2, 0x4

    xor-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    goto :goto_9
.end method

.method private static isData(C)Z
    .locals 2

    .prologue
    .line 60
    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/nubia/reyun/utils/rsa/Base64;->base64Alphabet:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPad(C)Z
    .locals 1

    .prologue
    .line 56
    const/16 v0, 0x3d

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isWhiteSpace(C)Z
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static removeWhiteSpace([C)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 259
    if-nez p0, :cond_1

    .line 271
    :cond_0
    return v1

    .line 265
    :cond_1
    array-length v3, p0

    move v2, v1

    .line 266
    :goto_0
    if-ge v2, v3, :cond_0

    .line 267
    aget-char v0, p0, v2

    invoke-static {v0}, Lcom/nubia/reyun/utils/rsa/Base64;->isWhiteSpace(C)Z

    move-result v0

    if-nez v0, :cond_2

    .line 268
    add-int/lit8 v0, v1, 0x1

    aget-char v4, p0, v2

    aput-char v4, p0, v1

    .line 266
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method
